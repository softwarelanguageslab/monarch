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
         (loopy-actor (lambda () (receive ((_ (loopy-actor))))))
         (unconstrained/c (lambda payload (lambda j (spawn^ loopy-actor))))
         (actor? (lambda (k j v) v))
         (nonzero? (lambda (v) (not (= v 0)))))
  (begin
    (letrec ((assert (lambda (cnd) (if cnd '() (error "assertion failed"))))
             (>=
              (lambda (x y)
                (assert (number? x))
                (letrec ((val7719 (> x y)))
                  (if val7719
                    val7719
                    (letrec ((val7720 (= x y))) (if val7720 val7720 #f))))))
             (<=
              (lambda (x y)
                (assert (number? x))
                (letrec ((val7721 (< x y)))
                  (if val7721
                    val7721
                    (letrec ((val7722 (= x y))) (if val7722 val7722 #f))))))
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
                (lambda (g7739 g7740 g7741)
                  (if (real? g7741) g7741 (blame g7739 'real?))))
               (boolean?/c
                (lambda (g7742 g7743 g7744)
                  (if (boolean? g7744) g7744 (blame g7742 'boolean?))))
               (number?/c
                (lambda (g7745 g7746 g7747)
                  (if (number? g7747) g7747 (blame g7745 'number?))))
               (any/c
                (lambda (g7748 g7749 g7750)
                  (if ((lambda (v) #t) g7750)
                    g7750
                    (blame g7748 '(lambda (v) #t)))))
               (any?/c
                (lambda (g7751 g7752 g7753)
                  (if ((lambda (v) #t) g7753)
                    g7753
                    (blame g7751 '(lambda (v) #t)))))
               (cons?/c
                (lambda (g7754 g7755 g7756)
                  (if (pair? g7756) g7756 (blame g7754 'pair?))))
               (cons/c
                (lambda (k1 k2)
                  (lambda (k j v) (cons (k1 k j (car v)) (k2 k j (cdr v))))))
               (pair?/c
                (lambda (g7757 g7758 g7759)
                  (if (pair? g7759) g7759 (blame g7757 'pair?))))
               (integer?/c
                (lambda (g7760 g7761 g7762)
                  (if (integer? g7762) g7762 (blame g7760 'integer?))))
               (symbol?/c
                (lambda (g7763 g7764 g7765)
                  (if (symbol? g7765) g7765 (blame g7763 'symbol?))))
               (string?/c
                (lambda (g7766 g7767 g7768)
                  (if (string? g7768) g7768 (blame g7766 'string?))))
               (and/c
                (lambda (c1 c2)
                  (lambda (k j v) (if (c1 k j v) (c2 k j v) #f))))
               (or/c
                (lambda (c1 c2)
                  (lambda (k j v)
                    (letrec ((val7723 (c1 k j v)))
                      (if val7723 val7723 (c2 k j v))))))
               (null?/c
                (lambda (g7769 g7770 g7771)
                  (if (null? g7771) g7771 (blame g7769 'null?))))
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
                (lambda (g7772 g7773 g7774)
                  (if ((lambda (v) (not (= v 0))) g7774)
                    g7774
                    (blame g7772 '(lambda (v) (not (= v 0)))))))
               (>=/c
                (lambda (n)
                  (lambda (g7775 g7776 g7777)
                    (if ((lambda (v) (orig->= v n)) g7777)
                      g7777
                      (blame g7775 '(lambda (v) (orig->= v n)))))))
               (>/c
                (lambda (n)
                  (lambda (g7778 g7779 g7780)
                    (if ((lambda (v) (orig-> v n)) g7780)
                      g7780
                      (blame g7778 '(lambda (v) (orig-> v n)))))))
               (</c
                (lambda (n)
                  (lambda (g7781 g7782 g7783)
                    (if ((lambda (v) (orig-< v n)) g7783)
                      g7783
                      (blame g7781 '(lambda (v) (orig-< v n)))))))
               (<=/c
                (lambda (n)
                  (lambda (g7784 g7785 g7786)
                    (if ((lambda (v) (orig-<= v n)) g7786)
                      g7786
                      (blame g7784 '(lambda (v) (orig-<= v n)))))))
               (=/c
                (lambda (n)
                  (lambda (g7787 g7788 g7789)
                    (if ((lambda (v) (orig-= v n)) g7789)
                      g7789
                      (blame g7787 '(lambda (v) (orig-= v n)))))))
               (meta (lambda (v) v))
               (+
                (letrec ((xj7790 'server) (xk7791 'client))
                  ((lambda (j7794 k7795 f7796)
                     (lambda (g7792 g7793)
                       (number?/c
                        j7794
                        k7795
                        (f7796
                         (number?/c k7795 j7794 g7792)
                         (number?/c k7795 j7794 g7793)))))
                   xj7790
                   xk7791
                   (lambda (a b) (orig-+ a b)))))
               (-
                (letrec ((xj7797 'server) (xk7798 'client))
                  ((lambda (j7801 k7802 f7803)
                     (lambda (g7799 g7800)
                       (number?/c
                        j7801
                        k7802
                        (f7803
                         (number?/c k7802 j7801 g7799)
                         (number?/c k7802 j7801 g7800)))))
                   xj7797
                   xk7798
                   (lambda (a b) (orig-- a b)))))
               (*
                (letrec ((xj7804 'server) (xk7805 'client))
                  ((lambda (j7808 k7809 f7810)
                     (lambda (g7806 g7807)
                       (number?/c
                        j7808
                        k7809
                        (f7810
                         (number?/c k7809 j7808 g7806)
                         (number?/c k7809 j7808 g7807)))))
                   xj7804
                   xk7805
                   (lambda (a b) (orig-* a b)))))
               (<
                (letrec ((xj7811 'server) (xk7812 'client))
                  ((lambda (j7815 k7816 f7817)
                     (lambda (g7813 g7814)
                       (boolean?/c
                        j7815
                        k7816
                        (f7817
                         (number?/c k7816 j7815 g7813)
                         (number?/c k7816 j7815 g7814)))))
                   xj7811
                   xk7812
                   (lambda (a b) (orig-< a b)))))
               (>
                (letrec ((xj7818 'server) (xk7819 'client))
                  ((lambda (j7822 k7823 f7824)
                     (lambda (g7820 g7821)
                       (boolean?/c
                        j7822
                        k7823
                        (f7824
                         (number?/c k7823 j7822 g7820)
                         (number?/c k7823 j7822 g7821)))))
                   xj7818
                   xk7819
                   (lambda (a b) (orig-> a b)))))
               (<=
                (letrec ((xj7825 'server) (xk7826 'client))
                  ((lambda (j7829 k7830 f7831)
                     (lambda (g7827 g7828)
                       (boolean?/c
                        j7829
                        k7830
                        (f7831
                         (number?/c k7830 j7829 g7827)
                         (number?/c k7830 j7829 g7828)))))
                   xj7825
                   xk7826
                   (lambda (a b) (orig-<= a b)))))
               (>=
                (letrec ((xj7832 'server) (xk7833 'client))
                  ((lambda (j7836 k7837 f7838)
                     (lambda (g7834 g7835)
                       (boolean?/c
                        j7836
                        k7837
                        (f7838
                         (number?/c k7837 j7836 g7834)
                         (number?/c k7837 j7836 g7835)))))
                   xj7832
                   xk7833
                   (lambda (a b) (orig->= a b)))))
               (add1 (lambda (x) (+ x 1)))
               (/
                (letrec ((xj7839 'server) (xk7840 'client))
                  ((lambda (j7843 k7844 f7845)
                     (lambda (g7841 g7842)
                       (number?/c
                        j7843
                        k7844
                        (f7845
                         (number?/c k7844 j7843 g7841)
                         (number?/c k7844 j7843 g7842)))))
                   xj7839
                   xk7840
                   (lambda (a b) (orig-/ a b)))))
               (car
                (letrec ((xj7846 'server) (xk7847 'client))
                  ((lambda (j7849 k7850 f7851)
                     (lambda (g7848)
                       (any/c
                        j7849
                        k7850
                        (f7851 (pair?/c k7850 j7849 g7848)))))
                   xj7846
                   xk7847
                   (lambda (p) (orig-car p)))))
               (cdr
                (letrec ((xj7852 'server) (xk7853 'client))
                  ((lambda (j7855 k7856 f7857)
                     (lambda (g7854)
                       (any/c
                        j7855
                        k7856
                        (f7857 (pair?/c k7856 j7855 g7854)))))
                   xj7852
                   xk7853
                   (lambda (p) (orig-cdr p)))))
               (vector?/c
                (lambda (g7858 g7859 g7860)
                  (if (vector? g7860) g7860 (blame g7858 'vector?))))
               (vector-ref
                (letrec ((xj7861 'server) (xk7862 'client))
                  ((lambda (j7865 k7866 f7867)
                     (lambda (g7863 g7864)
                       (any/c
                        j7865
                        k7866
                        (f7867
                         (vector?/c k7866 j7865 g7863)
                         (integer?/c k7866 j7865 g7864)))))
                   xj7861
                   xk7862
                   (lambda (v i) (orig-vector-ref v i)))))
               (vector-set!
                (letrec ((xj7868 'server) (xk7869 'client))
                  ((lambda (j7873 k7874 f7875)
                     (lambda (g7870 g7871 g7872)
                       (any/c
                        j7873
                        k7874
                        (f7875
                         (vector?/c k7874 j7873 g7870)
                         (integer?/c k7874 j7873 g7871)
                         (any/c k7874 j7873 g7872)))))
                   xj7868
                   xk7869
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
                  (letrec ((val7724 (char<? c1 c2)))
                    (if val7724 val7724 (char=? c1 c2)))))
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
                  (letrec ((val7725 (= (char->integer c) 9)))
                    (if val7725
                      val7725
                      (letrec ((val7726 (= (char->integer c) 10)))
                        (if val7726 val7726 (= (char->integer c) 32)))))))
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
                  (letrec ((val7727 (eq? a b)))
                    (if val7727
                      val7727
                      (letrec ((val7728 (if (null? a) (null? b) #f)))
                        (if val7728
                          val7728
                          (letrec ((val7729
                                    (if (string? a)
                                      (if (string? b) (string=? a b) #f)
                                      #f)))
                            (if val7729
                              val7729
                              (letrec ((val7730
                                        (if (pair? a)
                                          (if (pair? b)
                                            (if (equal? (car a) (car b))
                                              (equal? (cdr a) (cdr b))
                                              #f)
                                            #f)
                                          #f)))
                                (if val7730
                                  val7730
                                  (if (vector? a)
                                    (if (vector? b)
                                      (letrec ((n (vector-length a)))
                                        (if (= (vector-length b) n)
                                          (letrec ((loop
                                                    (lambda (i)
                                                      (letrec ((val7731
                                                                (= i n)))
                                                        (if val7731
                                                          val7731
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
                  (letrec ((val7732 (char>? c1 c2)))
                    (if val7732 val7732 (char=? c1 c2)))))
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
                    (if (equal? (car l) e) #t (member e (cdr l))))))
               (cddddr (lambda (x) (cdr (cdr (cdr (cdr x))))))
               (cadddr (lambda (x) (car (cdr (cdr (cdr x))))))
               (int-top (lambda () (random 42)))
               (zero? (lambda (x) (assert (number? x)) (= x 0)))
               (string>=?
                (lambda (s1 s2)
                  (letrec ((val7733 (string>? s1 s2)))
                    (if val7733 val7733 (string=? s1 s2)))))
               (cadr (lambda (x) (car (cdr x))))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec ((val7734 (if (pair? l) (list? (cdr l)) #f)))
                    (if val7734 val7734 (null? l)))))
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
                  (letrec ((val7735 (char-ci<? c1 c2)))
                    (if val7735 val7735 (char-ci=? c1 c2)))))
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
                  (letrec ((val7736 (string<? s1 s2)))
                    (if val7736 val7736 (string=? s1 s2)))))
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
                  (letrec ((val7737 (char-ci>? c1 c2)))
                    (if val7737 val7737 (char-ci=? c1 c2)))))
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
               (authorative? (lambda (answer) (eq? (car answer) 'authorative)))
               (requires-recursion?
                (lambda (answer) (eq? (car answer) 'requires-recursion)))
               (remassoc
                (lambda (key lst)
                  (if (null? lst)
                    '()
                    (if (eq? key (car (car lst)))
                      (remassoc key (cdr lst))
                      (cons (car lst) (remassoc key (cdr lst)))))))
               (add-client
                (lambda (client correlation-identifier clients)
                  (cons (cons correlation-identifier client) clients)))
               (find-client
                (lambda (correlation-identifier clients)
                  (letrec ((element (assoc correlation-identifier clients)))
                    (if element
                      (cdr element)
                      (error
                       (format
                        "could not find client with the given correlation identifier ~a"
                        correlation-identifier))))))
               (answer?/c
                (lambda (g7876 g7877 g7878)
                  (if ((lambda (value)
                         (if (pair? value)
                           (letrec ((val7738 (eq? (car value) 'authorative)))
                             (if val7738
                               val7738
                               (eq? (car value) 'requires-recursion)))
                           #f))
                       g7878)
                    g7878
                    (blame
                     g7876
                     '(lambda (value)
                        (if (pair? value)
                          (letrec ((val7738 (eq? (car value) 'authorative)))
                            (if val7738
                              val7738
                              (eq? (car value) 'requires-recursion)))
                          #f))))))
               (recursive-dns/cm
                (lambda (sender cookie)
                  (lambda (j7880)
                    (letrec ((r
                              (lambda (trace7884)
                                (receive
                                 (('finish
                                   (begin
                                     (if (member 'query trace7884)
                                       #t
                                       (blame j7880))))
                                  ((pair rcv7883 message7882)
                                   (match
                                    message7882
                                    (((cons 'query (cons x7885 x7886))
                                      (begin
                                        ((dyn send^)
                                         rcv7883
                                         (letrec ((x7887
                                                   (actor? j7880 j7880 x7885))
                                                  (x7888
                                                   ((and/c
                                                     number?/c
                                                     (=/c cookie))
                                                    j7880
                                                    j7880
                                                    x7886)))
                                           (cons
                                            'enhanced
                                            (cons
                                             ((lambda (self-actor cookie)
                                                (lambda (j7890)
                                                  (letrec ((r
                                                            (lambda (trace7894)
                                                              (receive
                                                               (('finish
                                                                 (begin
                                                                   (if (member
                                                                        'answer
                                                                        trace7894)
                                                                     #t
                                                                     (blame
                                                                      j7890))))
                                                                ((pair
                                                                  rcv7893
                                                                  message7892)
                                                                 (match
                                                                  message7892
                                                                  (((cons
                                                                     'answer
                                                                     (cons
                                                                      x7895
                                                                      x7896))
                                                                    (begin
                                                                      ((dyn
                                                                        send^)
                                                                       rcv7893
                                                                       (letrec ((x7897
                                                                                 ((and/c
                                                                                   number?/c
                                                                                   (=/c
                                                                                    cookie))
                                                                                  j7890
                                                                                  j7890
                                                                                  x7895))
                                                                                (x7898
                                                                                 (answer?/c
                                                                                  j7890
                                                                                  j7890
                                                                                  x7896)))
                                                                         (cons
                                                                          'enhanced
                                                                          (cons
                                                                           ((lambda (cookie
                                                                                     answer)
                                                                              (if (requires-recursion?
                                                                                   answer)
                                                                                (recursive-dns/cm
                                                                                 sender
                                                                                 cookie)
                                                                                (lambda (j7900)
                                                                                  (letrec ((r
                                                                                            (lambda (trace7904)
                                                                                              (receive
                                                                                               (('finish
                                                                                                 (begin
                                                                                                   (if (member
                                                                                                        'answer
                                                                                                        trace7904)
                                                                                                     #t
                                                                                                     (blame
                                                                                                      j7900))))
                                                                                                ((pair
                                                                                                  rcv7903
                                                                                                  message7902)
                                                                                                 (match
                                                                                                  message7902
                                                                                                  (((cons
                                                                                                     'answer
                                                                                                     x7905)
                                                                                                    (begin
                                                                                                      ((dyn
                                                                                                        send^)
                                                                                                       rcv7903
                                                                                                       (letrec ((x7906
                                                                                                                 (answer?/c
                                                                                                                  j7900
                                                                                                                  j7900
                                                                                                                  x7905)))
                                                                                                         (cons
                                                                                                          'enhanced
                                                                                                          (cons
                                                                                                           (unconstrained/c
                                                                                                            x7906)
                                                                                                           (cons
                                                                                                            j7900
                                                                                                            (cons
                                                                                                             'answer
                                                                                                             x7906))))))
                                                                                                      (r
                                                                                                       (cons
                                                                                                        'answer
                                                                                                        trace7904))))))))))))
                                                                                    (spawn^
                                                                                     (r
                                                                                      (list)))))))
                                                                            x7897
                                                                            x7898)
                                                                           (cons
                                                                            j7890
                                                                            (cons
                                                                             'answer
                                                                             (cons
                                                                              x7897
                                                                              x7898)))))))
                                                                      (r
                                                                       (cons
                                                                        'answer
                                                                        trace7894))))))))))))
                                                    (spawn^ (r (list))))))
                                              x7887
                                              x7888)
                                             (cons
                                              j7880
                                              (cons
                                               'query
                                               (cons x7887 x7888)))))))
                                        (r (cons 'query trace7884))))))))))))
                      (spawn^ (r (list)))))))
               (recursive-dns/c
                (lambda (k7909 j7910 a7908)
                  (lambda (v7911)
                    (letrec ((result7920
                              ((lambda (k7913 j7914 v7915)
                                 (match
                                  v7915
                                  (((cons 'query (cons x7916 x7917))
                                    (letrec ((x7918 (actor? k7913 j7914 x7916))
                                             (x7919
                                              (number?/c k7913 j7914 x7917)))
                                      (cons
                                       'enhanced
                                       (cons
                                        (recursive-dns/cm x7918 x7919)
                                        (cons
                                         j7914
                                         (cons
                                          'query
                                          (cons x7918 x7919))))))))))
                               k7909
                               j7910
                               v7911)))
                      (if result7920 (a7908 result7920) (blame k7909))))))
               (client
                (lambda (recursive-dns)
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (('start
                        (begin
                          (recursive-dns
                           (cons 'query (cons (dyn self) (fresh))))
                          (client recursive-dns)))
                       ((cons 'answer answer)
                        (begin (displayln 'got-answer) (terminate)))
                       ((cons 'enhanced (cons k7922 (cons j7926 'start)))
                        (letrec ((kc7923 (k7922 j7926))
                                 (old-send7927 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv7924 msg7925)
                               (old-send7927 kc7923 (cons rcv7924 msg7925)))))
                           (begin
                             (recursive-dns
                              (cons 'query (cons (dyn self) (fresh))))
                             (old-send7927 kc7923 'finish)))
                          (client recursive-dns)))
                       ((cons
                         'enhanced
                         (cons k7929 (cons j7933 (cons 'answer answer))))
                        (letrec ((kc7930 (k7929 j7933))
                                 (old-send7934 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv7931 msg7932)
                               (old-send7934 kc7930 (cons rcv7931 msg7932)))))
                           (begin
                             (displayln 'got-answer)
                             (old-send7934 kc7930 'finish)))
                          (terminate)))))))))
               (recursive-dns
                (lambda (root-server clients)
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (((cons 'query (cons sender cookie))
                        (begin
                          (root-server (cons 'query (cons (dyn self) cookie)))
                          (recursive-dns
                           root-server
                           (add-client sender cookie clients))))
                       ((cons 'answer (cons cookie answer))
                        (begin
                          (trace answer)
                          (if (authorative? answer)
                            (letrec ((client (find-client cookie clients)))
                              (client (cons 'answer answer)))
                            ((cdr answer)
                             (cons 'query (cons (dyn self) cookie))))
                          (if (authorative? answer)
                            (recursive-dns
                             root-server
                             (remassoc cookie clients))
                            (recursive-dns root-server clients))))
                       ((cons
                         'enhanced
                         (cons
                          k7936
                          (cons j7940 (cons 'query (cons sender cookie)))))
                        (letrec ((kc7937 (k7936 j7940))
                                 (old-send7941 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv7938 msg7939)
                               (old-send7941 kc7937 (cons rcv7938 msg7939)))))
                           (begin
                             (root-server
                              (cons 'query (cons (dyn self) cookie)))
                             (old-send7941 kc7937 'finish)))
                          (recursive-dns
                           root-server
                           (add-client sender cookie clients))))
                       ((cons
                         'enhanced
                         (cons
                          k7943
                          (cons j7947 (cons 'answer (cons cookie answer)))))
                        (letrec ((kc7944 (k7943 j7947))
                                 (old-send7948 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv7945 msg7946)
                               (old-send7948 kc7944 (cons rcv7945 msg7946)))))
                           (begin
                             (trace answer)
                             (if (authorative? answer)
                               (letrec ((client (find-client cookie clients)))
                                 (client (cons 'answer answer)))
                               ((cdr answer)
                                (cons 'query (cons (dyn self) cookie))))
                             (old-send7948 kc7944 'finish)))
                          (if (authorative? answer)
                            (recursive-dns
                             root-server
                             (remassoc cookie clients))
                            (recursive-dns root-server clients))))))))))
               (root-server
                (lambda (tld-server)
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (((cons 'query (cons sender cookie))
                        (begin
                          (sender
                           (cons
                            'answer
                            (cons
                             cookie
                             (cons 'requires-recursion tld-server))))
                          (root-server tld-server)))
                       ((cons
                         'enhanced
                         (cons
                          k7950
                          (cons j7954 (cons 'query (cons sender cookie)))))
                        (letrec ((kc7951 (k7950 j7954))
                                 (old-send7955 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv7952 msg7953)
                               (old-send7955 kc7951 (cons rcv7952 msg7953)))))
                           (begin
                             (sender
                              (cons
                               'answer
                               (cons
                                cookie
                                (cons 'requires-recursion tld-server))))
                             (old-send7955 kc7951 'finish)))
                          (root-server tld-server)))))))))
               (tld-server
                (lambda (authorative-server)
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (((cons 'query (cons sender cookie))
                        (begin
                          (trace 'tld-server)
                          (sender
                           (cons
                            'answer
                            (cons
                             cookie
                             (cons 'requires-recursion authorative-server))))
                          (tld-server authorative-server)))
                       ((cons
                         'enhanced
                         (cons
                          k7957
                          (cons j7961 (cons 'query (cons sender cookie)))))
                        (letrec ((kc7958 (k7957 j7961))
                                 (old-send7962 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv7959 msg7960)
                               (old-send7962 kc7958 (cons rcv7959 msg7960)))))
                           (begin
                             (trace 'tld-server)
                             (sender
                              (cons
                               'answer
                               (cons
                                cookie
                                (cons
                                 'requires-recursion
                                 authorative-server))))
                             (old-send7962 kc7958 'finish)))
                          (tld-server authorative-server)))))))))
               (authorative-server
                (lambda ()
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (((cons 'query (cons sender cookie))
                        (begin
                          (trace 'authorative-server)
                          (sender
                           (cons
                            'answer
                            (cons cookie (cons 'authorative 'dns-result))))
                          (authorative-server)))
                       ((cons
                         'enhanced
                         (cons
                          k7964
                          (cons j7968 (cons 'query (cons sender cookie)))))
                        (letrec ((kc7965 (k7964 j7968))
                                 (old-send7969 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv7966 msg7967)
                               (old-send7969 kc7965 (cons rcv7966 msg7967)))))
                           (begin
                             (trace 'authorative-server)
                             (sender
                              (cons
                               'answer
                               (cons cookie (cons 'authorative 'dns-result))))
                             (old-send7969 kc7965 'finish)))
                          (authorative-server)))))))))
               (authorative-actor
                (letrec ((act (spawn^ (authorative-server))))
                  (lambda (msg) ((dyn send^) act msg))))
               (tld-actor
                (letrec ((act (spawn^ (tld-server authorative-actor))))
                  (lambda (msg) ((dyn send^) act msg))))
               (root-actor
                (letrec ((act (spawn^ (root-server tld-actor))))
                  (lambda (msg) ((dyn send^) act msg))))
               (recursive-unmonitored
                (letrec ((act (spawn^ (recursive-dns root-actor '()))))
                  (lambda (msg) ((dyn send^) act msg))))
               (recursive-actor
                (letrec ((xj7971 (loc 'client)) (xk7972 (loc 'server)))
                  (recursive-dns/c xj7971 xk7972 recursive-unmonitored)))
               (client-actor
                (letrec ((act (spawn^ (client recursive-actor))))
                  (lambda (msg) ((dyn send^) act msg)))))
        (client-actor 'start)))))
