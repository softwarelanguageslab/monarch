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
                (lambda (g8821 g8822 g8823)
                  (if (real? g8823)
                    g8823
                    (blame
                     g8821
                     (position-in-file-loc
                      "/Users/bram/development/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                      40
                      19)))))
               (boolean?/c
                (lambda (g8824 g8825 g8826)
                  (if (boolean? g8826)
                    g8826
                    (blame
                     g8824
                     (position-in-file-loc
                      "/Users/bram/development/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                      41
                      22)))))
               (number?/c
                (lambda (g8827 g8828 g8829)
                  (if (number? g8829)
                    g8829
                    (blame
                     g8827
                     (position-in-file-loc
                      "/Users/bram/development/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                      42
                      21)))))
               (any/c
                (lambda (g8830 g8831 g8832)
                  (if ((lambda (v) #t) g8832)
                    g8832
                    (blame
                     g8830
                     (position-in-file-loc
                      "/Users/bram/development/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                      43
                      17)))))
               (any?/c
                (lambda (g8833 g8834 g8835)
                  (if ((lambda (v) #t) g8835)
                    g8835
                    (blame
                     g8833
                     (position-in-file-loc
                      "/Users/bram/development/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                      44
                      18)))))
               (cons?/c
                (lambda (g8836 g8837 g8838)
                  (if (pair? g8838)
                    g8838
                    (blame
                     g8836
                     (position-in-file-loc
                      "/Users/bram/development/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                      45
                      19)))))
               (cons/c
                (lambda (k1 k2)
                  (lambda (k j v) (cons (k1 k j (car v)) (k2 k j (cdr v))))))
               (pair?/c
                (lambda (g8839 g8840 g8841)
                  (if (pair? g8841)
                    g8841
                    (blame
                     g8839
                     (position-in-file-loc
                      "/Users/bram/development/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                      50
                      19)))))
               (integer?/c
                (lambda (g8842 g8843 g8844)
                  (if (integer? g8844)
                    g8844
                    (blame
                     g8842
                     (position-in-file-loc
                      "/Users/bram/development/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                      51
                      22)))))
               (symbol?/c
                (lambda (g8845 g8846 g8847)
                  (if (symbol? g8847)
                    g8847
                    (blame
                     g8845
                     (position-in-file-loc
                      "/Users/bram/development/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                      52
                      21)))))
               (string?/c
                (lambda (g8848 g8849 g8850)
                  (if (string? g8850)
                    g8850
                    (blame
                     g8848
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
                (lambda (g8851 g8852 g8853)
                  (if (null? g8853)
                    g8853
                    (blame
                     g8851
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
                (lambda (g8854 g8855 g8856)
                  (if ((lambda (v) (not (= v 0))) g8856)
                    g8856
                    (blame
                     g8854
                     (position-in-file-loc
                      "/Users/bram/development/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                      68
                      22)))))
               (>=/c
                (lambda (n)
                  (lambda (g8857 g8858 g8859)
                    (if ((lambda (v) (orig->= v n)) g8859)
                      g8859
                      (blame
                       g8857
                       (position-in-file-loc
                        "/Users/bram/development/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                        69
                        20))))))
               (>/c
                (lambda (n)
                  (lambda (g8860 g8861 g8862)
                    (if ((lambda (v) (orig-> v n)) g8862)
                      g8862
                      (blame
                       g8860
                       (position-in-file-loc
                        "/Users/bram/development/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                        70
                        19))))))
               (</c
                (lambda (n)
                  (lambda (g8863 g8864 g8865)
                    (if ((lambda (v) (orig-< v n)) g8865)
                      g8865
                      (blame
                       g8863
                       (position-in-file-loc
                        "/Users/bram/development/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                        71
                        19))))))
               (<=/c
                (lambda (n)
                  (lambda (g8866 g8867 g8868)
                    (if ((lambda (v) (orig-<= v n)) g8868)
                      g8868
                      (blame
                       g8866
                       (position-in-file-loc
                        "/Users/bram/development/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                        72
                        20))))))
               (=/c
                (lambda (n)
                  (lambda (g8869 g8870 g8871)
                    (if ((lambda (v) (orig-= v n)) g8871)
                      g8871
                      (blame
                       g8869
                       (position-in-file-loc
                        "/Users/bram/development/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                        73
                        19))))))
               (string=?/c
                (lambda (s)
                  (lambda (g8872 g8873 g8874)
                    (if ((lambda (v) (string=? s v)) g8874)
                      g8874
                      (blame
                       g8872
                       (position-in-file-loc
                        "/Users/bram/development/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                        74
                        26))))))
               (meta (lambda (v) v))
               (+
                (letrec ((xj8875 'server) (xk8876 'client))
                  ((lambda (j8879 k8880 f8881)
                     (lambda (g8877 g8878)
                       (number?/c
                        j8879
                        k8880
                        (f8881
                         (number?/c k8880 j8879 g8877)
                         (number?/c k8880 j8879 g8878)))))
                   xj8875
                   xk8876
                   (lambda (a b) (orig-+ a b)))))
               (-
                (letrec ((xj8882 'server) (xk8883 'client))
                  ((lambda (j8886 k8887 f8888)
                     (lambda (g8884 g8885)
                       (number?/c
                        j8886
                        k8887
                        (f8888
                         (number?/c k8887 j8886 g8884)
                         (number?/c k8887 j8886 g8885)))))
                   xj8882
                   xk8883
                   (lambda (a b) (orig-- a b)))))
               (*
                (letrec ((xj8889 'server) (xk8890 'client))
                  ((lambda (j8893 k8894 f8895)
                     (lambda (g8891 g8892)
                       (number?/c
                        j8893
                        k8894
                        (f8895
                         (number?/c k8894 j8893 g8891)
                         (number?/c k8894 j8893 g8892)))))
                   xj8889
                   xk8890
                   (lambda (a b) (orig-* a b)))))
               (<
                (letrec ((xj8896 'server) (xk8897 'client))
                  ((lambda (j8900 k8901 f8902)
                     (lambda (g8898 g8899)
                       (boolean?/c
                        j8900
                        k8901
                        (f8902
                         (number?/c k8901 j8900 g8898)
                         (number?/c k8901 j8900 g8899)))))
                   xj8896
                   xk8897
                   (lambda (a b) (orig-< a b)))))
               (>
                (letrec ((xj8903 'server) (xk8904 'client))
                  ((lambda (j8907 k8908 f8909)
                     (lambda (g8905 g8906)
                       (boolean?/c
                        j8907
                        k8908
                        (f8909
                         (number?/c k8908 j8907 g8905)
                         (number?/c k8908 j8907 g8906)))))
                   xj8903
                   xk8904
                   (lambda (a b) (orig-> a b)))))
               (<=
                (letrec ((xj8910 'server) (xk8911 'client))
                  ((lambda (j8914 k8915 f8916)
                     (lambda (g8912 g8913)
                       (boolean?/c
                        j8914
                        k8915
                        (f8916
                         (number?/c k8915 j8914 g8912)
                         (number?/c k8915 j8914 g8913)))))
                   xj8910
                   xk8911
                   (lambda (a b) (orig-<= a b)))))
               (>=
                (letrec ((xj8917 'server) (xk8918 'client))
                  ((lambda (j8921 k8922 f8923)
                     (lambda (g8919 g8920)
                       (boolean?/c
                        j8921
                        k8922
                        (f8923
                         (number?/c k8922 j8921 g8919)
                         (number?/c k8922 j8921 g8920)))))
                   xj8917
                   xk8918
                   (lambda (a b) (orig->= a b)))))
               (add1 (lambda (x) (+ x 1)))
               (/
                (letrec ((xj8924 'server) (xk8925 'client))
                  ((lambda (j8928 k8929 f8930)
                     (lambda (g8926 g8927)
                       (number?/c
                        j8928
                        k8929
                        (f8930
                         (number?/c k8929 j8928 g8926)
                         (number?/c k8929 j8928 g8927)))))
                   xj8924
                   xk8925
                   (lambda (a b) (orig-/ a b)))))
               (car
                (letrec ((xj8931 'server) (xk8932 'client))
                  ((lambda (g8933 g8934 g8935)
                     (lambda (g8936)
                       (any/c
                        g8933
                        g8934
                        (g8935 (pair?/c g8934 g8933 g8936)))))
                   xj8931
                   xk8932
                   (lambda (p) (orig-car p)))))
               (cdr
                (letrec ((xj8937 'server) (xk8938 'client))
                  ((lambda (g8939 g8940 g8941)
                     (lambda (g8942)
                       (any/c
                        g8939
                        g8940
                        (g8941 (pair?/c g8940 g8939 g8942)))))
                   xj8937
                   xk8938
                   (lambda (p) (orig-cdr p)))))
               (vector?/c
                (lambda (g8943 g8944 g8945)
                  (if (vector? g8945)
                    g8945
                    (blame
                     g8943
                     (position-in-file-loc
                      "/Users/bram/development/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                      108
                      21)))))
               (vector-ref
                (letrec ((xj8946 'server) (xk8947 'client))
                  ((lambda (j8950 k8951 f8952)
                     (lambda (g8948 g8949)
                       (any/c
                        j8950
                        k8951
                        (f8952
                         (vector?/c k8951 j8950 g8948)
                         (integer?/c k8951 j8950 g8949)))))
                   xj8946
                   xk8947
                   (lambda (v i) (orig-vector-ref v i)))))
               (vector-set!
                (letrec ((xj8953 'server) (xk8954 'client))
                  ((lambda (j8958 k8959 f8960)
                     (lambda (g8955 g8956 g8957)
                       (any/c
                        j8958
                        k8959
                        (f8960
                         (vector?/c k8959 j8958 g8955)
                         (integer?/c k8959 j8958 g8956)
                         (any/c k8959 j8958 g8957)))))
                   xj8953
                   xk8954
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
               (bookreview/c
                (lambda (corr-id k)
                  (lambda (j8961)
                    (letrec ((r8965
                              (lambda (trace8964)
                                (receive
                                 (('finish
                                   (begin
                                     (if (member 'get-book-review trace8964)
                                       #t
                                       (blame
                                        j8961
                                        (position-in-file-loc
                                         "programs/test/actor-cc/bookreview.scm"
                                         47
                                         2)))))
                                  ((pair rcv8963 message8962)
                                   (match
                                    message8962
                                    (((cons
                                       'get-book-review
                                       (cons x8966 x8967))
                                      (begin
                                        ((dyn send^)
                                         rcv8963
                                         (letrec ((x8968
                                                   (actor? j8961 j8961 x8966))
                                                  (x8969
                                                   ((and/c
                                                     number?/c
                                                     (=/c corr-id))
                                                    j8961
                                                    j8961
                                                    x8967)))
                                           (cons
                                            'enhanced
                                            (cons
                                             ((lambda (actor-ref corr-id)
                                                (lambda (j8970)
                                                  (letrec ((r8974
                                                            (lambda (trace8973)
                                                              (receive
                                                               (('finish
                                                                 (begin
                                                                   (if (member
                                                                        'get-ratings
                                                                        trace8973)
                                                                     #t
                                                                     (blame
                                                                      j8970
                                                                      (position-in-file-loc
                                                                       "programs/test/actor-cc/bookreview.scm"
                                                                       51
                                                                       19)))))
                                                                ((pair
                                                                  rcv8972
                                                                  message8971)
                                                                 (match
                                                                  message8971
                                                                  (((cons
                                                                     'get-ratings
                                                                     (cons
                                                                      x8975
                                                                      x8976))
                                                                    (begin
                                                                      ((dyn
                                                                        send^)
                                                                       rcv8972
                                                                       (letrec ((x8977
                                                                                 (actor?
                                                                                  j8970
                                                                                  j8970
                                                                                  x8975))
                                                                                (x8978
                                                                                 ((and/c
                                                                                   number?/c
                                                                                   (=/c
                                                                                    corr-id))
                                                                                  j8970
                                                                                  j8970
                                                                                  x8976)))
                                                                         (cons
                                                                          'enhanced
                                                                          (cons
                                                                           ((lambda (actor-ref
                                                                                     corr-id)
                                                                              (lambda (j8979)
                                                                                (letrec ((r8983
                                                                                          (lambda (trace8982)
                                                                                            (receive
                                                                                             (('finish
                                                                                               (begin
                                                                                                 (if (member
                                                                                                      'reply-book-ratings
                                                                                                      trace8982)
                                                                                                   #t
                                                                                                   (blame
                                                                                                    j8979
                                                                                                    (position-in-file-loc
                                                                                                     "programs/test/actor-cc/bookreview.scm"
                                                                                                     55
                                                                                                     32)))))
                                                                                              ((pair
                                                                                                rcv8981
                                                                                                message8980)
                                                                                               (match
                                                                                                message8980
                                                                                                (((cons
                                                                                                   'reply-book-ratings
                                                                                                   x8984)
                                                                                                  (begin
                                                                                                    ((dyn
                                                                                                      send^)
                                                                                                     rcv8981
                                                                                                     (letrec ((x8985
                                                                                                               ((and/c
                                                                                                                 number?/c
                                                                                                                 (=/c
                                                                                                                  corr-id))
                                                                                                                j8979
                                                                                                                j8979
                                                                                                                x8984)))
                                                                                                       (cons
                                                                                                        'enhanced
                                                                                                        (cons
                                                                                                         ((lambda (corr-id)
                                                                                                            (lambda (j8986)
                                                                                                              (letrec ((r8990
                                                                                                                        (lambda (trace8989)
                                                                                                                          (receive
                                                                                                                           (('finish
                                                                                                                             (begin
                                                                                                                               (if (member
                                                                                                                                    'reply-book-reviews
                                                                                                                                    trace8989)
                                                                                                                                 #t
                                                                                                                                 (blame
                                                                                                                                  j8986
                                                                                                                                  (position-in-file-loc
                                                                                                                                   "programs/test/actor-cc/bookreview.scm"
                                                                                                                                   58
                                                                                                                                   57)))))
                                                                                                                            ((pair
                                                                                                                              rcv8988
                                                                                                                              message8987)
                                                                                                                             (match
                                                                                                                              message8987
                                                                                                                              (((cons
                                                                                                                                 'reply-book-reviews
                                                                                                                                 x8991)
                                                                                                                                (begin
                                                                                                                                  ((dyn
                                                                                                                                    send^)
                                                                                                                                   rcv8988
                                                                                                                                   (letrec ((x8992
                                                                                                                                             ((and/c
                                                                                                                                               number?/c
                                                                                                                                               (=/c
                                                                                                                                                corr-id))
                                                                                                                                              j8986
                                                                                                                                              j8986
                                                                                                                                              x8991)))
                                                                                                                                     (cons
                                                                                                                                      'enhanced
                                                                                                                                      (cons
                                                                                                                                       (k
                                                                                                                                        x8992)
                                                                                                                                       (cons
                                                                                                                                        j8986
                                                                                                                                        (cons
                                                                                                                                         'reply-book-reviews
                                                                                                                                         x8992))))))
                                                                                                                                  (r8990
                                                                                                                                   (cons
                                                                                                                                    'reply-book-reviews
                                                                                                                                    trace8989))))
                                                                                                                               (_
                                                                                                                                (begin
                                                                                                                                  ((dyn
                                                                                                                                    send^)
                                                                                                                                   rcv8988
                                                                                                                                   message8987)
                                                                                                                                  (r8990
                                                                                                                                   trace8989)))))))))))
                                                                                                                (spawn^
                                                                                                                 (r8990
                                                                                                                  (list))))))
                                                                                                          x8985)
                                                                                                         (cons
                                                                                                          j8979
                                                                                                          (cons
                                                                                                           'reply-book-ratings
                                                                                                           x8985))))))
                                                                                                    (r8983
                                                                                                     (cons
                                                                                                      'reply-book-ratings
                                                                                                      trace8982))))
                                                                                                 (_
                                                                                                  (begin
                                                                                                    ((dyn
                                                                                                      send^)
                                                                                                     rcv8981
                                                                                                     message8980)
                                                                                                    (r8983
                                                                                                     trace8982)))))))))))
                                                                                  (spawn^
                                                                                   (r8983
                                                                                    (list))))))
                                                                            x8977
                                                                            x8978)
                                                                           (cons
                                                                            j8970
                                                                            (cons
                                                                             'get-ratings
                                                                             (cons
                                                                              x8977
                                                                              x8978)))))))
                                                                      (r8974
                                                                       (cons
                                                                        'get-ratings
                                                                        trace8973))))
                                                                   (_
                                                                    (begin
                                                                      ((dyn
                                                                        send^)
                                                                       rcv8972
                                                                       message8971)
                                                                      (r8974
                                                                       trace8973)))))))))))
                                                    (spawn^ (r8974 (list))))))
                                              x8968
                                              x8969)
                                             (cons
                                              j8961
                                              (cons
                                               'get-book-review
                                               (cons x8968 x8969)))))))
                                        (r8965
                                         (cons 'get-book-review trace8964))))
                                     (_
                                      (begin
                                        ((dyn send^) rcv8963 message8962)
                                        (r8965 trace8964)))))))))))
                      (spawn^ (r8965 (list)))))))
               (bookdetails/c
                (lambda (corr-id k)
                  (lambda (j8993)
                    (letrec ((r8997
                              (lambda (trace8996)
                                (receive
                                 (('finish
                                   (begin
                                     (if (member 'get-details trace8996)
                                       #t
                                       (blame
                                        j8993
                                        (position-in-file-loc
                                         "programs/test/actor-cc/bookreview.scm"
                                         64
                                         2)))))
                                  ((pair rcv8995 message8994)
                                   (match
                                    message8994
                                    (((cons 'get-details (cons x8998 x8999))
                                      (begin
                                        ((dyn send^)
                                         rcv8995
                                         (letrec ((x9000
                                                   (actor? j8993 j8993 x8998))
                                                  (x9001
                                                   ((and/c
                                                     number?/c
                                                     (=/c corr-id))
                                                    j8993
                                                    j8993
                                                    x8999)))
                                           (cons
                                            'enhanced
                                            (cons
                                             ((lambda (actor-ref corr-id)
                                                (lambda (j9002)
                                                  (letrec ((r9006
                                                            (lambda (trace9005)
                                                              (receive
                                                               (('finish
                                                                 (begin
                                                                   (if (member
                                                                        'reply-book-details
                                                                        trace9005)
                                                                     #t
                                                                     (blame
                                                                      j9002
                                                                      (position-in-file-loc
                                                                       "programs/test/actor-cc/bookreview.scm"
                                                                       68
                                                                       19)))))
                                                                ((pair
                                                                  rcv9004
                                                                  message9003)
                                                                 (match
                                                                  message9003
                                                                  (((cons
                                                                     'reply-book-details
                                                                     x9007)
                                                                    (begin
                                                                      ((dyn
                                                                        send^)
                                                                       rcv9004
                                                                       (letrec ((x9008
                                                                                 ((and/c
                                                                                   number?/c
                                                                                   (=/c
                                                                                    corr-id))
                                                                                  j9002
                                                                                  j9002
                                                                                  x9007)))
                                                                         (cons
                                                                          'enhanced
                                                                          (cons
                                                                           (k
                                                                            x9008)
                                                                           (cons
                                                                            j9002
                                                                            (cons
                                                                             'reply-book-details
                                                                             x9008))))))
                                                                      (r9006
                                                                       (cons
                                                                        'reply-book-details
                                                                        trace9005))))
                                                                   (_
                                                                    (begin
                                                                      ((dyn
                                                                        send^)
                                                                       rcv9004
                                                                       message9003)
                                                                      (r9006
                                                                       trace9005)))))))))))
                                                    (spawn^ (r9006 (list))))))
                                              x9000
                                              x9001)
                                             (cons
                                              j8993
                                              (cons
                                               'get-details
                                               (cons x9000 x9001)))))))
                                        (r8997 (cons 'get-details trace8996))))
                                     (_
                                      (begin
                                        ((dyn send^) rcv8995 message8994)
                                        (r8997 trace8996)))))))))))
                      (spawn^ (r8997 (list)))))))
               (bookinfo/c
                (lambda (k9010 j9011 a9009)
                  (lambda (v9012)
                    (letrec ((result9027
                              ((lambda (k9013 j9014 v9015)
                                 (match
                                  v9015
                                  (((cons 'get-book-details (cons x9016 x9017))
                                    (letrec ((x9018 (actor? k9013 j9014 x9016))
                                             (x9019
                                              (number?/c k9013 j9014 x9017)))
                                      (cons
                                       'enhanced
                                       (cons
                                        ((lambda (client-ref corr-id)
                                           (bookreview/c
                                            corr-id
                                            (lambda ags
                                              (bookdetails/c
                                               corr-id
                                               (lambda ags
                                                 (lambda (j9020)
                                                   (letrec ((r9024
                                                             (lambda (trace9023)
                                                               (receive
                                                                (('finish
                                                                  (begin
                                                                    (if (member
                                                                         'reply-bookinfo
                                                                         trace9023)
                                                                      #t
                                                                      (blame
                                                                       j9020
                                                                       (position-in-file-loc
                                                                        "programs/test/actor-cc/bookreview.scm"
                                                                        83
                                                                        50)))))
                                                                 ((pair
                                                                   rcv9022
                                                                   message9021)
                                                                  (match
                                                                   message9021
                                                                   (((cons
                                                                      'reply-bookinfo
                                                                      x9025)
                                                                     (begin
                                                                       ((dyn
                                                                         send^)
                                                                        rcv9022
                                                                        (letrec ((x9026
                                                                                  ((and/c
                                                                                    number?/c
                                                                                    (=/c
                                                                                     corr-id))
                                                                                   j9020
                                                                                   j9020
                                                                                   x9025)))
                                                                          (cons
                                                                           'enhanced
                                                                           (cons
                                                                            (unconstrained/c
                                                                             x9026)
                                                                            (cons
                                                                             j9020
                                                                             (cons
                                                                              'reply-bookinfo
                                                                              x9026))))))
                                                                       (r9024
                                                                        (cons
                                                                         'reply-bookinfo
                                                                         trace9023))))
                                                                    (_
                                                                     (begin
                                                                       ((dyn
                                                                         send^)
                                                                        rcv9022
                                                                        message9021)
                                                                       (r9024
                                                                        trace9023)))))))))))
                                                     (spawn^
                                                      (r9024 (list))))))))))
                                         x9018
                                         x9019)
                                        (cons
                                         j9014
                                         (cons
                                          'get-book-details
                                          (cons x9018 x9019)))))))
                                   (_ #f))))
                               k9010
                               j9011
                               v9012)))
                      (if result9027
                        (a9009 result9027)
                        (blame
                         k9010
                         (position-in-file-loc
                          "programs/test/actor-cc/bookreview.scm"
                          75
                          2)))))))
               (client
                (lambda (bookinfo)
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (('start
                        (bookinfo
                         (cons 'get-book-details (cons (dyn self) (fresh))))
                        (client bookinfo))
                       ((cons 'reply-bookinfo corr-id)
                        (displayln 'done)
                        (client bookinfo))
                       ((cons 'enhanced (cons k9028 (cons j9032 'start)))
                        (letrec ((kc9029 (k9028 j9032))
                                 (old-send9033 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv9030 msg9031)
                               (old-send9033 kc9029 (cons rcv9030 msg9031)))))
                           (begin
                             (bookinfo
                              (cons
                               'get-book-details
                               (cons (dyn self) (fresh))))
                             (old-send9033 kc9029 'finish)
                             (client bookinfo)))))
                       ((cons
                         'enhanced
                         (cons
                          k9034
                          (cons j9038 (cons 'reply-bookinfo corr-id))))
                        (letrec ((kc9035 (k9034 j9038))
                                 (old-send9039 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv9036 msg9037)
                               (old-send9039 kc9035 (cons rcv9036 msg9037)))))
                           (begin
                             (displayln 'done)
                             (old-send9039 kc9035 'finish)
                             (client bookinfo)))))))))))
               (bookinfo
                (lambda (book-review book-details clients)
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (((cons 'get-book-details (cons client correlation-id))
                        (book-review
                         (cons
                          'get-book-review
                          (cons (dyn self) correlation-id)))
                        (bookinfo
                         book-review
                         book-details
                         (add-client client correlation-id clients)))
                       ((cons 'reply-book-reviews correlation-id)
                        (letrec ((client (find-client correlation-id clients)))
                          (displayln "got the book reviews")
                          (book-details
                           (cons
                            'get-details
                            (cons (dyn self) correlation-id))))
                        (bookinfo book-review book-details clients))
                       ((cons 'reply-book-details correlation-id)
                        (letrec ((client (find-client correlation-id clients)))
                          (client (cons 'reply-bookinfo correlation-id)))
                        (bookinfo
                         book-review
                         book-details
                         (remassoc correlation-id clients)))
                       ((cons
                         'enhanced
                         (cons
                          k9040
                          (cons
                           j9044
                           (cons
                            'get-book-details
                            (cons client correlation-id)))))
                        (letrec ((kc9041 (k9040 j9044))
                                 (old-send9045 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv9042 msg9043)
                               (old-send9045 kc9041 (cons rcv9042 msg9043)))))
                           (begin
                             (book-review
                              (cons
                               'get-book-review
                               (cons (dyn self) correlation-id)))
                             (old-send9045 kc9041 'finish)
                             (bookinfo
                              book-review
                              book-details
                              (add-client client correlation-id clients))))))
                       ((cons
                         'enhanced
                         (cons
                          k9046
                          (cons
                           j9050
                           (cons 'reply-book-reviews correlation-id))))
                        (letrec ((kc9047 (k9046 j9050))
                                 (old-send9051 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv9048 msg9049)
                               (old-send9051 kc9047 (cons rcv9048 msg9049)))))
                           (begin
                             (letrec ((client
                                       (find-client correlation-id clients)))
                               (displayln "got the book reviews")
                               (book-details
                                (cons
                                 'get-details
                                 (cons (dyn self) correlation-id))))
                             (old-send9051 kc9047 'finish)
                             (bookinfo book-review book-details clients)))))
                       ((cons
                         'enhanced
                         (cons
                          k9052
                          (cons
                           j9056
                           (cons 'reply-book-details correlation-id))))
                        (letrec ((kc9053 (k9052 j9056))
                                 (old-send9057 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv9054 msg9055)
                               (old-send9057 kc9053 (cons rcv9054 msg9055)))))
                           (begin
                             (letrec ((client
                                       (find-client correlation-id clients)))
                               (client (cons 'reply-bookinfo correlation-id)))
                             (old-send9057 kc9053 'finish)
                             (bookinfo
                              book-review
                              book-details
                              (remassoc correlation-id clients))))))))))))
               (bookreview
                (lambda (book-ratings clients)
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (((cons 'get-book-review (cons sender correlation-id))
                        (book-ratings
                         (cons 'get-ratings (cons (dyn self) correlation-id)))
                        (bookreview
                         book-ratings
                         (add-client sender correlation-id clients)))
                       ((cons 'reply-book-ratings correlation-id)
                        (letrec ((client (find-client correlation-id clients)))
                          (displayln "got the ratings")
                          (client (cons 'reply-book-reviews correlation-id)))
                        (bookreview
                         book-ratings
                         (remassoc correlation-id clients)))
                       ((cons
                         'enhanced
                         (cons
                          k9058
                          (cons
                           j9062
                           (cons
                            'get-book-review
                            (cons sender correlation-id)))))
                        (letrec ((kc9059 (k9058 j9062))
                                 (old-send9063 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv9060 msg9061)
                               (old-send9063 kc9059 (cons rcv9060 msg9061)))))
                           (begin
                             (book-ratings
                              (cons
                               'get-ratings
                               (cons (dyn self) correlation-id)))
                             (old-send9063 kc9059 'finish)
                             (bookreview
                              book-ratings
                              (add-client sender correlation-id clients))))))
                       ((cons
                         'enhanced
                         (cons
                          k9064
                          (cons
                           j9068
                           (cons 'reply-book-ratings correlation-id))))
                        (letrec ((kc9065 (k9064 j9068))
                                 (old-send9069 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv9066 msg9067)
                               (old-send9069 kc9065 (cons rcv9066 msg9067)))))
                           (begin
                             (letrec ((client
                                       (find-client correlation-id clients)))
                               (displayln "got the ratings")
                               (client
                                (cons 'reply-book-reviews correlation-id)))
                             (old-send9069 kc9065 'finish)
                             (bookreview
                              book-ratings
                              (remassoc correlation-id clients))))))))))))
               (bookratings
                (lambda ()
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (((cons 'get-ratings (cons sender correlation-id))
                        (sender (cons 'reply-book-ratings correlation-id))
                        (bookratings))
                       ((cons
                         'enhanced
                         (cons
                          k9070
                          (cons
                           j9074
                           (cons 'get-ratings (cons sender correlation-id)))))
                        (letrec ((kc9071 (k9070 j9074))
                                 (old-send9075 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv9072 msg9073)
                               (old-send9075 kc9071 (cons rcv9072 msg9073)))))
                           (begin
                             (sender (cons 'reply-book-ratings correlation-id))
                             (old-send9075 kc9071 'finish)
                             (bookratings)))))))))))
               (bookdetails
                (lambda ()
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (((cons 'get-details (cons sender correlation-id))
                        (sender (cons 'reply-book-details correlation-id))
                        (bookdetails))
                       ((cons
                         'enhanced
                         (cons
                          k9076
                          (cons
                           j9080
                           (cons 'get-details (cons sender correlation-id)))))
                        (letrec ((kc9077 (k9076 j9080))
                                 (old-send9081 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv9078 msg9079)
                               (old-send9081 kc9077 (cons rcv9078 msg9079)))))
                           (begin
                             (sender (cons 'reply-book-details correlation-id))
                             (old-send9081 kc9077 'finish)
                             (bookdetails)))))))))))
               (bookratings-actor
                (letrec ((act (spawn^ (bookratings))))
                  (lambda (msg) ((dyn send^) act msg))))
               (bookdetails-actor
                (letrec ((act (spawn^ (bookdetails))))
                  (lambda (msg) ((dyn send^) act msg))))
               (bookreview-actor
                (letrec ((act (spawn^ (bookreview bookratings-actor '()))))
                  (lambda (msg) ((dyn send^) act msg))))
               (bookinfo-actor-unmonitored
                (letrec ((act
                          (spawn^
                           (bookinfo bookreview-actor bookdetails-actor '()))))
                  (lambda (msg) ((dyn send^) act msg))))
               (bookinfo-actor
                (letrec ((xj9082 (loc 'client)) (xk9083 (loc 'server)))
                  (bookinfo/c xj9082 xk9083 bookinfo-actor-unmonitored)))
               (client-actor
                (letrec ((act (spawn^ (client bookinfo-actor))))
                  (lambda (msg) ((dyn send^) act msg)))))
        (client-actor 'start)))))
