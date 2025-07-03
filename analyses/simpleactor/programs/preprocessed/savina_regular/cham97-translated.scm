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
                (letrec ((val7518 (> x y)))
                  (if val7518
                    val7518
                    (letrec ((val7519 (= x y))) (if val7519 val7519 #f))))))
             (<=
              (lambda (x y)
                (assert (number? x))
                (letrec ((val7520 (< x y)))
                  (if val7520
                    val7520
                    (letrec ((val7521 (= x y))) (if val7521 val7521 #f))))))
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
                (lambda (g7537 g7538 g7539)
                  (if (real? g7539) g7539 (blame g7537 'real?))))
               (boolean?/c
                (lambda (g7540 g7541 g7542)
                  (if (boolean? g7542) g7542 (blame g7540 'boolean?))))
               (number?/c
                (lambda (g7543 g7544 g7545)
                  (if (number? g7545) g7545 (blame g7543 'number?))))
               (any/c
                (lambda (g7546 g7547 g7548)
                  (if ((lambda (v) #t) g7548)
                    g7548
                    (blame g7546 '(lambda (v) #t)))))
               (any?/c
                (lambda (g7549 g7550 g7551)
                  (if ((lambda (v) #t) g7551)
                    g7551
                    (blame g7549 '(lambda (v) #t)))))
               (cons?/c
                (lambda (g7552 g7553 g7554)
                  (if (pair? g7554) g7554 (blame g7552 'pair?))))
               (cons/c
                (lambda (k1 k2)
                  (lambda (k j v) (cons (k1 k j (car v)) (k2 k j (cdr v))))))
               (pair?/c
                (lambda (g7555 g7556 g7557)
                  (if (pair? g7557) g7557 (blame g7555 'pair?))))
               (integer?/c
                (lambda (g7558 g7559 g7560)
                  (if (integer? g7560) g7560 (blame g7558 'integer?))))
               (symbol?/c
                (lambda (g7561 g7562 g7563)
                  (if (symbol? g7563) g7563 (blame g7561 'symbol?))))
               (string?/c
                (lambda (g7564 g7565 g7566)
                  (if (string? g7566) g7566 (blame g7564 'string?))))
               (and/c
                (lambda (c1 c2)
                  (lambda (k j v) (if (c1 k j v) (c2 k j v) #f))))
               (or/c
                (lambda (c1 c2)
                  (lambda (k j v)
                    (letrec ((val7522 (c1 k j v)))
                      (if val7522 val7522 (c2 k j v))))))
               (null?/c
                (lambda (g7567 g7568 g7569)
                  (if (null? g7569) g7569 (blame g7567 'null?))))
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
                (lambda (g7570 g7571 g7572)
                  (if ((lambda (v) (not (= v 0))) g7572)
                    g7572
                    (blame g7570 '(lambda (v) (not (= v 0)))))))
               (>=/c
                (lambda (n)
                  (lambda (g7573 g7574 g7575)
                    (if ((lambda (v) (orig->= v n)) g7575)
                      g7575
                      (blame g7573 '(lambda (v) (orig->= v n)))))))
               (>/c
                (lambda (n)
                  (lambda (g7576 g7577 g7578)
                    (if ((lambda (v) (orig-> v n)) g7578)
                      g7578
                      (blame g7576 '(lambda (v) (orig-> v n)))))))
               (</c
                (lambda (n)
                  (lambda (g7579 g7580 g7581)
                    (if ((lambda (v) (orig-< v n)) g7581)
                      g7581
                      (blame g7579 '(lambda (v) (orig-< v n)))))))
               (<=/c
                (lambda (n)
                  (lambda (g7582 g7583 g7584)
                    (if ((lambda (v) (orig-<= v n)) g7584)
                      g7584
                      (blame g7582 '(lambda (v) (orig-<= v n)))))))
               (=/c
                (lambda (n)
                  (lambda (g7585 g7586 g7587)
                    (if ((lambda (v) (orig-= v n)) g7587)
                      g7587
                      (blame g7585 '(lambda (v) (orig-= v n)))))))
               (meta (lambda (v) v))
               (+
                (letrec ((xj7588 'server) (xk7589 'client))
                  ((lambda (j7592 k7593 f7594)
                     (lambda (g7590 g7591)
                       (number?/c
                        j7592
                        k7593
                        (f7594
                         (number?/c j7592 k7593 g7590)
                         (number?/c j7592 k7593 g7591)))))
                   xj7588
                   xk7589
                   (lambda (a b) (orig-+ a b)))))
               (-
                (letrec ((xj7595 'server) (xk7596 'client))
                  ((lambda (j7599 k7600 f7601)
                     (lambda (g7597 g7598)
                       (number?/c
                        j7599
                        k7600
                        (f7601
                         (number?/c j7599 k7600 g7597)
                         (number?/c j7599 k7600 g7598)))))
                   xj7595
                   xk7596
                   (lambda (a b) (orig-- a b)))))
               (*
                (letrec ((xj7602 'server) (xk7603 'client))
                  ((lambda (j7606 k7607 f7608)
                     (lambda (g7604 g7605)
                       (number?/c
                        j7606
                        k7607
                        (f7608
                         (number?/c j7606 k7607 g7604)
                         (number?/c j7606 k7607 g7605)))))
                   xj7602
                   xk7603
                   (lambda (a b) (orig-* a b)))))
               (<
                (letrec ((xj7609 'server) (xk7610 'client))
                  ((lambda (j7613 k7614 f7615)
                     (lambda (g7611 g7612)
                       (boolean?/c
                        j7613
                        k7614
                        (f7615
                         (number?/c j7613 k7614 g7611)
                         (number?/c j7613 k7614 g7612)))))
                   xj7609
                   xk7610
                   (lambda (a b) (orig-< a b)))))
               (>
                (letrec ((xj7616 'server) (xk7617 'client))
                  ((lambda (j7620 k7621 f7622)
                     (lambda (g7618 g7619)
                       (boolean?/c
                        j7620
                        k7621
                        (f7622
                         (number?/c j7620 k7621 g7618)
                         (number?/c j7620 k7621 g7619)))))
                   xj7616
                   xk7617
                   (lambda (a b) (orig-> a b)))))
               (<=
                (letrec ((xj7623 'server) (xk7624 'client))
                  ((lambda (j7627 k7628 f7629)
                     (lambda (g7625 g7626)
                       (boolean?/c
                        j7627
                        k7628
                        (f7629
                         (number?/c j7627 k7628 g7625)
                         (number?/c j7627 k7628 g7626)))))
                   xj7623
                   xk7624
                   (lambda (a b) (orig-<= a b)))))
               (>=
                (letrec ((xj7630 'server) (xk7631 'client))
                  ((lambda (j7634 k7635 f7636)
                     (lambda (g7632 g7633)
                       (boolean?/c
                        j7634
                        k7635
                        (f7636
                         (number?/c j7634 k7635 g7632)
                         (number?/c j7634 k7635 g7633)))))
                   xj7630
                   xk7631
                   (lambda (a b) (orig->= a b)))))
               (add1 (lambda (x) (+ x 1)))
               (/
                (letrec ((xj7637 'server) (xk7638 'client))
                  ((lambda (j7641 k7642 f7643)
                     (lambda (g7639 g7640)
                       (number?/c
                        j7641
                        k7642
                        (f7643
                         (number?/c j7641 k7642 g7639)
                         (number?/c j7641 k7642 g7640)))))
                   xj7637
                   xk7638
                   (lambda (a b) (orig-/ a b)))))
               (car
                (letrec ((xj7644 'server) (xk7645 'client))
                  ((lambda (j7647 k7648 f7649)
                     (lambda (g7646)
                       (any/c
                        j7647
                        k7648
                        (f7649 (pair?/c j7647 k7648 g7646)))))
                   xj7644
                   xk7645
                   (lambda (p) (orig-car p)))))
               (cdr
                (letrec ((xj7650 'server) (xk7651 'client))
                  ((lambda (j7653 k7654 f7655)
                     (lambda (g7652)
                       (any/c
                        j7653
                        k7654
                        (f7655 (pair?/c j7653 k7654 g7652)))))
                   xj7650
                   xk7651
                   (lambda (p) (orig-cdr p)))))
               (cons
                (letrec ((xj7656 'server) (xk7657 'client))
                  ((lambda (j7660 k7661 f7662)
                     (lambda (g7658 g7659)
                       (pair?/c
                        j7660
                        k7661
                        (f7662
                         (any/c j7660 k7661 g7658)
                         (any/c j7660 k7661 g7659)))))
                   xj7656
                   xk7657
                   (lambda (a b) (orig-cons a b)))))
               (vector?/c
                (lambda (g7663 g7664 g7665)
                  (if (vector? g7665) g7665 (blame g7663 'vector?))))
               (vector-ref
                (letrec ((xj7666 'server) (xk7667 'client))
                  ((lambda (j7670 k7671 f7672)
                     (lambda (g7668 g7669)
                       (any/c
                        j7670
                        k7671
                        (f7672
                         (vector?/c j7670 k7671 g7668)
                         (integer?/c j7670 k7671 g7669)))))
                   xj7666
                   xk7667
                   (lambda (v i) (orig-vector-ref v i)))))
               (vector-set!
                (letrec ((xj7673 'server) (xk7674 'client))
                  ((lambda (j7678 k7679 f7680)
                     (lambda (g7675 g7676 g7677)
                       (any/c
                        j7678
                        k7679
                        (f7680
                         (vector?/c j7678 k7679 g7675)
                         (integer?/c j7678 k7679 g7676)
                         (any/c j7678 k7679 g7677)))))
                   xj7673
                   xk7674
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
                  (letrec ((val7523 (char<? c1 c2)))
                    (if val7523 val7523 (char=? c1 c2)))))
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
                  (letrec ((val7524 (= (char->integer c) 9)))
                    (if val7524
                      val7524
                      (letrec ((val7525 (= (char->integer c) 10)))
                        (if val7525 val7525 (= (char->integer c) 32)))))))
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
                  (letrec ((val7526 (eq? a b)))
                    (if val7526
                      val7526
                      (letrec ((val7527 (if (null? a) (null? b) #f)))
                        (if val7527
                          val7527
                          (letrec ((val7528
                                    (if (string? a)
                                      (if (string? b) (string=? a b) #f)
                                      #f)))
                            (if val7528
                              val7528
                              (letrec ((val7529
                                        (if (pair? a)
                                          (if (pair? b)
                                            (if (equal? (car a) (car b))
                                              (equal? (cdr a) (cdr b))
                                              #f)
                                            #f)
                                          #f)))
                                (if val7529
                                  val7529
                                  (if (vector? a)
                                    (if (vector? b)
                                      (letrec ((n (vector-length a)))
                                        (if (= (vector-length b) n)
                                          (letrec ((loop
                                                    (lambda (i)
                                                      (letrec ((val7530
                                                                (= i n)))
                                                        (if val7530
                                                          val7530
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
                  (letrec ((val7531 (char>? c1 c2)))
                    (if val7531 val7531 (char=? c1 c2)))))
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
                  (letrec ((val7532 (string>? s1 s2)))
                    (if val7532 val7532 (string=? s1 s2)))))
               (cadr (lambda (x) (car (cdr x))))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec ((val7533 (if (pair? l) (list? (cdr l)) #f)))
                    (if val7533 val7533 (null? l)))))
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
                  (letrec ((val7534 (char-ci<? c1 c2)))
                    (if val7534 val7534 (char-ci=? c1 c2)))))
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
                  (letrec ((val7535 (string<? s1 s2)))
                    (if val7535 val7535 (string=? s1 s2)))))
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
                  (letrec ((val7536 (char-ci>? c1 c2)))
                    (if val7536 val7536 (char-ci=? c1 c2)))))
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
        (letrec ((n-meetings 3)
                 (n-chameneos 10)
                 (n-mailboxes 1)
                 (complement
                  (lambda (color other-color)
                    (case color
                      ((red)
                       (case other-color
                         ((red) 'red)
                         ((yellow) 'blue)
                         ((blue) 'yellow)
                         ((faded) 'faded)))
                      ((yellow)
                       (case other-color
                         ((red) 'blue)
                         ((yellow) 'yellow)
                         ((blue) 'red)
                         ((faded) 'faded)))
                      ((blue)
                       (case other-color
                         ((red) 'yellow)
                         ((yellow) 'red)
                         ((blue) 'blue)
                         ((faded) 'faded)))
                      ((faded) 'faded))))
                 (pick-color
                  (lambda (i)
                    (case i
                      ((0) 'red)
                      ((1) 'yellow)
                      ((2) 'blue)
                      ((3) 'faded))))
                 (mall-actor
                  (lambda (waiting-chameneo n sum-meetings num-faded)
                    (letrec ((real-self (self^)))
                      (parametrize
                       ((self (lambda (m) ((dyn send^) real-self m))))
                       (receive
                        (((cons 'meeting-count (cons count sender))
                          (begin
                            (if (= (+ num-faded 1) n-chameneos)
                              (begin (log "mall done~n") (terminate))
                              (mall-actor
                               waiting-chameneo
                               n
                               (+ sum-meetings count)
                               (+ num-faded 1)))))
                         ((cons 'meet (cons color sender))
                          (begin
                            (if (> n 0)
                              (if waiting-chameneo
                                (begin
                                  '()
                                  (mall-actor
                                   #f
                                   (- n 1)
                                   sum-meetings
                                   num-faded))
                                (mall-actor sender n sum-meetings num-faded))
                              (begin
                                '()
                                (mall-actor
                                 waiting-chameneo
                                 n
                                 sum-meetings
                                 num-faded)))))
                         ((cons
                           'enhanced
                           (cons
                            k7681
                            (cons
                             j7685
                             (cons 'meeting-count (cons count sender)))))
                          (letrec ((kc7682 (k7681 j7685))
                                   (old-send7686 (dyn send^)))
                            (parametrize
                             ((send^
                               (lambda (rcv7683 msg7684)
                                 (old-send7686
                                  kc7682
                                  (cons rcv7683 msg7684)))))
                             (begin (old-send7686 kc7682 'finish)))
                            (if (= (+ num-faded 1) n-chameneos)
                              (begin (log "mall done~n") (terminate))
                              (mall-actor
                               waiting-chameneo
                               n
                               (+ sum-meetings count)
                               (+ num-faded 1)))))
                         ((cons
                           'enhanced
                           (cons
                            k7688
                            (cons j7692 (cons 'meet (cons color sender)))))
                          (letrec ((kc7689 (k7688 j7692))
                                   (old-send7693 (dyn send^)))
                            (parametrize
                             ((send^
                               (lambda (rcv7690 msg7691)
                                 (old-send7693
                                  kc7689
                                  (cons rcv7690 msg7691)))))
                             (begin (old-send7693 kc7689 'finish)))
                            (if (> n 0)
                              (if waiting-chameneo
                                (begin
                                  '()
                                  (mall-actor
                                   #f
                                   (- n 1)
                                   sum-meetings
                                   num-faded))
                                (mall-actor sender n sum-meetings num-faded))
                              (begin
                                '()
                                (mall-actor
                                 waiting-chameneo
                                 n
                                 sum-meetings
                                 num-faded)))))))))))
                 (create-mall
                  (lambda ()
                    (letrec ((mall
                              (letrec ((act
                                        (spawn^
                                         (mall-actor #f n-meetings 0 0))))
                                (lambda (msg) ((dyn send^) act msg))))
                             (loop
                              (lambda (i)
                                (if (= i n-chameneos)
                                  'done
                                  (begin
                                    (create-chameneo
                                     mall
                                     (pick-color (modulo i 3))
                                     i)
                                    (loop (+ i 1)))))))
                      (loop 0)
                      mall)))
                 (chameneo-actor
                  (lambda (mall meetings color id)
                    (letrec ((real-self (self^)))
                      (parametrize
                       ((self (lambda (m) ((dyn send^) real-self m))))
                       (receive
                        (((cons 'meet (cons other-color sender))
                          (begin
                            (letrec ((new-color
                                      (complement color other-color)))
                              (sender
                               (cons 'change (cons new-color (dyn self))))
                              (mall (cons 'meet (cons new-color (dyn self))))
                              (chameneo-actor mall meetings new-color id))))
                         ((cons 'change new-color)
                          (begin
                            (mall (cons 'meet (cons new-color (dyn self))))
                            (chameneo-actor mall (+ meetings 1) new-color id)))
                         ((cons 'exit sender)
                          (begin
                            (sender
                             (cons 'meeting-count (cons meetings (dyn self))))
                            (terminate)))
                         ((cons
                           'enhanced
                           (cons
                            k7695
                            (cons
                             j7699
                             (cons 'meet (cons other-color sender)))))
                          (letrec ((kc7696 (k7695 j7699))
                                   (old-send7700 (dyn send^)))
                            (parametrize
                             ((send^
                               (lambda (rcv7697 msg7698)
                                 (old-send7700
                                  kc7696
                                  (cons rcv7697 msg7698)))))
                             (begin (old-send7700 kc7696 'finish)))
                            (letrec ((new-color
                                      (complement color other-color)))
                              (sender
                               (cons 'change (cons new-color (dyn self))))
                              (mall (cons 'meet (cons new-color (dyn self))))
                              (chameneo-actor mall meetings new-color id))))
                         ((cons
                           'enhanced
                           (cons k7702 (cons j7706 (cons 'change new-color))))
                          (letrec ((kc7703 (k7702 j7706))
                                   (old-send7707 (dyn send^)))
                            (parametrize
                             ((send^
                               (lambda (rcv7704 msg7705)
                                 (old-send7707
                                  kc7703
                                  (cons rcv7704 msg7705)))))
                             (begin
                               (mall (cons 'meet (cons new-color (dyn self))))
                               (old-send7707 kc7703 'finish)))
                            (chameneo-actor mall (+ meetings 1) new-color id)))
                         ((cons
                           'enhanced
                           (cons k7709 (cons j7713 (cons 'exit sender))))
                          (letrec ((kc7710 (k7709 j7713))
                                   (old-send7714 (dyn send^)))
                            (parametrize
                             ((send^
                               (lambda (rcv7711 msg7712)
                                 (old-send7714
                                  kc7710
                                  (cons rcv7711 msg7712)))))
                             (begin
                               (sender
                                (cons
                                 'meeting-count
                                 (cons meetings (dyn self))))
                               (old-send7714 kc7710 'finish)))
                            (terminate)))))))))
                 (create-chameneo
                  (lambda (mall color id)
                    (letrec ((chameneo
                              (letrec ((act
                                        (spawn^
                                         (chameneo-actor mall 0 color id))))
                                (lambda (msg) ((dyn send^) act msg)))))
                      '()
                      chameneo))))
          (create-mall))))))
