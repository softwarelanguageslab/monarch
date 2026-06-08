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
         (loopy-actor
          (lambda ()
            (receive
             (((cons rcv msg) (send^ rcv msg) (loopy-actor))
              ('finish (terminate))))))
         (unconstrained/c (lambda payload (lambda j (spawn^ (loopy-actor)))))
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
               (string=?/c
                (lambda (s)
                  (lambda (g7790 g7791 g7792)
                    (if ((lambda (v) (string=? s v)) g7792)
                      g7792
                      (blame g7790 '(lambda (v) (string=? s v)))))))
               (meta (lambda (v) v))
               (+
                (letrec ((xj7793 'server) (xk7794 'client))
                  ((lambda (j7797 k7798 f7799)
                     (lambda (g7795 g7796)
                       (number?/c
                        j7797
                        k7798
                        (f7799
                         (number?/c k7798 j7797 g7795)
                         (number?/c k7798 j7797 g7796)))))
                   xj7793
                   xk7794
                   (lambda (a b) (orig-+ a b)))))
               (-
                (letrec ((xj7800 'server) (xk7801 'client))
                  ((lambda (j7804 k7805 f7806)
                     (lambda (g7802 g7803)
                       (number?/c
                        j7804
                        k7805
                        (f7806
                         (number?/c k7805 j7804 g7802)
                         (number?/c k7805 j7804 g7803)))))
                   xj7800
                   xk7801
                   (lambda (a b) (orig-- a b)))))
               (*
                (letrec ((xj7807 'server) (xk7808 'client))
                  ((lambda (j7811 k7812 f7813)
                     (lambda (g7809 g7810)
                       (number?/c
                        j7811
                        k7812
                        (f7813
                         (number?/c k7812 j7811 g7809)
                         (number?/c k7812 j7811 g7810)))))
                   xj7807
                   xk7808
                   (lambda (a b) (orig-* a b)))))
               (<
                (letrec ((xj7814 'server) (xk7815 'client))
                  ((lambda (j7818 k7819 f7820)
                     (lambda (g7816 g7817)
                       (boolean?/c
                        j7818
                        k7819
                        (f7820
                         (number?/c k7819 j7818 g7816)
                         (number?/c k7819 j7818 g7817)))))
                   xj7814
                   xk7815
                   (lambda (a b) (orig-< a b)))))
               (>
                (letrec ((xj7821 'server) (xk7822 'client))
                  ((lambda (j7825 k7826 f7827)
                     (lambda (g7823 g7824)
                       (boolean?/c
                        j7825
                        k7826
                        (f7827
                         (number?/c k7826 j7825 g7823)
                         (number?/c k7826 j7825 g7824)))))
                   xj7821
                   xk7822
                   (lambda (a b) (orig-> a b)))))
               (<=
                (letrec ((xj7828 'server) (xk7829 'client))
                  ((lambda (j7832 k7833 f7834)
                     (lambda (g7830 g7831)
                       (boolean?/c
                        j7832
                        k7833
                        (f7834
                         (number?/c k7833 j7832 g7830)
                         (number?/c k7833 j7832 g7831)))))
                   xj7828
                   xk7829
                   (lambda (a b) (orig-<= a b)))))
               (>=
                (letrec ((xj7835 'server) (xk7836 'client))
                  ((lambda (j7839 k7840 f7841)
                     (lambda (g7837 g7838)
                       (boolean?/c
                        j7839
                        k7840
                        (f7841
                         (number?/c k7840 j7839 g7837)
                         (number?/c k7840 j7839 g7838)))))
                   xj7835
                   xk7836
                   (lambda (a b) (orig->= a b)))))
               (add1 (lambda (x) (+ x 1)))
               (/
                (letrec ((xj7842 'server) (xk7843 'client))
                  ((lambda (j7846 k7847 f7848)
                     (lambda (g7844 g7845)
                       (number?/c
                        j7846
                        k7847
                        (f7848
                         (number?/c k7847 j7846 g7844)
                         (number?/c k7847 j7846 g7845)))))
                   xj7842
                   xk7843
                   (lambda (a b) (orig-/ a b)))))
               (car
                (letrec ((xj7849 'server) (xk7850 'client))
                  ((lambda (j7852 k7853 f7854)
                     (lambda (g7851)
                       (any/c
                        j7852
                        k7853
                        (f7854 (pair?/c k7853 j7852 g7851)))))
                   xj7849
                   xk7850
                   (lambda (p) (orig-car p)))))
               (cdr
                (letrec ((xj7855 'server) (xk7856 'client))
                  ((lambda (j7858 k7859 f7860)
                     (lambda (g7857)
                       (any/c
                        j7858
                        k7859
                        (f7860 (pair?/c k7859 j7858 g7857)))))
                   xj7855
                   xk7856
                   (lambda (p) (orig-cdr p)))))
               (vector?/c
                (lambda (g7861 g7862 g7863)
                  (if (vector? g7863) g7863 (blame g7861 'vector?))))
               (vector-ref
                (letrec ((xj7864 'server) (xk7865 'client))
                  ((lambda (j7868 k7869 f7870)
                     (lambda (g7866 g7867)
                       (any/c
                        j7868
                        k7869
                        (f7870
                         (vector?/c k7869 j7868 g7866)
                         (integer?/c k7869 j7868 g7867)))))
                   xj7864
                   xk7865
                   (lambda (v i) (orig-vector-ref v i)))))
               (vector-set!
                (letrec ((xj7871 'server) (xk7872 'client))
                  ((lambda (j7876 k7877 f7878)
                     (lambda (g7873 g7874 g7875)
                       (any/c
                        j7876
                        k7877
                        (f7878
                         (vector?/c k7877 j7876 g7873)
                         (integer?/c k7877 j7876 g7874)
                         (any/c k7877 j7876 g7875)))))
                   xj7871
                   xk7872
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
               (philosopher/c
                (lambda (arb id)
                  (lambda (k7881 j7882 a7880)
                    (lambda (v7883)
                      (letrec ((result7922
                                ((lambda (k7885 j7886 v7887)
                                   (match
                                    v7887
                                    (('start
                                      (letrec ()
                                        (cons
                                         'enhanced
                                         (cons
                                          ((lambda ()
                                             (lambda (j7889)
                                               (letrec ((r
                                                         (lambda (trace7893)
                                                           (receive
                                                            (('finish
                                                              (begin
                                                                (if (member
                                                                     'hungry
                                                                     trace7893)
                                                                  #t
                                                                  (blame
                                                                   j7889))))
                                                             ((pair
                                                               rcv7892
                                                               message7891)
                                                              (match
                                                               message7891
                                                               (((cons
                                                                  'hungry
                                                                  (cons
                                                                   x7894
                                                                   x7895))
                                                                 (begin
                                                                   ((dyn send^)
                                                                    rcv7892
                                                                    (letrec ((x7896
                                                                              ((philosopher/c
                                                                                arb
                                                                                id)
                                                                               j7889
                                                                               j7889
                                                                               x7894))
                                                                             (x7897
                                                                              ((=/c
                                                                                id)
                                                                               j7889
                                                                               j7889
                                                                               x7895)))
                                                                      (cons
                                                                       'enhanced
                                                                       (cons
                                                                        (unconstrained/c
                                                                         x7896
                                                                         x7897)
                                                                        (cons
                                                                         j7889
                                                                         (cons
                                                                          'hungry
                                                                          (cons
                                                                           x7896
                                                                           x7897)))))))
                                                                   (r
                                                                    (cons
                                                                     'hungry
                                                                     trace7893))))))))))))
                                                 (spawn^ (r (list)))))))
                                          (cons j7886 'start)))))
                                     (_ #f))))
                                 k7881
                                 j7882
                                 v7883)))
                        (if result7922
                          (a7880 result7922)
                          (letrec ((result7923
                                    ((lambda (k7898 j7899 v7900)
                                       (match
                                        v7900
                                        (('denied
                                          (letrec ()
                                            (cons
                                             'enhanced
                                             (cons
                                              ((lambda ()
                                                 (lambda (j7902)
                                                   (letrec ((r
                                                             (lambda (trace7906)
                                                               (receive
                                                                (('finish
                                                                  (begin
                                                                    (if (member
                                                                         'hungry
                                                                         trace7906)
                                                                      #t
                                                                      (blame
                                                                       j7902))))
                                                                 ((pair
                                                                   rcv7905
                                                                   message7904)
                                                                  (match
                                                                   message7904
                                                                   (((cons
                                                                      'hungry
                                                                      (cons
                                                                       x7907
                                                                       x7908))
                                                                     (begin
                                                                       ((dyn
                                                                         send^)
                                                                        rcv7905
                                                                        (letrec ((x7909
                                                                                  ((philosopher/c
                                                                                    arb
                                                                                    id)
                                                                                   j7902
                                                                                   j7902
                                                                                   x7907))
                                                                                 (x7910
                                                                                  ((=/c
                                                                                    id)
                                                                                   j7902
                                                                                   j7902
                                                                                   x7908)))
                                                                          (cons
                                                                           'enhanced
                                                                           (cons
                                                                            (unconstrained/c
                                                                             x7909
                                                                             x7910)
                                                                            (cons
                                                                             j7902
                                                                             (cons
                                                                              'hungry
                                                                              (cons
                                                                               x7909
                                                                               x7910)))))))
                                                                       (r
                                                                        (cons
                                                                         'hungry
                                                                         trace7906))))))))))))
                                                     (spawn^ (r (list)))))))
                                              (cons j7899 'denied)))))
                                         (_ #f))))
                                     k7881
                                     j7882
                                     v7883)))
                            (if result7923
                              (a7880 result7923)
                              (letrec ((result7924
                                        ((lambda (k7911 j7912 v7913)
                                           (match
                                            v7913
                                            (('eat
                                              (letrec ()
                                                (cons
                                                 'enhanced
                                                 (cons
                                                  ((lambda ()
                                                     (lambda (j7915)
                                                       (letrec ((r
                                                                 (lambda (trace7919)
                                                                   (receive
                                                                    (('finish
                                                                      (begin
                                                                        (if (member
                                                                             'done
                                                                             trace7919)
                                                                          #t
                                                                          (blame
                                                                           j7915))
                                                                        (if (member
                                                                             'start
                                                                             trace7919)
                                                                          #t
                                                                          (blame
                                                                           j7915))))
                                                                     ((pair
                                                                       rcv7918
                                                                       message7917)
                                                                      (match
                                                                       message7917
                                                                       (((cons
                                                                          'done
                                                                          x7920)
                                                                         (begin
                                                                           ((dyn
                                                                             send^)
                                                                            rcv7918
                                                                            (letrec ((x7921
                                                                                      ((=/c
                                                                                        id)
                                                                                       j7915
                                                                                       j7915
                                                                                       x7920)))
                                                                              (cons
                                                                               'enhanced
                                                                               (cons
                                                                                (unconstrained/c
                                                                                 x7921)
                                                                                (cons
                                                                                 j7915
                                                                                 (cons
                                                                                  'done
                                                                                  x7921))))))
                                                                           (r
                                                                            (cons
                                                                             'done
                                                                             trace7919))))
                                                                        ('start
                                                                         (begin
                                                                           ((dyn
                                                                             send^)
                                                                            rcv7918
                                                                            (letrec ()
                                                                              (cons
                                                                               'enhanced
                                                                               (cons
                                                                                (unconstrained/c)
                                                                                (cons
                                                                                 j7915
                                                                                 'start)))))
                                                                           (r
                                                                            (cons
                                                                             'start
                                                                             trace7919))))))))))))
                                                         (spawn^
                                                          (r (list)))))))
                                                  (cons j7912 'eat)))))
                                             (_ #f))))
                                         k7881
                                         j7882
                                         v7883)))
                                (if result7924
                                  (a7880 result7924)
                                  (blame k7881)))))))))))
               (num-forks 3)
               (arbitrator
                (lambda (forks)
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (((cons 'hungry (cons p id))
                        (begin
                          (letrec ((left id)
                                   (right (modulo (+ id 1) num-forks)))
                            (if (letrec ((val7738 (vector-ref forks left)))
                                  (if val7738
                                    val7738
                                    (vector-ref forks right)))
                              (p 'denied)
                              (begin
                                (trace 'sending-eat)
                                (vector-set! forks left #t)
                                (vector-set! forks right #t)
                                (p 'eat))))
                          (arbitrator forks)))
                       ((cons 'done id)
                        (begin
                          (letrec ((left id)
                                   (right (modulo (+ id 1) num-forks)))
                            (vector-set! forks left #f)
                            (vector-set! forks right #f))
                          (arbitrator forks)))
                       ((cons
                         'enhanced
                         (cons k7926 (cons j7930 (cons 'hungry (cons p id)))))
                        (letrec ((kc7927 (k7926 j7930))
                                 (old-send7931 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv7928 msg7929)
                               (old-send7931 kc7927 (cons rcv7928 msg7929)))))
                           (begin
                             (letrec ((left id)
                                      (right (modulo (+ id 1) num-forks)))
                               (if (letrec ((val7738 (vector-ref forks left)))
                                     (if val7738
                                       val7738
                                       (vector-ref forks right)))
                                 (p 'denied)
                                 (begin
                                   (trace 'sending-eat)
                                   (vector-set! forks left #t)
                                   (vector-set! forks right #t)
                                   (p 'eat))))
                             (old-send7931 kc7927 'finish)))
                          (arbitrator forks)))
                       ((cons
                         'enhanced
                         (cons k7933 (cons j7937 (cons 'done id))))
                        (letrec ((kc7934 (k7933 j7937))
                                 (old-send7938 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv7935 msg7936)
                               (old-send7938 kc7934 (cons rcv7935 msg7936)))))
                           (begin
                             (letrec ((left id)
                                      (right (modulo (+ id 1) num-forks)))
                               (vector-set! forks left #f)
                               (vector-set! forks right #f))
                             (old-send7938 kc7934 'finish)))
                          (arbitrator forks)))))))))
               (philosopher
                (lambda (arb id)
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (('start
                        (begin
                          (trace 'start)
                          (arb (cons 'hungry (cons (dyn self) id)))
                          (philosopher arb id)))
                       ('denied
                        (begin
                          (trace 'denied)
                          (arb (cons 'hungry (cons (dyn self) id)))
                          (philosopher arb id)))
                       ('eat
                        (begin
                          (trace 'eat)
                          (arb (cons 'done id))
                          ((dyn self) 'start)
                          (philosopher arb id)))
                       ((cons 'enhanced (cons k7940 (cons j7944 'start)))
                        (letrec ((kc7941 (k7940 j7944))
                                 (old-send7945 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv7942 msg7943)
                               (old-send7945 kc7941 (cons rcv7942 msg7943)))))
                           (begin
                             (trace 'start)
                             (arb (cons 'hungry (cons (dyn self) id)))
                             (old-send7945 kc7941 'finish)))
                          (philosopher arb id)))
                       ((cons 'enhanced (cons k7947 (cons j7951 'denied)))
                        (letrec ((kc7948 (k7947 j7951))
                                 (old-send7952 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv7949 msg7950)
                               (old-send7952 kc7948 (cons rcv7949 msg7950)))))
                           (begin
                             (trace 'denied)
                             (arb (cons 'hungry (cons (dyn self) id)))
                             (old-send7952 kc7948 'finish)))
                          (philosopher arb id)))
                       ((cons 'enhanced (cons k7954 (cons j7958 'eat)))
                        (letrec ((kc7955 (k7954 j7958))
                                 (old-send7959 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv7956 msg7957)
                               (old-send7959 kc7955 (cons rcv7956 msg7957)))))
                           (begin
                             (trace 'eat)
                             (arb (cons 'done id))
                             ((dyn self) 'start)
                             (old-send7959 kc7955 'finish)))
                          (philosopher arb id)))))))))
               (arbitrator-actor
                (letrec ((act (spawn^ (arbitrator (vector #f #f #f)))))
                  (lambda (msg) ((dyn send^) act msg))))
               (phil1
                (letrec ((xj7961 (loc 'client)) (xk7962 (loc 'server)))
                  ((philosopher/c arbitrator-actor 0)
                   xj7961
                   xk7962
                   (letrec ((act (spawn^ (philosopher arbitrator-actor 0))))
                     (lambda (msg) ((dyn send^) act msg))))))
               (phil2
                (letrec ((xj7963 (loc 'client)) (xk7964 (loc 'server)))
                  ((philosopher/c arbitrator-actor 1)
                   xj7963
                   xk7964
                   (letrec ((act (spawn^ (philosopher arbitrator-actor 1))))
                     (lambda (msg) ((dyn send^) act msg))))))
               (phil3
                (letrec ((xj7965 (loc 'client)) (xk7966 (loc 'server)))
                  ((philosopher/c arbitrator-actor 2)
                   xj7965
                   xk7966
                   (letrec ((act (spawn^ (philosopher arbitrator-actor 2))))
                     (lambda (msg) ((dyn send^) act msg)))))))
        (phil1 'start)
        (phil2 'start)
        (phil3 'start)))))
