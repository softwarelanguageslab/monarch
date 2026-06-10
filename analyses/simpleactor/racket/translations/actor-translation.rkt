#lang racket

(provide translate)

(require "../utils.rkt")
(require syntax/parse)

(define (invalid-syntax for stx)
  (error (format "invalid syntax for ~a at ~a" for (syntax->datum stx))))

(define (translate-cond stx clauses)
  (if (null? clauses)
      (quasisyntax/loc stx '())
      (syntax-parse (car clauses)
        #:datum-literals (else)
        [(else bdy ...)
         (quasisyntax/loc (car clauses)
           (begin #,@(map translate (syntax->list #'(bdy ...)))))]
        [(cnd bdy ...)
         (quasisyntax/loc (car clauses)
           (if #,(translate #'cnd)
               (begin #,@(map translate (syntax->list #'(bdy ...))))
               #,(translate-cond stx (cdr clauses))))])))

(define (translate-and stx conditions)
  (cond
    ((null? conditions) (quasisyntax/loc stx #f))
    ((null? (cdr conditions)) (translate (car conditions)))
    (else (quasisyntax/loc stx
            (if #,(translate (car conditions))
                #,(translate-and stx (cdr conditions))
                #f)))))

(define (translate-or stx conditions)
  (cond
    ((null? conditions) (quasisyntax/loc stx #t))
    ((null? (cdr conditions)) (translate (car conditions)))
    (else
     (let ((val (datum->syntax stx (gensym "val"))))
       (quasisyntax/loc stx
         (letrec ((#,val #,(translate (car conditions))))
           (if #,val
               #,val
               #,(translate-or stx (cdr conditions)))))))))

(define (translate stx)
  (syntax-parse stx
    #:datum-literals (behavior become send λ spawn let let* letrec cond and or self)
    [(behavior ags (handler ...))
     (quasisyntax/loc stx
       (lambda ags
         (letrec
           ((real-self (self^)))
           (parametrize
             ((self (lambda (m) ((dyn send^) real-self m))))
             (receive
               #,(map translate-handler (syntax->list #'(handler ...))))))))
     ]
    [(behavior . _)
     (invalid-syntax "behavior" stx)]
    [(become b ag ...)
     (quasisyntax/loc stx (#,#'b #,@(map translate (syntax->list #'(ag ...)))))]
    [(become . _)
     (invalid-syntax "become" stx)]
    [(send rcv tag payload ...)
     (let ((payload-stxs (map translate (syntax->list #'(payload ...)))))
       (quasisyntax/loc stx
         (#,(translate #'rcv)
          #,(uncurry (cons (quasisyntax/loc stx 'tag) payload-stxs)))))]
    [(send . _)
     (invalid-syntax "send" stx)]
    [(λ xs bdy ...)
     (quasisyntax/loc stx
       (lambda xs #,@(map translate (syntax->list #'(bdy ...)))))]
    [(spawn beh ag ...)
     (quasisyntax/loc stx
       (letrec ((act (spawn^ (#,#'beh #,@(map translate (syntax->list #'(ag ...)))))))
         (lambda (msg)
           ((dyn send^) act msg))))]
    [(spawn . _)
     (invalid-syntax "spawn" stx)]
    [(let bds bdy ...)
     (let* ((bd-list (syntax->list #'bds))
            (names   (map (lambda (bd) (syntax-parse bd [(n _) #'n])) bd-list))
            (vals    (map (lambda (bd) (syntax-parse bd [(_ v) (translate #'v)])) bd-list)))
       (with-syntax ([(name ...) names]
                     [(val  ...) vals])
         (quasisyntax/loc stx
           (letrec ((name val) ...)
             #,@(map translate (syntax->list #'(bdy ...)))))))]
    [(let* bds bdy ...)
     (let* ((bd-list (syntax->list #'bds))
            (names   (map (lambda (bd) (syntax-parse bd [(n _) #'n])) bd-list))
            (vals    (map (lambda (bd) (syntax-parse bd [(_ v) (translate #'v)])) bd-list)))
       (with-syntax ([(name ...) names]
                     [(val  ...) vals])
         (quasisyntax/loc stx
           (letrec ((name val) ...)
             #,@(map translate (syntax->list #'(bdy ...)))))))]
    [(letrec bds bdy ...)
     (let* ((bd-list (syntax->list #'bds))
            (names   (map (lambda (bd) (syntax-parse bd [(n _) #'n])) bd-list))
            (vals    (map (lambda (bd) (syntax-parse bd [(_ v) (translate #'v)])) bd-list)))
       (with-syntax ([(name ...) names]
                     [(val  ...) vals])
         (quasisyntax/loc stx
           (letrec ((name val) ...)
             #,@(map translate (syntax->list #'(bdy ...)))))))]
    [(cond clause ...)
     (translate-cond stx (syntax->list #'(clause ...)))]
    [(and condition ...)
     (translate-and stx (syntax->list #'(condition ...)))]
    [(or condition ...)
     (translate-or stx (syntax->list #'(condition ...)))]
    [self
     (quasisyntax/loc stx (dyn self))]
    [(e es ...)
     (quasisyntax/loc stx
       (#,(translate #'e) #,@(map translate (syntax->list #'(es ...)))))]
    [other #'other]))

(define (translate-handler stx)
  (syntax-parse stx
    [(tag ags bdy ...)
     (quasisyntax/loc stx
       (#,(uncurry (cons (quasisyntax/loc stx 'tag) (syntax->list #'ags)))
          #,@(map translate (syntax->list #'(bdy ...)))))]
    [_ (error "invalid handler syntax")]))

(module+ main
   (displayln (syntax->datum (translate (datum->syntax #f '(behavior (x) ((ping () (print "ok"))))))))
   (displayln (syntax->datum (translate
                (datum->syntax #f
                  '(letrec
                     ((counter (behavior (x) ((inc (n) (print x) (become counter (+ x n))))))
                      (actor (spawn counter)))

                     (send actor inc 1)))))))
