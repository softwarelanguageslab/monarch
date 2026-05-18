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
                (letrec ((val7521 (> x y)))
                  (if val7521
                    val7521
                    (letrec ((val7522 (= x y))) (if val7522 val7522 #f))))))
             (<=
              (lambda (x y)
                (assert (number? x))
                (letrec ((val7523 (< x y)))
                  (if val7523
                    val7523
                    (letrec ((val7524 (= x y))) (if val7524 val7524 #f))))))
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
                (lambda (g7540 g7541 g7542)
                  (if (real? g7542) g7542 (blame g7540 'real?))))
               (boolean?/c
                (lambda (g7543 g7544 g7545)
                  (if (boolean? g7545) g7545 (blame g7543 'boolean?))))
               (number?/c
                (lambda (g7546 g7547 g7548)
                  (if (number? g7548) g7548 (blame g7546 'number?))))
               (any/c
                (lambda (g7549 g7550 g7551)
                  (if ((lambda (v) #t) g7551)
                    g7551
                    (blame g7549 '(lambda (v) #t)))))
               (any?/c
                (lambda (g7552 g7553 g7554)
                  (if ((lambda (v) #t) g7554)
                    g7554
                    (blame g7552 '(lambda (v) #t)))))
               (cons?/c
                (lambda (g7555 g7556 g7557)
                  (if (pair? g7557) g7557 (blame g7555 'pair?))))
               (cons/c
                (lambda (k1 k2)
                  (lambda (k j v) (cons (k1 k j (car v)) (k2 k j (cdr v))))))
               (pair?/c
                (lambda (g7558 g7559 g7560)
                  (if (pair? g7560) g7560 (blame g7558 'pair?))))
               (integer?/c
                (lambda (g7561 g7562 g7563)
                  (if (integer? g7563) g7563 (blame g7561 'integer?))))
               (symbol?/c
                (lambda (g7564 g7565 g7566)
                  (if (symbol? g7566) g7566 (blame g7564 'symbol?))))
               (string?/c
                (lambda (g7567 g7568 g7569)
                  (if (string? g7569) g7569 (blame g7567 'string?))))
               (and/c
                (lambda (c1 c2)
                  (lambda (k j v) (if (c1 k j v) (c2 k j v) #f))))
               (or/c
                (lambda (c1 c2)
                  (lambda (k j v)
                    (letrec ((val7525 (c1 k j v)))
                      (if val7525 val7525 (c2 k j v))))))
               (null?/c
                (lambda (g7570 g7571 g7572)
                  (if (null? g7572) g7572 (blame g7570 'null?))))
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
                (lambda (g7573 g7574 g7575)
                  (if ((lambda (v) (not (= v 0))) g7575)
                    g7575
                    (blame g7573 '(lambda (v) (not (= v 0)))))))
               (>=/c
                (lambda (n)
                  (lambda (g7576 g7577 g7578)
                    (if ((lambda (v) (orig->= v n)) g7578)
                      g7578
                      (blame g7576 '(lambda (v) (orig->= v n)))))))
               (>/c
                (lambda (n)
                  (lambda (g7579 g7580 g7581)
                    (if ((lambda (v) (orig-> v n)) g7581)
                      g7581
                      (blame g7579 '(lambda (v) (orig-> v n)))))))
               (</c
                (lambda (n)
                  (lambda (g7582 g7583 g7584)
                    (if ((lambda (v) (orig-< v n)) g7584)
                      g7584
                      (blame g7582 '(lambda (v) (orig-< v n)))))))
               (<=/c
                (lambda (n)
                  (lambda (g7585 g7586 g7587)
                    (if ((lambda (v) (orig-<= v n)) g7587)
                      g7587
                      (blame g7585 '(lambda (v) (orig-<= v n)))))))
               (=/c
                (lambda (n)
                  (lambda (g7588 g7589 g7590)
                    (if ((lambda (v) (orig-= v n)) g7590)
                      g7590
                      (blame g7588 '(lambda (v) (orig-= v n)))))))
               (meta (lambda (v) v))
               (+
                (letrec ((xj7591 'server) (xk7592 'client))
                  ((lambda (j7595 k7596 f7597)
                     (lambda (g7593 g7594)
                       (number?/c
                        j7595
                        k7596
                        (f7597
                         (number?/c k7596 j7595 g7593)
                         (number?/c k7596 j7595 g7594)))))
                   xj7591
                   xk7592
                   (lambda (a b) (orig-+ a b)))))
               (-
                (letrec ((xj7598 'server) (xk7599 'client))
                  ((lambda (j7602 k7603 f7604)
                     (lambda (g7600 g7601)
                       (number?/c
                        j7602
                        k7603
                        (f7604
                         (number?/c k7603 j7602 g7600)
                         (number?/c k7603 j7602 g7601)))))
                   xj7598
                   xk7599
                   (lambda (a b) (orig-- a b)))))
               (*
                (letrec ((xj7605 'server) (xk7606 'client))
                  ((lambda (j7609 k7610 f7611)
                     (lambda (g7607 g7608)
                       (number?/c
                        j7609
                        k7610
                        (f7611
                         (number?/c k7610 j7609 g7607)
                         (number?/c k7610 j7609 g7608)))))
                   xj7605
                   xk7606
                   (lambda (a b) (orig-* a b)))))
               (<
                (letrec ((xj7612 'server) (xk7613 'client))
                  ((lambda (j7616 k7617 f7618)
                     (lambda (g7614 g7615)
                       (boolean?/c
                        j7616
                        k7617
                        (f7618
                         (number?/c k7617 j7616 g7614)
                         (number?/c k7617 j7616 g7615)))))
                   xj7612
                   xk7613
                   (lambda (a b) (orig-< a b)))))
               (>
                (letrec ((xj7619 'server) (xk7620 'client))
                  ((lambda (j7623 k7624 f7625)
                     (lambda (g7621 g7622)
                       (boolean?/c
                        j7623
                        k7624
                        (f7625
                         (number?/c k7624 j7623 g7621)
                         (number?/c k7624 j7623 g7622)))))
                   xj7619
                   xk7620
                   (lambda (a b) (orig-> a b)))))
               (<=
                (letrec ((xj7626 'server) (xk7627 'client))
                  ((lambda (j7630 k7631 f7632)
                     (lambda (g7628 g7629)
                       (boolean?/c
                        j7630
                        k7631
                        (f7632
                         (number?/c k7631 j7630 g7628)
                         (number?/c k7631 j7630 g7629)))))
                   xj7626
                   xk7627
                   (lambda (a b) (orig-<= a b)))))
               (>=
                (letrec ((xj7633 'server) (xk7634 'client))
                  ((lambda (j7637 k7638 f7639)
                     (lambda (g7635 g7636)
                       (boolean?/c
                        j7637
                        k7638
                        (f7639
                         (number?/c k7638 j7637 g7635)
                         (number?/c k7638 j7637 g7636)))))
                   xj7633
                   xk7634
                   (lambda (a b) (orig->= a b)))))
               (add1 (lambda (x) (+ x 1)))
               (/
                (letrec ((xj7640 'server) (xk7641 'client))
                  ((lambda (j7644 k7645 f7646)
                     (lambda (g7642 g7643)
                       (number?/c
                        j7644
                        k7645
                        (f7646
                         (number?/c k7645 j7644 g7642)
                         (number?/c k7645 j7644 g7643)))))
                   xj7640
                   xk7641
                   (lambda (a b) (orig-/ a b)))))
               (car
                (letrec ((xj7647 'server) (xk7648 'client))
                  ((lambda (j7650 k7651 f7652)
                     (lambda (g7649)
                       (any/c
                        j7650
                        k7651
                        (f7652 (pair?/c k7651 j7650 g7649)))))
                   xj7647
                   xk7648
                   (lambda (p) (orig-car p)))))
               (cdr
                (letrec ((xj7653 'server) (xk7654 'client))
                  ((lambda (j7656 k7657 f7658)
                     (lambda (g7655)
                       (any/c
                        j7656
                        k7657
                        (f7658 (pair?/c k7657 j7656 g7655)))))
                   xj7653
                   xk7654
                   (lambda (p) (orig-cdr p)))))
               (cons
                (letrec ((xj7659 'server) (xk7660 'client))
                  ((lambda (j7663 k7664 f7665)
                     (lambda (g7661 g7662)
                       (pair?/c
                        j7663
                        k7664
                        (f7665
                         (any/c k7664 j7663 g7661)
                         (any/c k7664 j7663 g7662)))))
                   xj7659
                   xk7660
                   (lambda (a b) (orig-cons a b)))))
               (vector?/c
                (lambda (g7666 g7667 g7668)
                  (if (vector? g7668) g7668 (blame g7666 'vector?))))
               (vector-ref
                (letrec ((xj7669 'server) (xk7670 'client))
                  ((lambda (j7673 k7674 f7675)
                     (lambda (g7671 g7672)
                       (any/c
                        j7673
                        k7674
                        (f7675
                         (vector?/c k7674 j7673 g7671)
                         (integer?/c k7674 j7673 g7672)))))
                   xj7669
                   xk7670
                   (lambda (v i) (orig-vector-ref v i)))))
               (vector-set!
                (letrec ((xj7676 'server) (xk7677 'client))
                  ((lambda (j7681 k7682 f7683)
                     (lambda (g7678 g7679 g7680)
                       (any/c
                        j7681
                        k7682
                        (f7683
                         (vector?/c k7682 j7681 g7678)
                         (integer?/c k7682 j7681 g7679)
                         (any/c k7682 j7681 g7680)))))
                   xj7676
                   xk7677
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
                  (letrec ((val7526 (char<? c1 c2)))
                    (if val7526 val7526 (char=? c1 c2)))))
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
                  (letrec ((val7527 (= (char->integer c) 9)))
                    (if val7527
                      val7527
                      (letrec ((val7528 (= (char->integer c) 10)))
                        (if val7528 val7528 (= (char->integer c) 32)))))))
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
                  (letrec ((val7529 (eq? a b)))
                    (if val7529
                      val7529
                      (letrec ((val7530 (if (null? a) (null? b) #f)))
                        (if val7530
                          val7530
                          (letrec ((val7531
                                    (if (string? a)
                                      (if (string? b) (string=? a b) #f)
                                      #f)))
                            (if val7531
                              val7531
                              (letrec ((val7532
                                        (if (pair? a)
                                          (if (pair? b)
                                            (if (equal? (car a) (car b))
                                              (equal? (cdr a) (cdr b))
                                              #f)
                                            #f)
                                          #f)))
                                (if val7532
                                  val7532
                                  (if (vector? a)
                                    (if (vector? b)
                                      (letrec ((n (vector-length a)))
                                        (if (= (vector-length b) n)
                                          (letrec ((loop
                                                    (lambda (i)
                                                      (letrec ((val7533
                                                                (= i n)))
                                                        (if val7533
                                                          val7533
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
                  (letrec ((val7534 (char>? c1 c2)))
                    (if val7534 val7534 (char=? c1 c2)))))
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
                  (letrec ((val7535 (string>? s1 s2)))
                    (if val7535 val7535 (string=? s1 s2)))))
               (cadr (lambda (x) (car (cdr x))))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec ((val7536 (if (pair? l) (list? (cdr l)) #f)))
                    (if val7536 val7536 (null? l)))))
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
                  (letrec ((val7537 (char-ci<? c1 c2)))
                    (if val7537 val7537 (char-ci=? c1 c2)))))
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
                  (letrec ((val7538 (string<? s1 s2)))
                    (if val7538 val7538 (string=? s1 s2)))))
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
                  (letrec ((val7539 (char-ci>? c1 c2)))
                    (if val7539 val7539 (char-ci=? c1 c2)))))
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
               (gcd (lambda (a b) (if (= b 0) a (gcd b (modulo a b)))))
               (router/c
                (lambda (k7686 j7687 a7685)
                  (lambda (v7688)
                    (letrec ((result7711
                              ((lambda (k7690 j7691 v7692)
                                 (match
                                  v7692
                                  (((cons request (cons x7693 x7694))
                                    (cons
                                     'enhanced
                                     (cons
                                      (lambda (client-ref)
                                        (lambda (j7696)
                                          (letrec ((r
                                                    (lambda (trace7700)
                                                      (receive
                                                       (('finish
                                                         (begin
                                                           (if (member
                                                                'request
                                                                trace7700)
                                                             #t
                                                             (blame j7696))))
                                                        ((pair
                                                          rcv7699
                                                          message7698)
                                                         (match
                                                          message7698
                                                          (((cons
                                                             'request
                                                             (cons
                                                              x7701
                                                              x7702))
                                                            (begin
                                                              ((dyn send^)
                                                               rcv7699
                                                               (cons
                                                                'enhanced
                                                                (cons
                                                                 (lambda _
                                                                   (lambda (j7704)
                                                                     (letrec ((r
                                                                               (lambda (trace7708)
                                                                                 (receive
                                                                                  (('finish
                                                                                    (begin
                                                                                      (if (member
                                                                                           'reply
                                                                                           trace7708)
                                                                                        #t
                                                                                        (blame
                                                                                         j7704))))
                                                                                   ((pair
                                                                                     rcv7707
                                                                                     message7706)
                                                                                    (match
                                                                                     message7706
                                                                                     (((cons
                                                                                        'reply
                                                                                        (cons
                                                                                         x7709
                                                                                         x7710))
                                                                                       (begin
                                                                                         ((dyn
                                                                                           send^)
                                                                                          rcv7707
                                                                                          (cons
                                                                                           'enhanced
                                                                                           (cons
                                                                                            unconstrained/c
                                                                                            (cons
                                                                                             j7704
                                                                                             (cons
                                                                                              'reply
                                                                                              (cons
                                                                                               ((list
                                                                                                 j7704
                                                                                                 j7704)
                                                                                                x7709)
                                                                                               ((integer?
                                                                                                 j7704
                                                                                                 j7704)
                                                                                                x7710)))))))
                                                                                         (r
                                                                                          (cons
                                                                                           'reply
                                                                                           trace7708))))))))))))
                                                                       (spawn^
                                                                        (r
                                                                         (list))))))
                                                                 (cons
                                                                  j7696
                                                                  (cons
                                                                   'request
                                                                   (cons
                                                                    ((list
                                                                      j7696
                                                                      j7696)
                                                                     x7701)
                                                                    ((actor?
                                                                      j7696
                                                                      j7696)
                                                                     x7702)))))))
                                                              (r
                                                               (cons
                                                                'request
                                                                trace7700))))))))))))
                                            (spawn^ (r (list))))))
                                      (cons
                                       j7691
                                       (cons
                                        request
                                        (cons
                                         ((list k7690 j7691) x7693)
                                         ((actor? k7690 j7691) x7694))))))))))
                               k7686
                               j7687
                               v7688)))
                      (if result7711 (a7685 result7711) (blame k7686))))))
               (pick-service
                (lambda (services)
                  (list-ref services (random (length services)))))
               (client-behavior
                (lambda (router)
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (('main
                        (begin
                          (router (cons 'request (dyn self)))
                          (client-behavior router)))
                       ((cons 'reply answer)
                        (begin (displayln answer) (terminate)))
                       ((cons 'enhanced (cons k7713 (cons j7717 'main)))
                        (letrec ((kc7714 (k7713 j7717))
                                 (old-send7718 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv7715 msg7716)
                               (old-send7718 kc7714 (cons rcv7715 msg7716)))))
                           (begin
                             (router (cons 'request (dyn self)))
                             (old-send7718 kc7714 'finish)))
                          (client-behavior router)))
                       ((cons
                         'enhanced
                         (cons k7720 (cons j7724 (cons 'reply answer))))
                        (letrec ((kc7721 (k7720 j7724))
                                 (old-send7725 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv7722 msg7723)
                               (old-send7725 kc7721 (cons rcv7722 msg7723)))))
                           (begin
                             (displayln answer)
                             (old-send7725 kc7721 'finish)))
                          (terminate)))))))))
               (router-behavior
                (lambda (services)
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (((cons 'request sender)
                        (begin
                          ((pick-service services) (cons 'request sender))
                          (router-behavior services)))
                       ((cons
                         'enhanced
                         (cons k7727 (cons j7731 (cons 'request sender))))
                        (letrec ((kc7728 (k7727 j7731))
                                 (old-send7732 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv7729 msg7730)
                               (old-send7732 kc7728 (cons rcv7729 msg7730)))))
                           (begin
                             ((pick-service services) (cons 'request sender))
                             (old-send7732 kc7728 'finish)))
                          (router-behavior services)))))))))
               (service-behavior
                (lambda ()
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (((cons 'request sender)
                        (begin
                          'do-work
                          (sender (cons 'reply 42))
                          (service-behavior)))
                       ((cons
                         'enhanced
                         (cons k7734 (cons j7738 (cons 'request sender))))
                        (letrec ((kc7735 (k7734 j7738))
                                 (old-send7739 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv7736 msg7737)
                               (old-send7739 kc7735 (cons rcv7736 msg7737)))))
                           (begin
                             'do-work
                             (sender (cons 'reply 42))
                             (old-send7739 kc7735 'finish)))
                          (service-behavior)))))))))
               (service
                (letrec ((act (spawn^ (service-behavior))))
                  (lambda (msg) ((dyn send^) act msg))))
               (router
                (letrec ((xj7741 (loc 'client)) (xk7742 (loc 'server)))
                  (router/c
                   xj7741
                   xk7742
                   (spawn^ (router-behavior (list service))))))
               (client
                (letrec ((act (spawn^ (client-behavior router))))
                  (lambda (msg) ((dyn send^) act msg)))))
        (client 'main)
        (wait-until-all-finished)))))
