;; This program tests whether the abstract count of an actor reference
;; is correctly increased whenever the actor reference is send to another
;; actor.
;;
;; To this end, the program is split into two variants, one were the reference
;; is not sent resulting in an abstract count for the reference of 1,
;; and another were the actor reference is sent, resulting in an abstract count of \infty.
;;
;; Comment/uncomment the relevant parts of this file at your convenience.

;; Variant 1: without sending
; (letrec
;   ((emph-behavior (lambda () (emph-behavior)))
;    (test-behavior (lambda ()
;      (letrec ((ref (spawn^ (emph-behavior))))
;        (test-behavior)))))

;   (spawn^ (test-behavior)))
;; Variant 2: with sending
(letrec
  ((emph-behavior (lambda () (emph-behavior)))
   (other-behavior (lambda () (other-behavior)))
   (other-actor (spawn^ (other-behavior)))
   (test-behavior (lambda ()
     (letrec ((ref (spawn^ (emph-behavior))))
       (send^ other-actor ref)
       (send^ ref 'test)
       (test-behavior)))))

  (spawn^ (test-behavior)))
