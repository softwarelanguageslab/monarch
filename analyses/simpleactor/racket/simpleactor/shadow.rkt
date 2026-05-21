#lang racket

(provide (all-from-out "base.rkt")
         (rename-out 
           [shadow-app #%app])
         (all-defined-out))

;; Shadow execution that mirrors the environment, store
;; and mailboxes.

;; We redefine macros from the base actor language here
;; in order to construct the shadow execution environment.
(require (rename-in "base.rkt"
            [spawn^ base:spawn^]
            [send^  base:send^]
            [receive base:receive]
            [#%app   base:#%app]))

(require data/queue)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Allocation counter for generating unique addresses
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define allocation-counter 0)
(define (fresh)
  (let ((old-counter allocation-counter))
    (set! allocation-counter (+ allocation-counter 1))
    old-counter))

(struct location (file line col) #:transparent
  #:methods gen:custom-write
  [(define (write-proc self port mode)
     (write `(location ,(path->string (location-file self)) ,(location-line self) ,(location-col self)) port))])

;; extract a location as a syntax object from a syntax object
(define-for-syntax (extract-loc a)
  #`(location #,(syntax-source a)
         #,(syntax-line a)
         #,(syntax-column a)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Trace recording
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define *trace* '())
(define *trace-mutex* (make-semaphore 1))

(struct record (event mailboxes store) #:transparent
  #:methods gen:custom-write
  [(define (write-proc self port mode)
     (write `(record ,(record-event self) ,(record-mailboxes self) ,(record-store self)) port))])

(define (copy-mailboxes)
  (hash-map shadow-mailboxes (lambda (key value) (cons key (mailbox->list value)))))

(define (copy-store)
  (hash-map *shadow-store* list))

(define *trace-output-port* #f)

;; Enable the trace output port if there is an environment variable called 
;; "TRACE_OUTPUT" with a path to an output file.
(let ((output-path (getenv "TRACE_OUTPUT")))
  (when output-path
    (set! *trace-output-port* (open-output-file output-path #:exists 'truncate))))

;; Writes only the most recent record to the trace output port, one per line.
(define (output-trace)
  (when *trace-output-port*
    (write (car *trace*) *trace-output-port*)
    (newline *trace-output-port*)
    (flush-output *trace-output-port*)))

;; Assumes *trace-mutex* is held by the caller.
(define (record! event)
  (set! *trace* (cons (record event (copy-mailboxes) (copy-store)) *trace*))
  (output-trace))

;; Acquire *trace-mutex*, run body, snapshot the trace, then release.
;; The mutex is released even if body raises.
(define-syntax-rule (with-record event body ...)
  (dynamic-wind
    (lambda () (semaphore-wait *trace-mutex*))
    (lambda () body ... (record! event))
    (lambda () (semaphore-post *trace-mutex*))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Shadow mailbox
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; messages: queue of values
;; semaphore: posted on each send, waited on each receive (for blocking)
(struct mailbox (messages semaphore) #:mutable)

(define (empty-mailbox)
  (mailbox (make-queue) (make-semaphore 0)))

;; Unsafe: assumes *trace-mutex* is held.
(define (mailbox-send! mb vlu)
  (enqueue! (mailbox-messages mb) vlu))

;; Unsafe: assumes *trace-mutex* is held and a message is available.
(define (mailbox-dequeue! mb)
  (dequeue! (mailbox-messages mb)))

(define (mailbox->list mb)
  (queue->list (mailbox-messages mb)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Shadow mailboxes
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Actor identifiers are products of their spawn-sites combined
;; with a unique integer.
(struct shadow-pid (spawn-site counter) #:transparent
  #:methods gen:custom-write
  [(define (write-proc self port mode)
     (write `(shadow-pid ,(shadow-pid-spawn-site self) ,(shadow-pid-counter self)) port))])

;; a copy of the mailboxes as a mapping from actor identifiers
;; to their mailbox
(define shadow-mailboxes (make-hash))

;; a mapping from shadow pids to the real pids
(define shadow-pids (make-hash))

;; an inverse mapping of "shadow-pids" so that we can retrieve
;; the shadow pid from an actual pid
(define shadow-pids-inverse (make-hash))

;; intercept "spawn^" calls, update the shadow environment
;; and return a shadow value.
(define-syntax (spawn^ stx)
  (let ((loc (extract-loc stx)))
    (syntax-case stx ()
      [(_ arg ...)
        #`(let ((new-pid (shadow-pid #,loc (fresh)))
                (actual-pid (base:spawn^ arg ...)))
            ;; These operations have to be recorded and have 
            ;; to be atomic, hence they are surrounded by a 
            ;; "with-record" block.
            (with-record `(spawn ,new-pid)
              (hash-set! shadow-mailboxes new-pid (empty-mailbox))
              (hash-set! shadow-pids new-pid actual-pid)
              (hash-set! shadow-pids-inverse actual-pid new-pid))
            actual-pid)])))

;; Intercept "send" calls and update the shadow environment.
;; Enqueue under the trace mutex (atomic snapshot), then signal
;; the mailbox semaphore outside the mutex so a waiting receiver
;; can wake without deadlocking.
(define (send^ ref vlu)
  (let* ((shadow (hash-ref shadow-pids-inverse ref))
         (mb     (hash-ref shadow-mailboxes shadow)))
    (with-record `(send ,shadow ,vlu)
      (mailbox-send! mb vlu))
    (semaphore-post (mailbox-semaphore mb))
    (base:send^ ref vlu)))

;; Intercept message receives.
;; Block on the mailbox semaphore outside the mutex, then dequeue
;; and snapshot atomically under the mutex.
(define-syntax (receive stx)
  (syntax-case stx ()
    [(_ arg ...)
     #'(let* ((receiver  (self^))
              (shadow    (hash-ref shadow-pids-inverse receiver))
              (mb        (hash-ref shadow-mailboxes shadow)))
         (semaphore-wait (mailbox-semaphore mb))
         (with-record `(receive ,shadow)
           (mailbox-dequeue! mb))
         (base:receive arg ...))]))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Shadow store
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;; Address in memory, associated with their allocation site, a fresh identifier, and its kind.
(struct adr (allocation-site counter kind) #:transparent
  #:methods gen:custom-write
  [(define (write-proc self port mode)
     (write `(adr ,(adr-allocation-site self) ,(adr-counter self) ,(adr-kind self)) port))])

;; Allocate a new address
(define (adr-allocate loc kind)
  (adr loc (fresh) kind))

;; Side table: eq-identity of a pair -> its shadow address.
;; Pairs not allocated through #%app interception will be absent.
(define *pair-table* (make-hasheq))

;; The shadow store (i.e., a mapping from addresses to values)
(define *shadow-store* (make-hash))

(define (shadow-store-set! address value)
  (with-record `(store-set! ,address ,value)
    (hash-set! *shadow-store* address value)))

;; Intercept calls to memory-allocating and mutating functions.
(define-syntax (shadow-app stx)
  (syntax-case stx ()
    [(_ f arg ...)
     (let ((loc (extract-loc stx)))
       #`(let ((fv f)
               (argsv (list arg ...)))
           (cond
             ((eq? fv cons)
              (let* ((actual  (apply cons argsv))
                     (address (adr-allocate #,loc 'ptr)))
                (hash-set! *pair-table* actual address)
                (shadow-store-set! address actual)
                actual))
             ((eq? fv set-car!)
              (let ((address (hash-ref *pair-table* (car argsv) #f)))
                (apply set-car! argsv)
                (when address (shadow-store-set! address (car (car argsv))))))
             ((eq? fv set-cdr!)
              (let ((address (hash-ref *pair-table* (car argsv) #f)))
                (apply set-cdr! argsv)
                (when address (shadow-store-set! address (cdr (car argsv))))))
             (else (apply fv argsv)))))]))


