#lang simpleactor
(letrec ((any? (lambda (v) #t))
         (meta (lambda (v) v))
         (member
          (lambda (v lst)
            (begin
              (match
               lst
               (((list) #f)
                ((pair v1 vs) (if (eq? v v1) #t (member v vs))))))))
         (unconstrained/c #f)
         (actor? (lambda (k j) (lambda (v) v)))
         (nonzero? (lambda (v) (not (= v 0)))))
  (begin
    (letrec ((assert (lambda (cnd) (if cnd '() (error "assertion failed"))))
             (>=
              (lambda (x y)
                (assert (number? x))
                (letrec ((val3598 (> x y)))
                  (if val3598
                    val3598
                    (letrec ((val3599 (= x y))) (if val3599 val3599 #f))))))
             (<=
              (lambda (x y)
                (assert (number? x))
                (letrec ((val3600 (< x y)))
                  (if val3600
                    val3600
                    (letrec ((val3601 (= x y))) (if val3601 val3601 #f))))))
             (> (lambda (x y) (assert (number? x)) (not (<= x y))))
             (orig-+ +)
             (orig-- -)
             (orig-* *)
             (orig-/ /)
             (orig-> >)
             (orig-< <)
             (orig-= =)
             (orig->= >=)
             (orig-<= <=)
             (orig-car car)
             (orig-cdr cdr)
             (orig-cons cons)
             (orig-vector-ref vector-ref)
             (orig-vector-set! vector-set!))
      '()
      (letrec ((empty '())
               (listof
                (lambda (contract)
                  (lambda (k j lst) (map (lambda (v) (contract k j v)) lst))))
               (real?/c
                (lambda (g3617 g3618 g3619)
                  (if (real? g3619) g3619 (blame g3617 'real?))))
               (boolean?/c
                (lambda (g3620 g3621 g3622)
                  (if (boolean? g3622) g3622 (blame g3620 'boolean?))))
               (number?/c
                (lambda (g3623 g3624 g3625)
                  (if (number? g3625) g3625 (blame g3623 'number?))))
               (any/c
                (lambda (g3626 g3627 g3628)
                  (if ((lambda (v) #t) g3628)
                    g3628
                    (blame g3626 '(lambda (v) #t)))))
               (any?/c
                (lambda (g3629 g3630 g3631)
                  (if ((lambda (v) #t) g3631)
                    g3631
                    (blame g3629 '(lambda (v) #t)))))
               (cons?/c
                (lambda (g3632 g3633 g3634)
                  (if (pair? g3634) g3634 (blame g3632 'pair?))))
               (cons/c
                (lambda (k1 k2)
                  (lambda (k j v) (cons (k1 k j (car v)) (k2 k j (cdr v))))))
               (pair?/c
                (lambda (g3635 g3636 g3637)
                  (if (pair? g3637) g3637 (blame g3635 'pair?))))
               (integer?/c
                (lambda (g3638 g3639 g3640)
                  (if (integer? g3640) g3640 (blame g3638 'integer?))))
               (symbol?/c
                (lambda (g3641 g3642 g3643)
                  (if (symbol? g3643) g3643 (blame g3641 'symbol?))))
               (string?/c
                (lambda (g3644 g3645 g3646)
                  (if (string? g3646) g3646 (blame g3644 'string?))))
               (and/c
                (lambda (c1 c2)
                  (lambda (k j v) (if (c1 k j v) (c2 k j v) #f))))
               (or/c
                (lambda (c1 c2)
                  (lambda (k j v)
                    (letrec ((val3602 (c1 k j v)))
                      (if val3602 val3602 (c2 k j v))))))
               (null?/c
                (lambda (g3647 g3648 g3649)
                  (if (null? g3649) g3649 (blame g3647 'null?))))
               (list-of
                (lambda (contract)
                  (lambda (k j v)
                    (if (null? v)
                      '()
                      (orig-cons
                       (contract k j (car v))
                       ((list-of contract) k j (cdr v)))))))
               (any? (lambda (v) #t))
               (nonzero? (lambda (v) (not (= v 0))))
               (nonzero?/c
                (lambda (g3650 g3651 g3652)
                  (if ((lambda (v) (not (= v 0))) g3652)
                    g3652
                    (blame g3650 '(lambda (v) (not (= v 0)))))))
               (>=/c
                (lambda (n)
                  (lambda (g3653 g3654 g3655)
                    (if ((lambda (v) (orig->= v n)) g3655)
                      g3655
                      (blame g3653 '(lambda (v) (orig->= v n)))))))
               (>/c
                (lambda (n)
                  (lambda (g3656 g3657 g3658)
                    (if ((lambda (v) (orig-> v n)) g3658)
                      g3658
                      (blame g3656 '(lambda (v) (orig-> v n)))))))
               (</c
                (lambda (n)
                  (lambda (g3659 g3660 g3661)
                    (if ((lambda (v) (orig-< v n)) g3661)
                      g3661
                      (blame g3659 '(lambda (v) (orig-< v n)))))))
               (<=/c
                (lambda (n)
                  (lambda (g3662 g3663 g3664)
                    (if ((lambda (v) (orig-<= v n)) g3664)
                      g3664
                      (blame g3662 '(lambda (v) (orig-<= v n)))))))
               (=/c
                (lambda (n)
                  (lambda (g3665 g3666 g3667)
                    (if ((lambda (v) (orig-= v n)) g3667)
                      g3667
                      (blame g3665 '(lambda (v) (orig-= v n)))))))
               (meta (lambda (v) v))
               (+
                (letrec ((xj3668 'server) (xk3669 'client))
                  ((lambda (j3672 k3673 f3674)
                     (lambda (g3670 g3671)
                       (number?/c
                        j3672
                        k3673
                        (f3674
                         (number?/c j3672 k3673 g3670)
                         (number?/c j3672 k3673 g3671)))))
                   xj3668
                   xk3669
                   (lambda (a b) (orig-+ a b)))))
               (-
                (letrec ((xj3675 'server) (xk3676 'client))
                  ((lambda (j3679 k3680 f3681)
                     (lambda (g3677 g3678)
                       (number?/c
                        j3679
                        k3680
                        (f3681
                         (number?/c j3679 k3680 g3677)
                         (number?/c j3679 k3680 g3678)))))
                   xj3675
                   xk3676
                   (lambda (a b) (orig-- a b)))))
               (*
                (letrec ((xj3682 'server) (xk3683 'client))
                  ((lambda (j3686 k3687 f3688)
                     (lambda (g3684 g3685)
                       (number?/c
                        j3686
                        k3687
                        (f3688
                         (number?/c j3686 k3687 g3684)
                         (number?/c j3686 k3687 g3685)))))
                   xj3682
                   xk3683
                   (lambda (a b) (orig-* a b)))))
               (<
                (letrec ((xj3689 'server) (xk3690 'client))
                  ((lambda (j3693 k3694 f3695)
                     (lambda (g3691 g3692)
                       (boolean?/c
                        j3693
                        k3694
                        (f3695
                         (number?/c j3693 k3694 g3691)
                         (number?/c j3693 k3694 g3692)))))
                   xj3689
                   xk3690
                   (lambda (a b) (orig-< a b)))))
               (>
                (letrec ((xj3696 'server) (xk3697 'client))
                  ((lambda (j3700 k3701 f3702)
                     (lambda (g3698 g3699)
                       (boolean?/c
                        j3700
                        k3701
                        (f3702
                         (number?/c j3700 k3701 g3698)
                         (number?/c j3700 k3701 g3699)))))
                   xj3696
                   xk3697
                   (lambda (a b) (orig-> a b)))))
               (<=
                (letrec ((xj3703 'server) (xk3704 'client))
                  ((lambda (j3707 k3708 f3709)
                     (lambda (g3705 g3706)
                       (boolean?/c
                        j3707
                        k3708
                        (f3709
                         (number?/c j3707 k3708 g3705)
                         (number?/c j3707 k3708 g3706)))))
                   xj3703
                   xk3704
                   (lambda (a b) (orig-<= a b)))))
               (>=
                (letrec ((xj3710 'server) (xk3711 'client))
                  ((lambda (j3714 k3715 f3716)
                     (lambda (g3712 g3713)
                       (boolean?/c
                        j3714
                        k3715
                        (f3716
                         (number?/c j3714 k3715 g3712)
                         (number?/c j3714 k3715 g3713)))))
                   xj3710
                   xk3711
                   (lambda (a b) (orig->= a b)))))
               (add1 (lambda (x) (+ x 1)))
               (/
                (letrec ((xj3717 'server) (xk3718 'client))
                  ((lambda (j3721 k3722 f3723)
                     (lambda (g3719 g3720)
                       (number?/c
                        j3721
                        k3722
                        (f3723
                         (number?/c j3721 k3722 g3719)
                         (number?/c j3721 k3722 g3720)))))
                   xj3717
                   xk3718
                   (lambda (a b) (orig-/ a b)))))
               (car
                (letrec ((xj3724 'server) (xk3725 'client))
                  ((lambda (j3727 k3728 f3729)
                     (lambda (g3726)
                       (any/c
                        j3727
                        k3728
                        (f3729 (pair?/c j3727 k3728 g3726)))))
                   xj3724
                   xk3725
                   (lambda (p) (orig-car p)))))
               (cdr
                (letrec ((xj3730 'server) (xk3731 'client))
                  ((lambda (j3733 k3734 f3735)
                     (lambda (g3732)
                       (any/c
                        j3733
                        k3734
                        (f3735 (pair?/c j3733 k3734 g3732)))))
                   xj3730
                   xk3731
                   (lambda (p) (orig-cdr p)))))
               (cons
                (letrec ((xj3736 'server) (xk3737 'client))
                  ((lambda (j3740 k3741 f3742)
                     (lambda (g3738 g3739)
                       (pair?/c
                        j3740
                        k3741
                        (f3742
                         (any/c j3740 k3741 g3738)
                         (any/c j3740 k3741 g3739)))))
                   xj3736
                   xk3737
                   (lambda (a b) (orig-cons a b)))))
               (vector?/c
                (lambda (g3743 g3744 g3745)
                  (if (vector? g3745) g3745 (blame g3743 'vector?))))
               (vector-ref
                (letrec ((xj3746 'server) (xk3747 'client))
                  ((lambda (j3749 k3750 f3751)
                     (lambda (g3748)
                       (integer?/c
                        j3749
                        k3750
                        (f3751 (vector?/c j3749 k3750 g3748)))))
                   xj3746
                   xk3747
                   (lambda (v i) (orig-vector-ref v i)))))
               (vector-set!
                (letrec ((xj3752 'server) (xk3753 'client))
                  ((lambda (j3756 k3757 f3758)
                     (lambda (g3754 g3755)
                       (any/c
                        j3756
                        k3757
                        (f3758
                         (vector?/c j3756 k3757 g3754)
                         (integer?/c j3756 k3757 g3755)))))
                   xj3752
                   xk3753
                   (lambda (vec i v) (orig-vector-set! vec i v)))))
               (cdddr (lambda (x) (cdr (cdr (cdr x)))))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (assert (procedure? f))
                  (assert (list? l))
                  (if (null? l) '() (cons (f (car l)) (map f (cdr l))))))
               (cdar (lambda (x) (cdr (car x))))
               (cadadr (lambda (x) (car (cdr (car (cdr x))))))
               (cdadar (lambda (x) (cdr (car (cdr (car x))))))
               (call-with-output-file
                (lambda (filename proc)
                  (assert (string? filename))
                  (assert (procedure? proc))
                  (letrec ((output-port (open-output-file filename))
                           (res (proc output-port)))
                    (close-output-port output-port)
                    res)))
               (caddr (lambda (x) (car (cdr (cdr x)))))
               (cdaadr (lambda (x) (cdr (car (car (cdr x))))))
               (assq
                (lambda (k l)
                  (assert (list? l))
                  (if (null? l)
                    #f
                    (if (eq? (caar l) k) (car l) (assq k (cdr l))))))
               (even? (lambda (x) (= 0 (modulo x 2))))
               (char<=?
                (lambda (c1 c2)
                  (assert (char? c1))
                  (assert (char? c2))
                  (letrec ((val3603 (char<? c1 c2)))
                    (if val3603 val3603 (char=? c1 c2)))))
               (cdddar (lambda (x) (cdr (cdr (cdr (car x))))))
               (list-tail
                (lambda (x k)
                  (assert (list? x))
                  (assert (number? k))
                  (if (zero? k) x (list-tail (cdr x) (- k 1)))))
               (halt (lambda () '()))
               (char-alphabetic?
                (lambda (c) (if (char-ci>=? c #\a) (char-ci<=? c #\z) #f)))
               (char-whitespace?
                (lambda (c)
                  (letrec ((val3604 (= (char->integer c) 9)))
                    (if val3604
                      val3604
                      (letrec ((val3605 (= (char->integer c) 10)))
                        (if val3605 val3605 (= (char->integer c) 32)))))))
               (cddar (lambda (x) (cdr (cdr (car x)))))
               (positive? (lambda (x) (assert (number? x)) (> x 0)))
               (string=? (lambda (s1 s2) (bool-top)))
               ($pc '())
               (ref-set set-car!)
               (void (lambda () #f))
               (cddr (lambda (x) (cdr (cdr x))))
               (truncate
                (lambda (x)
                  (assert (number? x))
                  (if (< x 0) (ceiling x) (floor x))))
               ($cmp '())
               (bool-top (lambda () (if (> (random) 0.5) #t #f)))
               (equal?
                (lambda (a b)
                  (letrec ((val3606 (eq? a b)))
                    (if val3606
                      val3606
                      (letrec ((val3607 (if (null? a) (null? b) #f)))
                        (if val3607
                          val3607
                          (letrec ((val3608
                                    (if (string? a)
                                      (if (string? b) (string=? a b) #f)
                                      #f)))
                            (if val3608
                              val3608
                              (letrec ((val3609
                                        (if (pair? a)
                                          (if (pair? b)
                                            (if (equal? (car a) (car b))
                                              (equal? (cdr a) (cdr b))
                                              #f)
                                            #f)
                                          #f)))
                                (if val3609
                                  val3609
                                  (if (vector? a)
                                    (if (vector? b)
                                      (letrec ((n (vector-length a)))
                                        (if (= (vector-length b) n)
                                          (letrec ((loop
                                                    (lambda (i)
                                                      (letrec ((val3610
                                                                (= i n)))
                                                        (if val3610
                                                          val3610
                                                          (if (equal?
                                                               (vector-ref a i)
                                                               (vector-ref
                                                                b
                                                                i))
                                                            (loop (+ i 1))
                                                            #f))))))
                                            (loop 0))
                                          #f))
                                      #f)
                                    #f)))))))))))
               (cdaaar (lambda (x) (cdr (car (car (car x))))))
               (caaddr (lambda (x) (car (car (cdr (cdr x))))))
               (eqv? (lambda (x y) (eq? x y)))
               (call-with-input-file
                (lambda (filename proc)
                  (assert (string? filename))
                  (assert (procedure? proc))
                  (letrec ((input-port (open-input-file filename))
                           (res (proc input-port)))
                    (close-input-port input-port)
                    res)))
               (ref (lambda (x) (cons x '())))
               (char>=?
                (lambda (c1 c2)
                  (assert (char? c1))
                  (assert (char? c2))
                  (letrec ((val3611 (char>? c1 c2)))
                    (if val3611 val3611 (char=? c1 c2)))))
               (cdaar (lambda (x) (cdr (car (car x)))))
               (cdaddr (lambda (x) (cdr (car (cdr (cdr x))))))
               (__toplevel_cdr cdr)
               (cadar (lambda (x) (car (cdr (car x)))))
               (caadr (lambda (x) (car (car (cdr x)))))
               (char-ci>?
                (lambda (c1 c2)
                  (assert (char? c1))
                  (assert (char? c2))
                  (not (char-ci<=? c1 c2))))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar (lambda (x) (car (car (car (car x))))))
               (negative? (lambda (x) (assert (number? x)) (< x 0)))
               (memv (lambda (e l) (memq e l)))
               (caaar (lambda (x) (car (car (car x)))))
               (debug (lambda (e) '()))
               (reverse
                (lambda (l)
                  (assert (list? l))
                  (if (null? l)
                    '()
                    (append (reverse (cdr l)) (list (car l))))))
               (caaadr (lambda (x) (car (car (car (cdr x))))))
               (cddadr (lambda (x) (cdr (cdr (car (cdr x))))))
               (odd? (lambda (x) (assert (number? x)) (= 1 (modulo x 2))))
               (caadar (lambda (x) (car (car (cdr (car x))))))
               (apply
                (lambda (proc args)
                  (assert (procedure? proc))
                  (assert (list? args))
                  (if (null? args)
                    (begin (proc))
                    (if (null? (cdr args))
                      (begin (proc (car args)))
                      (if (null? (cddr args))
                        (begin (proc (car args) (cadr args)))
                        (if (null? (cdddr args))
                          (begin (proc (car args) (cadr args) (caddr args)))
                          (if (null? (cddddr args))
                            (begin
                              (proc
                               (car args)
                               (cadr args)
                               (caddr args)
                               (cadddr args)))
                            (if (null? (cdr (cddddr args)))
                              (begin
                                (proc
                                 (car args)
                                 (cadr args)
                                 (caddr args)
                                 (cadddr args)
                                 (car (cddddr args))))
                              (if (null? (cddr (cddddr args)))
                                (begin
                                  (proc
                                   (car args)
                                   (cadr args)
                                   (caddr args)
                                   (cadddr args)
                                   (car (cddddr args))
                                   (cadr (cddddr args))))
                                (if (null? (cdddr (cddddr args)))
                                  (begin
                                    (proc
                                     (car args)
                                     (cadr args)
                                     (caddr args)
                                     (cadddr args)
                                     (car (cddddr args))
                                     (cadr (cddddr args))
                                     (caddr (cddddr args))))
                                  (begin (error "Unsupported call."))))))))))))
               (member
                (lambda (e l)
                  (assert (list? l))
                  (if (null? l)
                    #f
                    (if (equal? (car l) e) l (member e (cdr l))))))
               (cddddr (lambda (x) (cdr (cdr (cdr (cdr x))))))
               (cadddr (lambda (x) (car (cdr (cdr (cdr x))))))
               (int-top (lambda () (random 42)))
               (zero? (lambda (x) (assert (number? x)) (= x 0)))
               (string>=?
                (lambda (s1 s2)
                  (letrec ((val3612 (string>? s1 s2)))
                    (if val3612 val3612 (string=? s1 s2)))))
               (cadr (lambda (x) (car (cdr x))))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec ((val3613 (if (pair? l) (list? (cdr l)) #f)))
                    (if val3613 val3613 (null? l)))))
               (cddaar (lambda (x) (cdr (cdr (car (car x))))))
               (char-numeric?
                (lambda (c) (if (char<=? #\0 c) (char<=? c #\9) #f)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (assert (list? l))
                  (if (null? l)
                    #f
                    (if (eqv? (caar l) k) (car l) (assq k (cdr l))))))
               (not (lambda (x) (if x #f #t)))
               (__toplevel_append (lambda (l1 l2) (append l1 l2)))
               (memq
                (lambda (e l)
                  (assert (list? l))
                  (if (null? l) #f (if (eq? (car l) e) l (memq e (cdr l))))))
               (cadaar (lambda (x) (car (cdr (car (car x))))))
               (length
                (lambda (l)
                  (assert (list? l))
                  (letrec ((rec
                            (lambda (l) (if (null? l) 0 (+ 1 (rec (cdr l)))))))
                    (rec l))))
               (char-ci<=?
                (lambda (c1 c2)
                  (assert (char? c1))
                  (assert (char? c2))
                  (letrec ((val3614 (char-ci<? c1 c2)))
                    (if val3614 val3614 (char-ci=? c1 c2)))))
               (string>? (lambda (s1 s2) (not (string<=? s1 s2))))
               (cdadr (lambda (x) (cdr (car (cdr x)))))
               (assoc
                (lambda (k l)
                  (assert (list? l))
                  (if (null? l)
                    #f
                    (if (equal? (caar l) k) (car l) (assoc k (cdr l))))))
               (caar (lambda (x) (car (car x))))
               (char>?
                (lambda (c1 c2)
                  (assert (char? c1))
                  (assert (char? c2))
                  (not (char<=? c1 c2))))
               (string<=?
                (lambda (s1 s2)
                  (letrec ((val3615 (string<? s1 s2)))
                    (if val3615 val3615 (string=? s1 s2)))))
               (for-each
                (lambda (f l)
                  (assert (procedure? f))
                  (assert (list? l))
                  (if (null? l)
                    #t
                    (if (pair? l)
                      (begin (f (car l)) (for-each f (cdr l)))
                      '()))))
               (abs (lambda (x) (assert (number? x)) (if (< x 0) (- 0 x) x)))
               (char-ci>=?
                (lambda (c1 c2)
                  (assert (char? c1))
                  (assert (char? c2))
                  (letrec ((val3616 (char-ci>? c1 c2)))
                    (if val3616 val3616 (char-ci=? c1 c2)))))
               (caddar (lambda (x) (car (cdr (cdr (car x))))))
               (newline (lambda () #f))
               (lcm (lambda (m n) (/ (abs (* m n)) (gcd m n))))
               (deref car)
               (list-ref
                (lambda (l index)
                  (assert (list? l))
                  (assert (number? index))
                  (assert (< index (length l)))
                  (if (= index 0) (car l) (list-ref (cdr l) (- index 1)))))
               (gcd (lambda (a b) (if (= b 0) a (gcd b (modulo a b))))))
        (letrec ((ping-behavior
                  (lambda ()
                    (letrec ((real-self (self^)))
                      (parametrize
                       ((self (lambda (m) ((dyn send^) real-self m))))
                       (receive
                        (((cons 'ping sender)
                          (begin
                            (print 'ping)
                            (sender (cons 'pong (self^)))
                            (ping-behavior)))
                         ((cons
                           'enhanced
                           (cons k3759 (cons j3763 (cons 'ping sender))))
                          (letrec ((kc3760 (k3759 j3763))
                                   (old-send3764 (dyn send^)))
                            (parametrize
                             ((send^
                               (lambda (rcv3761 msg3762)
                                 (old-send3764
                                  kc3760
                                  (cons rcv3761 msg3762)))))
                             (begin
                               (print 'ping)
                               (sender (cons 'pong (self^)))
                               (old-send3764 kc3760 'finish)))
                            (ping-behavior)))))))))
                 (pong-behavior
                  (lambda ()
                    (letrec ((real-self (self^)))
                      (parametrize
                       ((self (lambda (m) ((dyn send^) real-self m))))
                       (receive
                        (((cons 'pong sender)
                          (begin
                            (print 'pong)
                            (sender (cons 'ping (self^)))
                            (pong-behavior)))
                         ((cons
                           'enhanced
                           (cons k3766 (cons j3770 (cons 'pong sender))))
                          (letrec ((kc3767 (k3766 j3770))
                                   (old-send3771 (dyn send^)))
                            (parametrize
                             ((send^
                               (lambda (rcv3768 msg3769)
                                 (old-send3771
                                  kc3767
                                  (cons rcv3768 msg3769)))))
                             (begin
                               (print 'pong)
                               (sender (cons 'ping (self^)))
                               (old-send3771 kc3767 'finish)))
                            (pong-behavior)))))))))
                 (ping/c
                  (lambda ()
                    (lambda (k3775 j3776 a3774)
                      (lambda (v3777)
                        (letrec ((message3773
                                  (match
                                   v3777
                                   (((cons 'ping x3779)
                                     (cons
                                      'enhanced
                                      (cons
                                       (lambda (j3781)
                                         (letrec ((r
                                                   (lambda (trace3785)
                                                     (receive
                                                      (('finish
                                                        (begin
                                                          (if (member
                                                               'pong
                                                               trace3785)
                                                            #t
                                                            (blame j3781))))
                                                       ((pair
                                                         rcv3784
                                                         message3783)
                                                        (match
                                                         message3783
                                                         (((cons 'pong x3786)
                                                           (begin
                                                             ((dyn send^)
                                                              rcv3784
                                                              (cons
                                                               'enhanced
                                                               (cons
                                                                (lambda (j3788)
                                                                  (letrec ((r
                                                                            (lambda (trace3792)
                                                                              (receive
                                                                               (('finish
                                                                                 (begin))
                                                                                ((pair
                                                                                  rcv3791
                                                                                  message3790)
                                                                                 (ping/c)))))))
                                                                    (spawn^
                                                                     (r
                                                                      (list)))))
                                                                (cons
                                                                 j3781
                                                                 (cons
                                                                  'pong
                                                                  ((actor?
                                                                    j3781
                                                                    j3781)
                                                                   x3786))))))
                                                             (r
                                                              (cons
                                                               'pong
                                                               trace3785))))))))))))
                                           (spawn^ (r (list)))))
                                       (cons
                                        j3776
                                        (cons
                                         'ping
                                         ((actor? k3775 j3776) x3779))))))
                                    (x3778 (blame k3775))))))
                          (a3774 message3773)))))))
          (letrec ((ping
                    (letrec ((xj3793 'client) (xk3794 'server))
                      ((ping/c)
                       xj3793
                       xk3794
                       (letrec ((act (spawn^ (ping-behavior))))
                         (lambda (msg) ((dyn send^) act msg))))))
                   (pong
                    (letrec ((act (spawn^ (pong-behavior))))
                      (lambda (msg) ((dyn send^) act msg)))))
            (begin (ping (cons 'ping pong)) (wait-until-all-finished))))))))
