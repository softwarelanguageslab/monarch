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
                (letrec ((val8802 (> x y)))
                  (if val8802
                    val8802
                    (letrec ((val8803 (= x y))) (if val8803 val8803 #f))))))
             (<=
              (lambda (x y)
                (assert (number? x))
                (letrec ((val8804 (< x y)))
                  (if val8804
                    val8804
                    (letrec ((val8805 (= x y))) (if val8805 val8805 #f))))))
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
                (lambda (g8822 g8823 g8824)
                  (if (real? g8824)
                    g8824
                    (blame
                     g8822
                     (position-in-file-loc
                      "/Users/bram/development/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                      40
                      19)))))
               (boolean?/c
                (lambda (g8825 g8826 g8827)
                  (if (boolean? g8827)
                    g8827
                    (blame
                     g8825
                     (position-in-file-loc
                      "/Users/bram/development/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                      41
                      22)))))
               (number?/c
                (lambda (g8828 g8829 g8830)
                  (if (number? g8830)
                    g8830
                    (blame
                     g8828
                     (position-in-file-loc
                      "/Users/bram/development/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                      42
                      21)))))
               (any/c
                (lambda (g8831 g8832 g8833)
                  (if ((lambda (v) #t) g8833)
                    g8833
                    (blame
                     g8831
                     (position-in-file-loc
                      "/Users/bram/development/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                      43
                      17)))))
               (any?/c
                (lambda (g8834 g8835 g8836)
                  (if ((lambda (v) #t) g8836)
                    g8836
                    (blame
                     g8834
                     (position-in-file-loc
                      "/Users/bram/development/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                      44
                      18)))))
               (cons?/c
                (lambda (g8837 g8838 g8839)
                  (if (pair? g8839)
                    g8839
                    (blame
                     g8837
                     (position-in-file-loc
                      "/Users/bram/development/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                      45
                      19)))))
               (cons/c
                (lambda (k1 k2)
                  (lambda (k j v) (cons (k1 k j (car v)) (k2 k j (cdr v))))))
               (pair?/c
                (lambda (g8840 g8841 g8842)
                  (if (pair? g8842)
                    g8842
                    (blame
                     g8840
                     (position-in-file-loc
                      "/Users/bram/development/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                      50
                      19)))))
               (integer?/c
                (lambda (g8843 g8844 g8845)
                  (if (integer? g8845)
                    g8845
                    (blame
                     g8843
                     (position-in-file-loc
                      "/Users/bram/development/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                      51
                      22)))))
               (symbol?/c
                (lambda (g8846 g8847 g8848)
                  (if (symbol? g8848)
                    g8848
                    (blame
                     g8846
                     (position-in-file-loc
                      "/Users/bram/development/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                      52
                      21)))))
               (string?/c
                (lambda (g8849 g8850 g8851)
                  (if (string? g8851)
                    g8851
                    (blame
                     g8849
                     (position-in-file-loc
                      "/Users/bram/development/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                      53
                      21)))))
               (and/c
                (lambda (c1 c2)
                  (lambda (k j v) (if (c1 k j v) (c2 k j v) #f))))
               (or/c
                (lambda (c1 c2)
                  (lambda (k j v)
                    (letrec ((val8806 (c1 k j v)))
                      (if val8806 val8806 (c2 k j v))))))
               (null?/c
                (lambda (g8852 g8853 g8854)
                  (if (null? g8854)
                    g8854
                    (blame
                     g8852
                     (position-in-file-loc
                      "/Users/bram/development/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                      60
                      19)))))
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
                (lambda (g8855 g8856 g8857)
                  (if ((lambda (v) (not (= v 0))) g8857)
                    g8857
                    (blame
                     g8855
                     (position-in-file-loc
                      "/Users/bram/development/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                      68
                      22)))))
               (>=/c
                (lambda (n)
                  (lambda (g8858 g8859 g8860)
                    (if ((lambda (v) (orig->= v n)) g8860)
                      g8860
                      (blame
                       g8858
                       (position-in-file-loc
                        "/Users/bram/development/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                        69
                        20))))))
               (>/c
                (lambda (n)
                  (lambda (g8861 g8862 g8863)
                    (if ((lambda (v) (orig-> v n)) g8863)
                      g8863
                      (blame
                       g8861
                       (position-in-file-loc
                        "/Users/bram/development/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                        70
                        19))))))
               (</c
                (lambda (n)
                  (lambda (g8864 g8865 g8866)
                    (if ((lambda (v) (orig-< v n)) g8866)
                      g8866
                      (blame
                       g8864
                       (position-in-file-loc
                        "/Users/bram/development/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                        71
                        19))))))
               (<=/c
                (lambda (n)
                  (lambda (g8867 g8868 g8869)
                    (if ((lambda (v) (orig-<= v n)) g8869)
                      g8869
                      (blame
                       g8867
                       (position-in-file-loc
                        "/Users/bram/development/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                        72
                        20))))))
               (=/c
                (lambda (n)
                  (lambda (g8870 g8871 g8872)
                    (if ((lambda (v) (orig-= v n)) g8872)
                      g8872
                      (blame
                       g8870
                       (position-in-file-loc
                        "/Users/bram/development/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                        73
                        19))))))
               (string=?/c
                (lambda (s)
                  (lambda (g8873 g8874 g8875)
                    (if ((lambda (v) (string=? s v)) g8875)
                      g8875
                      (blame
                       g8873
                       (position-in-file-loc
                        "/Users/bram/development/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                        74
                        26))))))
               (meta (lambda (v) v))
               (+
                (letrec ((xj8876 'server) (xk8877 'client))
                  ((lambda (j8880 k8881 f8882)
                     (lambda (g8878 g8879)
                       (number?/c
                        j8880
                        k8881
                        (f8882
                         (number?/c k8881 j8880 g8878)
                         (number?/c k8881 j8880 g8879)))))
                   xj8876
                   xk8877
                   (lambda (a b) (orig-+ a b)))))
               (-
                (letrec ((xj8883 'server) (xk8884 'client))
                  ((lambda (j8887 k8888 f8889)
                     (lambda (g8885 g8886)
                       (number?/c
                        j8887
                        k8888
                        (f8889
                         (number?/c k8888 j8887 g8885)
                         (number?/c k8888 j8887 g8886)))))
                   xj8883
                   xk8884
                   (lambda (a b) (orig-- a b)))))
               (*
                (letrec ((xj8890 'server) (xk8891 'client))
                  ((lambda (j8894 k8895 f8896)
                     (lambda (g8892 g8893)
                       (number?/c
                        j8894
                        k8895
                        (f8896
                         (number?/c k8895 j8894 g8892)
                         (number?/c k8895 j8894 g8893)))))
                   xj8890
                   xk8891
                   (lambda (a b) (orig-* a b)))))
               (<
                (letrec ((xj8897 'server) (xk8898 'client))
                  ((lambda (j8901 k8902 f8903)
                     (lambda (g8899 g8900)
                       (boolean?/c
                        j8901
                        k8902
                        (f8903
                         (number?/c k8902 j8901 g8899)
                         (number?/c k8902 j8901 g8900)))))
                   xj8897
                   xk8898
                   (lambda (a b) (orig-< a b)))))
               (>
                (letrec ((xj8904 'server) (xk8905 'client))
                  ((lambda (j8908 k8909 f8910)
                     (lambda (g8906 g8907)
                       (boolean?/c
                        j8908
                        k8909
                        (f8910
                         (number?/c k8909 j8908 g8906)
                         (number?/c k8909 j8908 g8907)))))
                   xj8904
                   xk8905
                   (lambda (a b) (orig-> a b)))))
               (<=
                (letrec ((xj8911 'server) (xk8912 'client))
                  ((lambda (j8915 k8916 f8917)
                     (lambda (g8913 g8914)
                       (boolean?/c
                        j8915
                        k8916
                        (f8917
                         (number?/c k8916 j8915 g8913)
                         (number?/c k8916 j8915 g8914)))))
                   xj8911
                   xk8912
                   (lambda (a b) (orig-<= a b)))))
               (>=
                (letrec ((xj8918 'server) (xk8919 'client))
                  ((lambda (j8922 k8923 f8924)
                     (lambda (g8920 g8921)
                       (boolean?/c
                        j8922
                        k8923
                        (f8924
                         (number?/c k8923 j8922 g8920)
                         (number?/c k8923 j8922 g8921)))))
                   xj8918
                   xk8919
                   (lambda (a b) (orig->= a b)))))
               (add1 (lambda (x) (+ x 1)))
               (/
                (letrec ((xj8925 'server) (xk8926 'client))
                  ((lambda (j8929 k8930 f8931)
                     (lambda (g8927 g8928)
                       (number?/c
                        j8929
                        k8930
                        (f8931
                         (number?/c k8930 j8929 g8927)
                         (number?/c k8930 j8929 g8928)))))
                   xj8925
                   xk8926
                   (lambda (a b) (orig-/ a b)))))
               (car
                (letrec ((xj8932 'server) (xk8933 'client))
                  ((lambda (g8934 g8935 g8936)
                     (lambda (g8937)
                       (any/c
                        g8934
                        g8935
                        (g8936 (pair?/c g8935 g8934 g8937)))))
                   xj8932
                   xk8933
                   (lambda (p) (orig-car p)))))
               (cdr
                (letrec ((xj8938 'server) (xk8939 'client))
                  ((lambda (g8940 g8941 g8942)
                     (lambda (g8943)
                       (any/c
                        g8940
                        g8941
                        (g8942 (pair?/c g8941 g8940 g8943)))))
                   xj8938
                   xk8939
                   (lambda (p) (orig-cdr p)))))
               (vector?/c
                (lambda (g8944 g8945 g8946)
                  (if (vector? g8946)
                    g8946
                    (blame
                     g8944
                     (position-in-file-loc
                      "/Users/bram/development/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                      108
                      21)))))
               (vector-ref
                (letrec ((xj8947 'server) (xk8948 'client))
                  ((lambda (j8951 k8952 f8953)
                     (lambda (g8949 g8950)
                       (any/c
                        j8951
                        k8952
                        (f8953
                         (vector?/c k8952 j8951 g8949)
                         (integer?/c k8952 j8951 g8950)))))
                   xj8947
                   xk8948
                   (lambda (v i) (orig-vector-ref v i)))))
               (vector-set!
                (letrec ((xj8954 'server) (xk8955 'client))
                  ((lambda (j8959 k8960 f8961)
                     (lambda (g8956 g8957 g8958)
                       (any/c
                        j8959
                        k8960
                        (f8961
                         (vector?/c k8960 j8959 g8956)
                         (integer?/c k8960 j8959 g8957)
                         (any/c k8960 j8959 g8958)))))
                   xj8954
                   xk8955
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
                  (letrec ((val8807 (char<? c1 c2)))
                    (if val8807 val8807 (char=? c1 c2)))))
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
                  (letrec ((val8808 (= (char->integer c) 9)))
                    (if val8808
                      val8808
                      (letrec ((val8809 (= (char->integer c) 10)))
                        (if val8809 val8809 (= (char->integer c) 32)))))))
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
                  (letrec ((val8810 (eq? a b)))
                    (if val8810
                      val8810
                      (letrec ((val8811 (if (null? a) (null? b) #f)))
                        (if val8811
                          val8811
                          (letrec ((val8812
                                    (if (string? a)
                                      (if (string? b) (string=? a b) #f)
                                      #f)))
                            (if val8812
                              val8812
                              (letrec ((val8813
                                        (if (pair? a)
                                          (if (pair? b)
                                            (if (equal? (car a) (car b))
                                              (equal? (cdr a) (cdr b))
                                              #f)
                                            #f)
                                          #f)))
                                (if val8813
                                  val8813
                                  (if (vector? a)
                                    (if (vector? b)
                                      (letrec ((n (vector-length a)))
                                        (if (= (vector-length b) n)
                                          (letrec ((loop
                                                    (lambda (i)
                                                      (letrec ((val8814
                                                                (= i n)))
                                                        (if val8814
                                                          val8814
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
                  (letrec ((val8815 (char>? c1 c2)))
                    (if val8815 val8815 (char=? c1 c2)))))
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
                  (letrec ((val8816 (string>? s1 s2)))
                    (if val8816 val8816 (string=? s1 s2)))))
               (cadr (lambda (x) (car (cdr x))))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec ((val8817 (if (pair? l) (list? (cdr l)) #f)))
                    (if val8817 val8817 (null? l)))))
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
                  (letrec ((val8818 (char-ci<? c1 c2)))
                    (if val8818 val8818 (char-ci=? c1 c2)))))
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
                  (letrec ((val8819 (string<? s1 s2)))
                    (if val8819 val8819 (string=? s1 s2)))))
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
                  (letrec ((val8820 (char-ci>? c1 c2)))
                    (if val8820 val8820 (char-ci=? c1 c2)))))
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
                (lambda (g8962 g8963 g8964)
                  (if ((lambda (value)
                         (if (pair? value)
                           (letrec ((val8821 (eq? (car value) 'authorative)))
                             (if val8821
                               val8821
                               (eq? (car value) 'requires-recursion)))
                           #f))
                       g8964)
                    g8964
                    (blame
                     g8962
                     (position-in-file-loc
                      "programs/test/actor-cc/dns.scm"
                      69
                      18)))))
               (recursive-dns/cm
                (lambda (sender cookie)
                  (lambda (j8965)
                    (letrec ((r8969
                              (lambda (trace8968)
                                (receive
                                 (('finish
                                   (begin
                                     (if (member 'query trace8968)
                                       #t
                                       (blame
                                        j8965
                                        (position-in-file-loc
                                         "programs/test/actor-cc/dns.scm"
                                         76
                                         2)))))
                                  ((pair rcv8967 message8966)
                                   (match
                                    message8966
                                    (((cons 'query (cons x8970 x8971))
                                      (begin
                                        ((dyn send^)
                                         rcv8967
                                         (letrec ((x8972
                                                   (actor? j8965 j8965 x8970))
                                                  (x8973
                                                   ((and/c
                                                     number?/c
                                                     (=/c cookie))
                                                    j8965
                                                    j8965
                                                    x8971)))
                                           (cons
                                            'enhanced
                                            (cons
                                             ((lambda (self-actor cookie)
                                                (lambda (j8974)
                                                  (letrec ((r8978
                                                            (lambda (trace8977)
                                                              (receive
                                                               (('finish
                                                                 (begin
                                                                   (if (member
                                                                        'answer
                                                                        trace8977)
                                                                     #t
                                                                     (blame
                                                                      j8974
                                                                      (position-in-file-loc
                                                                       "programs/test/actor-cc/dns.scm"
                                                                       80
                                                                       17)))))
                                                                ((pair
                                                                  rcv8976
                                                                  message8975)
                                                                 (match
                                                                  message8975
                                                                  (((cons
                                                                     'answer
                                                                     (cons
                                                                      x8979
                                                                      x8980))
                                                                    (begin
                                                                      ((dyn
                                                                        send^)
                                                                       rcv8976
                                                                       (letrec ((x8981
                                                                                 ((and/c
                                                                                   number?/c
                                                                                   (=/c
                                                                                    cookie))
                                                                                  j8974
                                                                                  j8974
                                                                                  x8979))
                                                                                (x8982
                                                                                 (answer?/c
                                                                                  j8974
                                                                                  j8974
                                                                                  x8980)))
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
                                                                                (lambda (j8983)
                                                                                  (letrec ((r8987
                                                                                            (lambda (trace8986)
                                                                                              (receive
                                                                                               (('finish
                                                                                                 (begin
                                                                                                   (if (member
                                                                                                        'answer
                                                                                                        trace8986)
                                                                                                     #t
                                                                                                     (blame
                                                                                                      j8983
                                                                                                      (position-in-file-loc
                                                                                                       "programs/test/actor-cc/dns.scm"
                                                                                                       86
                                                                                                       36)))))
                                                                                                ((pair
                                                                                                  rcv8985
                                                                                                  message8984)
                                                                                                 (match
                                                                                                  message8984
                                                                                                  (((cons
                                                                                                     'answer
                                                                                                     x8988)
                                                                                                    (begin
                                                                                                      ((dyn
                                                                                                        send^)
                                                                                                       rcv8985
                                                                                                       (letrec ((x8989
                                                                                                                 (answer?/c
                                                                                                                  j8983
                                                                                                                  j8983
                                                                                                                  x8988)))
                                                                                                         (cons
                                                                                                          'enhanced
                                                                                                          (cons
                                                                                                           (unconstrained/c
                                                                                                            x8989)
                                                                                                           (cons
                                                                                                            j8983
                                                                                                            (cons
                                                                                                             'answer
                                                                                                             x8989))))))
                                                                                                      (r8987
                                                                                                       (cons
                                                                                                        'answer
                                                                                                        trace8986))))
                                                                                                   (_
                                                                                                    (begin
                                                                                                      ((dyn
                                                                                                        send^)
                                                                                                       rcv8985
                                                                                                       message8984)
                                                                                                      (r8987
                                                                                                       trace8986)))))))))))
                                                                                    (spawn^
                                                                                     (r8987
                                                                                      (list)))))))
                                                                            x8981
                                                                            x8982)
                                                                           (cons
                                                                            j8974
                                                                            (cons
                                                                             'answer
                                                                             (cons
                                                                              x8981
                                                                              x8982)))))))
                                                                      (r8978
                                                                       (cons
                                                                        'answer
                                                                        trace8977))))
                                                                   (_
                                                                    (begin
                                                                      ((dyn
                                                                        send^)
                                                                       rcv8976
                                                                       message8975)
                                                                      (r8978
                                                                       trace8977)))))))))))
                                                    (spawn^ (r8978 (list))))))
                                              x8972
                                              x8973)
                                             (cons
                                              j8965
                                              (cons
                                               'query
                                               (cons x8972 x8973)))))))
                                        (r8969 (cons 'query trace8968))))
                                     (_
                                      (begin
                                        ((dyn send^) rcv8967 message8966)
                                        (r8969 trace8968)))))))))))
                      (spawn^ (r8969 (list)))))))
               (recursive-dns/c
                (lambda (k8991 j8992 a8990)
                  (lambda (v8993)
                    (letrec ((result9001
                              ((lambda (k8994 j8995 v8996)
                                 (match
                                  v8996
                                  (((cons 'query (cons x8997 x8998))
                                    (letrec ((x8999 (actor? k8994 j8995 x8997))
                                             (x9000
                                              (number?/c k8994 j8995 x8998)))
                                      (cons
                                       'enhanced
                                       (cons
                                        (recursive-dns/cm x8999 x9000)
                                        (cons
                                         j8995
                                         (cons 'query (cons x8999 x9000)))))))
                                   (_ #f))))
                               k8991
                               j8992
                               v8993)))
                      (if result9001
                        (a8990 result9001)
                        (blame
                         k8991
                         (position-in-file-loc
                          "programs/test/actor-cc/dns.scm"
                          93
                          2)))))))
               (client
                (lambda (recursive-dns)
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (('start
                        (recursive-dns (cons 'query (cons (dyn self) (fresh))))
                        (client recursive-dns))
                       ((cons 'answer answer)
                        (displayln 'got-answer)
                        (terminate))
                       ((cons 'enhanced (cons k9002 (cons j9006 'start)))
                        (letrec ((kc9003 (k9002 j9006))
                                 (old-send9007 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv9004 msg9005)
                               (old-send9007 kc9003 (cons rcv9004 msg9005)))))
                           (begin
                             (recursive-dns
                              (cons 'query (cons (dyn self) (fresh))))
                             (old-send9007 kc9003 'finish)
                             (client recursive-dns)))))
                       ((cons
                         'enhanced
                         (cons k9008 (cons j9012 (cons 'answer answer))))
                        (letrec ((kc9009 (k9008 j9012))
                                 (old-send9013 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv9010 msg9011)
                               (old-send9013 kc9009 (cons rcv9010 msg9011)))))
                           (begin
                             (displayln 'got-answer)
                             (old-send9013 kc9009 'finish)
                             (terminate)))))))))))
               (recursive-dns
                (lambda (root-server clients)
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (((cons 'query (cons sender cookie))
                        (root-server (cons 'query (cons (dyn self) cookie)))
                        (recursive-dns
                         root-server
                         (add-client sender cookie clients)))
                       ((cons 'answer (cons cookie answer))
                        (trace answer)
                        (if (authorative? answer)
                          (letrec ((client (find-client cookie clients)))
                            (client (cons 'answer answer)))
                          ((cdr answer)
                           (cons 'query (cons (dyn self) cookie))))
                        (if (authorative? answer)
                          (recursive-dns root-server (remassoc cookie clients))
                          (recursive-dns root-server clients)))
                       ((cons
                         'enhanced
                         (cons
                          k9014
                          (cons j9018 (cons 'query (cons sender cookie)))))
                        (letrec ((kc9015 (k9014 j9018))
                                 (old-send9019 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv9016 msg9017)
                               (old-send9019 kc9015 (cons rcv9016 msg9017)))))
                           (begin
                             (root-server
                              (cons 'query (cons (dyn self) cookie)))
                             (old-send9019 kc9015 'finish)
                             (recursive-dns
                              root-server
                              (add-client sender cookie clients))))))
                       ((cons
                         'enhanced
                         (cons
                          k9020
                          (cons j9024 (cons 'answer (cons cookie answer)))))
                        (letrec ((kc9021 (k9020 j9024))
                                 (old-send9025 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv9022 msg9023)
                               (old-send9025 kc9021 (cons rcv9022 msg9023)))))
                           (begin
                             (trace answer)
                             (if (authorative? answer)
                               (letrec ((client (find-client cookie clients)))
                                 (client (cons 'answer answer)))
                               ((cdr answer)
                                (cons 'query (cons (dyn self) cookie))))
                             (old-send9025 kc9021 'finish)
                             (if (authorative? answer)
                               (recursive-dns
                                root-server
                                (remassoc cookie clients))
                               (recursive-dns root-server clients))))))))))))
               (root-server
                (lambda (tld-server)
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (((cons 'query (cons sender cookie))
                        (sender
                         (cons
                          'answer
                          (cons cookie (cons 'requires-recursion tld-server))))
                        (root-server tld-server))
                       ((cons
                         'enhanced
                         (cons
                          k9026
                          (cons j9030 (cons 'query (cons sender cookie)))))
                        (letrec ((kc9027 (k9026 j9030))
                                 (old-send9031 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv9028 msg9029)
                               (old-send9031 kc9027 (cons rcv9028 msg9029)))))
                           (begin
                             (sender
                              (cons
                               'answer
                               (cons
                                cookie
                                (cons 'requires-recursion tld-server))))
                             (old-send9031 kc9027 'finish)
                             (root-server tld-server)))))))))))
               (tld-server
                (lambda (authorative-server)
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (((cons 'query (cons sender cookie))
                        (trace 'tld-server)
                        (sender
                         (cons
                          'answer
                          (cons
                           cookie
                           (cons 'requires-recursion authorative-server))))
                        (tld-server authorative-server))
                       ((cons
                         'enhanced
                         (cons
                          k9032
                          (cons j9036 (cons 'query (cons sender cookie)))))
                        (letrec ((kc9033 (k9032 j9036))
                                 (old-send9037 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv9034 msg9035)
                               (old-send9037 kc9033 (cons rcv9034 msg9035)))))
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
                             (old-send9037 kc9033 'finish)
                             (tld-server authorative-server)))))))))))
               (authorative-server
                (lambda ()
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (((cons 'query (cons sender cookie))
                        (trace 'authorative-server)
                        (sender
                         (cons
                          'answer
                          (cons cookie (cons 'authorative 'dns-result))))
                        (authorative-server))
                       ((cons
                         'enhanced
                         (cons
                          k9038
                          (cons j9042 (cons 'query (cons sender cookie)))))
                        (letrec ((kc9039 (k9038 j9042))
                                 (old-send9043 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv9040 msg9041)
                               (old-send9043 kc9039 (cons rcv9040 msg9041)))))
                           (begin
                             (trace 'authorative-server)
                             (sender
                              (cons
                               'answer
                               (cons cookie (cons 'authorative 'dns-result))))
                             (old-send9043 kc9039 'finish)
                             (authorative-server)))))))))))
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
                (letrec ((xj9044 (loc 'client)) (xk9045 (loc 'server)))
                  (recursive-dns/c xj9044 xk9045 recursive-unmonitored)))
               (client-actor
                (letrec ((act (spawn^ (client recursive-actor))))
                  (lambda (msg) ((dyn send^) act msg)))))
        (client-actor 'start)))))
