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
                (lambda (g7538 g7539 g7540)
                  (if (real? g7540) g7540 (blame g7538 'real?))))
               (boolean?/c
                (lambda (g7541 g7542 g7543)
                  (if (boolean? g7543) g7543 (blame g7541 'boolean?))))
               (number?/c
                (lambda (g7544 g7545 g7546)
                  (if (number? g7546) g7546 (blame g7544 'number?))))
               (any/c
                (lambda (g7547 g7548 g7549)
                  (if ((lambda (v) #t) g7549)
                    g7549
                    (blame g7547 '(lambda (v) #t)))))
               (any?/c
                (lambda (g7550 g7551 g7552)
                  (if ((lambda (v) #t) g7552)
                    g7552
                    (blame g7550 '(lambda (v) #t)))))
               (cons?/c
                (lambda (g7553 g7554 g7555)
                  (if (pair? g7555) g7555 (blame g7553 'pair?))))
               (cons/c
                (lambda (k1 k2)
                  (lambda (k j v) (cons (k1 k j (car v)) (k2 k j (cdr v))))))
               (pair?/c
                (lambda (g7556 g7557 g7558)
                  (if (pair? g7558) g7558 (blame g7556 'pair?))))
               (integer?/c
                (lambda (g7559 g7560 g7561)
                  (if (integer? g7561) g7561 (blame g7559 'integer?))))
               (symbol?/c
                (lambda (g7562 g7563 g7564)
                  (if (symbol? g7564) g7564 (blame g7562 'symbol?))))
               (string?/c
                (lambda (g7565 g7566 g7567)
                  (if (string? g7567) g7567 (blame g7565 'string?))))
               (and/c
                (lambda (c1 c2)
                  (lambda (k j v) (if (c1 k j v) (c2 k j v) #f))))
               (or/c
                (lambda (c1 c2)
                  (lambda (k j v)
                    (letrec ((val7522 (c1 k j v)))
                      (if val7522 val7522 (c2 k j v))))))
               (null?/c
                (lambda (g7568 g7569 g7570)
                  (if (null? g7570) g7570 (blame g7568 'null?))))
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
                (lambda (g7571 g7572 g7573)
                  (if ((lambda (v) (not (= v 0))) g7573)
                    g7573
                    (blame g7571 '(lambda (v) (not (= v 0)))))))
               (>=/c
                (lambda (n)
                  (lambda (g7574 g7575 g7576)
                    (if ((lambda (v) (orig->= v n)) g7576)
                      g7576
                      (blame g7574 '(lambda (v) (orig->= v n)))))))
               (>/c
                (lambda (n)
                  (lambda (g7577 g7578 g7579)
                    (if ((lambda (v) (orig-> v n)) g7579)
                      g7579
                      (blame g7577 '(lambda (v) (orig-> v n)))))))
               (</c
                (lambda (n)
                  (lambda (g7580 g7581 g7582)
                    (if ((lambda (v) (orig-< v n)) g7582)
                      g7582
                      (blame g7580 '(lambda (v) (orig-< v n)))))))
               (<=/c
                (lambda (n)
                  (lambda (g7583 g7584 g7585)
                    (if ((lambda (v) (orig-<= v n)) g7585)
                      g7585
                      (blame g7583 '(lambda (v) (orig-<= v n)))))))
               (=/c
                (lambda (n)
                  (lambda (g7586 g7587 g7588)
                    (if ((lambda (v) (orig-= v n)) g7588)
                      g7588
                      (blame g7586 '(lambda (v) (orig-= v n)))))))
               (meta (lambda (v) v))
               (+
                (letrec ((xj7589 'server) (xk7590 'client))
                  ((lambda (j7593 k7594 f7595)
                     (lambda (g7591 g7592)
                       (number?/c
                        j7593
                        k7594
                        (f7595
                         (number?/c j7593 k7594 g7591)
                         (number?/c j7593 k7594 g7592)))))
                   xj7589
                   xk7590
                   (lambda (a b) (orig-+ a b)))))
               (-
                (letrec ((xj7596 'server) (xk7597 'client))
                  ((lambda (j7600 k7601 f7602)
                     (lambda (g7598 g7599)
                       (number?/c
                        j7600
                        k7601
                        (f7602
                         (number?/c j7600 k7601 g7598)
                         (number?/c j7600 k7601 g7599)))))
                   xj7596
                   xk7597
                   (lambda (a b) (orig-- a b)))))
               (*
                (letrec ((xj7603 'server) (xk7604 'client))
                  ((lambda (j7607 k7608 f7609)
                     (lambda (g7605 g7606)
                       (number?/c
                        j7607
                        k7608
                        (f7609
                         (number?/c j7607 k7608 g7605)
                         (number?/c j7607 k7608 g7606)))))
                   xj7603
                   xk7604
                   (lambda (a b) (orig-* a b)))))
               (<
                (letrec ((xj7610 'server) (xk7611 'client))
                  ((lambda (j7614 k7615 f7616)
                     (lambda (g7612 g7613)
                       (boolean?/c
                        j7614
                        k7615
                        (f7616
                         (number?/c j7614 k7615 g7612)
                         (number?/c j7614 k7615 g7613)))))
                   xj7610
                   xk7611
                   (lambda (a b) (orig-< a b)))))
               (>
                (letrec ((xj7617 'server) (xk7618 'client))
                  ((lambda (j7621 k7622 f7623)
                     (lambda (g7619 g7620)
                       (boolean?/c
                        j7621
                        k7622
                        (f7623
                         (number?/c j7621 k7622 g7619)
                         (number?/c j7621 k7622 g7620)))))
                   xj7617
                   xk7618
                   (lambda (a b) (orig-> a b)))))
               (<=
                (letrec ((xj7624 'server) (xk7625 'client))
                  ((lambda (j7628 k7629 f7630)
                     (lambda (g7626 g7627)
                       (boolean?/c
                        j7628
                        k7629
                        (f7630
                         (number?/c j7628 k7629 g7626)
                         (number?/c j7628 k7629 g7627)))))
                   xj7624
                   xk7625
                   (lambda (a b) (orig-<= a b)))))
               (>=
                (letrec ((xj7631 'server) (xk7632 'client))
                  ((lambda (j7635 k7636 f7637)
                     (lambda (g7633 g7634)
                       (boolean?/c
                        j7635
                        k7636
                        (f7637
                         (number?/c j7635 k7636 g7633)
                         (number?/c j7635 k7636 g7634)))))
                   xj7631
                   xk7632
                   (lambda (a b) (orig->= a b)))))
               (add1 (lambda (x) (+ x 1)))
               (/
                (letrec ((xj7638 'server) (xk7639 'client))
                  ((lambda (j7642 k7643 f7644)
                     (lambda (g7640 g7641)
                       (number?/c
                        j7642
                        k7643
                        (f7644
                         (number?/c j7642 k7643 g7640)
                         (number?/c j7642 k7643 g7641)))))
                   xj7638
                   xk7639
                   (lambda (a b) (orig-/ a b)))))
               (car
                (letrec ((xj7645 'server) (xk7646 'client))
                  ((lambda (j7648 k7649 f7650)
                     (lambda (g7647)
                       (any/c
                        j7648
                        k7649
                        (f7650 (pair?/c j7648 k7649 g7647)))))
                   xj7645
                   xk7646
                   (lambda (p) (orig-car p)))))
               (cdr
                (letrec ((xj7651 'server) (xk7652 'client))
                  ((lambda (j7654 k7655 f7656)
                     (lambda (g7653)
                       (any/c
                        j7654
                        k7655
                        (f7656 (pair?/c j7654 k7655 g7653)))))
                   xj7651
                   xk7652
                   (lambda (p) (orig-cdr p)))))
               (cons
                (letrec ((xj7657 'server) (xk7658 'client))
                  ((lambda (j7661 k7662 f7663)
                     (lambda (g7659 g7660)
                       (pair?/c
                        j7661
                        k7662
                        (f7663
                         (any/c j7661 k7662 g7659)
                         (any/c j7661 k7662 g7660)))))
                   xj7657
                   xk7658
                   (lambda (a b) (orig-cons a b)))))
               (vector?/c
                (lambda (g7664 g7665 g7666)
                  (if (vector? g7666) g7666 (blame g7664 'vector?))))
               (vector-ref
                (letrec ((xj7667 'server) (xk7668 'client))
                  ((lambda (j7671 k7672 f7673)
                     (lambda (g7669 g7670)
                       (any/c
                        j7671
                        k7672
                        (f7673
                         (vector?/c j7671 k7672 g7669)
                         (integer?/c j7671 k7672 g7670)))))
                   xj7667
                   xk7668
                   (lambda (v i) (orig-vector-ref v i)))))
               (vector-set!
                (letrec ((xj7674 'server) (xk7675 'client))
                  ((lambda (j7679 k7680 f7681)
                     (lambda (g7676 g7677 g7678)
                       (any/c
                        j7679
                        k7680
                        (f7681
                         (vector?/c j7679 k7680 g7676)
                         (integer?/c j7679 k7680 g7677)
                         (any/c j7679 k7680 g7678)))))
                   xj7674
                   xk7675
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
        (letrec ((N 3)
                 (M 3)
                 (rounds M)
                 (num-forks N)
                 (counter-actor
                  (lambda (n)
                    (letrec ((real-self (self^)))
                      (parametrize
                       ((self (lambda (m) ((dyn send^) real-self m))))
                       (receive
                        (((cons 'add m) (begin (counter-actor (+ n m))))
                         ('finish (begin (display n) (terminate)))
                         ((cons
                           'enhanced
                           (cons k7682 (cons j7686 (cons 'add m))))
                          (letrec ((kc7683 (k7682 j7686))
                                   (old-send7687 (dyn send^)))
                            (parametrize
                             ((send^
                               (lambda (rcv7684 msg7685)
                                 (old-send7687
                                  kc7683
                                  (cons rcv7684 msg7685)))))
                             (begin (old-send7687 kc7683 'finish)))
                            (counter-actor (+ n m))))
                         ((cons 'enhanced (cons k7689 (cons j7693 'finish)))
                          (letrec ((kc7690 (k7689 j7693))
                                   (old-send7694 (dyn send^)))
                            (parametrize
                             ((send^
                               (lambda (rcv7691 msg7692)
                                 (old-send7694
                                  kc7690
                                  (cons rcv7691 msg7692)))))
                             (begin (display n) (old-send7694 kc7690 'finish)))
                            (terminate)))))))))
                 (arbitrator-actor
                  (lambda (forks num-exited)
                    (letrec ((real-self (self^)))
                      (parametrize
                       ((self (lambda (m) ((dyn send^) real-self m))))
                       (receive
                        (((cons 'hungry (cons p id))
                          (begin
                            (letrec ((left id)
                                     (right (modulo (+ id 1) num-forks)))
                              (if (letrec ((val7537 (vector-ref forks left)))
                                    (if val7537
                                      val7537
                                      (vector-ref forks right)))
                                (p 'denied)
                                (begin
                                  (vector-set! forks left #t)
                                  (vector-set! forks right #t)
                                  '())))
                            (arbitrator-actor forks num-exited)))
                         ((cons 'done id)
                          (begin
                            (displayln "done")
                            (letrec ((left id)
                                     (right (modulo (+ id 1) num-forks)))
                              (vector-set! left #f)
                              (vector-set! right #f))
                            (arbitrator-actor forks num-exited)))
                         ('exit
                          (begin
                            (if (= (+ num-exited 1) num-forks)
                              (terminate)
                              (arbitrator-actor forks (+ num-exited 1)))))
                         ((cons
                           'enhanced
                           (cons
                            k7696
                            (cons j7700 (cons 'hungry (cons p id)))))
                          (letrec ((kc7697 (k7696 j7700))
                                   (old-send7701 (dyn send^)))
                            (parametrize
                             ((send^
                               (lambda (rcv7698 msg7699)
                                 (old-send7701
                                  kc7697
                                  (cons rcv7698 msg7699)))))
                             (begin
                               (letrec ((left id)
                                        (right (modulo (+ id 1) num-forks)))
                                 (if (letrec ((val7537
                                               (vector-ref forks left)))
                                       (if val7537
                                         val7537
                                         (vector-ref forks right)))
                                   (p 'denied)
                                   (begin
                                     (vector-set! forks left #t)
                                     (vector-set! forks right #t)
                                     '())))
                               (old-send7701 kc7697 'finish)))
                            (arbitrator-actor forks num-exited)))
                         ((cons
                           'enhanced
                           (cons k7703 (cons j7707 (cons 'done id))))
                          (letrec ((kc7704 (k7703 j7707))
                                   (old-send7708 (dyn send^)))
                            (parametrize
                             ((send^
                               (lambda (rcv7705 msg7706)
                                 (old-send7708
                                  kc7704
                                  (cons rcv7705 msg7706)))))
                             (begin
                               (displayln "done")
                               (letrec ((left id)
                                        (right (modulo (+ id 1) num-forks)))
                                 (vector-set! left #f)
                                 (vector-set! right #f))
                               (old-send7708 kc7704 'finish)))
                            (arbitrator-actor forks num-exited)))
                         ((cons 'enhanced (cons k7710 (cons j7714 'exit)))
                          (letrec ((kc7711 (k7710 j7714))
                                   (old-send7715 (dyn send^)))
                            (parametrize
                             ((send^
                               (lambda (rcv7712 msg7713)
                                 (old-send7715
                                  kc7711
                                  (cons rcv7712 msg7713)))))
                             (begin (old-send7715 kc7711 'finish)))
                            (if (= (+ num-exited 1) num-forks)
                              (terminate)
                              (arbitrator-actor
                               forks
                               (+ num-exited 1)))))))))))
                 (philosopher-actor
                  (lambda (id rounds-so-far local-counter)
                    (letrec ((real-self (self^)))
                      (parametrize
                       ((self (lambda (m) ((dyn send^) real-self m))))
                       (receive
                        (('denied
                          (begin
                            (displayln 'denied)
                            '()
                            (philosopher-actor
                             id
                             rounds-so-far
                             (+ local-counter 1))))
                         ('eat
                          (begin
                            '()
                            (if (< (+ rounds-so-far 1) rounds)
                              (begin
                                ((dyn self) 'start)
                                (philosopher-actor
                                 id
                                 (+ rounds-so-far 1)
                                 local-counter))
                              (begin
                                (displayln (format "done ~a" id))
                                '()
                                (terminate)))))
                         ('start
                          (begin
                            '()
                            (philosopher-actor
                             id
                             rounds-so-far
                             local-counter)))
                         ((cons 'enhanced (cons k7717 (cons j7721 'denied)))
                          (letrec ((kc7718 (k7717 j7721))
                                   (old-send7722 (dyn send^)))
                            (parametrize
                             ((send^
                               (lambda (rcv7719 msg7720)
                                 (old-send7722
                                  kc7718
                                  (cons rcv7719 msg7720)))))
                             (begin
                               (displayln 'denied)
                               '()
                               (old-send7722 kc7718 'finish)))
                            (philosopher-actor
                             id
                             rounds-so-far
                             (+ local-counter 1))))
                         ((cons 'enhanced (cons k7724 (cons j7728 'eat)))
                          (letrec ((kc7725 (k7724 j7728))
                                   (old-send7729 (dyn send^)))
                            (parametrize
                             ((send^
                               (lambda (rcv7726 msg7727)
                                 (old-send7729
                                  kc7725
                                  (cons rcv7726 msg7727)))))
                             (begin '() (old-send7729 kc7725 'finish)))
                            (if (< (+ rounds-so-far 1) rounds)
                              (begin
                                ((dyn self) 'start)
                                (philosopher-actor
                                 id
                                 (+ rounds-so-far 1)
                                 local-counter))
                              (begin
                                (displayln (format "done ~a" id))
                                '()
                                (terminate)))))
                         ((cons 'enhanced (cons k7731 (cons j7735 'start)))
                          (letrec ((kc7732 (k7731 j7735))
                                   (old-send7736 (dyn send^)))
                            (parametrize
                             ((send^
                               (lambda (rcv7733 msg7734)
                                 (old-send7736
                                  kc7732
                                  (cons rcv7733 msg7734)))))
                             (begin '() (old-send7736 kc7732 'finish)))
                            (philosopher-actor
                             id
                             rounds-so-far
                             local-counter)))))))))
                 (counter
                  (letrec ((act (spawn^ (counter-actor 0))))
                    (lambda (msg) ((dyn send^) act msg))))
                 (arbitrator
                  (letrec ((act
                            (spawn^ (arbitrator-actor (vector #f #f #f) 0))))
                    (lambda (msg) ((dyn send^) act msg))))
                 (phil1
                  (letrec ((act (spawn^ (philosopher-actor 0 0 0))))
                    (lambda (msg) ((dyn send^) act msg))))
                 (phil2
                  (letrec ((act (spawn^ (philosopher-actor 0 0 0))))
                    (lambda (msg) ((dyn send^) act msg))))
                 (phil3
                  (letrec ((act (spawn^ (philosopher-actor 0 0 0))))
                    (lambda (msg) ((dyn send^) act msg)))))
          (phil1 'start)
          '()
          (phil3 'start))))))
