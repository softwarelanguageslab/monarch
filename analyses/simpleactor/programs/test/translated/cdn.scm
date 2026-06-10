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
               (local-dns/c
                (lambda (k8962 j8963 a8961)
                  (lambda (v8964)
                    (letrec ((result9017
                              ((lambda (k8965 j8966 v8967)
                                 (match
                                  v8967
                                  (((cons 'query (cons x8968 x8969))
                                    (letrec ((x8970 (actor? k8965 j8966 x8968))
                                             (x8971
                                              (number?/c k8965 j8966 x8969)))
                                      (cons
                                       'enhanced
                                       (cons
                                        ((lambda (sender cookie)
                                           (lambda (j8972)
                                             (letrec ((r8976
                                                       (lambda (trace8975)
                                                         (receive
                                                          (('finish
                                                            (begin
                                                              (if (member
                                                                   'get-hostname
                                                                   trace8975)
                                                                #t
                                                                (blame
                                                                 j8972
                                                                 (position-in-file-loc
                                                                  "programs/test/actor-cc/cdn.scm"
                                                                  48
                                                                  17)))))
                                                           ((pair
                                                             rcv8974
                                                             message8973)
                                                            (match
                                                             message8973
                                                             (((cons
                                                                'get-hostname
                                                                (cons
                                                                 x8977
                                                                 x8978))
                                                               (begin
                                                                 ((dyn send^)
                                                                  rcv8974
                                                                  (letrec ((x8979
                                                                            (actor?
                                                                             j8972
                                                                             j8972
                                                                             x8977))
                                                                           (x8980
                                                                            ((and/c
                                                                              number?/c
                                                                              (=/c
                                                                               cookie))
                                                                             j8972
                                                                             j8972
                                                                             x8978)))
                                                                    (cons
                                                                     'enhanced
                                                                     (cons
                                                                      ((lambda (self-actor
                                                                                cookie)
                                                                         (lambda (j8981)
                                                                           (letrec ((r8985
                                                                                     (lambda (trace8984)
                                                                                       (receive
                                                                                        (('finish
                                                                                          (begin
                                                                                            (if (member
                                                                                                 'reply-hostname
                                                                                                 trace8984)
                                                                                              #t
                                                                                              (blame
                                                                                               j8981
                                                                                               (position-in-file-loc
                                                                                                "programs/test/actor-cc/cdn.scm"
                                                                                                52
                                                                                                34)))))
                                                                                         ((pair
                                                                                           rcv8983
                                                                                           message8982)
                                                                                          (match
                                                                                           message8982
                                                                                           (((cons
                                                                                              'reply-hostname
                                                                                              (cons
                                                                                               x8986
                                                                                               x8987))
                                                                                             (begin
                                                                                               ((dyn
                                                                                                 send^)
                                                                                                rcv8983
                                                                                                (letrec ((x8988
                                                                                                          (string?/c
                                                                                                           j8981
                                                                                                           j8981
                                                                                                           x8986))
                                                                                                         (x8989
                                                                                                          ((and/c
                                                                                                            number?/c
                                                                                                            (=/c
                                                                                                             cookie))
                                                                                                           j8981
                                                                                                           j8981
                                                                                                           x8987)))
                                                                                                  (cons
                                                                                                   'enhanced
                                                                                                   (cons
                                                                                                    ((lambda (hostname
                                                                                                              cookie)
                                                                                                       (lambda (j8990)
                                                                                                         (letrec ((r8994
                                                                                                                   (lambda (trace8993)
                                                                                                                     (receive
                                                                                                                      (('finish
                                                                                                                        (begin
                                                                                                                          (if (member
                                                                                                                               'get-ip
                                                                                                                               trace8993)
                                                                                                                            #t
                                                                                                                            (blame
                                                                                                                             j8990
                                                                                                                             (position-in-file-loc
                                                                                                                              "programs/test/actor-cc/cdn.scm"
                                                                                                                              56
                                                                                                                              49)))))
                                                                                                                       ((pair
                                                                                                                         rcv8992
                                                                                                                         message8991)
                                                                                                                        (match
                                                                                                                         message8991
                                                                                                                         (((cons
                                                                                                                            'get-ip
                                                                                                                            (cons
                                                                                                                             x8995
                                                                                                                             (cons
                                                                                                                              x8996
                                                                                                                              x8997)))
                                                                                                                           (begin
                                                                                                                             ((dyn
                                                                                                                               send^)
                                                                                                                              rcv8992
                                                                                                                              (letrec ((x8998
                                                                                                                                        (actor?
                                                                                                                                         j8990
                                                                                                                                         j8990
                                                                                                                                         x8995))
                                                                                                                                       (x8999
                                                                                                                                        ((and/c
                                                                                                                                          string?/c
                                                                                                                                          (string=?/c
                                                                                                                                           hostname))
                                                                                                                                         j8990
                                                                                                                                         j8990
                                                                                                                                         x8996))
                                                                                                                                       (x9000
                                                                                                                                        ((and/c
                                                                                                                                          number?/c
                                                                                                                                          (=/c
                                                                                                                                           cookie))
                                                                                                                                         j8990
                                                                                                                                         j8990
                                                                                                                                         x8997)))
                                                                                                                                (cons
                                                                                                                                 'enhanced
                                                                                                                                 (cons
                                                                                                                                  ((lambda (self-actor
                                                                                                                                            hostname
                                                                                                                                            cookie)
                                                                                                                                     (lambda (j9001)
                                                                                                                                       (letrec ((r9005
                                                                                                                                                 (lambda (trace9004)
                                                                                                                                                   (receive
                                                                                                                                                    (('finish
                                                                                                                                                      (begin
                                                                                                                                                        (if (member
                                                                                                                                                             'reply-ip
                                                                                                                                                             trace9004)
                                                                                                                                                          #t
                                                                                                                                                          (blame
                                                                                                                                                           j9001
                                                                                                                                                           (position-in-file-loc
                                                                                                                                                            "programs/test/actor-cc/cdn.scm"
                                                                                                                                                            60
                                                                                                                                                            64)))))
                                                                                                                                                     ((pair
                                                                                                                                                       rcv9003
                                                                                                                                                       message9002)
                                                                                                                                                      (match
                                                                                                                                                       message9002
                                                                                                                                                       (((cons
                                                                                                                                                          'reply-ip
                                                                                                                                                          (cons
                                                                                                                                                           x9006
                                                                                                                                                           x9007))
                                                                                                                                                         (begin
                                                                                                                                                           ((dyn
                                                                                                                                                             send^)
                                                                                                                                                            rcv9003
                                                                                                                                                            (letrec ((x9008
                                                                                                                                                                      (number?/c
                                                                                                                                                                       j9001
                                                                                                                                                                       j9001
                                                                                                                                                                       x9006))
                                                                                                                                                                     (x9009
                                                                                                                                                                      ((and/c
                                                                                                                                                                        number?/c
                                                                                                                                                                        (=/c
                                                                                                                                                                         cookie))
                                                                                                                                                                       j9001
                                                                                                                                                                       j9001
                                                                                                                                                                       x9007)))
                                                                                                                                                              (cons
                                                                                                                                                               'enhanced
                                                                                                                                                               (cons
                                                                                                                                                                ((lambda (ip
                                                                                                                                                                          cookie)
                                                                                                                                                                   (lambda (j9010)
                                                                                                                                                                     (letrec ((r9014
                                                                                                                                                                               (lambda (trace9013)
                                                                                                                                                                                 (receive
                                                                                                                                                                                  (('finish
                                                                                                                                                                                    (begin
                                                                                                                                                                                      (if (member
                                                                                                                                                                                           'reply
                                                                                                                                                                                           trace9013)
                                                                                                                                                                                        #t
                                                                                                                                                                                        (blame
                                                                                                                                                                                         j9010
                                                                                                                                                                                         (position-in-file-loc
                                                                                                                                                                                          "programs/test/actor-cc/cdn.scm"
                                                                                                                                                                                          64
                                                                                                                                                                                          79)))))
                                                                                                                                                                                   ((pair
                                                                                                                                                                                     rcv9012
                                                                                                                                                                                     message9011)
                                                                                                                                                                                    (match
                                                                                                                                                                                     message9011
                                                                                                                                                                                     (((cons
                                                                                                                                                                                        'reply
                                                                                                                                                                                        x9015)
                                                                                                                                                                                       (begin
                                                                                                                                                                                         ((dyn
                                                                                                                                                                                           send^)
                                                                                                                                                                                          rcv9012
                                                                                                                                                                                          (letrec ((x9016
                                                                                                                                                                                                    ((and/c
                                                                                                                                                                                                      number?/c
                                                                                                                                                                                                      (=/c
                                                                                                                                                                                                       ip))
                                                                                                                                                                                                     j9010
                                                                                                                                                                                                     j9010
                                                                                                                                                                                                     x9015)))
                                                                                                                                                                                            (cons
                                                                                                                                                                                             'enhanced
                                                                                                                                                                                             (cons
                                                                                                                                                                                              (unconstrained/c
                                                                                                                                                                                               x9016)
                                                                                                                                                                                              (cons
                                                                                                                                                                                               j9010
                                                                                                                                                                                               (cons
                                                                                                                                                                                                'reply
                                                                                                                                                                                                x9016))))))
                                                                                                                                                                                         (r9014
                                                                                                                                                                                          (cons
                                                                                                                                                                                           'reply
                                                                                                                                                                                           trace9013))))
                                                                                                                                                                                      (_
                                                                                                                                                                                       (begin
                                                                                                                                                                                         ((dyn
                                                                                                                                                                                           send^)
                                                                                                                                                                                          rcv9012
                                                                                                                                                                                          message9011)
                                                                                                                                                                                         (r9014
                                                                                                                                                                                          trace9013)))))))))))
                                                                                                                                                                       (spawn^
                                                                                                                                                                        (r9014
                                                                                                                                                                         (list))))))
                                                                                                                                                                 x9008
                                                                                                                                                                 x9009)
                                                                                                                                                                (cons
                                                                                                                                                                 j9001
                                                                                                                                                                 (cons
                                                                                                                                                                  'reply-ip
                                                                                                                                                                  (cons
                                                                                                                                                                   x9008
                                                                                                                                                                   x9009)))))))
                                                                                                                                                           (r9005
                                                                                                                                                            (cons
                                                                                                                                                             'reply-ip
                                                                                                                                                             trace9004))))
                                                                                                                                                        (_
                                                                                                                                                         (begin
                                                                                                                                                           ((dyn
                                                                                                                                                             send^)
                                                                                                                                                            rcv9003
                                                                                                                                                            message9002)
                                                                                                                                                           (r9005
                                                                                                                                                            trace9004)))))))))))
                                                                                                                                         (spawn^
                                                                                                                                          (r9005
                                                                                                                                           (list))))))
                                                                                                                                   x8998
                                                                                                                                   x8999
                                                                                                                                   x9000)
                                                                                                                                  (cons
                                                                                                                                   j8990
                                                                                                                                   (cons
                                                                                                                                    'get-ip
                                                                                                                                    (cons
                                                                                                                                     x8998
                                                                                                                                     (cons
                                                                                                                                      x8999
                                                                                                                                      x9000))))))))
                                                                                                                             (r8994
                                                                                                                              (cons
                                                                                                                               'get-ip
                                                                                                                               trace8993))))
                                                                                                                          (_
                                                                                                                           (begin
                                                                                                                             ((dyn
                                                                                                                               send^)
                                                                                                                              rcv8992
                                                                                                                              message8991)
                                                                                                                             (r8994
                                                                                                                              trace8993)))))))))))
                                                                                                           (spawn^
                                                                                                            (r8994
                                                                                                             (list))))))
                                                                                                     x8988
                                                                                                     x8989)
                                                                                                    (cons
                                                                                                     j8981
                                                                                                     (cons
                                                                                                      'reply-hostname
                                                                                                      (cons
                                                                                                       x8988
                                                                                                       x8989)))))))
                                                                                               (r8985
                                                                                                (cons
                                                                                                 'reply-hostname
                                                                                                 trace8984))))
                                                                                            (_
                                                                                             (begin
                                                                                               ((dyn
                                                                                                 send^)
                                                                                                rcv8983
                                                                                                message8982)
                                                                                               (r8985
                                                                                                trace8984)))))))))))
                                                                             (spawn^
                                                                              (r8985
                                                                               (list))))))
                                                                       x8979
                                                                       x8980)
                                                                      (cons
                                                                       j8972
                                                                       (cons
                                                                        'get-hostname
                                                                        (cons
                                                                         x8979
                                                                         x8980)))))))
                                                                 (r8976
                                                                  (cons
                                                                   'get-hostname
                                                                   trace8975))))
                                                              (_
                                                               (begin
                                                                 ((dyn send^)
                                                                  rcv8974
                                                                  message8973)
                                                                 (r8976
                                                                  trace8975)))))))))))
                                               (spawn^ (r8976 (list))))))
                                         x8970
                                         x8971)
                                        (cons
                                         j8966
                                         (cons 'query (cons x8970 x8971)))))))
                                   (_ #f))))
                               k8962
                               j8963
                               v8964)))
                      (if result9017
                        (a8961 result9017)
                        (blame
                         k8962
                         (position-in-file-loc
                          "programs/test/actor-cc/cdn.scm"
                          44
                          2)))))))
               (client
                (lambda (local-dns)
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (('start
                        (local-dns (cons 'query (cons (dyn self) (fresh))))
                        (client local-dns))
                       ((cons 'reply ip) (displayln ip) (terminate))
                       ((cons 'enhanced (cons k9018 (cons j9022 'start)))
                        (letrec ((kc9019 (k9018 j9022))
                                 (old-send9023 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv9020 msg9021)
                               (old-send9023 kc9019 (cons rcv9020 msg9021)))))
                           (begin
                             (local-dns
                              (cons 'query (cons (dyn self) (fresh))))
                             (old-send9023 kc9019 'finish)
                             (client local-dns)))))
                       ((cons
                         'enhanced
                         (cons k9024 (cons j9028 (cons 'reply ip))))
                        (letrec ((kc9025 (k9024 j9028))
                                 (old-send9029 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv9026 msg9027)
                               (old-send9029 kc9025 (cons rcv9026 msg9027)))))
                           (begin
                             (displayln ip)
                             (old-send9029 kc9025 'finish)
                             (terminate)))))))))))
               (local-dns
                (lambda (internal external clients)
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (((cons 'query (cons sender cookie))
                        (internal
                         (cons 'get-hostname (cons (dyn self) cookie)))
                        (local-dns
                         internal
                         external
                         (add-client sender cookie clients)))
                       ((cons 'reply-hostname (cons hostname cookie))
                        (external
                         (cons
                          'get-ip
                          (cons (dyn self) (cons hostname cookie))))
                        (local-dns internal external clients))
                       ((cons 'reply-ip (cons ip cookie))
                        (letrec ((client (find-client cookie clients)))
                          (client (cons 'reply ip)))
                        (local-dns
                         internal
                         external
                         (remassoc cookie clients)))
                       ((cons
                         'enhanced
                         (cons
                          k9030
                          (cons j9034 (cons 'query (cons sender cookie)))))
                        (letrec ((kc9031 (k9030 j9034))
                                 (old-send9035 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv9032 msg9033)
                               (old-send9035 kc9031 (cons rcv9032 msg9033)))))
                           (begin
                             (internal
                              (cons 'get-hostname (cons (dyn self) cookie)))
                             (old-send9035 kc9031 'finish)
                             (local-dns
                              internal
                              external
                              (add-client sender cookie clients))))))
                       ((cons
                         'enhanced
                         (cons
                          k9036
                          (cons
                           j9040
                           (cons 'reply-hostname (cons hostname cookie)))))
                        (letrec ((kc9037 (k9036 j9040))
                                 (old-send9041 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv9038 msg9039)
                               (old-send9041 kc9037 (cons rcv9038 msg9039)))))
                           (begin
                             (external
                              (cons
                               'get-ip
                               (cons (dyn self) (cons hostname cookie))))
                             (old-send9041 kc9037 'finish)
                             (local-dns internal external clients)))))
                       ((cons
                         'enhanced
                         (cons
                          k9042
                          (cons j9046 (cons 'reply-ip (cons ip cookie)))))
                        (letrec ((kc9043 (k9042 j9046))
                                 (old-send9047 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv9044 msg9045)
                               (old-send9047 kc9043 (cons rcv9044 msg9045)))))
                           (begin
                             (letrec ((client (find-client cookie clients)))
                               (client (cons 'reply ip)))
                             (old-send9047 kc9043 'finish)
                             (local-dns
                              internal
                              external
                              (remassoc cookie clients))))))))))))
               (internal-server
                (lambda ()
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (((cons 'get-hostname (cons sender cookie))
                        (sender
                         (cons 'reply-hostname (cons (fresh-string) cookie)))
                        (internal-server))
                       ((cons
                         'enhanced
                         (cons
                          k9048
                          (cons
                           j9052
                           (cons 'get-hostname (cons sender cookie)))))
                        (letrec ((kc9049 (k9048 j9052))
                                 (old-send9053 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv9050 msg9051)
                               (old-send9053 kc9049 (cons rcv9050 msg9051)))))
                           (begin
                             (sender
                              (cons
                               'reply-hostname
                               (cons (fresh-string) cookie)))
                             (old-send9053 kc9049 'finish)
                             (internal-server)))))))))))
               (external-server
                (lambda ()
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (((cons 'get-ip (cons sender (cons hostname cookie)))
                        (sender (cons 'reply-ip (cons (fresh) cookie)))
                        (external-server))
                       ((cons
                         'enhanced
                         (cons
                          k9054
                          (cons
                           j9058
                           (cons
                            'get-ip
                            (cons sender (cons hostname cookie))))))
                        (letrec ((kc9055 (k9054 j9058))
                                 (old-send9059 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv9056 msg9057)
                               (old-send9059 kc9055 (cons rcv9056 msg9057)))))
                           (begin
                             (sender (cons 'reply-ip (cons (fresh) cookie)))
                             (old-send9059 kc9055 'finish)
                             (external-server)))))))))))
               (internal-actor
                (letrec ((act (spawn^ (internal-server))))
                  (lambda (msg) ((dyn send^) act msg))))
               (external-actor
                (letrec ((act (spawn^ (external-server))))
                  (lambda (msg) ((dyn send^) act msg))))
               (local-dns-unmonitored
                (letrec ((act
                          (spawn^
                           (local-dns internal-actor external-actor '()))))
                  (lambda (msg) ((dyn send^) act msg))))
               (local-dns-actor
                (letrec ((xj9060 (loc 'client)) (xk9061 (loc 'server)))
                  (local-dns/c xj9060 xk9061 local-dns-unmonitored)))
               (client-actor
                (letrec ((act (spawn^ (client local-dns-actor))))
                  (lambda (msg) ((dyn send^) act msg)))))
        (client-actor 'start)))))
