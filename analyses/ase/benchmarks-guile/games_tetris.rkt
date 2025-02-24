(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7773 #t)) g7773)))
    (meta (lambda (v) (letrec* ((g7774 v)) g7774)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7775
          (letrec*
           ((g7776
             (letrec*
              ((x-e7777 lst))
              (letrec*
               ((v1742 x-e7777))
               (cond
                ((begin (write '(funapp 22 18)) (display "\n") (null? v1742))
                 (letrec* () #f))
                ((begin (write '(funapp 23 18)) (display "\n") (and #t #t))
                 (letrec*
                  ((v1
                    (begin (write '(funapp 25 24)) (display "\n") (car v1742)))
                   (vs
                    (begin
                      (write '(funapp 25 41))
                      (display "\n")
                      (cdr v1742))))
                  (letrec*
                   ((x-cnd7778
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7778
                     #t
                     (begin
                       (write '(funapp 28 37))
                       (display "\n")
                       (member v vs))))))
                (else
                 (begin
                   (write '(funapp 29 23))
                   (display "\n")
                   (error "no match found"))))))))
           g7776)))
        g7775)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7779 (lambda (v) (letrec* ((g7780 v)) g7780)))) g7779)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7781
          (letrec*
           ((x7782 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7782)))))
        g7781))))
   (letrec*
    ((g7783
      (letrec*
       ((g7784
         (letrec*
          ((assert
            (lambda (cnd)
              (letrec*
               ((g7785
                 (if cnd
                   (begin (write '(funapp 47 31)) (display "\n") '())
                   (begin
                     (write '(funapp 47 36))
                     (display "\n")
                     (error "assertion failed")))))
               g7785)))
           (>=
            (lambda (x y)
              (letrec*
               ((g7786
                 (letrec*
                  ((x7788
                    (begin
                      (write '(funapp 52 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 52 55))
                    (display "\n")
                    (assert x7788))))
                (g7787
                 (letrec*
                  ((val7243
                    (begin (write '(funapp 55 29)) (display "\n") (> x y))))
                  (letrec*
                   ((g7789
                     (if val7243
                       val7243
                       (letrec*
                        ((val7244
                          (begin
                            (write '(funapp 61 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7790 (if val7244 val7244 #f))) g7790)))))
                   g7789))))
               g7787)))
           (<=
            (lambda (x y)
              (letrec*
               ((g7791
                 (letrec*
                  ((x7793
                    (begin
                      (write '(funapp 68 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 68 55))
                    (display "\n")
                    (assert x7793))))
                (g7792
                 (letrec*
                  ((val7245
                    (begin (write '(funapp 71 29)) (display "\n") (< x y))))
                  (letrec*
                   ((g7794
                     (if val7245
                       val7245
                       (letrec*
                        ((val7246
                          (begin
                            (write '(funapp 77 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7795 (if val7246 val7246 #f))) g7795)))))
                   g7794))))
               g7792)))
           (>
            (lambda (x y)
              (letrec*
               ((g7796
                 (letrec*
                  ((x7798
                    (begin
                      (write '(funapp 84 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 84 55))
                    (display "\n")
                    (assert x7798))))
                (g7797
                 (letrec*
                  ((x7799
                    (begin (write '(funapp 85 41)) (display "\n") (<= x y))))
                  (begin (write '(funapp 85 52)) (display "\n") (not x7799)))))
               g7797)))
           (orig-+ +)
           (orig-- -)
           (orig-* *)
           (orig-/ /)
           (orig-> >)
           (orig-< <)
           (orig->= >=)
           (orig-<= <=)
           (orig-car car)
           (orig-cdr cdr)
           (orig-cons cons)
           (orig-vector-ref vector-ref)
           (orig-vector-set vector-set!))
          (letrec*
           ((g7800 (begin (write '(funapp 101 19)) (display "\n") '()))
            (g7801
             (letrec*
              ((empty (begin (write '(funapp 104 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7802
                     (lambda (k j lst)
                       (letrec*
                        ((g7803
                          (begin
                            (write '(funapp 112 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7804
                                  (begin
                                    (write '(funapp 114 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7804))
                             lst))))
                        g7803))))
                   g7802)))
               (real?/c
                (lambda (g7262 g7263 g7264)
                  (letrec*
                   ((g7805
                     (letrec*
                      ((x-cnd7806
                        (begin
                          (write '(funapp 123 35))
                          (display "\n")
                          (real? g7264))))
                      (if x-cnd7806
                        g7264
                        (begin
                          (write '(blame g7262 124 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7262)))))))
                   g7805)))
               (boolean?/c
                (lambda (g7265 g7266 g7267)
                  (letrec*
                   ((g7807
                     (letrec*
                      ((x-cnd7808
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (boolean? g7267))))
                      (if x-cnd7808
                        g7267
                        (begin
                          (write '(blame g7265 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7265)))))))
                   g7807)))
               (number?/c
                (lambda (g7268 g7269 g7270)
                  (letrec*
                   ((g7809
                     (letrec*
                      ((x-cnd7810
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (number? g7270))))
                      (if x-cnd7810
                        g7270
                        (begin
                          (write '(blame g7268 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7268)))))))
                   g7809)))
               (any/c
                (lambda (g7271 g7272 g7273)
                  (letrec*
                   ((g7811
                     (letrec*
                      ((x-cnd7812
                        (begin
                          (write '(funapp 148 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7813 #t)) g7813)) g7273))))
                      (if x-cnd7812
                        g7273
                        (begin
                          (write '(blame g7271 149 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7271)))))))
                   g7811)))
               (any?/c
                (lambda (g7274 g7275 g7276)
                  (letrec*
                   ((g7814
                     (letrec*
                      ((x-cnd7815
                        (begin
                          (write '(funapp 157 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7816 #t)) g7816)) g7276))))
                      (if x-cnd7815
                        g7276
                        (begin
                          (write '(blame g7274 158 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7274)))))))
                   g7814)))
               (cons?/c
                (lambda (g7277 g7278 g7279)
                  (letrec*
                   ((g7817
                     (letrec*
                      ((x-cnd7818
                        (begin
                          (write '(funapp 165 35))
                          (display "\n")
                          (pair? g7279))))
                      (if x-cnd7818
                        g7279
                        (begin
                          (write '(blame g7277 166 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7277)))))))
                   g7817)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7280 g7281 g7282)
                  (letrec*
                   ((g7819
                     (letrec*
                      ((x-cnd7820
                        (begin
                          (write '(funapp 174 35))
                          (display "\n")
                          (pair? g7282))))
                      (if x-cnd7820
                        g7282
                        (begin
                          (write '(blame g7280 175 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7280)))))))
                   g7819)))
               (integer?/c
                (lambda (g7283 g7284 g7285)
                  (letrec*
                   ((g7821
                     (letrec*
                      ((x-cnd7822
                        (begin
                          (write '(funapp 182 35))
                          (display "\n")
                          (integer? g7285))))
                      (if x-cnd7822
                        g7285
                        (begin
                          (write '(blame g7283 183 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7283)))))))
                   g7821)))
               (symbol?/c
                (lambda (g7286 g7287 g7288)
                  (letrec*
                   ((g7823
                     (letrec*
                      ((x-cnd7824
                        (begin
                          (write '(funapp 190 35))
                          (display "\n")
                          (symbol? g7288))))
                      (if x-cnd7824
                        g7288
                        (begin
                          (write '(blame g7286 191 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7286)))))))
                   g7823)))
               (string?/c
                (lambda (g7289 g7290 g7291)
                  (letrec*
                   ((g7825
                     (letrec*
                      ((x-cnd7826
                        (begin
                          (write '(funapp 198 35))
                          (display "\n")
                          (string? g7291))))
                      (if x-cnd7826
                        g7291
                        (begin
                          (write '(blame g7289 199 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7289)))))))
                   g7825)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7827
                     (lambda (k j v)
                       (letrec*
                        ((g7828
                          (letrec*
                           ((x-cnd7829
                             (begin
                               (write '(funapp 209 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7829
                             (begin
                               (write '(funapp 210 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7828))))
                   g7827)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7830
                     (lambda (k j v)
                       (letrec*
                        ((g7831
                          (letrec*
                           ((x-cnd7832
                             (begin
                               (write '(funapp 221 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7832
                             (begin
                               (write '(funapp 223 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7836
                                (letrec*
                                 ((x7837
                                   (begin
                                     (write '(funapp 227 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 228 34))
                                   (display "\n")
                                   (contract k j x7837))))
                               (x7833
                                (letrec*
                                 ((x7835
                                   (begin
                                     (write '(funapp 231 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7834
                                   (begin
                                     (write '(funapp 231 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 232 34))
                                   (display "\n")
                                   (x7835 k j x7834)))))
                              (begin
                                (write '(funapp 233 31))
                                (display "\n")
                                (orig-cons x7836 x7833)))))))
                        g7831))))
                   g7830)))
               (any? (lambda (v) (letrec* ((g7838 #t)) g7838)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7839
                     (letrec*
                      ((x7840
                        (begin
                          (write '(funapp 240 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 240 55))
                        (display "\n")
                        (not x7840)))))
                   g7839)))
               (nonzero?/c
                (lambda (g7292 g7293 g7294)
                  (letrec*
                   ((g7841
                     (letrec*
                      ((x-cnd7842
                        (begin
                          (write '(funapp 248 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7843
                                (letrec*
                                 ((x7844
                                   (begin
                                     (write '(funapp 250 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 250 64))
                                   (display "\n")
                                   (not x7844)))))
                              g7843))
                           g7294))))
                      (if x-cnd7842
                        g7294
                        (begin
                          (write '(blame g7292 255 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7292)))))))
                   g7841)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7845
                     (lambda (g7295 g7296 g7297)
                       (letrec*
                        ((g7846
                          (letrec*
                           ((x-cnd7847
                             (begin
                               (write '(funapp 266 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7848
                                     (begin
                                       (write '(funapp 267 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7848))
                                g7297))))
                           (if x-cnd7847
                             g7297
                             (begin
                               (write '(blame g7295 271 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7295)))))))
                        g7846))))
                   g7845)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7849
                     (lambda (g7298 g7299 g7300)
                       (letrec*
                        ((g7850
                          (letrec*
                           ((x-cnd7851
                             (begin
                               (write '(funapp 283 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7852
                                     (begin
                                       (write '(funapp 284 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7852))
                                g7300))))
                           (if x-cnd7851
                             g7300
                             (begin
                               (write '(blame g7298 288 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7298)))))))
                        g7850))))
                   g7849)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7853
                     (lambda (g7301 g7302 g7303)
                       (letrec*
                        ((g7854
                          (letrec*
                           ((x-cnd7855
                             (begin
                               (write '(funapp 300 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7856
                                     (begin
                                       (write '(funapp 301 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7856))
                                g7303))))
                           (if x-cnd7855
                             g7303
                             (begin
                               (write '(blame g7301 305 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7301)))))))
                        g7854))))
                   g7853)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7857
                     (lambda (g7304 g7305 g7306)
                       (letrec*
                        ((g7858
                          (letrec*
                           ((x-cnd7859
                             (begin
                               (write '(funapp 317 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7860
                                     (begin
                                       (write '(funapp 318 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7860))
                                g7306))))
                           (if x-cnd7859
                             g7306
                             (begin
                               (write '(blame g7304 322 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7304)))))))
                        g7858))))
                   g7857)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7861
                     (lambda (g7307 g7308 g7309)
                       (letrec*
                        ((g7862
                          (letrec*
                           ((x-cnd7863
                             (begin
                               (write '(funapp 334 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7864
                                     (begin
                                       (write '(funapp 335 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7864))
                                g7309))))
                           (if x-cnd7863
                             g7309
                             (begin
                               (write '(blame g7307 339 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7307)))))))
                        g7862))))
                   g7861)))
               (meta (lambda (v) (letrec* ((g7865 v)) g7865)))
               (+
                (letrec*
                 ((xj7310
                   (begin (write '(funapp 345 26)) (display "\n") 'server))
                  (xk7311
                   (begin (write '(funapp 345 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7866
                    (begin
                      (write '(funapp 348 21))
                      (display "\n")
                      ((lambda (j7314 k7315 f7316)
                         (letrec*
                          ((g7868
                            (lambda (g7312 g7313)
                              (letrec*
                               ((g7869
                                 (letrec*
                                  ((x7870
                                    (letrec*
                                     ((x7872
                                       (begin
                                         (write '(funapp 357 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7312)))
                                      (x7871
                                       (begin
                                         (write '(funapp 358 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7313))))
                                     (begin
                                       (write '(funapp 359 36))
                                       (display "\n")
                                       (f7316 x7872 x7871)))))
                                  (begin
                                    (write '(funapp 360 33))
                                    (display "\n")
                                    (number?/c j7314 k7315 x7870)))))
                               g7869))))
                          g7868))
                       xj7310
                       xk7311
                       (lambda (a b)
                         (letrec*
                          ((g7867
                            (begin
                              (write '(funapp 365 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7867))))))
                  g7866)))
               (-
                (letrec*
                 ((xj7317
                   (begin (write '(funapp 369 26)) (display "\n") 'server))
                  (xk7318
                   (begin (write '(funapp 369 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7873
                    (begin
                      (write '(funapp 372 21))
                      (display "\n")
                      ((lambda (j7321 k7322 f7323)
                         (letrec*
                          ((g7875
                            (lambda (g7319 g7320)
                              (letrec*
                               ((g7876
                                 (letrec*
                                  ((x7877
                                    (letrec*
                                     ((x7879
                                       (begin
                                         (write '(funapp 381 44))
                                         (display "\n")
                                         (number?/c j7321 k7322 g7319)))
                                      (x7878
                                       (begin
                                         (write '(funapp 382 44))
                                         (display "\n")
                                         (number?/c j7321 k7322 g7320))))
                                     (begin
                                       (write '(funapp 383 36))
                                       (display "\n")
                                       (f7323 x7879 x7878)))))
                                  (begin
                                    (write '(funapp 384 33))
                                    (display "\n")
                                    (number?/c j7321 k7322 x7877)))))
                               g7876))))
                          g7875))
                       xj7317
                       xk7318
                       (lambda (a b)
                         (letrec*
                          ((g7874
                            (begin
                              (write '(funapp 389 53))
                              (display "\n")
                              (orig-- a b))))
                          g7874))))))
                  g7873)))
               (*
                (letrec*
                 ((xj7324
                   (begin (write '(funapp 393 26)) (display "\n") 'server))
                  (xk7325
                   (begin (write '(funapp 393 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7880
                    (begin
                      (write '(funapp 396 21))
                      (display "\n")
                      ((lambda (j7328 k7329 f7330)
                         (letrec*
                          ((g7882
                            (lambda (g7326 g7327)
                              (letrec*
                               ((g7883
                                 (letrec*
                                  ((x7884
                                    (letrec*
                                     ((x7886
                                       (begin
                                         (write '(funapp 405 44))
                                         (display "\n")
                                         (number?/c j7328 k7329 g7326)))
                                      (x7885
                                       (begin
                                         (write '(funapp 406 44))
                                         (display "\n")
                                         (number?/c j7328 k7329 g7327))))
                                     (begin
                                       (write '(funapp 407 36))
                                       (display "\n")
                                       (f7330 x7886 x7885)))))
                                  (begin
                                    (write '(funapp 408 33))
                                    (display "\n")
                                    (number?/c j7328 k7329 x7884)))))
                               g7883))))
                          g7882))
                       xj7324
                       xk7325
                       (lambda (a b)
                         (letrec*
                          ((g7881
                            (begin
                              (write '(funapp 413 53))
                              (display "\n")
                              (orig-* a b))))
                          g7881))))))
                  g7880)))
               (<
                (letrec*
                 ((xj7331
                   (begin (write '(funapp 417 26)) (display "\n") 'server))
                  (xk7332
                   (begin (write '(funapp 417 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7887
                    (begin
                      (write '(funapp 420 21))
                      (display "\n")
                      ((lambda (j7335 k7336 f7337)
                         (letrec*
                          ((g7889
                            (lambda (g7333 g7334)
                              (letrec*
                               ((g7890
                                 (letrec*
                                  ((x7891
                                    (letrec*
                                     ((x7893
                                       (begin
                                         (write '(funapp 429 44))
                                         (display "\n")
                                         (number?/c j7335 k7336 g7333)))
                                      (x7892
                                       (begin
                                         (write '(funapp 430 44))
                                         (display "\n")
                                         (number?/c j7335 k7336 g7334))))
                                     (begin
                                       (write '(funapp 431 36))
                                       (display "\n")
                                       (f7337 x7893 x7892)))))
                                  (begin
                                    (write '(funapp 432 33))
                                    (display "\n")
                                    (boolean?/c j7335 k7336 x7891)))))
                               g7890))))
                          g7889))
                       xj7331
                       xk7332
                       (lambda (a b)
                         (letrec*
                          ((g7888
                            (begin
                              (write '(funapp 437 53))
                              (display "\n")
                              (orig-< a b))))
                          g7888))))))
                  g7887)))
               (>
                (letrec*
                 ((xj7338
                   (begin (write '(funapp 441 26)) (display "\n") 'server))
                  (xk7339
                   (begin (write '(funapp 441 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7894
                    (begin
                      (write '(funapp 444 21))
                      (display "\n")
                      ((lambda (j7342 k7343 f7344)
                         (letrec*
                          ((g7896
                            (lambda (g7340 g7341)
                              (letrec*
                               ((g7897
                                 (letrec*
                                  ((x7898
                                    (letrec*
                                     ((x7900
                                       (begin
                                         (write '(funapp 453 44))
                                         (display "\n")
                                         (number?/c j7342 k7343 g7340)))
                                      (x7899
                                       (begin
                                         (write '(funapp 454 44))
                                         (display "\n")
                                         (number?/c j7342 k7343 g7341))))
                                     (begin
                                       (write '(funapp 455 36))
                                       (display "\n")
                                       (f7344 x7900 x7899)))))
                                  (begin
                                    (write '(funapp 456 33))
                                    (display "\n")
                                    (boolean?/c j7342 k7343 x7898)))))
                               g7897))))
                          g7896))
                       xj7338
                       xk7339
                       (lambda (a b)
                         (letrec*
                          ((g7895
                            (begin
                              (write '(funapp 461 53))
                              (display "\n")
                              (orig-> a b))))
                          g7895))))))
                  g7894)))
               (<=
                (letrec*
                 ((xj7345
                   (begin (write '(funapp 465 26)) (display "\n") 'server))
                  (xk7346
                   (begin (write '(funapp 465 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7901
                    (begin
                      (write '(funapp 468 21))
                      (display "\n")
                      ((lambda (j7349 k7350 f7351)
                         (letrec*
                          ((g7903
                            (lambda (g7347 g7348)
                              (letrec*
                               ((g7904
                                 (letrec*
                                  ((x7905
                                    (letrec*
                                     ((x7907
                                       (begin
                                         (write '(funapp 477 44))
                                         (display "\n")
                                         (number?/c j7349 k7350 g7347)))
                                      (x7906
                                       (begin
                                         (write '(funapp 478 44))
                                         (display "\n")
                                         (number?/c j7349 k7350 g7348))))
                                     (begin
                                       (write '(funapp 479 36))
                                       (display "\n")
                                       (f7351 x7907 x7906)))))
                                  (begin
                                    (write '(funapp 480 33))
                                    (display "\n")
                                    (boolean?/c j7349 k7350 x7905)))))
                               g7904))))
                          g7903))
                       xj7345
                       xk7346
                       (lambda (a b)
                         (letrec*
                          ((g7902
                            (begin
                              (write '(funapp 485 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7902))))))
                  g7901)))
               (>=
                (letrec*
                 ((xj7352
                   (begin (write '(funapp 489 26)) (display "\n") 'server))
                  (xk7353
                   (begin (write '(funapp 489 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7908
                    (begin
                      (write '(funapp 492 21))
                      (display "\n")
                      ((lambda (j7356 k7357 f7358)
                         (letrec*
                          ((g7910
                            (lambda (g7354 g7355)
                              (letrec*
                               ((g7911
                                 (letrec*
                                  ((x7912
                                    (letrec*
                                     ((x7914
                                       (begin
                                         (write '(funapp 501 44))
                                         (display "\n")
                                         (number?/c j7356 k7357 g7354)))
                                      (x7913
                                       (begin
                                         (write '(funapp 502 44))
                                         (display "\n")
                                         (number?/c j7356 k7357 g7355))))
                                     (begin
                                       (write '(funapp 503 36))
                                       (display "\n")
                                       (f7358 x7914 x7913)))))
                                  (begin
                                    (write '(funapp 504 33))
                                    (display "\n")
                                    (boolean?/c j7356 k7357 x7912)))))
                               g7911))))
                          g7910))
                       xj7352
                       xk7353
                       (lambda (a b)
                         (letrec*
                          ((g7909
                            (begin
                              (write '(funapp 509 53))
                              (display "\n")
                              (orig->= a b))))
                          g7909))))))
                  g7908)))
               (/
                (letrec*
                 ((xj7359
                   (begin (write '(funapp 513 26)) (display "\n") 'server))
                  (xk7360
                   (begin (write '(funapp 513 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7915
                    (begin
                      (write '(funapp 516 21))
                      (display "\n")
                      ((lambda (j7363 k7364 f7365)
                         (letrec*
                          ((g7917
                            (lambda (g7361 g7362)
                              (letrec*
                               ((g7918
                                 (letrec*
                                  ((x7919
                                    (letrec*
                                     ((x7921
                                       (begin
                                         (write '(funapp 525 44))
                                         (display "\n")
                                         (number?/c j7363 k7364 g7361)))
                                      (x7920
                                       (begin
                                         (write '(funapp 526 44))
                                         (display "\n")
                                         (number?/c j7363 k7364 g7362))))
                                     (begin
                                       (write '(funapp 527 36))
                                       (display "\n")
                                       (f7365 x7921 x7920)))))
                                  (begin
                                    (write '(funapp 528 33))
                                    (display "\n")
                                    (number?/c j7363 k7364 x7919)))))
                               g7918))))
                          g7917))
                       xj7359
                       xk7360
                       (lambda (a b)
                         (letrec*
                          ((g7916
                            (begin
                              (write '(funapp 533 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7916))))))
                  g7915)))
               (car
                (letrec*
                 ((xj7366
                   (begin (write '(funapp 537 26)) (display "\n") 'server))
                  (xk7367
                   (begin (write '(funapp 537 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7922
                    (begin
                      (write '(funapp 540 21))
                      (display "\n")
                      ((lambda (j7369 k7370 f7371)
                         (letrec*
                          ((g7924
                            (lambda (g7368)
                              (letrec*
                               ((g7925
                                 (letrec*
                                  ((x7926
                                    (letrec*
                                     ((x7927
                                       (begin
                                         (write '(funapp 549 44))
                                         (display "\n")
                                         (pair?/c j7369 k7370 g7368))))
                                     (begin
                                       (write '(funapp 550 36))
                                       (display "\n")
                                       (f7371 x7927)))))
                                  (begin
                                    (write '(funapp 551 33))
                                    (display "\n")
                                    (any/c j7369 k7370 x7926)))))
                               g7925))))
                          g7924))
                       xj7366
                       xk7367
                       (lambda (p)
                         (letrec*
                          ((g7923
                            (begin
                              (write '(funapp 556 51))
                              (display "\n")
                              (orig-car p))))
                          g7923))))))
                  g7922)))
               (cdr
                (letrec*
                 ((xj7372
                   (begin (write '(funapp 560 26)) (display "\n") 'server))
                  (xk7373
                   (begin (write '(funapp 560 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7928
                    (begin
                      (write '(funapp 563 21))
                      (display "\n")
                      ((lambda (j7375 k7376 f7377)
                         (letrec*
                          ((g7930
                            (lambda (g7374)
                              (letrec*
                               ((g7931
                                 (letrec*
                                  ((x7932
                                    (letrec*
                                     ((x7933
                                       (begin
                                         (write '(funapp 572 44))
                                         (display "\n")
                                         (pair?/c j7375 k7376 g7374))))
                                     (begin
                                       (write '(funapp 573 36))
                                       (display "\n")
                                       (f7377 x7933)))))
                                  (begin
                                    (write '(funapp 574 33))
                                    (display "\n")
                                    (any/c j7375 k7376 x7932)))))
                               g7931))))
                          g7930))
                       xj7372
                       xk7373
                       (lambda (p)
                         (letrec*
                          ((g7929
                            (begin
                              (write '(funapp 579 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7929))))))
                  g7928)))
               (cons
                (letrec*
                 ((xj7378
                   (begin (write '(funapp 583 26)) (display "\n") 'server))
                  (xk7379
                   (begin (write '(funapp 583 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7934
                    (begin
                      (write '(funapp 586 21))
                      (display "\n")
                      ((lambda (j7382 k7383 f7384)
                         (letrec*
                          ((g7936
                            (lambda (g7380 g7381)
                              (letrec*
                               ((g7937
                                 (letrec*
                                  ((x7938
                                    (letrec*
                                     ((x7940
                                       (begin
                                         (write '(funapp 595 44))
                                         (display "\n")
                                         (any/c j7382 k7383 g7380)))
                                      (x7939
                                       (begin
                                         (write '(funapp 596 44))
                                         (display "\n")
                                         (any/c j7382 k7383 g7381))))
                                     (begin
                                       (write '(funapp 597 36))
                                       (display "\n")
                                       (f7384 x7940 x7939)))))
                                  (begin
                                    (write '(funapp 598 33))
                                    (display "\n")
                                    (pair?/c j7382 k7383 x7938)))))
                               g7937))))
                          g7936))
                       xj7378
                       xk7379
                       (lambda (a b)
                         (letrec*
                          ((g7935
                            (begin
                              (write '(funapp 604 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7935))))))
                  g7934)))
               (vector-ref
                (letrec*
                 ((xj7385
                   (begin (write '(funapp 608 26)) (display "\n") 'server))
                  (xk7386
                   (begin (write '(funapp 608 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7941
                    (begin
                      (write '(funapp 611 21))
                      (display "\n")
                      ((lambda (j7388 k7389 f7390)
                         (letrec*
                          ((g7943
                            (lambda (g7387)
                              (letrec*
                               ((g7944
                                 (letrec*
                                  ((x7945
                                    (letrec*
                                     ((x7946
                                       (begin
                                         (write '(funapp 620 44))
                                         (display "\n")
                                         (vector?/c j7388 k7389 g7387))))
                                     (begin
                                       (write '(funapp 621 36))
                                       (display "\n")
                                       (f7390 x7946)))))
                                  (begin
                                    (write '(funapp 622 33))
                                    (display "\n")
                                    (integer?/c j7388 k7389 x7945)))))
                               g7944))))
                          g7943))
                       xj7385
                       xk7386
                       (lambda (v i)
                         (letrec*
                          ((g7942
                            (begin
                              (write '(funapp 628 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7942))))))
                  g7941)))
               (vector-set!
                (letrec*
                 ((xj7391
                   (begin (write '(funapp 632 26)) (display "\n") 'server))
                  (xk7392
                   (begin (write '(funapp 632 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7947
                    (begin
                      (write '(funapp 635 21))
                      (display "\n")
                      ((lambda (j7395 k7396 f7397)
                         (letrec*
                          ((g7949
                            (lambda (g7393 g7394)
                              (letrec*
                               ((g7950
                                 (letrec*
                                  ((x7951
                                    (letrec*
                                     ((x7953
                                       (begin
                                         (write '(funapp 644 44))
                                         (display "\n")
                                         (vector?/c j7395 k7396 g7393)))
                                      (x7952
                                       (begin
                                         (write '(funapp 645 44))
                                         (display "\n")
                                         (integer?/c j7395 k7396 g7394))))
                                     (begin
                                       (write '(funapp 646 36))
                                       (display "\n")
                                       (f7397 x7953 x7952)))))
                                  (begin
                                    (write '(funapp 647 33))
                                    (display "\n")
                                    (any/c j7395 k7396 x7951)))))
                               g7950))))
                          g7949))
                       xj7391
                       xk7392
                       (lambda (vec i v)
                         (letrec*
                          ((g7948
                            (begin
                              (write '(funapp 653 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7948))))))
                  g7947)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7954
                     (letrec*
                      ((x7955
                        (letrec*
                         ((x7956
                           (begin
                             (write '(funapp 660 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 660 58))
                           (display "\n")
                           (cdr x7956)))))
                      (begin
                        (write '(funapp 661 23))
                        (display "\n")
                        (cdr x7955)))))
                   g7954)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7957
                     (letrec*
                      ((x7960
                        (begin
                          (write '(funapp 667 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 667 62))
                        (display "\n")
                        (assert x7960))))
                    (g7958
                     (letrec*
                      ((x7961
                        (begin
                          (write '(funapp 668 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 668 57))
                        (display "\n")
                        (assert x7961))))
                    (g7959
                     (letrec*
                      ((x-cnd7962
                        (begin
                          (write '(funapp 671 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7962
                        (begin (write '(funapp 673 24)) (display "\n") '())
                        (letrec*
                         ((x7965
                           (letrec*
                            ((x7966
                              (begin
                                (write '(funapp 675 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 675 61))
                              (display "\n")
                              (f x7966))))
                          (x7963
                           (letrec*
                            ((x7964
                              (begin
                                (write '(funapp 676 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 676 61))
                              (display "\n")
                              (map f x7964)))))
                         (begin
                           (write '(funapp 677 26))
                           (display "\n")
                           (cons x7965 x7963)))))))
                   g7959)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7967
                     (letrec*
                      ((x7968
                        (begin
                          (write '(funapp 682 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 682 55))
                        (display "\n")
                        (cdr x7968)))))
                   g7967)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7969
                     (letrec*
                      ((x7970
                        (letrec*
                         ((x7971
                           (letrec*
                            ((x7972
                              (begin
                                (write '(funapp 691 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 691 61))
                              (display "\n")
                              (car x7972)))))
                         (begin
                           (write '(funapp 692 26))
                           (display "\n")
                           (cdr x7971)))))
                      (begin
                        (write '(funapp 693 23))
                        (display "\n")
                        (car x7970)))))
                   g7969)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7973
                     (letrec*
                      ((x7974
                        (letrec*
                         ((x7975
                           (letrec*
                            ((x7976
                              (begin
                                (write '(funapp 702 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 702 61))
                              (display "\n")
                              (cdr x7976)))))
                         (begin
                           (write '(funapp 703 26))
                           (display "\n")
                           (car x7975)))))
                      (begin
                        (write '(funapp 704 23))
                        (display "\n")
                        (cdr x7974)))))
                   g7973)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7977
                     (letrec*
                      ((x7980
                        (begin
                          (write '(funapp 710 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 710 60))
                        (display "\n")
                        (assert x7980))))
                    (g7978
                     (letrec*
                      ((x7981
                        (begin
                          (write '(funapp 712 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 712 59))
                        (display "\n")
                        (assert x7981))))
                    (g7979
                     (letrec*
                      ((output-port
                        (begin
                          (write '(funapp 715 37))
                          (display "\n")
                          (open-output-file filename)))
                       (res
                        (begin
                          (write '(funapp 716 29))
                          (display "\n")
                          (proc output-port))))
                      (letrec*
                       ((g7982
                         (begin
                           (write '(funapp 718 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7983 res))
                       g7983))))
                   g7979)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7984
                     (letrec*
                      ((x7985
                        (letrec*
                         ((x7986
                           (begin
                             (write '(funapp 726 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 726 58))
                           (display "\n")
                           (cdr x7986)))))
                      (begin
                        (write '(funapp 727 23))
                        (display "\n")
                        (car x7985)))))
                   g7984)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7987
                     (letrec*
                      ((x7988
                        (letrec*
                         ((x7989
                           (letrec*
                            ((x7990
                              (begin
                                (write '(funapp 736 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 736 61))
                              (display "\n")
                              (car x7990)))))
                         (begin
                           (write '(funapp 737 26))
                           (display "\n")
                           (car x7989)))))
                      (begin
                        (write '(funapp 738 23))
                        (display "\n")
                        (cdr x7988)))))
                   g7987)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7991
                     (letrec*
                      ((x7993
                        (begin
                          (write '(funapp 743 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 743 57))
                        (display "\n")
                        (assert x7993))))
                    (g7992
                     (letrec*
                      ((x-cnd7994
                        (begin
                          (write '(funapp 746 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7994
                        #f
                        (letrec*
                         ((x-cnd7995
                           (letrec*
                            ((x7996
                              (begin
                                (write '(funapp 751 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 751 56))
                              (display "\n")
                              (eq? x7996 k)))))
                         (if x-cnd7995
                           (begin
                             (write '(funapp 753 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7997
                              (begin
                                (write '(funapp 754 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 754 55))
                              (display "\n")
                              (assq k x7997)))))))))
                   g7992)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7998
                     (letrec*
                      ((x7999
                        (begin
                          (write '(funapp 759 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 759 60))
                        (display "\n")
                        (= 0 x7999)))))
                   g7998)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g8000
                     (letrec*
                      ((x8002
                        (begin
                          (write '(funapp 764 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 764 57))
                        (display "\n")
                        (assert x8002))))
                    (g8001
                     (letrec*
                      ((x-cnd8003
                        (begin
                          (write '(funapp 767 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8003
                        ""
                        (letrec*
                         ((x8006
                           (letrec*
                            ((x8007
                              (begin
                                (write '(funapp 772 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 772 55))
                              (display "\n")
                              (char->string x8007))))
                          (x8004
                           (letrec*
                            ((x8005
                              (begin
                                (write '(funapp 774 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 774 55))
                              (display "\n")
                              (list->string x8005)))))
                         (begin
                           (write '(funapp 775 26))
                           (display "\n")
                           (string-append x8006 x8004)))))))
                   g8001)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8008
                     (letrec*
                      ((x8011
                        (begin
                          (write '(funapp 780 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 780 58))
                        (display "\n")
                        (assert x8011))))
                    (g8009
                     (letrec*
                      ((x8012
                        (begin
                          (write '(funapp 781 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 781 58))
                        (display "\n")
                        (assert x8012))))
                    (g8010
                     (letrec*
                      ((val7247
                        (begin
                          (write '(funapp 784 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g8013
                         (if val7247
                           val7247
                           (begin
                             (write '(funapp 786 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g8013))))
                   g8010)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g8014
                     (letrec*
                      ((x8015
                        (letrec*
                         ((x8016
                           (letrec*
                            ((x8017
                              (begin
                                (write '(funapp 796 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 796 61))
                              (display "\n")
                              (cdr x8017)))))
                         (begin
                           (write '(funapp 797 26))
                           (display "\n")
                           (cdr x8016)))))
                      (begin
                        (write '(funapp 798 23))
                        (display "\n")
                        (cdr x8015)))))
                   g8014)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g8018
                     (letrec*
                      ((x8021
                        (begin
                          (write '(funapp 803 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 803 57))
                        (display "\n")
                        (assert x8021))))
                    (g8019
                     (letrec*
                      ((x8022
                        (begin
                          (write '(funapp 804 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 804 57))
                        (display "\n")
                        (assert x8022))))
                    (g8020
                     (letrec*
                      ((x-cnd8023
                        (begin
                          (write '(funapp 807 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd8023
                        x
                        (letrec*
                         ((x8025
                           (begin
                             (write '(funapp 811 34))
                             (display "\n")
                             (cdr x)))
                          (x8024
                           (begin
                             (write '(funapp 811 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 812 26))
                           (display "\n")
                           (list-tail x8025 x8024)))))))
                   g8020)))
               (halt
                (lambda ()
                  (letrec*
                   ((g8026
                     (begin (write '(funapp 814 49)) (display "\n") '())))
                   g8026)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g8027
                     (letrec*
                      ((x-cnd8028
                        (letrec*
                         ((x8029 #\a))
                         (begin
                           (write '(funapp 821 48))
                           (display "\n")
                           (char-ci>=? c x8029)))))
                      (if x-cnd8028
                        (letrec*
                         ((x8030 #\z))
                         (begin
                           (write '(funapp 823 48))
                           (display "\n")
                           (char-ci<=? c x8030)))
                        #f))))
                   g8027)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g8031
                     (letrec*
                      ((val7248
                        (letrec*
                         ((x8032
                           (begin
                             (write '(funapp 832 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 832 62))
                           (display "\n")
                           (= x8032 9)))))
                      (letrec*
                       ((g8033
                         (if val7248
                           val7248
                           (letrec*
                            ((val7249
                              (letrec*
                               ((x8034
                                 (begin
                                   (write '(funapp 840 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 841 32))
                                 (display "\n")
                                 (= x8034 10)))))
                            (letrec*
                             ((g8035
                               (if val7249
                                 val7249
                                 (letrec*
                                  ((x8036
                                    (begin
                                      (write '(funapp 847 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 848 35))
                                    (display "\n")
                                    (= x8036 32))))))
                             g8035)))))
                       g8033))))
                   g8031)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g8037
                     (letrec*
                      ((x8038
                        (letrec*
                         ((x8039
                           (begin
                             (write '(funapp 857 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 857 58))
                           (display "\n")
                           (cdr x8039)))))
                      (begin
                        (write '(funapp 858 23))
                        (display "\n")
                        (cdr x8038)))))
                   g8037)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g8040
                     (letrec*
                      ((x8042
                        (begin
                          (write '(funapp 863 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 863 59))
                        (display "\n")
                        (assert x8042))))
                    (g8041
                     (begin (write '(funapp 864 28)) (display "\n") (> x 0))))
                   g8041)))
               ($pc (begin (write '(funapp 866 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g8043 #f)) g8043)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g8044
                     (letrec*
                      ((x8045
                        (begin
                          (write '(funapp 872 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 872 55))
                        (display "\n")
                        (cdr x8045)))))
                   g8044)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g8046
                     (letrec*
                      ((x8048
                        (begin
                          (write '(funapp 877 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 877 59))
                        (display "\n")
                        (assert x8048))))
                    (g8047
                     (letrec*
                      ((x-cnd8049
                        (begin
                          (write '(funapp 880 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd8049
                        (begin
                          (write '(funapp 881 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 881 49))
                          (display "\n")
                          (floor x))))))
                   g8047)))
               ($cmp (begin (write '(funapp 883 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g8050
                     (letrec*
                      ((val7250
                        (begin
                          (write '(funapp 889 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g8051
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x-cnd8052
                                 (begin
                                   (write '(funapp 897 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd8052
                                 (begin
                                   (write '(funapp 898 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g8053
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((val7252
                                    (letrec*
                                     ((x-cnd8054
                                       (begin
                                         (write '(funapp 906 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd8054
                                       (letrec*
                                        ((x-cnd8055
                                          (begin
                                            (write '(funapp 909 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd8055
                                          (begin
                                            (write '(funapp 910 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g8056
                                     (if val7252
                                       val7252
                                       (letrec*
                                        ((val7253
                                          (letrec*
                                           ((x-cnd8057
                                             (begin
                                               (write '(funapp 919 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd8057
                                             (letrec*
                                              ((x-cnd8058
                                                (begin
                                                  (write '(funapp 922 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd8058
                                                (letrec*
                                                 ((x-cnd8059
                                                   (letrec*
                                                    ((x8061
                                                      (begin
                                                        (write
                                                         '(funapp 927 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x8060
                                                      (begin
                                                        (write
                                                         '(funapp 928 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 929 53))
                                                      (display "\n")
                                                      (equal? x8061 x8060)))))
                                                 (if x-cnd8059
                                                   (letrec*
                                                    ((x8063
                                                      (begin
                                                        (write
                                                         '(funapp 932 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x8062
                                                      (begin
                                                        (write
                                                         '(funapp 933 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 934 53))
                                                      (display "\n")
                                                      (equal? x8063 x8062)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g8064
                                           (if val7253
                                             val7253
                                             (letrec*
                                              ((x-cnd8065
                                                (begin
                                                  (write '(funapp 943 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd8065
                                                (letrec*
                                                 ((x-cnd8066
                                                   (begin
                                                     (write '(funapp 946 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd8066
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 949 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g8067
                                                       (letrec*
                                                        ((x-cnd8068
                                                          (letrec*
                                                           ((x8069
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  956
                                                                  62))
                                                               (display "\n")
                                                               (vector-length
                                                                b))))
                                                           (begin
                                                             (write
                                                              '(funapp 958 60))
                                                             (display "\n")
                                                             (= x8069 n)))))
                                                        (if x-cnd8068
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g8070
                                                                  (letrec*
                                                                   ((val7254
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          967
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (=
                                                                        i
                                                                        n))))
                                                                   (letrec*
                                                                    ((g8071
                                                                      (if val7254
                                                                        val7254
                                                                        (letrec*
                                                                         ((x-cnd8072
                                                                           (letrec*
                                                                            ((x8074
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   976
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 a
                                                                                 i)))
                                                                             (x8073
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   980
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 b
                                                                                 i))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 983
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (equal?
                                                                               x8074
                                                                               x8073)))))
                                                                         (if x-cnd8072
                                                                           (letrec*
                                                                            ((x8075
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   989
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (+
                                                                                 i
                                                                                 1))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 992
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (loop
                                                                               x8075)))
                                                                           #f)))))
                                                                    g8071))))
                                                                g8070))))
                                                           (letrec*
                                                            ((g8076
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   998
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g8076))
                                                          #f))))
                                                     g8067))
                                                   #f))
                                                #f)))))
                                         g8064)))))
                                   g8056)))))
                             g8053)))))
                       g8051))))
                   g8050)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g8077
                     (letrec*
                      ((x8078
                        (letrec*
                         ((x8079
                           (letrec*
                            ((x8080
                              (begin
                                (write '(funapp 1016 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1016 61))
                              (display "\n")
                              (car x8080)))))
                         (begin
                           (write '(funapp 1017 26))
                           (display "\n")
                           (car x8079)))))
                      (begin
                        (write '(funapp 1018 23))
                        (display "\n")
                        (cdr x8078)))))
                   g8077)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g8081
                     (letrec*
                      ((x8082
                        (letrec*
                         ((x8083
                           (letrec*
                            ((x8084
                              (begin
                                (write '(funapp 1027 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1027 61))
                              (display "\n")
                              (cdr x8084)))))
                         (begin
                           (write '(funapp 1028 26))
                           (display "\n")
                           (car x8083)))))
                      (begin
                        (write '(funapp 1029 23))
                        (display "\n")
                        (car x8082)))))
                   g8081)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g8085
                     (begin
                       (write '(funapp 1031 53))
                       (display "\n")
                       (eq? x y))))
                   g8085)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g8086
                     (letrec*
                      ((x8089
                        (begin
                          (write '(funapp 1036 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1036 60))
                        (display "\n")
                        (assert x8089))))
                    (g8087
                     (letrec*
                      ((x8090
                        (begin
                          (write '(funapp 1038 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1038 59))
                        (display "\n")
                        (assert x8090))))
                    (g8088
                     (letrec*
                      ((input-port
                        (begin
                          (write '(funapp 1041 36))
                          (display "\n")
                          (open-input-file filename)))
                       (res
                        (begin
                          (write '(funapp 1042 29))
                          (display "\n")
                          (proc input-port))))
                      (letrec*
                       ((g8091
                         (begin
                           (write '(funapp 1044 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g8092 res))
                       g8092))))
                   g8088)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g8093
                     (begin
                       (write '(funapp 1047 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1047 57))
                          (display "\n")
                          '())))))
                   g8093)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8094
                     (letrec*
                      ((x8097
                        (begin
                          (write '(funapp 1051 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1051 58))
                        (display "\n")
                        (assert x8097))))
                    (g8095
                     (letrec*
                      ((x8098
                        (begin
                          (write '(funapp 1052 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1052 58))
                        (display "\n")
                        (assert x8098))))
                    (g8096
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1055 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g8099
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1057 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g8099))))
                   g8096)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g8100
                     (letrec*
                      ((x8101
                        (letrec*
                         ((x8102
                           (begin
                             (write '(funapp 1065 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1065 58))
                           (display "\n")
                           (car x8102)))))
                      (begin
                        (write '(funapp 1066 23))
                        (display "\n")
                        (cdr x8101)))))
                   g8100)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g8103
                     (letrec*
                      ((x8104
                        (letrec*
                         ((x8105
                           (letrec*
                            ((x8106
                              (begin
                                (write '(funapp 1075 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1075 61))
                              (display "\n")
                              (cdr x8106)))))
                         (begin
                           (write '(funapp 1076 26))
                           (display "\n")
                           (car x8105)))))
                      (begin
                        (write '(funapp 1077 23))
                        (display "\n")
                        (cdr x8104)))))
                   g8103)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g8107
                     (letrec*
                      ((x8108
                        (letrec*
                         ((x8109
                           (begin
                             (write '(funapp 1085 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1085 58))
                           (display "\n")
                           (cdr x8109)))))
                      (begin
                        (write '(funapp 1086 23))
                        (display "\n")
                        (car x8108)))))
                   g8107)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g8110
                     (letrec*
                      ((x8111
                        (letrec*
                         ((x8112
                           (begin
                             (write '(funapp 1093 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1093 58))
                           (display "\n")
                           (car x8112)))))
                      (begin
                        (write '(funapp 1094 23))
                        (display "\n")
                        (car x8111)))))
                   g8110)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g8113
                     (letrec*
                      ((x8116
                        (begin
                          (write '(funapp 1099 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1099 58))
                        (display "\n")
                        (assert x8116))))
                    (g8114
                     (letrec*
                      ((x8117
                        (begin
                          (write '(funapp 1100 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1100 58))
                        (display "\n")
                        (assert x8117))))
                    (g8115
                     (letrec*
                      ((x8118
                        (begin
                          (write '(funapp 1101 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1101 66))
                        (display "\n")
                        (not x8118)))))
                   g8115)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g8119
                     (letrec*
                      ((x8120
                        (letrec*
                         ((x8121
                           (letrec*
                            ((x8122
                              (begin
                                (write '(funapp 1111 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (car x8122)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (car x8121)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (car x8120)))))
                   g8119)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g8123
                     (letrec*
                      ((x8125
                        (begin
                          (write '(funapp 1118 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1118 59))
                        (display "\n")
                        (assert x8125))))
                    (g8124
                     (begin (write '(funapp 1119 28)) (display "\n") (< x 0))))
                   g8124)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g8126
                     (begin
                       (write '(funapp 1121 53))
                       (display "\n")
                       (memq e l))))
                   g8126)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g8127
                     (letrec*
                      ((x8128
                        (letrec*
                         ((x8129
                           (begin
                             (write '(funapp 1127 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1127 58))
                           (display "\n")
                           (car x8129)))))
                      (begin
                        (write '(funapp 1128 23))
                        (display "\n")
                        (car x8128)))))
                   g8127)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g8130
                     (begin (write '(funapp 1130 51)) (display "\n") '())))
                   g8130)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g8131
                     (letrec*
                      ((x8133
                        (begin
                          (write '(funapp 1134 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1134 57))
                        (display "\n")
                        (assert x8133))))
                    (g8132
                     (letrec*
                      ((x-cnd8134
                        (begin
                          (write '(funapp 1137 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8134
                        (begin (write '(funapp 1139 24)) (display "\n") '())
                        (letrec*
                         ((x8137
                           (letrec*
                            ((x8138
                              (begin
                                (write '(funapp 1141 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1141 61))
                              (display "\n")
                              (reverse x8138))))
                          (x8135
                           (letrec*
                            ((x8136
                              (begin
                                (write '(funapp 1142 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1142 61))
                              (display "\n")
                              (list x8136)))))
                         (begin
                           (write '(funapp 1143 26))
                           (display "\n")
                           (append x8137 x8135)))))))
                   g8132)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g8139
                     (letrec*
                      ((x8140
                        (letrec*
                         ((x8141
                           (letrec*
                            ((x8142
                              (begin
                                (write '(funapp 1152 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1152 61))
                              (display "\n")
                              (car x8142)))))
                         (begin
                           (write '(funapp 1153 26))
                           (display "\n")
                           (car x8141)))))
                      (begin
                        (write '(funapp 1154 23))
                        (display "\n")
                        (car x8140)))))
                   g8139)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g8143
                     (letrec*
                      ((x8144
                        (letrec*
                         ((x8145
                           (letrec*
                            ((x8146
                              (begin
                                (write '(funapp 1163 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1163 61))
                              (display "\n")
                              (car x8146)))))
                         (begin
                           (write '(funapp 1164 26))
                           (display "\n")
                           (cdr x8145)))))
                      (begin
                        (write '(funapp 1165 23))
                        (display "\n")
                        (cdr x8144)))))
                   g8143)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g8147
                     (letrec*
                      ((x8149
                        (begin
                          (write '(funapp 1170 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1170 59))
                        (display "\n")
                        (assert x8149))))
                    (g8148
                     (letrec*
                      ((x8150
                        (begin
                          (write '(funapp 1171 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1171 60))
                        (display "\n")
                        (= 1 x8150)))))
                   g8148)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g8151
                     (letrec*
                      ((x8152
                        (letrec*
                         ((x8153
                           (letrec*
                            ((x8154
                              (begin
                                (write '(funapp 1180 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1180 61))
                              (display "\n")
                              (cdr x8154)))))
                         (begin
                           (write '(funapp 1181 26))
                           (display "\n")
                           (car x8153)))))
                      (begin
                        (write '(funapp 1182 23))
                        (display "\n")
                        (car x8152)))))
                   g8151)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g8155
                     (letrec*
                      ((x8158
                        (begin
                          (write '(funapp 1188 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1188 59))
                        (display "\n")
                        (assert x8158))))
                    (g8156
                     (letrec*
                      ((x8159
                        (begin
                          (write '(funapp 1189 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1189 60))
                        (display "\n")
                        (assert x8159))))
                    (g8157
                     (letrec*
                      ((x-cnd8160
                        (begin
                          (write '(funapp 1192 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd8160
                        (letrec*
                         ((g8161
                           (begin
                             (write '(funapp 1194 42))
                             (display "\n")
                             (proc))))
                         g8161)
                        (letrec*
                         ((x-cnd8162
                           (letrec*
                            ((x8163
                              (begin
                                (write '(funapp 1197 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1197 58))
                              (display "\n")
                              (null? x8163)))))
                         (if x-cnd8162
                           (letrec*
                            ((g8164
                              (letrec*
                               ((x8165
                                 (begin
                                   (write '(funapp 1201 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1201 61))
                                 (display "\n")
                                 (proc x8165)))))
                            g8164)
                           (letrec*
                            ((x-cnd8166
                              (letrec*
                               ((x8167
                                 (begin
                                   (write '(funapp 1205 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1205 62))
                                 (display "\n")
                                 (null? x8167)))))
                            (if x-cnd8166
                              (letrec*
                               ((g8168
                                 (letrec*
                                  ((x8170
                                    (begin
                                      (write '(funapp 1210 43))
                                      (display "\n")
                                      (car args)))
                                   (x8169
                                    (begin
                                      (write '(funapp 1210 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1211 35))
                                    (display "\n")
                                    (proc x8170 x8169)))))
                               g8168)
                              (letrec*
                               ((x-cnd8171
                                 (letrec*
                                  ((x8172
                                    (begin
                                      (write '(funapp 1216 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1217 35))
                                    (display "\n")
                                    (null? x8172)))))
                               (if x-cnd8171
                                 (letrec*
                                  ((g8173
                                    (letrec*
                                     ((x8176
                                       (begin
                                         (write '(funapp 1222 46))
                                         (display "\n")
                                         (car args)))
                                      (x8175
                                       (begin
                                         (write '(funapp 1223 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x8174
                                       (begin
                                         (write '(funapp 1224 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1225 38))
                                       (display "\n")
                                       (proc x8176 x8175 x8174)))))
                                  g8173)
                                 (letrec*
                                  ((x-cnd8177
                                    (letrec*
                                     ((x8178
                                       (begin
                                         (write '(funapp 1230 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1231 38))
                                       (display "\n")
                                       (null? x8178)))))
                                  (if x-cnd8177
                                    (letrec*
                                     ((g8179
                                       (letrec*
                                        ((x8183
                                          (begin
                                            (write '(funapp 1236 49))
                                            (display "\n")
                                            (car args)))
                                         (x8182
                                          (begin
                                            (write '(funapp 1237 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x8181
                                          (begin
                                            (write '(funapp 1238 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x8180
                                          (begin
                                            (write '(funapp 1239 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1240 41))
                                          (display "\n")
                                          (proc x8183 x8182 x8181 x8180)))))
                                     g8179)
                                    (letrec*
                                     ((x-cnd8184
                                       (letrec*
                                        ((x8185
                                          (letrec*
                                           ((x8186
                                             (begin
                                               (write '(funapp 1247 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1248 44))
                                             (display "\n")
                                             (cdr x8186)))))
                                        (begin
                                          (write '(funapp 1249 41))
                                          (display "\n")
                                          (null? x8185)))))
                                     (if x-cnd8184
                                       (letrec*
                                        ((g8187
                                          (letrec*
                                           ((x8193
                                             (begin
                                               (write '(funapp 1254 52))
                                               (display "\n")
                                               (car args)))
                                            (x8192
                                             (begin
                                               (write '(funapp 1255 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x8191
                                             (begin
                                               (write '(funapp 1256 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x8190
                                             (begin
                                               (write '(funapp 1257 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x8188
                                             (letrec*
                                              ((x8189
                                                (begin
                                                  (write '(funapp 1260 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1261 47))
                                                (display "\n")
                                                (car x8189)))))
                                           (begin
                                             (write '(funapp 1262 44))
                                             (display "\n")
                                             (proc
                                              x8193
                                              x8192
                                              x8191
                                              x8190
                                              x8188)))))
                                        g8187)
                                       (letrec*
                                        ((x-cnd8194
                                          (letrec*
                                           ((x8195
                                             (letrec*
                                              ((x8196
                                                (begin
                                                  (write '(funapp 1274 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1275 47))
                                                (display "\n")
                                                (cddr x8196)))))
                                           (begin
                                             (write '(funapp 1276 44))
                                             (display "\n")
                                             (null? x8195)))))
                                        (if x-cnd8194
                                          (letrec*
                                           ((g8197
                                             (letrec*
                                              ((x8205
                                                (begin
                                                  (write '(funapp 1281 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x8204
                                                (begin
                                                  (write '(funapp 1282 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x8203
                                                (begin
                                                  (write '(funapp 1283 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x8202
                                                (begin
                                                  (write '(funapp 1284 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x8200
                                                (letrec*
                                                 ((x8201
                                                   (begin
                                                     (write '(funapp 1287 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1288 50))
                                                   (display "\n")
                                                   (car x8201))))
                                               (x8198
                                                (letrec*
                                                 ((x8199
                                                   (begin
                                                     (write '(funapp 1291 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1292 50))
                                                   (display "\n")
                                                   (cadr x8199)))))
                                              (begin
                                                (write '(funapp 1293 47))
                                                (display "\n")
                                                (proc
                                                 x8205
                                                 x8204
                                                 x8203
                                                 x8202
                                                 x8200
                                                 x8198)))))
                                           g8197)
                                          (letrec*
                                           ((x-cnd8206
                                             (letrec*
                                              ((x8207
                                                (letrec*
                                                 ((x8208
                                                   (begin
                                                     (write '(funapp 1306 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1307 50))
                                                   (display "\n")
                                                   (cdddr x8208)))))
                                              (begin
                                                (write '(funapp 1308 47))
                                                (display "\n")
                                                (null? x8207)))))
                                           (if x-cnd8206
                                             (letrec*
                                              ((g8209
                                                (letrec*
                                                 ((x8219
                                                   (begin
                                                     (write '(funapp 1313 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x8218
                                                   (begin
                                                     (write '(funapp 1314 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x8217
                                                   (begin
                                                     (write '(funapp 1315 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x8216
                                                   (begin
                                                     (write '(funapp 1316 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x8214
                                                   (letrec*
                                                    ((x8215
                                                      (begin
                                                        (write
                                                         '(funapp 1319 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1320 53))
                                                      (display "\n")
                                                      (car x8215))))
                                                  (x8212
                                                   (letrec*
                                                    ((x8213
                                                      (begin
                                                        (write
                                                         '(funapp 1323 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1324 53))
                                                      (display "\n")
                                                      (cadr x8213))))
                                                  (x8210
                                                   (letrec*
                                                    ((x8211
                                                      (begin
                                                        (write
                                                         '(funapp 1327 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1328 53))
                                                      (display "\n")
                                                      (caddr x8211)))))
                                                 (begin
                                                   (write '(funapp 1329 50))
                                                   (display "\n")
                                                   (proc
                                                    x8219
                                                    x8218
                                                    x8217
                                                    x8216
                                                    x8214
                                                    x8212
                                                    x8210)))))
                                              g8209)
                                             (letrec*
                                              ((g8220
                                                (begin
                                                  (write '(funapp 1340 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g8220)))))))))))))))))))
                   g8157)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g8221
                     (letrec*
                      ((x8223
                        (begin
                          (write '(funapp 1346 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1346 57))
                        (display "\n")
                        (assert x8223))))
                    (g8222
                     (letrec*
                      ((x-cnd8224
                        (begin
                          (write '(funapp 1349 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8224
                        #f
                        (letrec*
                         ((x-cnd8225
                           (letrec*
                            ((x8226
                              (begin
                                (write '(funapp 1354 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1354 55))
                              (display "\n")
                              (equal? x8226 e)))))
                         (if x-cnd8225
                           l
                           (letrec*
                            ((x8227
                              (begin
                                (write '(funapp 1357 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1357 55))
                              (display "\n")
                              (member e x8227)))))))))
                   g8222)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g8228
                     (letrec*
                      ((x8229
                        (letrec*
                         ((x8230
                           (letrec*
                            ((x8231
                              (begin
                                (write '(funapp 1366 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1366 61))
                              (display "\n")
                              (cdr x8231)))))
                         (begin
                           (write '(funapp 1367 26))
                           (display "\n")
                           (cdr x8230)))))
                      (begin
                        (write '(funapp 1368 23))
                        (display "\n")
                        (cdr x8229)))))
                   g8228)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g8232
                     (letrec*
                      ((x8233
                        (letrec*
                         ((x8234
                           (letrec*
                            ((x8235
                              (begin
                                (write '(funapp 1377 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1377 61))
                              (display "\n")
                              (cdr x8235)))))
                         (begin
                           (write '(funapp 1378 26))
                           (display "\n")
                           (cdr x8234)))))
                      (begin
                        (write '(funapp 1379 23))
                        (display "\n")
                        (car x8233)))))
                   g8232)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g8236
                     (begin
                       (write '(funapp 1381 53))
                       (display "\n")
                       (random 42))))
                   g8236)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g8237
                     (letrec*
                      ((x8239
                        (begin
                          (write '(funapp 1385 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1385 59))
                        (display "\n")
                        (assert x8239))))
                    (g8238
                     (begin (write '(funapp 1386 28)) (display "\n") (= x 0))))
                   g8238)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8240
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1393 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g8241
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1395 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8241))))
                   g8240)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g8242
                     (letrec*
                      ((x8243
                        (begin
                          (write '(funapp 1401 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1401 55))
                        (display "\n")
                        (car x8243)))))
                   g8242)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g8244
                     (letrec*
                      ((val7257
                        (letrec*
                         ((x-cnd8245
                           (begin
                             (write '(funapp 1411 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8245
                           (letrec*
                            ((x8246
                              (begin
                                (write '(funapp 1413 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1413 55))
                              (display "\n")
                              (list? x8246)))
                           #f))))
                      (letrec*
                       ((g8247
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1416 52))
                             (display "\n")
                             (null? l)))))
                       g8247))))
                   g8244)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g8248
                     (letrec*
                      ((x8249
                        (letrec*
                         ((x8250
                           (letrec*
                            ((x8251
                              (begin
                                (write '(funapp 1426 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1426 61))
                              (display "\n")
                              (car x8251)))))
                         (begin
                           (write '(funapp 1427 26))
                           (display "\n")
                           (cdr x8250)))))
                      (begin
                        (write '(funapp 1428 23))
                        (display "\n")
                        (cdr x8249)))))
                   g8248)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g8252
                     (letrec*
                      ((x-cnd8253
                        (letrec*
                         ((x8254 #\0))
                         (begin
                           (write '(funapp 1435 58))
                           (display "\n")
                           (char<=? x8254 c)))))
                      (if x-cnd8253
                        (letrec*
                         ((x8255 #\9))
                         (begin
                           (write '(funapp 1437 48))
                           (display "\n")
                           (char<=? c x8255)))
                        #f))))
                   g8252)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g8256
                     (letrec*
                      ((x8258
                        (begin
                          (write '(funapp 1444 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1444 57))
                        (display "\n")
                        (assert x8258))))
                    (g8257
                     (letrec*
                      ((x-cnd8259
                        (begin
                          (write '(funapp 1447 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8259
                        #f
                        (letrec*
                         ((x-cnd8260
                           (letrec*
                            ((x8261
                              (begin
                                (write '(funapp 1452 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1452 56))
                              (display "\n")
                              (eqv? x8261 k)))))
                         (if x-cnd8260
                           (begin
                             (write '(funapp 1454 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8262
                              (begin
                                (write '(funapp 1455 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1455 55))
                              (display "\n")
                              (assq k x8262)))))))))
                   g8257)))
               (not (lambda (x) (letrec* ((g8263 (if x #f #t))) g8263)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g8264
                     (begin
                       (write '(funapp 1459 50))
                       (display "\n")
                       (append l1 l2))))
                   g8264)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g8265
                     (letrec*
                      ((x8267
                        (begin
                          (write '(funapp 1463 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1463 57))
                        (display "\n")
                        (assert x8267))))
                    (g8266
                     (letrec*
                      ((x-cnd8268
                        (begin
                          (write '(funapp 1466 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8268
                        #f
                        (letrec*
                         ((x-cnd8269
                           (letrec*
                            ((x8270
                              (begin
                                (write '(funapp 1471 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1471 55))
                              (display "\n")
                              (eq? x8270 e)))))
                         (if x-cnd8269
                           l
                           (letrec*
                            ((x8271
                              (begin
                                (write '(funapp 1474 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1474 55))
                              (display "\n")
                              (memq e x8271)))))))))
                   g8266)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g8272
                     (letrec*
                      ((x8273
                        (letrec*
                         ((x8274
                           (letrec*
                            ((x8275
                              (begin
                                (write '(funapp 1483 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1483 61))
                              (display "\n")
                              (car x8275)))))
                         (begin
                           (write '(funapp 1484 26))
                           (display "\n")
                           (cdr x8274)))))
                      (begin
                        (write '(funapp 1485 23))
                        (display "\n")
                        (car x8273)))))
                   g8272)))
               (length
                (lambda (l)
                  (letrec*
                   ((g8276
                     (letrec*
                      ((x8278
                        (begin
                          (write '(funapp 1490 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1490 57))
                        (display "\n")
                        (assert x8278))))
                    (g8277
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g8279
                             (letrec*
                              ((x-cnd8280
                                (begin
                                  (write '(funapp 1498 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd8280
                                0
                                (letrec*
                                 ((x8281
                                   (letrec*
                                    ((x8282
                                      (begin
                                        (write '(funapp 1503 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1503 63))
                                      (display "\n")
                                      (rec x8282)))))
                                 (begin
                                   (write '(funapp 1504 34))
                                   (display "\n")
                                   (+ 1 x8281)))))))
                           g8279))))
                      (letrec*
                       ((g8283
                         (begin
                           (write '(funapp 1506 40))
                           (display "\n")
                           (rec l))))
                       g8283))))
                   g8277)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8284
                     (letrec*
                      ((x8287
                        (begin
                          (write '(funapp 1511 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1511 58))
                        (display "\n")
                        (assert x8287))))
                    (g8285
                     (letrec*
                      ((x8288
                        (begin
                          (write '(funapp 1512 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1512 58))
                        (display "\n")
                        (assert x8288))))
                    (g8286
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1515 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g8289
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1517 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8289))))
                   g8286)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g8290
                     (letrec*
                      ((x8291
                        (begin
                          (write '(funapp 1523 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1523 65))
                        (display "\n")
                        (not x8291)))))
                   g8290)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g8292
                     (letrec*
                      ((x8293
                        (letrec*
                         ((x8294
                           (begin
                             (write '(funapp 1530 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1530 58))
                           (display "\n")
                           (car x8294)))))
                      (begin
                        (write '(funapp 1531 23))
                        (display "\n")
                        (cdr x8293)))))
                   g8292)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g8295
                     (letrec*
                      ((x8297
                        (begin
                          (write '(funapp 1536 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1536 57))
                        (display "\n")
                        (assert x8297))))
                    (g8296
                     (letrec*
                      ((x-cnd8298
                        (begin
                          (write '(funapp 1539 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8298
                        #f
                        (letrec*
                         ((x-cnd8299
                           (letrec*
                            ((x8300
                              (begin
                                (write '(funapp 1544 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1544 56))
                              (display "\n")
                              (equal? x8300 k)))))
                         (if x-cnd8299
                           (begin
                             (write '(funapp 1546 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8301
                              (begin
                                (write '(funapp 1547 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1547 55))
                              (display "\n")
                              (assoc k x8301)))))))))
                   g8296)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g8302
                     (letrec*
                      ((x8303
                        (begin
                          (write '(funapp 1552 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1552 55))
                        (display "\n")
                        (car x8303)))))
                   g8302)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g8304
                     (letrec*
                      ((x8307
                        (begin
                          (write '(funapp 1557 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1557 58))
                        (display "\n")
                        (assert x8307))))
                    (g8305
                     (letrec*
                      ((x8308
                        (begin
                          (write '(funapp 1558 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1558 58))
                        (display "\n")
                        (assert x8308))))
                    (g8306
                     (letrec*
                      ((x8309
                        (begin
                          (write '(funapp 1559 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1559 63))
                        (display "\n")
                        (not x8309)))))
                   g8306)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8310
                     (letrec*
                      ((val7259
                        (begin
                          (write '(funapp 1566 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g8311
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1568 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8311))))
                   g8310)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g8312
                     (letrec*
                      ((x8315
                        (begin
                          (write '(funapp 1574 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1574 62))
                        (display "\n")
                        (assert x8315))))
                    (g8313
                     (letrec*
                      ((x8316
                        (begin
                          (write '(funapp 1575 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1575 57))
                        (display "\n")
                        (assert x8316))))
                    (g8314
                     (letrec*
                      ((x-cnd8317
                        (begin
                          (write '(funapp 1578 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8317
                        #t
                        (letrec*
                         ((x-cnd8318
                           (begin
                             (write '(funapp 1582 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8318
                           (letrec*
                            ((g8319
                              (letrec*
                               ((x8321
                                 (begin
                                   (write '(funapp 1585 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1585 64))
                                 (display "\n")
                                 (f x8321))))
                             (g8320
                              (letrec*
                               ((x8322
                                 (begin
                                   (write '(funapp 1587 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1587 58))
                                 (display "\n")
                                 (for-each f x8322)))))
                            g8320)
                           (begin
                             (write '(funapp 1589 27))
                             (display "\n")
                             '())))))))
                   g8314)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g8323
                     (letrec*
                      ((x8325
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1594 59))
                        (display "\n")
                        (assert x8325))))
                    (g8324
                     (letrec*
                      ((x-cnd8326
                        (begin
                          (write '(funapp 1596 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd8326
                        (begin
                          (write '(funapp 1596 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g8324)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8327
                     (letrec*
                      ((x8330
                        (begin
                          (write '(funapp 1601 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1601 58))
                        (display "\n")
                        (assert x8330))))
                    (g8328
                     (letrec*
                      ((x8331
                        (begin
                          (write '(funapp 1602 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1602 58))
                        (display "\n")
                        (assert x8331))))
                    (g8329
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1605 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g8332
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1607 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8332))))
                   g8329)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g8333
                     (letrec*
                      ((x8334
                        (letrec*
                         ((x8335
                           (letrec*
                            ((x8336
                              (begin
                                (write '(funapp 1617 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1617 61))
                              (display "\n")
                              (cdr x8336)))))
                         (begin
                           (write '(funapp 1618 26))
                           (display "\n")
                           (cdr x8335)))))
                      (begin
                        (write '(funapp 1619 23))
                        (display "\n")
                        (car x8334)))))
                   g8333)))
               (newline (lambda () (letrec* ((g8337 #f)) g8337)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g8338
                     (letrec*
                      ((x8340
                        (letrec*
                         ((x8341
                           (begin
                             (write '(funapp 1627 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1627 58))
                           (display "\n")
                           (abs x8341))))
                       (x8339
                        (begin
                          (write '(funapp 1628 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1629 23))
                        (display "\n")
                        (/ x8340 x8339)))))
                   g8338)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g8342
                     (letrec*
                      ((x8346
                        (begin
                          (write '(funapp 1635 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1635 57))
                        (display "\n")
                        (assert x8346))))
                    (g8343
                     (letrec*
                      ((x8347
                        (begin
                          (write '(funapp 1636 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1636 63))
                        (display "\n")
                        (assert x8347))))
                    (g8344
                     (letrec*
                      ((x8348
                        (letrec*
                         ((x8349
                           (begin
                             (write '(funapp 1639 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1639 61))
                           (display "\n")
                           (< index x8349)))))
                      (begin
                        (write '(funapp 1640 23))
                        (display "\n")
                        (assert x8348))))
                    (g8345
                     (letrec*
                      ((x-cnd8350
                        (begin
                          (write '(funapp 1643 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8350
                        (begin
                          (write '(funapp 1645 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8352
                           (begin
                             (write '(funapp 1647 34))
                             (display "\n")
                             (cdr l)))
                          (x8351
                           (begin
                             (write '(funapp 1647 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1648 26))
                           (display "\n")
                           (list-ref x8352 x8351)))))))
                   g8345)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8353
                     (letrec*
                      ((x-cnd8354
                        (begin
                          (write '(funapp 1655 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8354
                        a
                        (letrec*
                         ((x8355
                           (begin
                             (write '(funapp 1658 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1658 57))
                           (display "\n")
                           (gcd b x8355)))))))
                   g8353)))
               (block
                (lambda (x7751 y7752 color7753)
                  (letrec*
                   ((g8356
                     (letrec*
                      ((x8357
                        (letrec*
                         ((x8358
                           (letrec*
                            ((x8359
                              (begin
                                (write '(funapp 1669 37))
                                (display "\n")
                                (orig-cons
                                 color7753
                                 (begin
                                   (write '(funapp 1669 57))
                                   (display "\n")
                                   '())))))
                            (begin
                              (write '(funapp 1670 29))
                              (display "\n")
                              (orig-cons y7752 x8359)))))
                         (begin
                           (write '(funapp 1671 26))
                           (display "\n")
                           (orig-cons x7751 x8358)))))
                      (begin
                        (write '(funapp 1672 23))
                        (display "\n")
                        (orig-cons
                         (begin
                           (write '(funapp 1672 33))
                           (display "\n")
                           'block)
                         x8357)))))
                   g8356)))
               (block?
                (lambda (block7750)
                  (letrec*
                   ((g8360
                     (letrec*
                      ((x8361
                        (begin
                          (write '(funapp 1678 39))
                          (display "\n")
                          (car block7750))))
                      (begin
                        (write '(funapp 1678 57))
                        (display "\n")
                        (eq?
                         x8361
                         (begin
                           (write '(funapp 1678 67))
                           (display "\n")
                           'block))))))
                   g8360)))
               (block-x
                (lambda (block)
                  (letrec*
                   ((g8362
                     (letrec*
                      ((x8363
                        (begin
                          (write '(funapp 1684 39))
                          (display "\n")
                          (orig-cdr block))))
                      (begin
                        (write '(funapp 1684 58))
                        (display "\n")
                        (orig-car x8363)))))
                   g8362)))
               (block-y
                (lambda (block)
                  (letrec*
                   ((g8364
                     (letrec*
                      ((x8365
                        (letrec*
                         ((x8366
                           (begin
                             (write '(funapp 1692 42))
                             (display "\n")
                             (orig-cdr block))))
                         (begin
                           (write '(funapp 1692 61))
                           (display "\n")
                           (orig-cdr x8366)))))
                      (begin
                        (write '(funapp 1693 23))
                        (display "\n")
                        (orig-car x8365)))))
                   g8364)))
               (block-color
                (lambda (block)
                  (letrec*
                   ((g8367
                     (letrec*
                      ((x8368
                        (letrec*
                         ((x8369
                           (letrec*
                            ((x8370
                              (begin
                                (write '(funapp 1704 37))
                                (display "\n")
                                (orig-cdr block))))
                            (begin
                              (write '(funapp 1705 29))
                              (display "\n")
                              (orig-cdr x8370)))))
                         (begin
                           (write '(funapp 1706 26))
                           (display "\n")
                           (orig-cdr x8369)))))
                      (begin
                        (write '(funapp 1707 23))
                        (display "\n")
                        (orig-car x8368)))))
                   g8367)))
               (tetra
                (lambda (center7758 blocks7759)
                  (letrec*
                   ((g8371
                     (letrec*
                      ((x8372
                        (letrec*
                         ((x8373
                           (begin
                             (write '(funapp 1716 34))
                             (display "\n")
                             (orig-cons
                              blocks7759
                              (begin
                                (write '(funapp 1716 55))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1717 26))
                           (display "\n")
                           (orig-cons center7758 x8373)))))
                      (begin
                        (write '(funapp 1718 23))
                        (display "\n")
                        (orig-cons
                         (begin
                           (write '(funapp 1718 33))
                           (display "\n")
                           'tetra)
                         x8372)))))
                   g8371)))
               (tetra?
                (lambda (tetra7757)
                  (letrec*
                   ((g8374
                     (letrec*
                      ((x8375
                        (begin
                          (write '(funapp 1724 39))
                          (display "\n")
                          (car tetra7757))))
                      (begin
                        (write '(funapp 1724 57))
                        (display "\n")
                        (eq?
                         x8375
                         (begin
                           (write '(funapp 1724 67))
                           (display "\n")
                           'tetra))))))
                   g8374)))
               (tetra-center
                (lambda (tetra)
                  (letrec*
                   ((g8376
                     (letrec*
                      ((x8377
                        (begin
                          (write '(funapp 1730 39))
                          (display "\n")
                          (orig-cdr tetra))))
                      (begin
                        (write '(funapp 1730 58))
                        (display "\n")
                        (orig-car x8377)))))
                   g8376)))
               (tetra-blocks
                (lambda (tetra)
                  (letrec*
                   ((g8378
                     (letrec*
                      ((x8379
                        (letrec*
                         ((x8380
                           (begin
                             (write '(funapp 1738 42))
                             (display "\n")
                             (orig-cdr tetra))))
                         (begin
                           (write '(funapp 1738 61))
                           (display "\n")
                           (orig-cdr x8380)))))
                      (begin
                        (write '(funapp 1739 23))
                        (display "\n")
                        (orig-car x8379)))))
                   g8378)))
               (world
                (lambda (tetra7763 blocks7764)
                  (letrec*
                   ((g8381
                     (letrec*
                      ((x8382
                        (letrec*
                         ((x8383
                           (begin
                             (write '(funapp 1748 34))
                             (display "\n")
                             (orig-cons
                              blocks7764
                              (begin
                                (write '(funapp 1748 55))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1749 26))
                           (display "\n")
                           (orig-cons tetra7763 x8383)))))
                      (begin
                        (write '(funapp 1750 23))
                        (display "\n")
                        (orig-cons
                         (begin
                           (write '(funapp 1750 33))
                           (display "\n")
                           'world)
                         x8382)))))
                   g8381)))
               (world?
                (lambda (world7762)
                  (letrec*
                   ((g8384
                     (letrec*
                      ((x8385
                        (begin
                          (write '(funapp 1756 39))
                          (display "\n")
                          (car world7762))))
                      (begin
                        (write '(funapp 1756 57))
                        (display "\n")
                        (eq?
                         x8385
                         (begin
                           (write '(funapp 1756 67))
                           (display "\n")
                           'world))))))
                   g8384)))
               (world-tetra
                (lambda (world)
                  (letrec*
                   ((g8386
                     (letrec*
                      ((x8387
                        (begin
                          (write '(funapp 1762 39))
                          (display "\n")
                          (orig-cdr world))))
                      (begin
                        (write '(funapp 1762 58))
                        (display "\n")
                        (orig-car x8387)))))
                   g8386)))
               (world-blocks
                (lambda (world)
                  (letrec*
                   ((g8388
                     (letrec*
                      ((x8389
                        (letrec*
                         ((x8390
                           (begin
                             (write '(funapp 1770 42))
                             (display "\n")
                             (orig-cdr world))))
                         (begin
                           (write '(funapp 1770 61))
                           (display "\n")
                           (orig-cdr x8390)))))
                      (begin
                        (write '(funapp 1771 23))
                        (display "\n")
                        (orig-car x8389)))))
                   g8388)))
               (posn
                (lambda (x7768 y7769)
                  (letrec*
                   ((g8391
                     (letrec*
                      ((x8392
                        (letrec*
                         ((x8393
                           (begin
                             (write '(funapp 1780 34))
                             (display "\n")
                             (orig-cons
                              y7769
                              (begin
                                (write '(funapp 1780 50))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1781 26))
                           (display "\n")
                           (orig-cons x7768 x8393)))))
                      (begin
                        (write '(funapp 1782 23))
                        (display "\n")
                        (orig-cons
                         (begin (write '(funapp 1782 33)) (display "\n") 'posn)
                         x8392)))))
                   g8391)))
               (posn?
                (lambda (posn7767)
                  (letrec*
                   ((g8394
                     (letrec*
                      ((x8395
                        (begin
                          (write '(funapp 1788 39))
                          (display "\n")
                          (car posn7767))))
                      (begin
                        (write '(funapp 1788 56))
                        (display "\n")
                        (eq?
                         x8395
                         (begin
                           (write '(funapp 1788 66))
                           (display "\n")
                           'posn))))))
                   g8394)))
               (posn-x
                (lambda (posn)
                  (letrec*
                   ((g8396
                     (letrec*
                      ((x8397
                        (begin
                          (write '(funapp 1794 39))
                          (display "\n")
                          (orig-cdr posn))))
                      (begin
                        (write '(funapp 1794 57))
                        (display "\n")
                        (orig-car x8397)))))
                   g8396)))
               (posn-y
                (lambda (posn)
                  (letrec*
                   ((g8398
                     (letrec*
                      ((x8399
                        (letrec*
                         ((x8400
                           (begin
                             (write '(funapp 1802 42))
                             (display "\n")
                             (orig-cdr posn))))
                         (begin
                           (write '(funapp 1802 60))
                           (display "\n")
                           (orig-cdr x8400)))))
                      (begin
                        (write '(funapp 1803 23))
                        (display "\n")
                        (orig-car x8399)))))
                   g8398)))
               (COLOR/C symbol?/c)
               (POSN/C
                (lambda (j7399 k7400 v7398)
                  (letrec*
                   ((g8401
                     (letrec*
                      ((checked7401
                        (letrec*
                         ((x8402
                           (letrec*
                            ((x8403
                              (begin
                                (write '(funapp 1815 37))
                                (display "\n")
                                (orig-cdr v7398))))
                            (begin
                              (write '(funapp 1816 29))
                              (display "\n")
                              (orig-car x8403)))))
                         (begin
                           (write '(funapp 1817 26))
                           (display "\n")
                           (real?/c j7399 k7400 x8402)))))
                      (letrec*
                       ((g8404
                         (letrec*
                          ((checked7402
                            (letrec*
                             ((x8405
                               (letrec*
                                ((x8406
                                  (letrec*
                                   ((x8407
                                     (begin
                                       (write '(funapp 1827 44))
                                       (display "\n")
                                       (orig-cdr v7398))))
                                   (begin
                                     (write '(funapp 1828 36))
                                     (display "\n")
                                     (orig-cdr x8407)))))
                                (begin
                                  (write '(funapp 1829 33))
                                  (display "\n")
                                  (orig-car x8406)))))
                             (begin
                               (write '(funapp 1830 30))
                               (display "\n")
                               (real?/c j7399 k7400 x8405)))))
                          (letrec*
                           ((g8408
                             (letrec*
                              ((x8409
                                (letrec*
                                 ((x8410
                                   (begin
                                     (write '(funapp 1836 42))
                                     (display "\n")
                                     (cons
                                      checked7402
                                      (begin
                                        (write '(funapp 1836 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1837 34))
                                   (display "\n")
                                   (cons checked7401 x8410)))))
                              (begin
                                (write '(funapp 1838 31))
                                (display "\n")
                                (cons posn x8409)))))
                           g8408))))
                       g8404))))
                   g8401)))
               (BLOCK/C
                (lambda (j7405 k7406 v7404)
                  (letrec*
                   ((g8411
                     (letrec*
                      ((checked7407
                        (letrec*
                         ((x8412
                           (letrec*
                            ((x8413
                              (begin
                                (write '(funapp 1851 37))
                                (display "\n")
                                (orig-cdr v7404))))
                            (begin
                              (write '(funapp 1852 29))
                              (display "\n")
                              (orig-car x8413)))))
                         (begin
                           (write '(funapp 1853 26))
                           (display "\n")
                           (real?/c j7405 k7406 x8412)))))
                      (letrec*
                       ((g8414
                         (letrec*
                          ((checked7408
                            (letrec*
                             ((x8415
                               (letrec*
                                ((x8416
                                  (letrec*
                                   ((x8417
                                     (begin
                                       (write '(funapp 1863 44))
                                       (display "\n")
                                       (orig-cdr v7404))))
                                   (begin
                                     (write '(funapp 1864 36))
                                     (display "\n")
                                     (orig-cdr x8417)))))
                                (begin
                                  (write '(funapp 1865 33))
                                  (display "\n")
                                  (orig-car x8416)))))
                             (begin
                               (write '(funapp 1866 30))
                               (display "\n")
                               (real?/c j7405 k7406 x8415)))))
                          (letrec*
                           ((g8418
                             (letrec*
                              ((checked7409
                                (letrec*
                                 ((x8419
                                   (letrec*
                                    ((x8420
                                      (letrec*
                                       ((x8421
                                         (letrec*
                                          ((x8422
                                            (begin
                                              (write '(funapp 1878 51))
                                              (display "\n")
                                              (orig-cdr v7404))))
                                          (begin
                                            (write '(funapp 1879 43))
                                            (display "\n")
                                            (orig-cdr x8422)))))
                                       (begin
                                         (write '(funapp 1880 40))
                                         (display "\n")
                                         (orig-cdr x8421)))))
                                    (begin
                                      (write '(funapp 1881 37))
                                      (display "\n")
                                      (orig-car x8420)))))
                                 (begin
                                   (write '(funapp 1882 34))
                                   (display "\n")
                                   (COLOR/C j7405 k7406 x8419)))))
                              (letrec*
                               ((g8423
                                 (letrec*
                                  ((x8424
                                    (letrec*
                                     ((x8425
                                       (letrec*
                                        ((x8426
                                          (begin
                                            (write '(funapp 1890 49))
                                            (display "\n")
                                            (cons
                                             checked7409
                                             (begin
                                               (write '(funapp 1890 66))
                                               (display "\n")
                                               '())))))
                                        (begin
                                          (write '(funapp 1891 41))
                                          (display "\n")
                                          (cons checked7408 x8426)))))
                                     (begin
                                       (write '(funapp 1892 38))
                                       (display "\n")
                                       (cons checked7407 x8425)))))
                                  (begin
                                    (write '(funapp 1893 35))
                                    (display "\n")
                                    (cons block x8424)))))
                               g8423))))
                           g8418))))
                       g8414))))
                   g8411)))
               (BSET/C
                (begin
                  (write '(funapp 1898 24))
                  (display "\n")
                  (listof BLOCK/C)))
               (TETRA/C
                (lambda (j7412 k7413 v7411)
                  (letrec*
                   ((g8427
                     (letrec*
                      ((checked7414
                        (letrec*
                         ((x8428
                           (letrec*
                            ((x8429
                              (begin
                                (write '(funapp 1908 37))
                                (display "\n")
                                (orig-cdr v7411))))
                            (begin
                              (write '(funapp 1909 29))
                              (display "\n")
                              (orig-car x8429)))))
                         (begin
                           (write '(funapp 1910 26))
                           (display "\n")
                           (POSN/C j7412 k7413 x8428)))))
                      (letrec*
                       ((g8430
                         (letrec*
                          ((checked7415
                            (letrec*
                             ((x8431
                               (letrec*
                                ((x8432
                                  (letrec*
                                   ((x8433
                                     (begin
                                       (write '(funapp 1920 44))
                                       (display "\n")
                                       (orig-cdr v7411))))
                                   (begin
                                     (write '(funapp 1921 36))
                                     (display "\n")
                                     (orig-cdr x8433)))))
                                (begin
                                  (write '(funapp 1922 33))
                                  (display "\n")
                                  (orig-car x8432)))))
                             (begin
                               (write '(funapp 1923 30))
                               (display "\n")
                               (BSET/C j7412 k7413 x8431)))))
                          (letrec*
                           ((g8434
                             (letrec*
                              ((x8435
                                (letrec*
                                 ((x8436
                                   (begin
                                     (write '(funapp 1929 42))
                                     (display "\n")
                                     (cons
                                      checked7415
                                      (begin
                                        (write '(funapp 1929 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1930 34))
                                   (display "\n")
                                   (cons checked7414 x8436)))))
                              (begin
                                (write '(funapp 1931 31))
                                (display "\n")
                                (cons tetra x8435)))))
                           g8434))))
                       g8430))))
                   g8427)))
               (WORLD/C
                (lambda (j7418 k7419 v7417)
                  (letrec*
                   ((g8437
                     (letrec*
                      ((checked7420
                        (letrec*
                         ((x8438
                           (letrec*
                            ((x8439
                              (begin
                                (write '(funapp 1944 37))
                                (display "\n")
                                (orig-cdr v7417))))
                            (begin
                              (write '(funapp 1945 29))
                              (display "\n")
                              (orig-car x8439)))))
                         (begin
                           (write '(funapp 1946 26))
                           (display "\n")
                           (TETRA/C j7418 k7419 x8438)))))
                      (letrec*
                       ((g8440
                         (letrec*
                          ((checked7421
                            (letrec*
                             ((x8441
                               (letrec*
                                ((x8442
                                  (letrec*
                                   ((x8443
                                     (begin
                                       (write '(funapp 1956 44))
                                       (display "\n")
                                       (orig-cdr v7417))))
                                   (begin
                                     (write '(funapp 1957 36))
                                     (display "\n")
                                     (orig-cdr x8443)))))
                                (begin
                                  (write '(funapp 1958 33))
                                  (display "\n")
                                  (orig-car x8442)))))
                             (begin
                               (write '(funapp 1959 30))
                               (display "\n")
                               (BSET/C j7418 k7419 x8441)))))
                          (letrec*
                           ((g8444
                             (letrec*
                              ((x8445
                                (letrec*
                                 ((x8446
                                   (begin
                                     (write '(funapp 1965 42))
                                     (display "\n")
                                     (cons
                                      checked7421
                                      (begin
                                        (write '(funapp 1965 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1966 34))
                                   (display "\n")
                                   (cons checked7420 x8446)))))
                              (begin
                                (write '(funapp 1967 31))
                                (display "\n")
                                (cons world x8445)))))
                           g8444))))
                       g8440))))
                   g8437)))
               (posn=?
                (lambda (p1 p2)
                  (letrec*
                   ((g8447
                     (letrec*
                      ((x-cnd8448
                        (letrec*
                         ((x8450
                           (begin
                             (write '(funapp 1978 34))
                             (display "\n")
                             (posn-x p1)))
                          (x8449
                           (begin
                             (write '(funapp 1978 54))
                             (display "\n")
                             (posn-x p2))))
                         (begin
                           (write '(funapp 1979 26))
                           (display "\n")
                           (= x8450 x8449)))))
                      (if x-cnd8448
                        (letrec*
                         ((x8452
                           (begin
                             (write '(funapp 1982 34))
                             (display "\n")
                             (posn-y p1)))
                          (x8451
                           (begin
                             (write '(funapp 1982 54))
                             (display "\n")
                             (posn-y p2))))
                         (begin
                           (write '(funapp 1983 26))
                           (display "\n")
                           (= x8452 x8451)))
                        #f))))
                   g8447)))
               (block-size 20)
               (board-height 20)
               (board-width 10)
               (block=?
                (lambda (b1 b2)
                  (letrec*
                   ((g8453
                     (letrec*
                      ((x-cnd8454
                        (letrec*
                         ((x8456
                           (begin
                             (write '(funapp 1996 34))
                             (display "\n")
                             (block-x b1)))
                          (x8455
                           (begin
                             (write '(funapp 1996 55))
                             (display "\n")
                             (block-x b2))))
                         (begin
                           (write '(funapp 1997 26))
                           (display "\n")
                           (= x8456 x8455)))))
                      (if x-cnd8454
                        (letrec*
                         ((x8458
                           (begin
                             (write '(funapp 2000 34))
                             (display "\n")
                             (block-y b1)))
                          (x8457
                           (begin
                             (write '(funapp 2000 55))
                             (display "\n")
                             (block-y b2))))
                         (begin
                           (write '(funapp 2001 26))
                           (display "\n")
                           (= x8458 x8457)))
                        #f))))
                   g8453)))
               (block-move
                (lambda (dx dy b)
                  (letrec*
                   ((g8459
                     (letrec*
                      ((x8463
                        (letrec*
                         ((x8464
                           (begin
                             (write '(funapp 2009 48))
                             (display "\n")
                             (block-x b))))
                         (begin
                           (write '(funapp 2009 62))
                           (display "\n")
                           (+ dx x8464))))
                       (x8461
                        (letrec*
                         ((x8462
                           (begin
                             (write '(funapp 2010 48))
                             (display "\n")
                             (block-y b))))
                         (begin
                           (write '(funapp 2010 62))
                           (display "\n")
                           (+ dy x8462))))
                       (x8460
                        (begin
                          (write '(funapp 2011 31))
                          (display "\n")
                          (block-color b))))
                      (begin
                        (write '(funapp 2012 23))
                        (display "\n")
                        (block x8463 x8461 x8460)))))
                   g8459)))
               (block-rotate-ccw
                (lambda (c b)
                  (letrec*
                   ((g8465
                     (letrec*
                      ((x8472
                        (letrec*
                         ((x8476
                           (begin
                             (write '(funapp 2021 34))
                             (display "\n")
                             (posn-x c)))
                          (x8473
                           (letrec*
                            ((x8475
                              (begin
                                (write '(funapp 2024 37))
                                (display "\n")
                                (posn-y c)))
                             (x8474
                              (begin
                                (write '(funapp 2024 56))
                                (display "\n")
                                (block-y b))))
                            (begin
                              (write '(funapp 2025 29))
                              (display "\n")
                              (- x8475 x8474)))))
                         (begin
                           (write '(funapp 2026 26))
                           (display "\n")
                           (+ x8476 x8473))))
                       (x8467
                        (letrec*
                         ((x8471
                           (begin
                             (write '(funapp 2029 34))
                             (display "\n")
                             (posn-y c)))
                          (x8468
                           (letrec*
                            ((x8470
                              (begin
                                (write '(funapp 2032 37))
                                (display "\n")
                                (block-x b)))
                             (x8469
                              (begin
                                (write '(funapp 2032 57))
                                (display "\n")
                                (posn-x c))))
                            (begin
                              (write '(funapp 2033 29))
                              (display "\n")
                              (- x8470 x8469)))))
                         (begin
                           (write '(funapp 2034 26))
                           (display "\n")
                           (+ x8471 x8468))))
                       (x8466
                        (begin
                          (write '(funapp 2035 31))
                          (display "\n")
                          (block-color b))))
                      (begin
                        (write '(funapp 2036 23))
                        (display "\n")
                        (block x8472 x8467 x8466)))))
                   g8465)))
               (block-rotate-cw
                (lambda (c b)
                  (letrec*
                   ((g8477
                     (letrec*
                      ((x8478
                        (letrec*
                         ((x8479
                           (begin
                             (write '(funapp 2045 34))
                             (display "\n")
                             (block-rotate-ccw c b))))
                         (begin
                           (write '(funapp 2046 26))
                           (display "\n")
                           (block-rotate-ccw c x8479)))))
                      (begin
                        (write '(funapp 2047 23))
                        (display "\n")
                        (block-rotate-ccw c x8478)))))
                   g8477)))
               (ormap
                (lambda (p? xs)
                  (letrec*
                   ((g8480
                     (letrec*
                      ((x-cnd8481
                        (begin
                          (write '(funapp 2054 35))
                          (display "\n")
                          (null? xs))))
                      (if x-cnd8481
                        (letrec* ((g8482 #f)) g8482)
                        (letrec*
                         ((g8483
                           (letrec*
                            ((x8486
                              (letrec*
                               ((x8487
                                 (begin
                                   (write '(funapp 2060 54))
                                   (display "\n")
                                   (car xs))))
                               (begin
                                 (write '(funapp 2060 65))
                                 (display "\n")
                                 (p? x8487))))
                             (x8484
                              (letrec*
                               ((x8485
                                 (begin
                                   (write '(funapp 2062 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 2062 59))
                                 (display "\n")
                                 (ormap p? x8485)))))
                            (begin
                              (write '(funapp 2063 29))
                              (display "\n")
                              (or x8486 x8484)))))
                         g8483)))))
                   g8480)))
               (andmap
                (lambda (p? xs)
                  (letrec*
                   ((g8488
                     (letrec*
                      ((x-cnd8489
                        (begin
                          (write '(funapp 2071 35))
                          (display "\n")
                          (null? xs))))
                      (if x-cnd8489
                        (letrec* ((g8490 #t)) g8490)
                        (letrec*
                         ((g8491
                           (letrec*
                            ((x8494
                              (letrec*
                               ((x8495
                                 (begin
                                   (write '(funapp 2077 54))
                                   (display "\n")
                                   (car xs))))
                               (begin
                                 (write '(funapp 2077 65))
                                 (display "\n")
                                 (p? x8495))))
                             (x8492
                              (letrec*
                               ((x8493
                                 (begin
                                   (write '(funapp 2079 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 2079 59))
                                 (display "\n")
                                 (andmap p? x8493)))))
                            (begin
                              (write '(funapp 2080 29))
                              (display "\n")
                              (and x8494 x8492)))))
                         g8491)))))
                   g8488)))
               (filter
                (lambda (p? xs)
                  (letrec*
                   ((g8496
                     (letrec*
                      ((x-cnd8497
                        (begin
                          (write '(funapp 2088 35))
                          (display "\n")
                          (null? xs))))
                      (if x-cnd8497
                        (letrec* ((g8498 null)) g8498)
                        (letrec*
                         ((x-cnd8499
                           (letrec*
                            ((x8500
                              (begin
                                (write '(funapp 2092 55))
                                (display "\n")
                                (car xs))))
                            (begin
                              (write '(funapp 2092 66))
                              (display "\n")
                              (p? x8500)))))
                         (if x-cnd8499
                           (letrec*
                            ((g8501
                              (letrec*
                               ((x8504
                                 (begin
                                   (write '(funapp 2097 40))
                                   (display "\n")
                                   (car xs)))
                                (x8502
                                 (letrec*
                                  ((x8503
                                    (begin
                                      (write '(funapp 2100 43))
                                      (display "\n")
                                      (cdr xs))))
                                  (begin
                                    (write '(funapp 2101 35))
                                    (display "\n")
                                    (filter p? x8503)))))
                               (begin
                                 (write '(funapp 2102 32))
                                 (display "\n")
                                 (cons x8504 x8502)))))
                            g8501)
                           (letrec*
                            ((g8505
                              (letrec*
                               ((x8506
                                 (begin
                                   (write '(funapp 2106 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 2106 59))
                                 (display "\n")
                                 (filter p? x8506)))))
                            g8505)))))))
                   g8496)))
               (append
                (lambda (l r)
                  (letrec*
                   ((g8507
                     (letrec*
                      ((x-cnd8508
                        (begin
                          (write '(funapp 2114 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8508
                        (letrec* ((g8509 r)) g8509)
                        (letrec*
                         ((g8510
                           (letrec*
                            ((x8513
                              (begin
                                (write '(funapp 2120 37))
                                (display "\n")
                                (car l)))
                             (x8511
                              (letrec*
                               ((x8512
                                 (begin
                                   (write '(funapp 2122 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 2122 58))
                                 (display "\n")
                                 (append x8512 r)))))
                            (begin
                              (write '(funapp 2123 29))
                              (display "\n")
                              (cons x8513 x8511)))))
                         g8510)))))
                   g8507)))
               (foldr
                (lambda (f a xs)
                  (letrec*
                   ((g8514
                     (letrec*
                      ((x-cnd8515
                        (begin
                          (write '(funapp 2131 35))
                          (display "\n")
                          (null? xs))))
                      (if x-cnd8515
                        (letrec* ((g8516 a)) g8516)
                        (letrec*
                         ((g8517
                           (letrec*
                            ((x8520
                              (begin
                                (write '(funapp 2137 37))
                                (display "\n")
                                (car xs)))
                             (x8518
                              (letrec*
                               ((x8519
                                 (begin
                                   (write '(funapp 2139 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 2139 59))
                                 (display "\n")
                                 (foldr f a x8519)))))
                            (begin
                              (write '(funapp 2140 29))
                              (display "\n")
                              (f x8520 x8518)))))
                         g8517)))))
                   g8514)))
               (blocks-contains?
                (lambda (bs b)
                  (letrec*
                   ((g8521
                     (begin
                       (write '(funapp 2147 22))
                       (display "\n")
                       (ormap
                        (lambda (c)
                          (letrec*
                           ((g8522
                             (begin
                               (write '(funapp 2148 52))
                               (display "\n")
                               (block=? b c))))
                           g8522))
                        bs))))
                   g8521)))
               (blocks-subset?
                (lambda (bs1 bs2)
                  (letrec*
                   ((g8523
                     (begin
                       (write '(funapp 2155 22))
                       (display "\n")
                       (andmap
                        (lambda (b)
                          (letrec*
                           ((g8524
                             (begin
                               (write '(funapp 2157 42))
                               (display "\n")
                               (blocks-contains? bs2 b))))
                           g8524))
                        bs1))))
                   g8523)))
               (blocks=?
                (lambda (bs1 bs2)
                  (letrec*
                   ((g8525
                     (letrec*
                      ((x-cnd8526
                        (begin
                          (write '(funapp 2165 35))
                          (display "\n")
                          (blocks-subset? bs1 bs2))))
                      (if x-cnd8526
                        (begin
                          (write '(funapp 2166 37))
                          (display "\n")
                          (blocks-subset? bs2 bs1))
                        #f))))
                   g8525)))
               (blocks-intersect
                (lambda (bs1 bs2)
                  (letrec*
                   ((g8527
                     (begin
                       (write '(funapp 2172 22))
                       (display "\n")
                       (filter
                        (lambda (b)
                          (letrec*
                           ((g8528
                             (begin
                               (write '(funapp 2174 42))
                               (display "\n")
                               (blocks-contains? bs2 b))))
                           g8528))
                        bs1))))
                   g8527)))
               (blocks-count
                (lambda (bs)
                  (letrec*
                   ((g8529
                     (begin
                       (write '(funapp 2178 47))
                       (display "\n")
                       (length bs))))
                   g8529)))
               (blocks-move
                (lambda (dx dy bs)
                  (letrec*
                   ((g8530
                     (begin
                       (write '(funapp 2183 22))
                       (display "\n")
                       (map
                        (lambda (b)
                          (letrec*
                           ((g8531
                             (begin
                               (write '(funapp 2185 42))
                               (display "\n")
                               (block-move dx dy b))))
                           g8531))
                        bs))))
                   g8530)))
               (blocks-rotate-ccw
                (lambda (c bs)
                  (letrec*
                   ((g8532
                     (begin
                       (write '(funapp 2192 22))
                       (display "\n")
                       (map
                        (lambda (b)
                          (letrec*
                           ((g8533
                             (begin
                               (write '(funapp 2194 42))
                               (display "\n")
                               (block-rotate-ccw c b))))
                           g8533))
                        bs))))
                   g8532)))
               (blocks-rotate-cw
                (lambda (c bs)
                  (letrec*
                   ((g8534
                     (begin
                       (write '(funapp 2201 22))
                       (display "\n")
                       (map
                        (lambda (b)
                          (letrec*
                           ((g8535
                             (begin
                               (write '(funapp 2203 42))
                               (display "\n")
                               (block-rotate-cw c b))))
                           g8535))
                        bs))))
                   g8534)))
               (blocks-change-color
                (lambda (bs c)
                  (letrec*
                   ((g8536
                     (begin
                       (write '(funapp 2210 22))
                       (display "\n")
                       (map
                        (lambda (b)
                          (letrec*
                           ((g8537
                             (letrec*
                              ((x8539
                                (begin
                                  (write '(funapp 2215 37))
                                  (display "\n")
                                  (block-x b)))
                               (x8538
                                (begin
                                  (write '(funapp 2215 57))
                                  (display "\n")
                                  (block-y b))))
                              (begin
                                (write '(funapp 2216 29))
                                (display "\n")
                                (block x8539 x8538 c)))))
                           g8537))
                        bs))))
                   g8536)))
               (blocks-row
                (lambda (bs i)
                  (letrec*
                   ((g8540
                     (begin
                       (write '(funapp 2224 22))
                       (display "\n")
                       (filter
                        (lambda (b)
                          (letrec*
                           ((g8541
                             (letrec*
                              ((x8542
                                (begin
                                  (write '(funapp 2227 51))
                                  (display "\n")
                                  (block-y b))))
                              (begin
                                (write '(funapp 2227 65))
                                (display "\n")
                                (= i x8542)))))
                           g8541))
                        bs))))
                   g8540)))
               (full-row?
                (lambda (bs i)
                  (letrec*
                   ((g8543
                     (letrec*
                      ((x8544
                        (letrec*
                         ((x8545
                           (begin
                             (write '(funapp 2238 34))
                             (display "\n")
                             (blocks-row bs i))))
                         (begin
                           (write '(funapp 2239 26))
                           (display "\n")
                           (blocks-count x8545)))))
                      (begin
                        (write '(funapp 2240 23))
                        (display "\n")
                        (= board-width x8544)))))
                   g8543)))
               (blocks-overflow?
                (lambda (bs)
                  (letrec*
                   ((g8546
                     (begin
                       (write '(funapp 2246 22))
                       (display "\n")
                       (ormap
                        (lambda (b)
                          (letrec*
                           ((g8547
                             (letrec*
                              ((x8548
                                (begin
                                  (write '(funapp 2249 51))
                                  (display "\n")
                                  (block-y b))))
                              (begin
                                (write '(funapp 2249 65))
                                (display "\n")
                                (<= x8548 0)))))
                           g8547))
                        bs))))
                   g8546)))
               (blocks-union
                (lambda (bs1 bs2)
                  (letrec*
                   ((g8549
                     (begin
                       (write '(funapp 2257 22))
                       (display "\n")
                       (foldr
                        (lambda (b bs)
                          (letrec*
                           ((g8550
                             (letrec*
                              ((x-cnd8551
                                (begin
                                  (write '(funapp 2262 41))
                                  (display "\n")
                                  (blocks-contains? bs b))))
                              (if x-cnd8551
                                (letrec* ((g8552 bs)) g8552)
                                (letrec*
                                 ((g8553
                                   (begin
                                     (write '(funapp 2265 48))
                                     (display "\n")
                                     (cons b bs))))
                                 g8553)))))
                           g8550))
                        bs2
                        bs1))))
                   g8549)))
               (blocks-max-y
                (lambda (bs)
                  (letrec*
                   ((g8554
                     (begin
                       (write '(funapp 2274 22))
                       (display "\n")
                       (foldr
                        (lambda (b n)
                          (letrec*
                           ((g8555
                             (letrec*
                              ((x8556
                                (begin
                                  (write '(funapp 2278 45))
                                  (display "\n")
                                  (block-y b))))
                              (begin
                                (write '(funapp 2278 59))
                                (display "\n")
                                (max x8556 n)))))
                           g8555))
                        0
                        bs))))
                   g8554)))
               (blocks-min-x
                (lambda (bs)
                  (letrec*
                   ((g8557
                     (begin
                       (write '(funapp 2287 22))
                       (display "\n")
                       (foldr
                        (lambda (b n)
                          (letrec*
                           ((g8558
                             (letrec*
                              ((x8559
                                (begin
                                  (write '(funapp 2291 45))
                                  (display "\n")
                                  (block-x b))))
                              (begin
                                (write '(funapp 2291 59))
                                (display "\n")
                                (min x8559 n)))))
                           g8558))
                        board-width
                        bs))))
                   g8557)))
               (blocks-max-x
                (lambda (bs)
                  (letrec*
                   ((g8560
                     (begin
                       (write '(funapp 2300 22))
                       (display "\n")
                       (foldr
                        (lambda (b n)
                          (letrec*
                           ((g8561
                             (letrec*
                              ((x8562
                                (begin
                                  (write '(funapp 2304 45))
                                  (display "\n")
                                  (block-x b))))
                              (begin
                                (write '(funapp 2304 59))
                                (display "\n")
                                (max x8562 n)))))
                           g8561))
                        0
                        bs))))
                   g8560)))
               (eliminate-full-rows
                (lambda (bs)
                  (letrec*
                   ((g8563
                     (begin
                       (write '(funapp 2311 36))
                       (display "\n")
                       (elim-row bs board-height 0))))
                   g8563)))
               (elim-row
                (lambda (bs i offset)
                  (letrec*
                   ((g8564
                     (letrec*
                      ((x-cnd8565
                        (begin
                          (write '(funapp 2317 35))
                          (display "\n")
                          (< i 0))))
                      (if x-cnd8565
                        (letrec* ((g8566 empty)) g8566)
                        (letrec*
                         ((x-cnd8567
                           (begin
                             (write '(funapp 2321 38))
                             (display "\n")
                             (full-row? bs i))))
                         (if x-cnd8567
                           (letrec*
                            ((g8568
                              (letrec*
                               ((x8570
                                 (begin
                                   (write '(funapp 2326 40))
                                   (display "\n")
                                   (sub1 i)))
                                (x8569
                                 (begin
                                   (write '(funapp 2326 57))
                                   (display "\n")
                                   (add1 offset))))
                               (begin
                                 (write '(funapp 2327 32))
                                 (display "\n")
                                 (elim-row bs x8570 x8569)))))
                            g8568)
                           (letrec*
                            ((g8571
                              (letrec*
                               ((x8574
                                 (letrec*
                                  ((x8575
                                    (begin
                                      (write '(funapp 2334 43))
                                      (display "\n")
                                      (sub1 i))))
                                  (begin
                                    (write '(funapp 2335 35))
                                    (display "\n")
                                    (elim-row bs x8575 offset))))
                                (x8572
                                 (letrec*
                                  ((x8573
                                    (begin
                                      (write '(funapp 2338 43))
                                      (display "\n")
                                      (blocks-row bs i))))
                                  (begin
                                    (write '(funapp 2339 35))
                                    (display "\n")
                                    (blocks-move 0 offset x8573)))))
                               (begin
                                 (write '(funapp 2340 32))
                                 (display "\n")
                                 (blocks-union x8574 x8572)))))
                            g8571)))))))
                   g8564)))
               (tetra-move
                (lambda (dx dy t)
                  (letrec*
                   ((g8576
                     (letrec*
                      ((x8579
                        (letrec*
                         ((x8583
                           (letrec*
                            ((x8584
                              (letrec*
                               ((x8585
                                 (begin
                                   (write '(funapp 2354 40))
                                   (display "\n")
                                   (tetra-center t))))
                               (begin
                                 (write '(funapp 2355 32))
                                 (display "\n")
                                 (posn-x x8585)))))
                            (begin
                              (write '(funapp 2356 29))
                              (display "\n")
                              (+ dx x8584))))
                          (x8580
                           (letrec*
                            ((x8581
                              (letrec*
                               ((x8582
                                 (begin
                                   (write '(funapp 2361 40))
                                   (display "\n")
                                   (tetra-center t))))
                               (begin
                                 (write '(funapp 2362 32))
                                 (display "\n")
                                 (posn-y x8582)))))
                            (begin
                              (write '(funapp 2363 29))
                              (display "\n")
                              (+ dy x8581)))))
                         (begin
                           (write '(funapp 2364 26))
                           (display "\n")
                           (posn x8583 x8580))))
                       (x8577
                        (letrec*
                         ((x8578
                           (begin
                             (write '(funapp 2367 34))
                             (display "\n")
                             (tetra-blocks t))))
                         (begin
                           (write '(funapp 2368 26))
                           (display "\n")
                           (blocks-move dx dy x8578)))))
                      (begin
                        (write '(funapp 2369 23))
                        (display "\n")
                        (tetra x8579 x8577)))))
                   g8576)))
               (tetra-rotate-ccw
                (lambda (t)
                  (letrec*
                   ((g8586
                     (letrec*
                      ((x8590
                        (begin
                          (write '(funapp 2376 31))
                          (display "\n")
                          (tetra-center t)))
                       (x8587
                        (letrec*
                         ((x8589
                           (begin
                             (write '(funapp 2379 34))
                             (display "\n")
                             (tetra-center t)))
                          (x8588
                           (begin
                             (write '(funapp 2379 59))
                             (display "\n")
                             (tetra-blocks t))))
                         (begin
                           (write '(funapp 2380 26))
                           (display "\n")
                           (blocks-rotate-ccw x8589 x8588)))))
                      (begin
                        (write '(funapp 2381 23))
                        (display "\n")
                        (tetra x8590 x8587)))))
                   g8586)))
               (tetra-rotate-cw
                (lambda (t)
                  (letrec*
                   ((g8591
                     (letrec*
                      ((x8595
                        (begin
                          (write '(funapp 2388 31))
                          (display "\n")
                          (tetra-center t)))
                       (x8592
                        (letrec*
                         ((x8594
                           (begin
                             (write '(funapp 2391 34))
                             (display "\n")
                             (tetra-center t)))
                          (x8593
                           (begin
                             (write '(funapp 2391 59))
                             (display "\n")
                             (tetra-blocks t))))
                         (begin
                           (write '(funapp 2392 26))
                           (display "\n")
                           (blocks-rotate-cw x8594 x8593)))))
                      (begin
                        (write '(funapp 2393 23))
                        (display "\n")
                        (tetra x8595 x8592)))))
                   g8591)))
               (tetra-overlaps-blocks?
                (lambda (t bs)
                  (letrec*
                   ((g8596
                     (letrec*
                      ((x8597
                        (letrec*
                         ((x8598
                           (letrec*
                            ((x8599
                              (begin
                                (write '(funapp 2404 37))
                                (display "\n")
                                (tetra-blocks t))))
                            (begin
                              (write '(funapp 2405 29))
                              (display "\n")
                              (blocks-intersect x8599 bs)))))
                         (begin
                           (write '(funapp 2406 26))
                           (display "\n")
                           (false? x8598)))))
                      (begin
                        (write '(funapp 2407 23))
                        (display "\n")
                        (false? x8597)))))
                   g8596)))
               (tetra-change-color
                (lambda (t c)
                  (letrec*
                   ((g8600
                     (letrec*
                      ((x8603
                        (begin
                          (write '(funapp 2414 31))
                          (display "\n")
                          (tetra-center t)))
                       (x8601
                        (letrec*
                         ((x8602
                           (begin
                             (write '(funapp 2417 34))
                             (display "\n")
                             (tetra-blocks t))))
                         (begin
                           (write '(funapp 2418 26))
                           (display "\n")
                           (blocks-change-color x8602 c)))))
                      (begin
                        (write '(funapp 2419 23))
                        (display "\n")
                        (tetra x8603 x8601)))))
                   g8600)))
               (build-tetra-blocks
                (lambda (color xc yc x1 y1 x2 y2 x3 y3 x4 y4)
                  (letrec*
                   ((g8604
                     (letrec*
                      ((x8605
                        (letrec*
                         ((x8611
                           (begin
                             (write '(funapp 2428 34))
                             (display "\n")
                             (posn xc yc)))
                          (x8606
                           (letrec*
                            ((x8610
                              (begin
                                (write '(funapp 2431 37))
                                (display "\n")
                                (block x1 y1 color)))
                             (x8609
                              (begin
                                (write '(funapp 2432 37))
                                (display "\n")
                                (block x2 y2 color)))
                             (x8608
                              (begin
                                (write '(funapp 2433 37))
                                (display "\n")
                                (block x3 y3 color)))
                             (x8607
                              (begin
                                (write '(funapp 2434 37))
                                (display "\n")
                                (block x4 y4 color))))
                            (begin
                              (write '(funapp 2435 29))
                              (display "\n")
                              (list x8610 x8609 x8608 x8607)))))
                         (begin
                           (write '(funapp 2436 26))
                           (display "\n")
                           (tetra x8611 x8606)))))
                      (begin
                        (write '(funapp 2437 23))
                        (display "\n")
                        (tetra-move 3 0 x8605)))))
                   g8604)))
               (touchdown
                (lambda (w tetras)
                  (letrec*
                   ((g8612
                     (letrec*
                      ((x8618
                        (begin
                          (write '(funapp 2444 31))
                          (display "\n")
                          (list-pick-random tetras)))
                       (x8613
                        (letrec*
                         ((x8614
                           (letrec*
                            ((x8616
                              (letrec*
                               ((x8617
                                 (begin
                                   (write '(funapp 2451 40))
                                   (display "\n")
                                   (world-tetra w))))
                               (begin
                                 (write '(funapp 2452 32))
                                 (display "\n")
                                 (tetra-blocks x8617))))
                             (x8615
                              (begin
                                (write '(funapp 2453 37))
                                (display "\n")
                                (world-blocks w))))
                            (begin
                              (write '(funapp 2454 29))
                              (display "\n")
                              (blocks-union x8616 x8615)))))
                         (begin
                           (write '(funapp 2455 26))
                           (display "\n")
                           (eliminate-full-rows x8614)))))
                      (begin
                        (write '(funapp 2456 23))
                        (display "\n")
                        (world x8618 x8613)))))
                   g8612)))
               (world-jump-down
                (lambda (w)
                  (letrec*
                   ((g8619
                     (letrec*
                      ((x-cnd8620
                        (begin
                          (write '(funapp 2463 35))
                          (display "\n")
                          (landed? w))))
                      (if x-cnd8620
                        (letrec* ((g8621 w)) g8621)
                        (letrec*
                         ((g8622
                           (letrec*
                            ((x8623
                              (letrec*
                               ((x8625
                                 (letrec*
                                  ((x8626
                                    (begin
                                      (write '(funapp 2473 43))
                                      (display "\n")
                                      (world-tetra w))))
                                  (begin
                                    (write '(funapp 2474 35))
                                    (display "\n")
                                    (tetra-move 0 1 x8626))))
                                (x8624
                                 (begin
                                   (write '(funapp 2475 40))
                                   (display "\n")
                                   (world-blocks w))))
                               (begin
                                 (write '(funapp 2476 32))
                                 (display "\n")
                                 (world x8625 x8624)))))
                            (begin
                              (write '(funapp 2477 29))
                              (display "\n")
                              (world-jump-down x8623)))))
                         g8622)))))
                   g8619)))
               (landed-on-blocks?
                (lambda (w)
                  (letrec*
                   ((g8627
                     (letrec*
                      ((x8629
                        (letrec*
                         ((x8630
                           (begin
                             (write '(funapp 2487 34))
                             (display "\n")
                             (world-tetra w))))
                         (begin
                           (write '(funapp 2488 26))
                           (display "\n")
                           (tetra-move 0 1 x8630))))
                       (x8628
                        (begin
                          (write '(funapp 2489 31))
                          (display "\n")
                          (world-blocks w))))
                      (begin
                        (write '(funapp 2490 23))
                        (display "\n")
                        (tetra-overlaps-blocks? x8629 x8628)))))
                   g8627)))
               (landed-on-floor?
                (lambda (w)
                  (letrec*
                   ((g8631
                     (letrec*
                      ((x8633
                        (letrec*
                         ((x8634
                           (letrec*
                            ((x8635
                              (begin
                                (write '(funapp 2501 37))
                                (display "\n")
                                (world-tetra w))))
                            (begin
                              (write '(funapp 2502 29))
                              (display "\n")
                              (tetra-blocks x8635)))))
                         (begin
                           (write '(funapp 2503 26))
                           (display "\n")
                           (blocks-max-y x8634))))
                       (x8632
                        (begin
                          (write '(funapp 2504 31))
                          (display "\n")
                          (sub1 board-height))))
                      (begin
                        (write '(funapp 2505 23))
                        (display "\n")
                        (= x8633 x8632)))))
                   g8631)))
               (landed?
                (lambda (w)
                  (letrec*
                   ((g8636
                     (letrec*
                      ((val7261
                        (begin
                          (write '(funapp 2512 33))
                          (display "\n")
                          (landed-on-blocks? w))))
                      (letrec*
                       ((g8637
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 2514 52))
                             (display "\n")
                             (landed-on-floor? w)))))
                       g8637))))
                   g8636)))
               (next-world
                (lambda (w tetras)
                  (letrec*
                   ((g8638
                     (letrec*
                      ((x-cnd8639
                        (begin
                          (write '(funapp 2522 35))
                          (display "\n")
                          (landed? w))))
                      (if x-cnd8639
                        (letrec*
                         ((g8640
                           (begin
                             (write '(funapp 2524 42))
                             (display "\n")
                             (touchdown w tetras))))
                         g8640)
                        (letrec*
                         ((g8641
                           (letrec*
                            ((x8643
                              (letrec*
                               ((x8644
                                 (begin
                                   (write '(funapp 2530 40))
                                   (display "\n")
                                   (world-tetra w))))
                               (begin
                                 (write '(funapp 2531 32))
                                 (display "\n")
                                 (tetra-move 0 1 x8644))))
                             (x8642
                              (begin
                                (write '(funapp 2532 37))
                                (display "\n")
                                (world-blocks w))))
                            (begin
                              (write '(funapp 2533 29))
                              (display "\n")
                              (world x8643 x8642)))))
                         g8641)))))
                   g8638)))
               (try-new-tetra
                (lambda (w new-tetra)
                  (letrec*
                   ((g8645
                     (letrec*
                      ((x-cnd8646
                        (letrec*
                         ((x8652
                           (letrec*
                            ((x8653
                              (letrec*
                               ((x8654
                                 (begin
                                   (write '(funapp 2547 40))
                                   (display "\n")
                                   (tetra-blocks new-tetra))))
                               (begin
                                 (write '(funapp 2548 32))
                                 (display "\n")
                                 (blocks-min-x x8654)))))
                            (begin
                              (write '(funapp 2549 29))
                              (display "\n")
                              (< x8653 0))))
                          (x8649
                           (letrec*
                            ((x8650
                              (letrec*
                               ((x8651
                                 (begin
                                   (write '(funapp 2554 40))
                                   (display "\n")
                                   (tetra-blocks new-tetra))))
                               (begin
                                 (write '(funapp 2555 32))
                                 (display "\n")
                                 (blocks-max-x x8651)))))
                            (begin
                              (write '(funapp 2556 29))
                              (display "\n")
                              (>= x8650 board-width))))
                          (x8647
                           (letrec*
                            ((x8648
                              (begin
                                (write '(funapp 2559 37))
                                (display "\n")
                                (world-blocks w))))
                            (begin
                              (write '(funapp 2560 29))
                              (display "\n")
                              (tetra-overlaps-blocks? new-tetra x8648)))))
                         (begin
                           (write '(funapp 2561 26))
                           (display "\n")
                           (or x8652 x8649 x8647)))))
                      (if x-cnd8646
                        (letrec* ((g8655 w)) g8655)
                        (letrec*
                         ((g8656
                           (letrec*
                            ((x8657
                              (begin
                                (write '(funapp 2567 37))
                                (display "\n")
                                (world-blocks w))))
                            (begin
                              (write '(funapp 2568 29))
                              (display "\n")
                              (world new-tetra x8657)))))
                         g8656)))))
                   g8645)))
               (world-move
                (lambda (dx dy w)
                  (letrec*
                   ((g8658
                     (letrec*
                      ((x8659
                        (letrec*
                         ((x8660
                           (begin
                             (write '(funapp 2578 34))
                             (display "\n")
                             (world-tetra w))))
                         (begin
                           (write '(funapp 2579 26))
                           (display "\n")
                           (tetra-move dx dy x8660)))))
                      (begin
                        (write '(funapp 2580 23))
                        (display "\n")
                        (try-new-tetra w x8659)))))
                   g8658)))
               (world-rotate-ccw
                (lambda (w)
                  (letrec*
                   ((g8661
                     (letrec*
                      ((x8662
                        (letrec*
                         ((x8663
                           (begin
                             (write '(funapp 2589 34))
                             (display "\n")
                             (world-tetra w))))
                         (begin
                           (write '(funapp 2590 26))
                           (display "\n")
                           (tetra-rotate-ccw x8663)))))
                      (begin
                        (write '(funapp 2591 23))
                        (display "\n")
                        (try-new-tetra w x8662)))))
                   g8661)))
               (world-rotate-cw
                (lambda (w)
                  (letrec*
                   ((g8664
                     (letrec*
                      ((x8665
                        (letrec*
                         ((x8666
                           (begin
                             (write '(funapp 2600 34))
                             (display "\n")
                             (world-tetra w))))
                         (begin
                           (write '(funapp 2601 26))
                           (display "\n")
                           (tetra-rotate-cw x8666)))))
                      (begin
                        (write '(funapp 2602 23))
                        (display "\n")
                        (try-new-tetra w x8665)))))
                   g8664)))
               (ghost-blocks
                (lambda (w)
                  (letrec*
                   ((g8667
                     (letrec*
                      ((x8668
                        (letrec*
                         ((x8669
                           (letrec*
                            ((x8670
                              (begin
                                (write '(funapp 2613 37))
                                (display "\n")
                                (world-jump-down w))))
                            (begin
                              (write '(funapp 2614 29))
                              (display "\n")
                              (world-tetra x8670)))))
                         (begin
                           (write '(funapp 2615 26))
                           (display "\n")
                           (tetra-change-color
                            x8669
                            (begin
                              (write '(funapp 2615 51))
                              (display "\n")
                              'gray))))))
                      (begin
                        (write '(funapp 2616 23))
                        (display "\n")
                        (tetra-blocks x8668)))))
                   g8667)))
               (world-key-move
                (lambda (w k)
                  (letrec*
                   ((g8671
                     (letrec*
                      ((x-cnd8672
                        (begin
                          (write '(funapp 2623 35))
                          (display "\n")
                          (equal? k "left"))))
                      (if x-cnd8672
                        (letrec*
                         ((g8673
                           (begin
                             (write '(funapp 2625 42))
                             (display "\n")
                             (world-move neg-1 0 w))))
                         g8673)
                        (letrec*
                         ((x-cnd8674
                           (begin
                             (write '(funapp 2627 38))
                             (display "\n")
                             (equal? k "right"))))
                         (if x-cnd8674
                           (letrec*
                            ((g8675
                              (begin
                                (write '(funapp 2629 45))
                                (display "\n")
                                (world-move 1 0 w))))
                            g8675)
                           (letrec*
                            ((x-cnd8676
                              (begin
                                (write '(funapp 2631 41))
                                (display "\n")
                                (equal? k "down"))))
                            (if x-cnd8676
                              (letrec*
                               ((g8677
                                 (begin
                                   (write '(funapp 2633 48))
                                   (display "\n")
                                   (world-jump-down w))))
                               g8677)
                              (letrec*
                               ((x-cnd8678
                                 (begin
                                   (write '(funapp 2635 44))
                                   (display "\n")
                                   (equal? k "a"))))
                               (if x-cnd8678
                                 (letrec*
                                  ((g8679
                                    (begin
                                      (write '(funapp 2637 51))
                                      (display "\n")
                                      (world-rotate-ccw w))))
                                  g8679)
                                 (letrec*
                                  ((x-cnd8680
                                    (begin
                                      (write '(funapp 2639 47))
                                      (display "\n")
                                      (equal? k "s"))))
                                  (if x-cnd8680
                                    (letrec*
                                     ((g8681
                                       (begin
                                         (write '(funapp 2642 46))
                                         (display "\n")
                                         (world-rotate-cw w))))
                                     g8681)
                                    (letrec* ((g8682 w)) g8682)))))))))))))
                   g8671)))
               (image
                (lambda ()
                  (letrec*
                   ((g8683
                     (begin
                       (write '(funapp 2647 45))
                       (display "\n")
                       (orig-cons
                        (begin (write '(funapp 2647 55)) (display "\n") 'image)
                        (begin
                          (write '(funapp 2647 62))
                          (display "\n")
                          '())))))
                   g8683)))
               (image?
                (lambda (image7772)
                  (letrec*
                   ((g8684
                     (letrec*
                      ((x8685
                        (begin
                          (write '(funapp 2652 39))
                          (display "\n")
                          (car image7772))))
                      (begin
                        (write '(funapp 2652 57))
                        (display "\n")
                        (eq?
                         x8685
                         (begin
                           (write '(funapp 2652 67))
                           (display "\n")
                           'image))))))
                   g8684)))
               (image/c
                (lambda (j7424 k7425 v7423)
                  (letrec*
                   ((g8686
                     (begin
                       (write '(funapp 2656 36))
                       (display "\n")
                       (cons
                        image
                        (begin
                          (write '(funapp 2656 47))
                          (display "\n")
                          '())))))
                   g8686)))
               (overlay
                (lambda (i₁ i₂)
                  (letrec*
                   ((g8687
                     (begin (write '(funapp 2657 58)) (display "\n") (image))))
                   g8687)))
               (circle
                (lambda (r m c)
                  (letrec*
                   ((g8688
                     (begin (write '(funapp 2658 57)) (display "\n") (image))))
                   g8688)))
               (rectangle
                (lambda (w h m c)
                  (letrec*
                   ((g8689
                     (begin (write '(funapp 2659 62)) (display "\n") (image))))
                   g8689)))
               (place-image
                (lambda (i₁ r c i₂)
                  (letrec*
                   ((g8690
                     (begin (write '(funapp 2661 54)) (display "\n") (image))))
                   g8690)))
               (empty-scene
                (lambda (w h)
                  (letrec*
                   ((g8691
                     (begin (write '(funapp 2662 60)) (display "\n") (image))))
                   g8691)))
               (list-pick-random
                (lambda (xs)
                  (letrec*
                   ((g8692
                     (letrec*
                      ((x-cnd8693
                        (letrec*
                         ((x8694
                           (begin
                             (write '(funapp 2668 52))
                             (display "\n")
                             (cdr xs))))
                         (begin
                           (write '(funapp 2668 63))
                           (display "\n")
                           (null? x8694)))))
                      (if x-cnd8693
                        (letrec*
                         ((g8695
                           (begin
                             (write '(funapp 2670 42))
                             (display "\n")
                             (car xs))))
                         g8695)
                        (letrec*
                         ((g8696
                           (letrec*
                            ((x8697
                              (begin
                                (write '(funapp 2674 37))
                                (display "\n")
                                (cdr xs))))
                            (begin
                              (write '(funapp 2675 29))
                              (display "\n")
                              (list-pick-random x8697)))))
                         g8696)))))
                   g8692)))
               (neg-1
                (begin (write '(funapp 2678 23)) (display "\n") (random 10)))
               (world->image
                (lambda (w)
                  (letrec*
                   ((g8698
                     (letrec*
                      ((x8702
                        (letrec*
                         ((x8703
                           (letrec*
                            ((x8707
                              (letrec*
                               ((x8708
                                 (begin
                                   (write '(funapp 2690 40))
                                   (display "\n")
                                   (world-tetra w))))
                               (begin
                                 (write '(funapp 2691 32))
                                 (display "\n")
                                 (tetra-blocks x8708))))
                             (x8704
                              (letrec*
                               ((x8706
                                 (begin
                                   (write '(funapp 2694 40))
                                   (display "\n")
                                   (ghost-blocks w)))
                                (x8705
                                 (begin
                                   (write '(funapp 2695 40))
                                   (display "\n")
                                   (world-blocks w))))
                               (begin
                                 (write '(funapp 2696 32))
                                 (display "\n")
                                 (append x8706 x8705)))))
                            (begin
                              (write '(funapp 2697 29))
                              (display "\n")
                              (append x8707 x8704)))))
                         (begin
                           (write '(funapp 2698 26))
                           (display "\n")
                           (blocks->image x8703))))
                       (x8699
                        (letrec*
                         ((x8701
                           (begin
                             (write '(funapp 2701 34))
                             (display "\n")
                             (* board-width block-size)))
                          (x8700
                           (begin
                             (write '(funapp 2702 34))
                             (display "\n")
                             (* board-height block-size))))
                         (begin
                           (write '(funapp 2703 26))
                           (display "\n")
                           (empty-scene x8701 x8700)))))
                      (begin
                        (write '(funapp 2704 23))
                        (display "\n")
                        (place-image x8702 0 0 x8699)))))
                   g8698)))
               (blocks->image
                (lambda (bs)
                  (letrec*
                   ((g8709
                     (letrec*
                      ((x8710
                        (letrec*
                         ((x8713
                           (letrec*
                            ((x8714
                              (begin
                                (write '(funapp 2715 37))
                                (display "\n")
                                (* board-width block-size))))
                            (begin
                              (write '(funapp 2716 29))
                              (display "\n")
                              (add1 x8714))))
                          (x8711
                           (letrec*
                            ((x8712
                              (begin
                                (write '(funapp 2719 37))
                                (display "\n")
                                (* board-height block-size))))
                            (begin
                              (write '(funapp 2720 29))
                              (display "\n")
                              (add1 x8712)))))
                         (begin
                           (write '(funapp 2721 26))
                           (display "\n")
                           (empty-scene x8713 x8711)))))
                      (begin
                        (write '(funapp 2722 23))
                        (display "\n")
                        (foldr
                         (lambda (b img)
                           (letrec*
                            ((g8715
                              (letrec*
                               ((x-cnd8716
                                 (letrec*
                                  ((x8717
                                    (begin
                                      (write '(funapp 2728 49))
                                      (display "\n")
                                      (block-y b))))
                                  (begin
                                    (write '(funapp 2728 63))
                                    (display "\n")
                                    (<= 0 x8717)))))
                               (if x-cnd8716
                                 (letrec*
                                  ((g8718
                                    (begin
                                      (write '(funapp 2730 49))
                                      (display "\n")
                                      (place-block b img))))
                                  g8718)
                                 (letrec* ((g8719 img)) g8719)))))
                            g8715))
                         x8710
                         bs)))))
                   g8709)))
               (block->image
                (lambda (b)
                  (letrec*
                   ((g8720
                     (letrec*
                      ((x8724
                        (letrec*
                         ((x8727
                           (begin
                             (write '(funapp 2743 34))
                             (display "\n")
                             (add1 block-size)))
                          (x8726
                           (begin
                             (write '(funapp 2744 34))
                             (display "\n")
                             (add1 block-size)))
                          (x8725
                           (begin
                             (write '(funapp 2745 34))
                             (display "\n")
                             (block-color b))))
                         (begin
                           (write '(funapp 2746 26))
                           (display "\n")
                           (rectangle
                            x8727
                            x8726
                            (begin
                              (write '(funapp 2746 48))
                              (display "\n")
                              'solid)
                            x8725))))
                       (x8721
                        (letrec*
                         ((x8723
                           (begin
                             (write '(funapp 2749 34))
                             (display "\n")
                             (add1 block-size)))
                          (x8722
                           (begin
                             (write '(funapp 2749 60))
                             (display "\n")
                             (add1 block-size))))
                         (begin
                           (write '(funapp 2750 26))
                           (display "\n")
                           (rectangle
                            x8723
                            x8722
                            (begin
                              (write '(funapp 2750 48))
                              (display "\n")
                              'outline)
                            (begin
                              (write '(funapp 2750 57))
                              (display "\n")
                              'black))))))
                      (begin
                        (write '(funapp 2751 23))
                        (display "\n")
                        (overlay x8724 x8721)))))
                   g8720)))
               (place-block
                (lambda (b scene)
                  (letrec*
                   ((g8728
                     (letrec*
                      ((x8737
                        (begin
                          (write '(funapp 2758 31))
                          (display "\n")
                          (block->image b)))
                       (x8733
                        (letrec*
                         ((x8735
                           (letrec*
                            ((x8736
                              (begin
                                (write '(funapp 2763 37))
                                (display "\n")
                                (block-x b))))
                            (begin
                              (write '(funapp 2764 29))
                              (display "\n")
                              (* x8736 block-size))))
                          (x8734
                           (begin
                             (write '(funapp 2765 34))
                             (display "\n")
                             (/ block-size 2))))
                         (begin
                           (write '(funapp 2766 26))
                           (display "\n")
                           (+ x8735 x8734))))
                       (x8729
                        (letrec*
                         ((x8731
                           (letrec*
                            ((x8732
                              (begin
                                (write '(funapp 2771 37))
                                (display "\n")
                                (block-y b))))
                            (begin
                              (write '(funapp 2772 29))
                              (display "\n")
                              (* x8732 block-size))))
                          (x8730
                           (begin
                             (write '(funapp 2773 34))
                             (display "\n")
                             (/ block-size 2))))
                         (begin
                           (write '(funapp 2774 26))
                           (display "\n")
                           (+ x8731 x8730)))))
                      (begin
                        (write '(funapp 2775 23))
                        (display "\n")
                        (place-image x8737 x8733 x8729 scene)))))
                   g8728)))
               (world0
                (lambda (tetras)
                  (letrec*
                   ((g8738
                     (letrec*
                      ((x8739
                        (begin
                          (write '(funapp 2782 31))
                          (display "\n")
                          (list-pick-random tetras))))
                      (begin
                        (write '(funapp 2783 23))
                        (display "\n")
                        (world x8739 null)))))
                   g8738))))
              (letrec*
               ((g8740
                 (begin
                   (write '(funapp 2787 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 2788 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8751
                          (letrec*
                           ((xj7427
                             (begin
                               (write '(funapp 2792 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2792 37))
                                  (display "\n")
                                  'module))))
                            (xk7428
                             (begin
                               (write '(funapp 2792 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2792 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8752
                              (begin
                                (write '(funapp 2795 27))
                                (display "\n")
                                ((lambda (j7431 k7432 f7433)
                                   (letrec*
                                    ((g8753
                                      (lambda (g7429 g7430)
                                        (letrec*
                                         ((g8754
                                           (letrec*
                                            ((x8755
                                              (letrec*
                                               ((x8757
                                                 (begin
                                                   (write '(funapp 2804 50))
                                                   (display "\n")
                                                   (POSN/C j7431 k7432 g7429)))
                                                (x8756
                                                 (begin
                                                   (write '(funapp 2805 50))
                                                   (display "\n")
                                                   (POSN/C
                                                    j7431
                                                    k7432
                                                    g7430))))
                                               (begin
                                                 (write '(funapp 2806 42))
                                                 (display "\n")
                                                 (f7433 x8757 x8756)))))
                                            (begin
                                              (write '(funapp 2807 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7431
                                               k7432
                                               x8755)))))
                                         g8754))))
                                    g8753))
                                 xj7427
                                 xk7428
                                 posn=?))))
                            g8752)))
                         (x8746
                          (letrec*
                           ((x8747
                             (letrec*
                              ((x8750 (input))
                               (x8748
                                (letrec*
                                 ((x8749 (input)))
                                 (begin
                                   (write '(funapp 2820 56))
                                   (display "\n")
                                   (cons
                                    x8749
                                    (begin
                                      (write '(funapp 2820 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2821 27))
                                (display "\n")
                                (cons x8750 x8748)))))
                           (begin
                             (write '(funapp 2822 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2822 29))
                                (display "\n")
                                'posn)
                              x8747))))
                         (x8741
                          (letrec*
                           ((x8742
                             (letrec*
                              ((x8745 (input))
                               (x8743
                                (letrec*
                                 ((x8744 (input)))
                                 (begin
                                   (write '(funapp 2829 56))
                                   (display "\n")
                                   (cons
                                    x8744
                                    (begin
                                      (write '(funapp 2829 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2830 27))
                                (display "\n")
                                (cons x8745 x8743)))))
                           (begin
                             (write '(funapp 2831 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2831 29))
                                (display "\n")
                                'posn)
                              x8742)))))
                        (begin
                          (write '(funapp 2832 21))
                          (display "\n")
                          (x8751 x8746 x8741)))
                       (letrec*
                        ((xj7434
                          (begin
                            (write '(funapp 2834 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2834 34))
                               (display "\n")
                               'module))))
                         (xk7435
                          (begin
                            (write '(funapp 2834 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2834 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8758
                           (begin
                             (write '(funapp 2835 38))
                             (display "\n")
                             (any/c xj7434 xk7435 COLOR/C))))
                         g8758))
                       (letrec*
                        ((xj7436
                          (begin
                            (write '(funapp 2837 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2837 34))
                               (display "\n")
                               'module))))
                         (xk7437
                          (begin
                            (write '(funapp 2837 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2837 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8759
                           (begin
                             (write '(funapp 2838 38))
                             (display "\n")
                             (any/c xj7436 xk7437 POSN/C))))
                         g8759))
                       (letrec*
                        ((xj7438
                          (begin
                            (write '(funapp 2840 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2840 34))
                               (display "\n")
                               'module))))
                         (xk7439
                          (begin
                            (write '(funapp 2840 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2840 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8760
                           (begin
                             (write '(funapp 2841 38))
                             (display "\n")
                             (any/c xj7438 xk7439 BLOCK/C))))
                         g8760))
                       (letrec*
                        ((xj7440
                          (begin
                            (write '(funapp 2843 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2843 34))
                               (display "\n")
                               'module))))
                         (xk7441
                          (begin
                            (write '(funapp 2843 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2843 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8761
                           (begin
                             (write '(funapp 2844 38))
                             (display "\n")
                             (any/c xj7440 xk7441 TETRA/C))))
                         g8761))
                       (letrec*
                        ((xj7442
                          (begin
                            (write '(funapp 2846 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2846 34))
                               (display "\n")
                               'module))))
                         (xk7443
                          (begin
                            (write '(funapp 2846 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2846 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8762
                           (begin
                             (write '(funapp 2847 38))
                             (display "\n")
                             (any/c xj7442 xk7443 WORLD/C))))
                         g8762))
                       (letrec*
                        ((xj7444
                          (begin
                            (write '(funapp 2849 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2849 34))
                               (display "\n")
                               'module))))
                         (xk7445
                          (begin
                            (write '(funapp 2849 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2849 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8763
                           (begin
                             (write '(funapp 2850 38))
                             (display "\n")
                             (any/c xj7444 xk7445 BSET/C))))
                         g8763))
                       (letrec*
                        ((xj7446
                          (begin
                            (write '(funapp 2852 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2852 34))
                               (display "\n")
                               'module))))
                         (xk7447
                          (begin
                            (write '(funapp 2852 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2852 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8764
                           (begin
                             (write '(funapp 2854 30))
                             (display "\n")
                             (integer?/c xj7446 xk7447 block-size))))
                         g8764))
                       (letrec*
                        ((xj7448
                          (begin
                            (write '(funapp 2857 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2857 34))
                               (display "\n")
                               'module))))
                         (xk7449
                          (begin
                            (write '(funapp 2857 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2857 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8765
                           (begin
                             (write '(funapp 2859 30))
                             (display "\n")
                             (integer?/c xj7448 xk7449 board-width))))
                         g8765))
                       (letrec*
                        ((xj7450
                          (begin
                            (write '(funapp 2862 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2862 34))
                               (display "\n")
                               'module))))
                         (xk7451
                          (begin
                            (write '(funapp 2862 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2862 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8766
                           (begin
                             (write '(funapp 2864 30))
                             (display "\n")
                             (integer?/c xj7450 xk7451 board-height))))
                         g8766))
                       (letrec*
                        ((x8779
                          (letrec*
                           ((xj7452
                             (begin
                               (write '(funapp 2869 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2869 37))
                                  (display "\n")
                                  'module))))
                            (xk7453
                             (begin
                               (write '(funapp 2869 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2869 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8780
                              (begin
                                (write '(funapp 2872 27))
                                (display "\n")
                                ((lambda (j7456 k7457 f7458)
                                   (letrec*
                                    ((g8781
                                      (lambda (g7454 g7455)
                                        (letrec*
                                         ((g8782
                                           (letrec*
                                            ((x8783
                                              (letrec*
                                               ((x8785
                                                 (begin
                                                   (write '(funapp 2881 50))
                                                   (display "\n")
                                                   (POSN/C j7456 k7457 g7454)))
                                                (x8784
                                                 (begin
                                                   (write '(funapp 2882 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7456
                                                    k7457
                                                    g7455))))
                                               (begin
                                                 (write '(funapp 2883 42))
                                                 (display "\n")
                                                 (f7458 x8785 x8784)))))
                                            (begin
                                              (write '(funapp 2884 39))
                                              (display "\n")
                                              (BLOCK/C j7456 k7457 x8783)))))
                                         g8782))))
                                    g8781))
                                 xj7452
                                 xk7453
                                 block-rotate-ccw))))
                            g8780)))
                         (x8774
                          (letrec*
                           ((x8775
                             (letrec*
                              ((x8778 (input))
                               (x8776
                                (letrec*
                                 ((x8777 (input)))
                                 (begin
                                   (write '(funapp 2897 56))
                                   (display "\n")
                                   (cons
                                    x8777
                                    (begin
                                      (write '(funapp 2897 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2898 27))
                                (display "\n")
                                (cons x8778 x8776)))))
                           (begin
                             (write '(funapp 2899 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2899 29))
                                (display "\n")
                                'posn)
                              x8775))))
                         (x8767
                          (letrec*
                           ((x8768
                             (letrec*
                              ((x8773 (input))
                               (x8769
                                (letrec*
                                 ((x8772 (input))
                                  (x8770
                                   (letrec*
                                    ((x8771 (input)))
                                    (begin
                                      (write '(funapp 2909 59))
                                      (display "\n")
                                      (cons
                                       x8771
                                       (begin
                                         (write '(funapp 2909 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 2910 30))
                                   (display "\n")
                                   (cons x8772 x8770)))))
                              (begin
                                (write '(funapp 2911 27))
                                (display "\n")
                                (cons x8773 x8769)))))
                           (begin
                             (write '(funapp 2912 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2912 29))
                                (display "\n")
                                'block)
                              x8768)))))
                        (begin
                          (write '(funapp 2913 21))
                          (display "\n")
                          (x8779 x8774 x8767)))
                       (letrec*
                        ((x8798
                          (letrec*
                           ((xj7459
                             (begin
                               (write '(funapp 2917 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2917 37))
                                  (display "\n")
                                  'module))))
                            (xk7460
                             (begin
                               (write '(funapp 2917 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2917 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8799
                              (begin
                                (write '(funapp 2920 27))
                                (display "\n")
                                ((lambda (j7463 k7464 f7465)
                                   (letrec*
                                    ((g8800
                                      (lambda (g7461 g7462)
                                        (letrec*
                                         ((g8801
                                           (letrec*
                                            ((x8802
                                              (letrec*
                                               ((x8804
                                                 (begin
                                                   (write '(funapp 2929 50))
                                                   (display "\n")
                                                   (POSN/C j7463 k7464 g7461)))
                                                (x8803
                                                 (begin
                                                   (write '(funapp 2930 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7463
                                                    k7464
                                                    g7462))))
                                               (begin
                                                 (write '(funapp 2931 42))
                                                 (display "\n")
                                                 (f7465 x8804 x8803)))))
                                            (begin
                                              (write '(funapp 2932 39))
                                              (display "\n")
                                              (BLOCK/C j7463 k7464 x8802)))))
                                         g8801))))
                                    g8800))
                                 xj7459
                                 xk7460
                                 block-rotate-cw))))
                            g8799)))
                         (x8793
                          (letrec*
                           ((x8794
                             (letrec*
                              ((x8797 (input))
                               (x8795
                                (letrec*
                                 ((x8796 (input)))
                                 (begin
                                   (write '(funapp 2945 56))
                                   (display "\n")
                                   (cons
                                    x8796
                                    (begin
                                      (write '(funapp 2945 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2946 27))
                                (display "\n")
                                (cons x8797 x8795)))))
                           (begin
                             (write '(funapp 2947 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2947 29))
                                (display "\n")
                                'posn)
                              x8794))))
                         (x8786
                          (letrec*
                           ((x8787
                             (letrec*
                              ((x8792 (input))
                               (x8788
                                (letrec*
                                 ((x8791 (input))
                                  (x8789
                                   (letrec*
                                    ((x8790 (input)))
                                    (begin
                                      (write '(funapp 2957 59))
                                      (display "\n")
                                      (cons
                                       x8790
                                       (begin
                                         (write '(funapp 2957 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 2958 30))
                                   (display "\n")
                                   (cons x8791 x8789)))))
                              (begin
                                (write '(funapp 2959 27))
                                (display "\n")
                                (cons x8792 x8788)))))
                           (begin
                             (write '(funapp 2960 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2960 29))
                                (display "\n")
                                'block)
                              x8787)))))
                        (begin
                          (write '(funapp 2961 21))
                          (display "\n")
                          (x8798 x8793 x8786)))
                       (letrec*
                        ((x8819
                          (letrec*
                           ((xj7466
                             (begin
                               (write '(funapp 2965 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2965 37))
                                  (display "\n")
                                  'module))))
                            (xk7467
                             (begin
                               (write '(funapp 2965 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2965 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8820
                              (begin
                                (write '(funapp 2968 27))
                                (display "\n")
                                ((lambda (j7470 k7471 f7472)
                                   (letrec*
                                    ((g8821
                                      (lambda (g7468 g7469)
                                        (letrec*
                                         ((g8822
                                           (letrec*
                                            ((x8823
                                              (letrec*
                                               ((x8825
                                                 (begin
                                                   (write '(funapp 2977 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7470
                                                    k7471
                                                    g7468)))
                                                (x8824
                                                 (begin
                                                   (write '(funapp 2978 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7470
                                                    k7471
                                                    g7469))))
                                               (begin
                                                 (write '(funapp 2979 42))
                                                 (display "\n")
                                                 (f7472 x8825 x8824)))))
                                            (begin
                                              (write '(funapp 2980 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7470
                                               k7471
                                               x8823)))))
                                         g8822))))
                                    g8821))
                                 xj7466
                                 xk7467
                                 block=?))))
                            g8820)))
                         (x8812
                          (letrec*
                           ((x8813
                             (letrec*
                              ((x8818 (input))
                               (x8814
                                (letrec*
                                 ((x8817 (input))
                                  (x8815
                                   (letrec*
                                    ((x8816 (input)))
                                    (begin
                                      (write '(funapp 2996 59))
                                      (display "\n")
                                      (cons
                                       x8816
                                       (begin
                                         (write '(funapp 2996 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 2997 30))
                                   (display "\n")
                                   (cons x8817 x8815)))))
                              (begin
                                (write '(funapp 2998 27))
                                (display "\n")
                                (cons x8818 x8814)))))
                           (begin
                             (write '(funapp 2999 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2999 29))
                                (display "\n")
                                'block)
                              x8813))))
                         (x8805
                          (letrec*
                           ((x8806
                             (letrec*
                              ((x8811 (input))
                               (x8807
                                (letrec*
                                 ((x8810 (input))
                                  (x8808
                                   (letrec*
                                    ((x8809 (input)))
                                    (begin
                                      (write '(funapp 3009 59))
                                      (display "\n")
                                      (cons
                                       x8809
                                       (begin
                                         (write '(funapp 3009 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 3010 30))
                                   (display "\n")
                                   (cons x8810 x8808)))))
                              (begin
                                (write '(funapp 3011 27))
                                (display "\n")
                                (cons x8811 x8807)))))
                           (begin
                             (write '(funapp 3012 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3012 29))
                                (display "\n")
                                'block)
                              x8806)))))
                        (begin
                          (write '(funapp 3013 21))
                          (display "\n")
                          (x8819 x8812 x8805)))
                       (letrec*
                        ((x8835
                          (letrec*
                           ((xj7473
                             (begin
                               (write '(funapp 3017 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3017 37))
                                  (display "\n")
                                  'module))))
                            (xk7474
                             (begin
                               (write '(funapp 3017 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3017 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8836
                              (begin
                                (write '(funapp 3020 27))
                                (display "\n")
                                ((lambda (j7478 k7479 f7480)
                                   (letrec*
                                    ((g8837
                                      (lambda (g7475 g7476 g7477)
                                        (letrec*
                                         ((g8838
                                           (letrec*
                                            ((x8839
                                              (letrec*
                                               ((x8842
                                                 (begin
                                                   (write '(funapp 3029 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7478
                                                    k7479
                                                    g7475)))
                                                (x8841
                                                 (begin
                                                   (write '(funapp 3030 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7478
                                                    k7479
                                                    g7476)))
                                                (x8840
                                                 (begin
                                                   (write '(funapp 3031 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7478
                                                    k7479
                                                    g7477))))
                                               (begin
                                                 (write '(funapp 3032 42))
                                                 (display "\n")
                                                 (f7480 x8842 x8841 x8840)))))
                                            (begin
                                              (write '(funapp 3033 39))
                                              (display "\n")
                                              (BLOCK/C j7478 k7479 x8839)))))
                                         g8838))))
                                    g8837))
                                 xj7473
                                 xk7474
                                 block-move))))
                            g8836)))
                         (x8834 (input))
                         (x8833 (input))
                         (x8826
                          (letrec*
                           ((x8827
                             (letrec*
                              ((x8832 (input))
                               (x8828
                                (letrec*
                                 ((x8831 (input))
                                  (x8829
                                   (letrec*
                                    ((x8830 (input)))
                                    (begin
                                      (write '(funapp 3051 59))
                                      (display "\n")
                                      (cons
                                       x8830
                                       (begin
                                         (write '(funapp 3051 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 3052 30))
                                   (display "\n")
                                   (cons x8831 x8829)))))
                              (begin
                                (write '(funapp 3053 27))
                                (display "\n")
                                (cons x8832 x8828)))))
                           (begin
                             (write '(funapp 3054 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3054 29))
                                (display "\n")
                                'block)
                              x8827)))))
                        (begin
                          (write '(funapp 3055 21))
                          (display "\n")
                          (x8835 x8834 x8833 x8826)))
                       (letrec*
                        ((x8851
                          (letrec*
                           ((xj7481
                             (begin
                               (write '(funapp 3059 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3059 37))
                                  (display "\n")
                                  'module))))
                            (xk7482
                             (begin
                               (write '(funapp 3059 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3059 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8852
                              (begin
                                (write '(funapp 3062 27))
                                (display "\n")
                                ((lambda (j7485 k7486 f7487)
                                   (letrec*
                                    ((g8853
                                      (lambda (g7483 g7484)
                                        (letrec*
                                         ((g8854
                                           (letrec*
                                            ((x8855
                                              (letrec*
                                               ((x8857
                                                 (begin
                                                   (write '(funapp 3071 50))
                                                   (display "\n")
                                                   (BSET/C j7485 k7486 g7483)))
                                                (x8856
                                                 (begin
                                                   (write '(funapp 3072 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7485
                                                    k7486
                                                    g7484))))
                                               (begin
                                                 (write '(funapp 3073 42))
                                                 (display "\n")
                                                 (f7487 x8857 x8856)))))
                                            (begin
                                              (write '(funapp 3074 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7485
                                               k7486
                                               x8855)))))
                                         g8854))))
                                    g8853))
                                 xj7481
                                 xk7482
                                 blocks-contains?))))
                            g8852)))
                         (x8850 (input))
                         (x8843
                          (letrec*
                           ((x8844
                             (letrec*
                              ((x8849 (input))
                               (x8845
                                (letrec*
                                 ((x8848 (input))
                                  (x8846
                                   (letrec*
                                    ((x8847 (input)))
                                    (begin
                                      (write '(funapp 3091 59))
                                      (display "\n")
                                      (cons
                                       x8847
                                       (begin
                                         (write '(funapp 3091 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 3092 30))
                                   (display "\n")
                                   (cons x8848 x8846)))))
                              (begin
                                (write '(funapp 3093 27))
                                (display "\n")
                                (cons x8849 x8845)))))
                           (begin
                             (write '(funapp 3094 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3094 29))
                                (display "\n")
                                'block)
                              x8844)))))
                        (begin
                          (write '(funapp 3095 21))
                          (display "\n")
                          (x8851 x8850 x8843)))
                       (letrec*
                        ((x8860
                          (letrec*
                           ((xj7488
                             (begin
                               (write '(funapp 3099 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3099 37))
                                  (display "\n")
                                  'module))))
                            (xk7489
                             (begin
                               (write '(funapp 3099 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3099 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8861
                              (begin
                                (write '(funapp 3102 27))
                                (display "\n")
                                ((lambda (j7492 k7493 f7494)
                                   (letrec*
                                    ((g8862
                                      (lambda (g7490 g7491)
                                        (letrec*
                                         ((g8863
                                           (letrec*
                                            ((x8864
                                              (letrec*
                                               ((x8866
                                                 (begin
                                                   (write '(funapp 3111 50))
                                                   (display "\n")
                                                   (BSET/C j7492 k7493 g7490)))
                                                (x8865
                                                 (begin
                                                   (write '(funapp 3112 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7492
                                                    k7493
                                                    g7491))))
                                               (begin
                                                 (write '(funapp 3113 42))
                                                 (display "\n")
                                                 (f7494 x8866 x8865)))))
                                            (begin
                                              (write '(funapp 3114 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7492
                                               k7493
                                               x8864)))))
                                         g8863))))
                                    g8862))
                                 xj7488
                                 xk7489
                                 blocks=?))))
                            g8861)))
                         (x8859 (input))
                         (x8858 (input)))
                        (begin
                          (write '(funapp 3123 21))
                          (display "\n")
                          (x8860 x8859 x8858)))
                       (letrec*
                        ((x8869
                          (letrec*
                           ((xj7495
                             (begin
                               (write '(funapp 3127 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3127 37))
                                  (display "\n")
                                  'module))))
                            (xk7496
                             (begin
                               (write '(funapp 3127 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3127 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8870
                              (begin
                                (write '(funapp 3130 27))
                                (display "\n")
                                ((lambda (j7499 k7500 f7501)
                                   (letrec*
                                    ((g8871
                                      (lambda (g7497 g7498)
                                        (letrec*
                                         ((g8872
                                           (letrec*
                                            ((x8873
                                              (letrec*
                                               ((x8875
                                                 (begin
                                                   (write '(funapp 3139 50))
                                                   (display "\n")
                                                   (BSET/C j7499 k7500 g7497)))
                                                (x8874
                                                 (begin
                                                   (write '(funapp 3140 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7499
                                                    k7500
                                                    g7498))))
                                               (begin
                                                 (write '(funapp 3141 42))
                                                 (display "\n")
                                                 (f7501 x8875 x8874)))))
                                            (begin
                                              (write '(funapp 3142 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7499
                                               k7500
                                               x8873)))))
                                         g8872))))
                                    g8871))
                                 xj7495
                                 xk7496
                                 blocks-subset?))))
                            g8870)))
                         (x8868 (input))
                         (x8867 (input)))
                        (begin
                          (write '(funapp 3151 21))
                          (display "\n")
                          (x8869 x8868 x8867)))
                       (letrec*
                        ((x8878
                          (letrec*
                           ((xj7502
                             (begin
                               (write '(funapp 3155 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3155 37))
                                  (display "\n")
                                  'module))))
                            (xk7503
                             (begin
                               (write '(funapp 3155 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3155 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8879
                              (begin
                                (write '(funapp 3158 27))
                                (display "\n")
                                ((lambda (j7506 k7507 f7508)
                                   (letrec*
                                    ((g8880
                                      (lambda (g7504 g7505)
                                        (letrec*
                                         ((g8881
                                           (letrec*
                                            ((x8882
                                              (letrec*
                                               ((x8884
                                                 (begin
                                                   (write '(funapp 3167 50))
                                                   (display "\n")
                                                   (BSET/C j7506 k7507 g7504)))
                                                (x8883
                                                 (begin
                                                   (write '(funapp 3168 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7506
                                                    k7507
                                                    g7505))))
                                               (begin
                                                 (write '(funapp 3169 42))
                                                 (display "\n")
                                                 (f7508 x8884 x8883)))))
                                            (begin
                                              (write '(funapp 3170 39))
                                              (display "\n")
                                              (BSET/C j7506 k7507 x8882)))))
                                         g8881))))
                                    g8880))
                                 xj7502
                                 xk7503
                                 blocks-intersect))))
                            g8879)))
                         (x8877 (input))
                         (x8876 (input)))
                        (begin
                          (write '(funapp 3179 21))
                          (display "\n")
                          (x8878 x8877 x8876)))
                       (letrec*
                        ((x8886
                          (letrec*
                           ((xj7509
                             (begin
                               (write '(funapp 3183 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3183 37))
                                  (display "\n")
                                  'module))))
                            (xk7510
                             (begin
                               (write '(funapp 3183 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3183 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8887
                              (begin
                                (write '(funapp 3186 27))
                                (display "\n")
                                ((lambda (j7512 k7513 f7514)
                                   (letrec*
                                    ((g8888
                                      (lambda (g7511)
                                        (letrec*
                                         ((g8889
                                           (letrec*
                                            ((x8890
                                              (letrec*
                                               ((x8891
                                                 (begin
                                                   (write '(funapp 3195 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7512
                                                    k7513
                                                    g7511))))
                                               (begin
                                                 (write '(funapp 3196 42))
                                                 (display "\n")
                                                 (f7514 x8891)))))
                                            (begin
                                              (write '(funapp 3197 39))
                                              (display "\n")
                                              (real?/c j7512 k7513 x8890)))))
                                         g8889))))
                                    g8888))
                                 xj7509
                                 xk7510
                                 blocks-count))))
                            g8887)))
                         (x8885 (input)))
                        (begin
                          (write '(funapp 3205 21))
                          (display "\n")
                          (x8886 x8885)))
                       (letrec*
                        ((x8893
                          (letrec*
                           ((xj7515
                             (begin
                               (write '(funapp 3209 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3209 37))
                                  (display "\n")
                                  'module))))
                            (xk7516
                             (begin
                               (write '(funapp 3209 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3209 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8894
                              (begin
                                (write '(funapp 3212 27))
                                (display "\n")
                                ((lambda (j7518 k7519 f7520)
                                   (letrec*
                                    ((g8895
                                      (lambda (g7517)
                                        (letrec*
                                         ((g8896
                                           (letrec*
                                            ((x8897
                                              (letrec*
                                               ((x8898
                                                 (begin
                                                   (write '(funapp 3221 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7518
                                                    k7519
                                                    g7517))))
                                               (begin
                                                 (write '(funapp 3222 42))
                                                 (display "\n")
                                                 (f7520 x8898)))))
                                            (begin
                                              (write '(funapp 3223 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7518
                                               k7519
                                               x8897)))))
                                         g8896))))
                                    g8895))
                                 xj7515
                                 xk7516
                                 blocks-overflow?))))
                            g8894)))
                         (x8892 (input)))
                        (begin
                          (write '(funapp 3231 21))
                          (display "\n")
                          (x8893 x8892)))
                       (letrec*
                        ((x8902
                          (letrec*
                           ((xj7521
                             (begin
                               (write '(funapp 3235 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3235 37))
                                  (display "\n")
                                  'module))))
                            (xk7522
                             (begin
                               (write '(funapp 3235 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3235 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8903
                              (begin
                                (write '(funapp 3238 27))
                                (display "\n")
                                ((lambda (j7526 k7527 f7528)
                                   (letrec*
                                    ((g8904
                                      (lambda (g7523 g7524 g7525)
                                        (letrec*
                                         ((g8905
                                           (letrec*
                                            ((x8906
                                              (letrec*
                                               ((x8909
                                                 (begin
                                                   (write '(funapp 3247 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7526
                                                    k7527
                                                    g7523)))
                                                (x8908
                                                 (begin
                                                   (write '(funapp 3248 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7526
                                                    k7527
                                                    g7524)))
                                                (x8907
                                                 (begin
                                                   (write '(funapp 3249 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7526
                                                    k7527
                                                    g7525))))
                                               (begin
                                                 (write '(funapp 3250 42))
                                                 (display "\n")
                                                 (f7528 x8909 x8908 x8907)))))
                                            (begin
                                              (write '(funapp 3251 39))
                                              (display "\n")
                                              (BSET/C j7526 k7527 x8906)))))
                                         g8905))))
                                    g8904))
                                 xj7521
                                 xk7522
                                 blocks-move))))
                            g8903)))
                         (x8901 (input))
                         (x8900 (input))
                         (x8899 (input)))
                        (begin
                          (write '(funapp 3261 21))
                          (display "\n")
                          (x8902 x8901 x8900 x8899)))
                       (letrec*
                        ((x8916
                          (letrec*
                           ((xj7529
                             (begin
                               (write '(funapp 3265 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3265 37))
                                  (display "\n")
                                  'module))))
                            (xk7530
                             (begin
                               (write '(funapp 3265 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3265 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8917
                              (begin
                                (write '(funapp 3268 27))
                                (display "\n")
                                ((lambda (j7533 k7534 f7535)
                                   (letrec*
                                    ((g8918
                                      (lambda (g7531 g7532)
                                        (letrec*
                                         ((g8919
                                           (letrec*
                                            ((x8920
                                              (letrec*
                                               ((x8922
                                                 (begin
                                                   (write '(funapp 3277 50))
                                                   (display "\n")
                                                   (POSN/C j7533 k7534 g7531)))
                                                (x8921
                                                 (begin
                                                   (write '(funapp 3278 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7533
                                                    k7534
                                                    g7532))))
                                               (begin
                                                 (write '(funapp 3279 42))
                                                 (display "\n")
                                                 (f7535 x8922 x8921)))))
                                            (begin
                                              (write '(funapp 3280 39))
                                              (display "\n")
                                              (BSET/C j7533 k7534 x8920)))))
                                         g8919))))
                                    g8918))
                                 xj7529
                                 xk7530
                                 blocks-rotate-cw))))
                            g8917)))
                         (x8911
                          (letrec*
                           ((x8912
                             (letrec*
                              ((x8915 (input))
                               (x8913
                                (letrec*
                                 ((x8914 (input)))
                                 (begin
                                   (write '(funapp 3293 56))
                                   (display "\n")
                                   (cons
                                    x8914
                                    (begin
                                      (write '(funapp 3293 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3294 27))
                                (display "\n")
                                (cons x8915 x8913)))))
                           (begin
                             (write '(funapp 3295 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3295 29))
                                (display "\n")
                                'posn)
                              x8912))))
                         (x8910 (input)))
                        (begin
                          (write '(funapp 3297 21))
                          (display "\n")
                          (x8916 x8911 x8910)))
                       (letrec*
                        ((x8929
                          (letrec*
                           ((xj7536
                             (begin
                               (write '(funapp 3301 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3301 37))
                                  (display "\n")
                                  'module))))
                            (xk7537
                             (begin
                               (write '(funapp 3301 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3301 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8930
                              (begin
                                (write '(funapp 3304 27))
                                (display "\n")
                                ((lambda (j7540 k7541 f7542)
                                   (letrec*
                                    ((g8931
                                      (lambda (g7538 g7539)
                                        (letrec*
                                         ((g8932
                                           (letrec*
                                            ((x8933
                                              (letrec*
                                               ((x8935
                                                 (begin
                                                   (write '(funapp 3313 50))
                                                   (display "\n")
                                                   (POSN/C j7540 k7541 g7538)))
                                                (x8934
                                                 (begin
                                                   (write '(funapp 3314 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7540
                                                    k7541
                                                    g7539))))
                                               (begin
                                                 (write '(funapp 3315 42))
                                                 (display "\n")
                                                 (f7542 x8935 x8934)))))
                                            (begin
                                              (write '(funapp 3316 39))
                                              (display "\n")
                                              (BSET/C j7540 k7541 x8933)))))
                                         g8932))))
                                    g8931))
                                 xj7536
                                 xk7537
                                 blocks-rotate-ccw))))
                            g8930)))
                         (x8924
                          (letrec*
                           ((x8925
                             (letrec*
                              ((x8928 (input))
                               (x8926
                                (letrec*
                                 ((x8927 (input)))
                                 (begin
                                   (write '(funapp 3329 56))
                                   (display "\n")
                                   (cons
                                    x8927
                                    (begin
                                      (write '(funapp 3329 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3330 27))
                                (display "\n")
                                (cons x8928 x8926)))))
                           (begin
                             (write '(funapp 3331 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3331 29))
                                (display "\n")
                                'posn)
                              x8925))))
                         (x8923 (input)))
                        (begin
                          (write '(funapp 3333 21))
                          (display "\n")
                          (x8929 x8924 x8923)))
                       (letrec*
                        ((x8938
                          (letrec*
                           ((xj7543
                             (begin
                               (write '(funapp 3337 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3337 37))
                                  (display "\n")
                                  'module))))
                            (xk7544
                             (begin
                               (write '(funapp 3337 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3337 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8939
                              (begin
                                (write '(funapp 3340 27))
                                (display "\n")
                                ((lambda (j7547 k7548 f7549)
                                   (letrec*
                                    ((g8940
                                      (lambda (g7545 g7546)
                                        (letrec*
                                         ((g8941
                                           (letrec*
                                            ((x8942
                                              (letrec*
                                               ((x8944
                                                 (begin
                                                   (write '(funapp 3349 50))
                                                   (display "\n")
                                                   (BSET/C j7547 k7548 g7545)))
                                                (x8943
                                                 (begin
                                                   (write '(funapp 3350 50))
                                                   (display "\n")
                                                   (COLOR/C
                                                    j7547
                                                    k7548
                                                    g7546))))
                                               (begin
                                                 (write '(funapp 3351 42))
                                                 (display "\n")
                                                 (f7549 x8944 x8943)))))
                                            (begin
                                              (write '(funapp 3352 39))
                                              (display "\n")
                                              (BSET/C j7547 k7548 x8942)))))
                                         g8941))))
                                    g8940))
                                 xj7543
                                 xk7544
                                 blocks-change-color))))
                            g8939)))
                         (x8937 (input))
                         (x8936 (input)))
                        (begin
                          (write '(funapp 3361 21))
                          (display "\n")
                          (x8938 x8937 x8936)))
                       (letrec*
                        ((x8947
                          (letrec*
                           ((xj7550
                             (begin
                               (write '(funapp 3365 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3365 37))
                                  (display "\n")
                                  'module))))
                            (xk7551
                             (begin
                               (write '(funapp 3365 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3365 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8948
                              (begin
                                (write '(funapp 3368 27))
                                (display "\n")
                                ((lambda (j7554 k7555 f7556)
                                   (letrec*
                                    ((g8949
                                      (lambda (g7552 g7553)
                                        (letrec*
                                         ((g8950
                                           (letrec*
                                            ((x8951
                                              (letrec*
                                               ((x8953
                                                 (begin
                                                   (write '(funapp 3377 50))
                                                   (display "\n")
                                                   (BSET/C j7554 k7555 g7552)))
                                                (x8952
                                                 (begin
                                                   (write '(funapp 3378 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7554
                                                    k7555
                                                    g7553))))
                                               (begin
                                                 (write '(funapp 3379 42))
                                                 (display "\n")
                                                 (f7556 x8953 x8952)))))
                                            (begin
                                              (write '(funapp 3380 39))
                                              (display "\n")
                                              (BSET/C j7554 k7555 x8951)))))
                                         g8950))))
                                    g8949))
                                 xj7550
                                 xk7551
                                 blocks-row))))
                            g8948)))
                         (x8946 (input))
                         (x8945 (input)))
                        (begin
                          (write '(funapp 3389 21))
                          (display "\n")
                          (x8947 x8946 x8945)))
                       (letrec*
                        ((x8956
                          (letrec*
                           ((xj7557
                             (begin
                               (write '(funapp 3393 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3393 37))
                                  (display "\n")
                                  'module))))
                            (xk7558
                             (begin
                               (write '(funapp 3393 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3393 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8957
                              (begin
                                (write '(funapp 3396 27))
                                (display "\n")
                                ((lambda (j7561 k7562 f7563)
                                   (letrec*
                                    ((g8958
                                      (lambda (g7559 g7560)
                                        (letrec*
                                         ((g8959
                                           (letrec*
                                            ((x8960
                                              (letrec*
                                               ((x8962
                                                 (begin
                                                   (write '(funapp 3405 50))
                                                   (display "\n")
                                                   (BSET/C j7561 k7562 g7559)))
                                                (x8961
                                                 (begin
                                                   (write '(funapp 3406 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7561
                                                    k7562
                                                    g7560))))
                                               (begin
                                                 (write '(funapp 3407 42))
                                                 (display "\n")
                                                 (f7563 x8962 x8961)))))
                                            (begin
                                              (write '(funapp 3408 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7561
                                               k7562
                                               x8960)))))
                                         g8959))))
                                    g8958))
                                 xj7557
                                 xk7558
                                 full-row?))))
                            g8957)))
                         (x8955 (input))
                         (x8954 (input)))
                        (begin
                          (write '(funapp 3417 21))
                          (display "\n")
                          (x8956 x8955 x8954)))
                       (letrec*
                        ((x8965
                          (letrec*
                           ((xj7564
                             (begin
                               (write '(funapp 3421 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3421 37))
                                  (display "\n")
                                  'module))))
                            (xk7565
                             (begin
                               (write '(funapp 3421 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3421 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8966
                              (begin
                                (write '(funapp 3424 27))
                                (display "\n")
                                ((lambda (j7568 k7569 f7570)
                                   (letrec*
                                    ((g8967
                                      (lambda (g7566 g7567)
                                        (letrec*
                                         ((g8968
                                           (letrec*
                                            ((x8969
                                              (letrec*
                                               ((x8971
                                                 (begin
                                                   (write '(funapp 3433 50))
                                                   (display "\n")
                                                   (BSET/C j7568 k7569 g7566)))
                                                (x8970
                                                 (begin
                                                   (write '(funapp 3434 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7568
                                                    k7569
                                                    g7567))))
                                               (begin
                                                 (write '(funapp 3435 42))
                                                 (display "\n")
                                                 (f7570 x8971 x8970)))))
                                            (begin
                                              (write '(funapp 3436 39))
                                              (display "\n")
                                              (BSET/C j7568 k7569 x8969)))))
                                         g8968))))
                                    g8967))
                                 xj7564
                                 xk7565
                                 blocks-union))))
                            g8966)))
                         (x8964 (input))
                         (x8963 (input)))
                        (begin
                          (write '(funapp 3445 21))
                          (display "\n")
                          (x8965 x8964 x8963)))
                       (letrec*
                        ((x8973
                          (letrec*
                           ((xj7571
                             (begin
                               (write '(funapp 3449 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3449 37))
                                  (display "\n")
                                  'module))))
                            (xk7572
                             (begin
                               (write '(funapp 3449 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3449 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8974
                              (begin
                                (write '(funapp 3452 27))
                                (display "\n")
                                ((lambda (j7574 k7575 f7576)
                                   (letrec*
                                    ((g8975
                                      (lambda (g7573)
                                        (letrec*
                                         ((g8976
                                           (letrec*
                                            ((x8977
                                              (letrec*
                                               ((x8978
                                                 (begin
                                                   (write '(funapp 3461 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7574
                                                    k7575
                                                    g7573))))
                                               (begin
                                                 (write '(funapp 3462 42))
                                                 (display "\n")
                                                 (f7576 x8978)))))
                                            (begin
                                              (write '(funapp 3463 39))
                                              (display "\n")
                                              (real?/c j7574 k7575 x8977)))))
                                         g8976))))
                                    g8975))
                                 xj7571
                                 xk7572
                                 blocks-max-x))))
                            g8974)))
                         (x8972 (input)))
                        (begin
                          (write '(funapp 3471 21))
                          (display "\n")
                          (x8973 x8972)))
                       (letrec*
                        ((x8980
                          (letrec*
                           ((xj7577
                             (begin
                               (write '(funapp 3475 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3475 37))
                                  (display "\n")
                                  'module))))
                            (xk7578
                             (begin
                               (write '(funapp 3475 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3475 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8981
                              (begin
                                (write '(funapp 3478 27))
                                (display "\n")
                                ((lambda (j7580 k7581 f7582)
                                   (letrec*
                                    ((g8982
                                      (lambda (g7579)
                                        (letrec*
                                         ((g8983
                                           (letrec*
                                            ((x8984
                                              (letrec*
                                               ((x8985
                                                 (begin
                                                   (write '(funapp 3487 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7580
                                                    k7581
                                                    g7579))))
                                               (begin
                                                 (write '(funapp 3488 42))
                                                 (display "\n")
                                                 (f7582 x8985)))))
                                            (begin
                                              (write '(funapp 3489 39))
                                              (display "\n")
                                              (real?/c j7580 k7581 x8984)))))
                                         g8983))))
                                    g8982))
                                 xj7577
                                 xk7578
                                 blocks-min-x))))
                            g8981)))
                         (x8979 (input)))
                        (begin
                          (write '(funapp 3497 21))
                          (display "\n")
                          (x8980 x8979)))
                       (letrec*
                        ((x8987
                          (letrec*
                           ((xj7583
                             (begin
                               (write '(funapp 3501 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3501 37))
                                  (display "\n")
                                  'module))))
                            (xk7584
                             (begin
                               (write '(funapp 3501 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3501 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8988
                              (begin
                                (write '(funapp 3504 27))
                                (display "\n")
                                ((lambda (j7586 k7587 f7588)
                                   (letrec*
                                    ((g8989
                                      (lambda (g7585)
                                        (letrec*
                                         ((g8990
                                           (letrec*
                                            ((x8991
                                              (letrec*
                                               ((x8992
                                                 (begin
                                                   (write '(funapp 3513 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7586
                                                    k7587
                                                    g7585))))
                                               (begin
                                                 (write '(funapp 3514 42))
                                                 (display "\n")
                                                 (f7588 x8992)))))
                                            (begin
                                              (write '(funapp 3515 39))
                                              (display "\n")
                                              (real?/c j7586 k7587 x8991)))))
                                         g8990))))
                                    g8989))
                                 xj7583
                                 xk7584
                                 blocks-max-y))))
                            g8988)))
                         (x8986 (input)))
                        (begin
                          (write '(funapp 3523 21))
                          (display "\n")
                          (x8987 x8986)))
                       (letrec*
                        ((x8994
                          (letrec*
                           ((xj7589
                             (begin
                               (write '(funapp 3527 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3527 37))
                                  (display "\n")
                                  'module))))
                            (xk7590
                             (begin
                               (write '(funapp 3527 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3527 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8995
                              (begin
                                (write '(funapp 3530 27))
                                (display "\n")
                                ((lambda (j7592 k7593 f7594)
                                   (letrec*
                                    ((g8996
                                      (lambda (g7591)
                                        (letrec*
                                         ((g8997
                                           (letrec*
                                            ((x8998
                                              (letrec*
                                               ((x8999
                                                 (begin
                                                   (write '(funapp 3539 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7592
                                                    k7593
                                                    g7591))))
                                               (begin
                                                 (write '(funapp 3540 42))
                                                 (display "\n")
                                                 (f7594 x8999)))))
                                            (begin
                                              (write '(funapp 3541 39))
                                              (display "\n")
                                              (BSET/C j7592 k7593 x8998)))))
                                         g8997))))
                                    g8996))
                                 xj7589
                                 xk7590
                                 eliminate-full-rows))))
                            g8995)))
                         (x8993 (input)))
                        (begin
                          (write '(funapp 3549 21))
                          (display "\n")
                          (x8994 x8993)))
                       (letrec*
                        ((x9011
                          (letrec*
                           ((xj7595
                             (begin
                               (write '(funapp 3553 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3553 37))
                                  (display "\n")
                                  'module))))
                            (xk7596
                             (begin
                               (write '(funapp 3553 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3553 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9012
                              (begin
                                (write '(funapp 3556 27))
                                (display "\n")
                                ((lambda (j7600 k7601 f7602)
                                   (letrec*
                                    ((g9013
                                      (lambda (g7597 g7598 g7599)
                                        (letrec*
                                         ((g9014
                                           (letrec*
                                            ((x9015
                                              (letrec*
                                               ((x9018
                                                 (begin
                                                   (write '(funapp 3566 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7600
                                                    k7601
                                                    g7597)))
                                                (x9017
                                                 (begin
                                                   (write '(funapp 3568 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7600
                                                    k7601
                                                    g7598)))
                                                (x9016
                                                 (begin
                                                   (write '(funapp 3569 50))
                                                   (display "\n")
                                                   (TETRA/C
                                                    j7600
                                                    k7601
                                                    g7599))))
                                               (begin
                                                 (write '(funapp 3570 42))
                                                 (display "\n")
                                                 (f7602 x9018 x9017 x9016)))))
                                            (begin
                                              (write '(funapp 3571 39))
                                              (display "\n")
                                              (TETRA/C j7600 k7601 x9015)))))
                                         g9014))))
                                    g9013))
                                 xj7595
                                 xk7596
                                 tetra-move))))
                            g9012)))
                         (x9010 (input))
                         (x9009 (input))
                         (x9000
                          (letrec*
                           ((x9001
                             (letrec*
                              ((x9004
                                (letrec*
                                 ((x9005
                                   (letrec*
                                    ((x9008 (input))
                                     (x9006
                                      (letrec*
                                       ((x9007 (input)))
                                       (begin
                                         (write '(funapp 3592 36))
                                         (display "\n")
                                         (cons
                                          x9007
                                          (begin
                                            (write '(funapp 3592 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3593 33))
                                      (display "\n")
                                      (cons x9008 x9006)))))
                                 (begin
                                   (write '(funapp 3594 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3594 35))
                                      (display "\n")
                                      'posn)
                                    x9005))))
                               (x9002
                                (letrec*
                                 ((x9003 (input)))
                                 (begin
                                   (write '(funapp 3596 56))
                                   (display "\n")
                                   (cons
                                    x9003
                                    (begin
                                      (write '(funapp 3596 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3597 27))
                                (display "\n")
                                (cons x9004 x9002)))))
                           (begin
                             (write '(funapp 3598 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3598 29))
                                (display "\n")
                                'tetra)
                              x9001)))))
                        (begin
                          (write '(funapp 3599 21))
                          (display "\n")
                          (x9011 x9010 x9009 x9000)))
                       (letrec*
                        ((x9028
                          (letrec*
                           ((xj7603
                             (begin
                               (write '(funapp 3603 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3603 37))
                                  (display "\n")
                                  'module))))
                            (xk7604
                             (begin
                               (write '(funapp 3603 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3603 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9029
                              (begin
                                (write '(funapp 3606 27))
                                (display "\n")
                                ((lambda (j7606 k7607 f7608)
                                   (letrec*
                                    ((g9030
                                      (lambda (g7605)
                                        (letrec*
                                         ((g9031
                                           (letrec*
                                            ((x9032
                                              (letrec*
                                               ((x9033
                                                 (begin
                                                   (write '(funapp 3615 50))
                                                   (display "\n")
                                                   (TETRA/C
                                                    j7606
                                                    k7607
                                                    g7605))))
                                               (begin
                                                 (write '(funapp 3616 42))
                                                 (display "\n")
                                                 (f7608 x9033)))))
                                            (begin
                                              (write '(funapp 3617 39))
                                              (display "\n")
                                              (TETRA/C j7606 k7607 x9032)))))
                                         g9031))))
                                    g9030))
                                 xj7603
                                 xk7604
                                 tetra-rotate-ccw))))
                            g9029)))
                         (x9019
                          (letrec*
                           ((x9020
                             (letrec*
                              ((x9023
                                (letrec*
                                 ((x9024
                                   (letrec*
                                    ((x9027 (input))
                                     (x9025
                                      (letrec*
                                       ((x9026 (input)))
                                       (begin
                                         (write '(funapp 3636 36))
                                         (display "\n")
                                         (cons
                                          x9026
                                          (begin
                                            (write '(funapp 3636 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3637 33))
                                      (display "\n")
                                      (cons x9027 x9025)))))
                                 (begin
                                   (write '(funapp 3638 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3638 35))
                                      (display "\n")
                                      'posn)
                                    x9024))))
                               (x9021
                                (letrec*
                                 ((x9022 (input)))
                                 (begin
                                   (write '(funapp 3640 56))
                                   (display "\n")
                                   (cons
                                    x9022
                                    (begin
                                      (write '(funapp 3640 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3641 27))
                                (display "\n")
                                (cons x9023 x9021)))))
                           (begin
                             (write '(funapp 3642 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3642 29))
                                (display "\n")
                                'tetra)
                              x9020)))))
                        (begin
                          (write '(funapp 3643 21))
                          (display "\n")
                          (x9028 x9019)))
                       (letrec*
                        ((x9043
                          (letrec*
                           ((xj7609
                             (begin
                               (write '(funapp 3647 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3647 37))
                                  (display "\n")
                                  'module))))
                            (xk7610
                             (begin
                               (write '(funapp 3647 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3647 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9044
                              (begin
                                (write '(funapp 3650 27))
                                (display "\n")
                                ((lambda (j7612 k7613 f7614)
                                   (letrec*
                                    ((g9045
                                      (lambda (g7611)
                                        (letrec*
                                         ((g9046
                                           (letrec*
                                            ((x9047
                                              (letrec*
                                               ((x9048
                                                 (begin
                                                   (write '(funapp 3659 50))
                                                   (display "\n")
                                                   (TETRA/C
                                                    j7612
                                                    k7613
                                                    g7611))))
                                               (begin
                                                 (write '(funapp 3660 42))
                                                 (display "\n")
                                                 (f7614 x9048)))))
                                            (begin
                                              (write '(funapp 3661 39))
                                              (display "\n")
                                              (TETRA/C j7612 k7613 x9047)))))
                                         g9046))))
                                    g9045))
                                 xj7609
                                 xk7610
                                 tetra-rotate-cw))))
                            g9044)))
                         (x9034
                          (letrec*
                           ((x9035
                             (letrec*
                              ((x9038
                                (letrec*
                                 ((x9039
                                   (letrec*
                                    ((x9042 (input))
                                     (x9040
                                      (letrec*
                                       ((x9041 (input)))
                                       (begin
                                         (write '(funapp 3680 36))
                                         (display "\n")
                                         (cons
                                          x9041
                                          (begin
                                            (write '(funapp 3680 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3681 33))
                                      (display "\n")
                                      (cons x9042 x9040)))))
                                 (begin
                                   (write '(funapp 3682 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3682 35))
                                      (display "\n")
                                      'posn)
                                    x9039))))
                               (x9036
                                (letrec*
                                 ((x9037 (input)))
                                 (begin
                                   (write '(funapp 3684 56))
                                   (display "\n")
                                   (cons
                                    x9037
                                    (begin
                                      (write '(funapp 3684 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3685 27))
                                (display "\n")
                                (cons x9038 x9036)))))
                           (begin
                             (write '(funapp 3686 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3686 29))
                                (display "\n")
                                'tetra)
                              x9035)))))
                        (begin
                          (write '(funapp 3687 21))
                          (display "\n")
                          (x9043 x9034)))
                       (letrec*
                        ((x9059
                          (letrec*
                           ((xj7615
                             (begin
                               (write '(funapp 3691 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3691 37))
                                  (display "\n")
                                  'module))))
                            (xk7616
                             (begin
                               (write '(funapp 3691 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3691 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9060
                              (begin
                                (write '(funapp 3694 27))
                                (display "\n")
                                ((lambda (j7619 k7620 f7621)
                                   (letrec*
                                    ((g9061
                                      (lambda (g7617 g7618)
                                        (letrec*
                                         ((g9062
                                           (letrec*
                                            ((x9063
                                              (letrec*
                                               ((x9065
                                                 (begin
                                                   (write '(funapp 3703 50))
                                                   (display "\n")
                                                   (TETRA/C
                                                    j7619
                                                    k7620
                                                    g7617)))
                                                (x9064
                                                 (begin
                                                   (write '(funapp 3704 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7619
                                                    k7620
                                                    g7618))))
                                               (begin
                                                 (write '(funapp 3705 42))
                                                 (display "\n")
                                                 (f7621 x9065 x9064)))))
                                            (begin
                                              (write '(funapp 3706 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7619
                                               k7620
                                               x9063)))))
                                         g9062))))
                                    g9061))
                                 xj7615
                                 xk7616
                                 tetra-overlaps-blocks?))))
                            g9060)))
                         (x9050
                          (letrec*
                           ((x9051
                             (letrec*
                              ((x9054
                                (letrec*
                                 ((x9055
                                   (letrec*
                                    ((x9058 (input))
                                     (x9056
                                      (letrec*
                                       ((x9057 (input)))
                                       (begin
                                         (write '(funapp 3725 36))
                                         (display "\n")
                                         (cons
                                          x9057
                                          (begin
                                            (write '(funapp 3725 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3726 33))
                                      (display "\n")
                                      (cons x9058 x9056)))))
                                 (begin
                                   (write '(funapp 3727 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3727 35))
                                      (display "\n")
                                      'posn)
                                    x9055))))
                               (x9052
                                (letrec*
                                 ((x9053 (input)))
                                 (begin
                                   (write '(funapp 3729 56))
                                   (display "\n")
                                   (cons
                                    x9053
                                    (begin
                                      (write '(funapp 3729 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3730 27))
                                (display "\n")
                                (cons x9054 x9052)))))
                           (begin
                             (write '(funapp 3731 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3731 29))
                                (display "\n")
                                'tetra)
                              x9051))))
                         (x9049 (input)))
                        (begin
                          (write '(funapp 3733 21))
                          (display "\n")
                          (x9059 x9050 x9049)))
                       (letrec*
                        ((x9077
                          (letrec*
                           ((xj7622
                             (begin
                               (write '(funapp 3737 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3737 37))
                                  (display "\n")
                                  'module))))
                            (xk7623
                             (begin
                               (write '(funapp 3737 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3737 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9078
                              (begin
                                (write '(funapp 3740 27))
                                (display "\n")
                                ((lambda (j7635 k7636 f7637)
                                   (letrec*
                                    ((g9079
                                      (lambda (g7624
                                               g7625
                                               g7626
                                               g7627
                                               g7628
                                               g7629
                                               g7630
                                               g7631
                                               g7632
                                               g7633
                                               g7634)
                                        (letrec*
                                         ((g9080
                                           (letrec*
                                            ((x9081
                                              (letrec*
                                               ((x9092
                                                 (begin
                                                   (write '(funapp 3759 50))
                                                   (display "\n")
                                                   (COLOR/C
                                                    j7635
                                                    k7636
                                                    g7624)))
                                                (x9091
                                                 (begin
                                                   (write '(funapp 3760 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7635
                                                    k7636
                                                    g7625)))
                                                (x9090
                                                 (begin
                                                   (write '(funapp 3761 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7635
                                                    k7636
                                                    g7626)))
                                                (x9089
                                                 (begin
                                                   (write '(funapp 3763 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7635
                                                    k7636
                                                    g7627)))
                                                (x9088
                                                 (begin
                                                   (write '(funapp 3765 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7635
                                                    k7636
                                                    g7628)))
                                                (x9087
                                                 (begin
                                                   (write '(funapp 3767 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7635
                                                    k7636
                                                    g7629)))
                                                (x9086
                                                 (begin
                                                   (write '(funapp 3769 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7635
                                                    k7636
                                                    g7630)))
                                                (x9085
                                                 (begin
                                                   (write '(funapp 3771 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7635
                                                    k7636
                                                    g7631)))
                                                (x9084
                                                 (begin
                                                   (write '(funapp 3773 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7635
                                                    k7636
                                                    g7632)))
                                                (x9083
                                                 (begin
                                                   (write '(funapp 3775 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7635
                                                    k7636
                                                    g7633)))
                                                (x9082
                                                 (begin
                                                   (write '(funapp 3777 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7635
                                                    k7636
                                                    g7634))))
                                               (begin
                                                 (write '(funapp 3778 42))
                                                 (display "\n")
                                                 (f7637
                                                  x9092
                                                  x9091
                                                  x9090
                                                  x9089
                                                  x9088
                                                  x9087
                                                  x9086
                                                  x9085
                                                  x9084
                                                  x9083
                                                  x9082)))))
                                            (begin
                                              (write '(funapp 3790 39))
                                              (display "\n")
                                              (TETRA/C j7635 k7636 x9081)))))
                                         g9080))))
                                    g9079))
                                 xj7622
                                 xk7623
                                 build-tetra-blocks))))
                            g9078)))
                         (x9076 (input))
                         (x9075 (input))
                         (x9074 (input))
                         (x9073 (input))
                         (x9072 (input))
                         (x9071 (input))
                         (x9070 (input))
                         (x9069 (input))
                         (x9068 (input))
                         (x9067 (input))
                         (x9066 (input)))
                        (begin
                          (write '(funapp 3808 21))
                          (display "\n")
                          (x9077
                           x9076
                           x9075
                           x9074
                           x9073
                           x9072
                           x9071
                           x9070
                           x9069
                           x9068
                           x9067
                           x9066)))
                       (letrec*
                        ((x9103
                          (letrec*
                           ((xj7638
                             (begin
                               (write '(funapp 3823 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3823 37))
                                  (display "\n")
                                  'module))))
                            (xk7639
                             (begin
                               (write '(funapp 3823 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3823 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9104
                              (begin
                                (write '(funapp 3826 27))
                                (display "\n")
                                ((lambda (j7642 k7643 f7644)
                                   (letrec*
                                    ((g9105
                                      (lambda (g7640 g7641)
                                        (letrec*
                                         ((g9106
                                           (letrec*
                                            ((x9107
                                              (letrec*
                                               ((x9109
                                                 (begin
                                                   (write '(funapp 3835 50))
                                                   (display "\n")
                                                   (TETRA/C
                                                    j7642
                                                    k7643
                                                    g7640)))
                                                (x9108
                                                 (begin
                                                   (write '(funapp 3836 50))
                                                   (display "\n")
                                                   (COLOR/C
                                                    j7642
                                                    k7643
                                                    g7641))))
                                               (begin
                                                 (write '(funapp 3837 42))
                                                 (display "\n")
                                                 (f7644 x9109 x9108)))))
                                            (begin
                                              (write '(funapp 3838 39))
                                              (display "\n")
                                              (TETRA/C j7642 k7643 x9107)))))
                                         g9106))))
                                    g9105))
                                 xj7638
                                 xk7639
                                 tetra-change-color))))
                            g9104)))
                         (x9094
                          (letrec*
                           ((x9095
                             (letrec*
                              ((x9098
                                (letrec*
                                 ((x9099
                                   (letrec*
                                    ((x9102 (input))
                                     (x9100
                                      (letrec*
                                       ((x9101 (input)))
                                       (begin
                                         (write '(funapp 3857 36))
                                         (display "\n")
                                         (cons
                                          x9101
                                          (begin
                                            (write '(funapp 3857 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3858 33))
                                      (display "\n")
                                      (cons x9102 x9100)))))
                                 (begin
                                   (write '(funapp 3859 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3859 35))
                                      (display "\n")
                                      'posn)
                                    x9099))))
                               (x9096
                                (letrec*
                                 ((x9097 (input)))
                                 (begin
                                   (write '(funapp 3861 56))
                                   (display "\n")
                                   (cons
                                    x9097
                                    (begin
                                      (write '(funapp 3861 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3862 27))
                                (display "\n")
                                (cons x9098 x9096)))))
                           (begin
                             (write '(funapp 3863 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3863 29))
                                (display "\n")
                                'tetra)
                              x9095))))
                         (x9093 (input)))
                        (begin
                          (write '(funapp 3865 21))
                          (display "\n")
                          (x9103 x9094 x9093)))
                       (letrec*
                        ((x9124
                          (letrec*
                           ((xj7645
                             (begin
                               (write '(funapp 3869 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3869 37))
                                  (display "\n")
                                  'module))))
                            (xk7646
                             (begin
                               (write '(funapp 3869 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3869 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9125
                              (begin
                                (write '(funapp 3872 27))
                                (display "\n")
                                ((lambda (j7649 k7650 f7651)
                                   (letrec*
                                    ((g9126
                                      (lambda (g7647 g7648)
                                        (letrec*
                                         ((g9127
                                           (letrec*
                                            ((x9128
                                              (letrec*
                                               ((x9130
                                                 (begin
                                                   (write '(funapp 3881 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7649
                                                    k7650
                                                    g7647)))
                                                (x9129
                                                 (begin
                                                   (write '(funapp 3883 44))
                                                   (display "\n")
                                                   (string?/c
                                                    j7649
                                                    k7650
                                                    g7648))))
                                               (begin
                                                 (write '(funapp 3884 42))
                                                 (display "\n")
                                                 (f7651 x9130 x9129)))))
                                            (begin
                                              (write '(funapp 3885 39))
                                              (display "\n")
                                              (WORLD/C j7649 k7650 x9128)))))
                                         g9127))))
                                    g9126))
                                 xj7645
                                 xk7646
                                 world-key-move))))
                            g9125)))
                         (x9111
                          (letrec*
                           ((x9112
                             (letrec*
                              ((x9115
                                (letrec*
                                 ((x9116
                                   (letrec*
                                    ((x9119
                                      (letrec*
                                       ((x9120
                                         (letrec*
                                          ((x9123 (input))
                                           (x9121
                                            (letrec*
                                             ((x9122 (input)))
                                             (begin
                                               (write '(funapp 3908 42))
                                               (display "\n")
                                               (cons
                                                x9122
                                                (begin
                                                  (write '(funapp 3908 53))
                                                  (display "\n")
                                                  '()))))))
                                          (begin
                                            (write '(funapp 3909 39))
                                            (display "\n")
                                            (cons x9123 x9121)))))
                                       (begin
                                         (write '(funapp 3910 36))
                                         (display "\n")
                                         (cons
                                          (begin
                                            (write '(funapp 3910 41))
                                            (display "\n")
                                            'posn)
                                          x9120))))
                                     (x9117
                                      (letrec*
                                       ((x9118 (input)))
                                       (begin
                                         (write '(funapp 3914 36))
                                         (display "\n")
                                         (cons
                                          x9118
                                          (begin
                                            (write '(funapp 3914 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3915 33))
                                      (display "\n")
                                      (cons x9119 x9117)))))
                                 (begin
                                   (write '(funapp 3916 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3916 35))
                                      (display "\n")
                                      'tetra)
                                    x9116))))
                               (x9113
                                (letrec*
                                 ((x9114 (input)))
                                 (begin
                                   (write '(funapp 3918 56))
                                   (display "\n")
                                   (cons
                                    x9114
                                    (begin
                                      (write '(funapp 3918 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3919 27))
                                (display "\n")
                                (cons x9115 x9113)))))
                           (begin
                             (write '(funapp 3920 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3920 29))
                                (display "\n")
                                'world)
                              x9112))))
                         (x9110 (input)))
                        (begin
                          (write '(funapp 3922 21))
                          (display "\n")
                          (x9124 x9111 x9110)))
                       (letrec*
                        ((x9145
                          (letrec*
                           ((xj7652
                             (begin
                               (write '(funapp 3926 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3926 37))
                                  (display "\n")
                                  'module))))
                            (xk7653
                             (begin
                               (write '(funapp 3926 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3926 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9146
                              (begin
                                (write '(funapp 3929 27))
                                (display "\n")
                                ((lambda (j7656 k7657 f7658)
                                   (letrec*
                                    ((g9147
                                      (lambda (g7654 g7655)
                                        (letrec*
                                         ((g9148
                                           (letrec*
                                            ((x9149
                                              (letrec*
                                               ((x9153
                                                 (begin
                                                   (write '(funapp 3938 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7656
                                                    k7657
                                                    g7654)))
                                                (x9150
                                                 (letrec*
                                                  ((x9151
                                                    (letrec*
                                                     ((x9152
                                                       (begin
                                                         (write
                                                          '(funapp 3943 56))
                                                         (display "\n")
                                                         (listof TETRA/C))))
                                                     (begin
                                                       (write
                                                        '(funapp 3944 48))
                                                       (display "\n")
                                                       (and/c
                                                        cons?/c
                                                        x9152)))))
                                                  (begin
                                                    (write '(funapp 3945 45))
                                                    (display "\n")
                                                    (x9151
                                                     j7656
                                                     k7657
                                                     g7655)))))
                                               (begin
                                                 (write '(funapp 3946 42))
                                                 (display "\n")
                                                 (f7658 x9153 x9150)))))
                                            (begin
                                              (write '(funapp 3947 39))
                                              (display "\n")
                                              (WORLD/C j7656 k7657 x9149)))))
                                         g9148))))
                                    g9147))
                                 xj7652
                                 xk7653
                                 next-world))))
                            g9146)))
                         (x9132
                          (letrec*
                           ((x9133
                             (letrec*
                              ((x9136
                                (letrec*
                                 ((x9137
                                   (letrec*
                                    ((x9140
                                      (letrec*
                                       ((x9141
                                         (letrec*
                                          ((x9144 (input))
                                           (x9142
                                            (letrec*
                                             ((x9143 (input)))
                                             (begin
                                               (write '(funapp 3970 42))
                                               (display "\n")
                                               (cons
                                                x9143
                                                (begin
                                                  (write '(funapp 3970 53))
                                                  (display "\n")
                                                  '()))))))
                                          (begin
                                            (write '(funapp 3971 39))
                                            (display "\n")
                                            (cons x9144 x9142)))))
                                       (begin
                                         (write '(funapp 3972 36))
                                         (display "\n")
                                         (cons
                                          (begin
                                            (write '(funapp 3972 41))
                                            (display "\n")
                                            'posn)
                                          x9141))))
                                     (x9138
                                      (letrec*
                                       ((x9139 (input)))
                                       (begin
                                         (write '(funapp 3976 36))
                                         (display "\n")
                                         (cons
                                          x9139
                                          (begin
                                            (write '(funapp 3976 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3977 33))
                                      (display "\n")
                                      (cons x9140 x9138)))))
                                 (begin
                                   (write '(funapp 3978 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3978 35))
                                      (display "\n")
                                      'tetra)
                                    x9137))))
                               (x9134
                                (letrec*
                                 ((x9135 (input)))
                                 (begin
                                   (write '(funapp 3980 56))
                                   (display "\n")
                                   (cons
                                    x9135
                                    (begin
                                      (write '(funapp 3980 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3981 27))
                                (display "\n")
                                (cons x9136 x9134)))))
                           (begin
                             (write '(funapp 3982 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3982 29))
                                (display "\n")
                                'world)
                              x9133))))
                         (x9131 (input)))
                        (begin
                          (write '(funapp 3984 21))
                          (display "\n")
                          (x9145 x9132 x9131)))
                       (letrec*
                        ((x9167
                          (letrec*
                           ((xj7659
                             (begin
                               (write '(funapp 3988 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3988 37))
                                  (display "\n")
                                  'module))))
                            (xk7660
                             (begin
                               (write '(funapp 3988 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3988 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9168
                              (begin
                                (write '(funapp 3991 27))
                                (display "\n")
                                ((lambda (j7662 k7663 f7664)
                                   (letrec*
                                    ((g9169
                                      (lambda (g7661)
                                        (letrec*
                                         ((g9170
                                           (letrec*
                                            ((x9171
                                              (letrec*
                                               ((x9172
                                                 (begin
                                                   (write '(funapp 4000 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7662
                                                    k7663
                                                    g7661))))
                                               (begin
                                                 (write '(funapp 4001 42))
                                                 (display "\n")
                                                 (f7664 x9172)))))
                                            (begin
                                              (write '(funapp 4002 39))
                                              (display "\n")
                                              (BSET/C j7662 k7663 x9171)))))
                                         g9170))))
                                    g9169))
                                 xj7659
                                 xk7660
                                 ghost-blocks))))
                            g9168)))
                         (x9154
                          (letrec*
                           ((x9155
                             (letrec*
                              ((x9158
                                (letrec*
                                 ((x9159
                                   (letrec*
                                    ((x9162
                                      (letrec*
                                       ((x9163
                                         (letrec*
                                          ((x9166 (input))
                                           (x9164
                                            (letrec*
                                             ((x9165 (input)))
                                             (begin
                                               (write '(funapp 4025 42))
                                               (display "\n")
                                               (cons
                                                x9165
                                                (begin
                                                  (write '(funapp 4025 53))
                                                  (display "\n")
                                                  '()))))))
                                          (begin
                                            (write '(funapp 4026 39))
                                            (display "\n")
                                            (cons x9166 x9164)))))
                                       (begin
                                         (write '(funapp 4027 36))
                                         (display "\n")
                                         (cons
                                          (begin
                                            (write '(funapp 4027 41))
                                            (display "\n")
                                            'posn)
                                          x9163))))
                                     (x9160
                                      (letrec*
                                       ((x9161 (input)))
                                       (begin
                                         (write '(funapp 4031 36))
                                         (display "\n")
                                         (cons
                                          x9161
                                          (begin
                                            (write '(funapp 4031 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 4032 33))
                                      (display "\n")
                                      (cons x9162 x9160)))))
                                 (begin
                                   (write '(funapp 4033 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 4033 35))
                                      (display "\n")
                                      'tetra)
                                    x9159))))
                               (x9156
                                (letrec*
                                 ((x9157 (input)))
                                 (begin
                                   (write '(funapp 4035 56))
                                   (display "\n")
                                   (cons
                                    x9157
                                    (begin
                                      (write '(funapp 4035 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 4036 27))
                                (display "\n")
                                (cons x9158 x9156)))))
                           (begin
                             (write '(funapp 4037 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 4037 29))
                                (display "\n")
                                'world)
                              x9155)))))
                        (begin
                          (write '(funapp 4038 21))
                          (display "\n")
                          (x9167 x9154)))
                       (letrec*
                        ((x9174
                          (letrec*
                           ((xj7665
                             (begin
                               (write '(funapp 4042 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4042 37))
                                  (display "\n")
                                  'module))))
                            (xk7666
                             (begin
                               (write '(funapp 4042 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4042 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9175
                              (begin
                                (write '(funapp 4045 27))
                                (display "\n")
                                ((lambda (j7668 k7669 f7670)
                                   (letrec*
                                    ((g9176
                                      (lambda (g7667)
                                        (letrec*
                                         ((g9177
                                           (letrec*
                                            ((x9178
                                              (letrec*
                                               ((x9179
                                                 (begin
                                                   (write '(funapp 4054 50))
                                                   (display "\n")
                                                   (any/c j7668 k7669 g7667))))
                                               (begin
                                                 (write '(funapp 4055 42))
                                                 (display "\n")
                                                 (f7670 x9179)))))
                                            (begin
                                              (write '(funapp 4056 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7668
                                               k7669
                                               x9178)))))
                                         g9177))))
                                    g9176))
                                 xj7665
                                 xk7666
                                 image?))))
                            g9175)))
                         (x9173 (input)))
                        (begin
                          (write '(funapp 4064 21))
                          (display "\n")
                          (x9174 x9173)))
                       (letrec*
                        ((x9182
                          (letrec*
                           ((xj7671
                             (begin
                               (write '(funapp 4068 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4068 37))
                                  (display "\n")
                                  'module))))
                            (xk7672
                             (begin
                               (write '(funapp 4068 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4068 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9183
                              (begin
                                (write '(funapp 4071 27))
                                (display "\n")
                                ((lambda (j7675 k7676 f7677)
                                   (letrec*
                                    ((g9184
                                      (lambda (g7673 g7674)
                                        (letrec*
                                         ((g9185
                                           (letrec*
                                            ((x9186
                                              (letrec*
                                               ((x9188
                                                 (begin
                                                   (write '(funapp 4080 50))
                                                   (display "\n")
                                                   (image? j7675 k7676 g7673)))
                                                (x9187
                                                 (begin
                                                   (write '(funapp 4081 50))
                                                   (display "\n")
                                                   (image?
                                                    j7675
                                                    k7676
                                                    g7674))))
                                               (begin
                                                 (write '(funapp 4082 42))
                                                 (display "\n")
                                                 (f7677 x9188 x9187)))))
                                            (begin
                                              (write '(funapp 4083 39))
                                              (display "\n")
                                              (image? j7675 k7676 x9186)))))
                                         g9185))))
                                    g9184))
                                 xj7671
                                 xk7672
                                 overlay))))
                            g9183)))
                         (x9181 (input))
                         (x9180 (input)))
                        (begin
                          (write '(funapp 4092 21))
                          (display "\n")
                          (x9182 x9181 x9180)))
                       (letrec*
                        ((x9192
                          (letrec*
                           ((xj7678
                             (begin
                               (write '(funapp 4096 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4096 37))
                                  (display "\n")
                                  'module))))
                            (xk7679
                             (begin
                               (write '(funapp 4096 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4096 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9193
                              (begin
                                (write '(funapp 4099 27))
                                (display "\n")
                                ((lambda (j7683 k7684 f7685)
                                   (letrec*
                                    ((g9194
                                      (lambda (g7680 g7681 g7682)
                                        (letrec*
                                         ((g9195
                                           (letrec*
                                            ((x9196
                                              (letrec*
                                               ((x9199
                                                 (begin
                                                   (write '(funapp 4108 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7683
                                                    k7684
                                                    g7680)))
                                                (x9198
                                                 (begin
                                                   (write '(funapp 4109 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7683
                                                    k7684
                                                    g7681)))
                                                (x9197
                                                 (begin
                                                   (write '(funapp 4111 44))
                                                   (display "\n")
                                                   (string?/c
                                                    j7683
                                                    k7684
                                                    g7682))))
                                               (begin
                                                 (write '(funapp 4112 42))
                                                 (display "\n")
                                                 (f7685 x9199 x9198 x9197)))))
                                            (begin
                                              (write '(funapp 4113 39))
                                              (display "\n")
                                              (image? j7683 k7684 x9196)))))
                                         g9195))))
                                    g9194))
                                 xj7678
                                 xk7679
                                 circle))))
                            g9193)))
                         (x9191 (input))
                         (x9190 (input))
                         (x9189 (input)))
                        (begin
                          (write '(funapp 4123 21))
                          (display "\n")
                          (x9192 x9191 x9190 x9189)))
                       (letrec*
                        ((x9204
                          (letrec*
                           ((xj7686
                             (begin
                               (write '(funapp 4127 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4127 37))
                                  (display "\n")
                                  'module))))
                            (xk7687
                             (begin
                               (write '(funapp 4127 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4127 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9205
                              (begin
                                (write '(funapp 4130 27))
                                (display "\n")
                                ((lambda (j7692 k7693 f7694)
                                   (letrec*
                                    ((g9206
                                      (lambda (g7688 g7689 g7690 g7691)
                                        (letrec*
                                         ((g9207
                                           (letrec*
                                            ((x9208
                                              (letrec*
                                               ((x9212
                                                 (begin
                                                   (write '(funapp 4139 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7692
                                                    k7693
                                                    g7688)))
                                                (x9211
                                                 (begin
                                                   (write '(funapp 4140 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7692
                                                    k7693
                                                    g7689)))
                                                (x9210
                                                 (begin
                                                   (write '(funapp 4141 50))
                                                   (display "\n")
                                                   (COLOR/C
                                                    j7692
                                                    k7693
                                                    g7690)))
                                                (x9209
                                                 (begin
                                                   (write '(funapp 4142 50))
                                                   (display "\n")
                                                   (COLOR/C
                                                    j7692
                                                    k7693
                                                    g7691))))
                                               (begin
                                                 (write '(funapp 4143 42))
                                                 (display "\n")
                                                 (f7694
                                                  x9212
                                                  x9211
                                                  x9210
                                                  x9209)))))
                                            (begin
                                              (write '(funapp 4144 39))
                                              (display "\n")
                                              (image? j7692 k7693 x9208)))))
                                         g9207))))
                                    g9206))
                                 xj7686
                                 xk7687
                                 rectangle))))
                            g9205)))
                         (x9203 (input))
                         (x9202 (input))
                         (x9201 (input))
                         (x9200 (input)))
                        (begin
                          (write '(funapp 4155 21))
                          (display "\n")
                          (x9204 x9203 x9202 x9201 x9200)))
                       (letrec*
                        ((x9217
                          (letrec*
                           ((xj7695
                             (begin
                               (write '(funapp 4159 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4159 37))
                                  (display "\n")
                                  'module))))
                            (xk7696
                             (begin
                               (write '(funapp 4159 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4159 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9218
                              (begin
                                (write '(funapp 4162 27))
                                (display "\n")
                                ((lambda (j7701 k7702 f7703)
                                   (letrec*
                                    ((g9219
                                      (lambda (g7697 g7698 g7699 g7700)
                                        (letrec*
                                         ((g9220
                                           (letrec*
                                            ((x9221
                                              (letrec*
                                               ((x9225
                                                 (begin
                                                   (write '(funapp 4171 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7701
                                                    k7702
                                                    g7697)))
                                                (x9224
                                                 (begin
                                                   (write '(funapp 4172 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7701
                                                    k7702
                                                    g7698)))
                                                (x9223
                                                 (begin
                                                   (write '(funapp 4173 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7701
                                                    k7702
                                                    g7699)))
                                                (x9222
                                                 (begin
                                                   (write '(funapp 4174 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7701
                                                    k7702
                                                    g7700))))
                                               (begin
                                                 (write '(funapp 4175 42))
                                                 (display "\n")
                                                 (f7703
                                                  x9225
                                                  x9224
                                                  x9223
                                                  x9222)))))
                                            (begin
                                              (write '(funapp 4176 39))
                                              (display "\n")
                                              (image/c j7701 k7702 x9221)))))
                                         g9220))))
                                    g9219))
                                 xj7695
                                 xk7696
                                 place-image))))
                            g9218)))
                         (x9216
                          (begin
                            (write '(funapp 4183 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 4183 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 4183 41))
                               (display "\n")
                               '()))))
                         (x9215 (input))
                         (x9214 (input))
                         (x9213
                          (begin
                            (write '(funapp 4186 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 4186 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 4186 41))
                               (display "\n")
                               '())))))
                        (begin
                          (write '(funapp 4187 21))
                          (display "\n")
                          (x9217 x9216 x9215 x9214 x9213)))
                       (letrec*
                        ((x9228
                          (letrec*
                           ((xj7704
                             (begin
                               (write '(funapp 4191 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4191 37))
                                  (display "\n")
                                  'module))))
                            (xk7705
                             (begin
                               (write '(funapp 4191 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4191 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9229
                              (begin
                                (write '(funapp 4194 27))
                                (display "\n")
                                ((lambda (j7708 k7709 f7710)
                                   (letrec*
                                    ((g9230
                                      (lambda (g7706 g7707)
                                        (letrec*
                                         ((g9231
                                           (letrec*
                                            ((x9232
                                              (letrec*
                                               ((x9234
                                                 (begin
                                                   (write '(funapp 4203 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7708
                                                    k7709
                                                    g7706)))
                                                (x9233
                                                 (begin
                                                   (write '(funapp 4204 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7708
                                                    k7709
                                                    g7707))))
                                               (begin
                                                 (write '(funapp 4205 42))
                                                 (display "\n")
                                                 (f7710 x9234 x9233)))))
                                            (begin
                                              (write '(funapp 4206 39))
                                              (display "\n")
                                              (image? j7708 k7709 x9232)))))
                                         g9231))))
                                    g9230))
                                 xj7704
                                 xk7705
                                 empty-scene))))
                            g9229)))
                         (x9227 (input))
                         (x9226 (input)))
                        (begin
                          (write '(funapp 4215 21))
                          (display "\n")
                          (x9228 x9227 x9226)))
                       (letrec*
                        ((x9236
                          (letrec*
                           ((xj7711
                             (begin
                               (write '(funapp 4219 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4219 37))
                                  (display "\n")
                                  'module))))
                            (xk7712
                             (begin
                               (write '(funapp 4219 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4219 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9237
                              (begin
                                (write '(funapp 4222 27))
                                (display "\n")
                                ((lambda (j7714 k7715 f7716)
                                   (letrec*
                                    ((g9238
                                      (lambda (g7713)
                                        (letrec*
                                         ((g9239
                                           (letrec*
                                            ((x9240
                                              (letrec*
                                               ((x9241
                                                 (letrec*
                                                  ((x9242
                                                    (letrec*
                                                     ((x9243
                                                       (begin
                                                         (write
                                                          '(funapp 4235 56))
                                                         (display "\n")
                                                         (listof TETRA/C))))
                                                     (begin
                                                       (write
                                                        '(funapp 4236 48))
                                                       (display "\n")
                                                       (and/c
                                                        cons?/c
                                                        x9243)))))
                                                  (begin
                                                    (write '(funapp 4237 45))
                                                    (display "\n")
                                                    (x9242
                                                     j7714
                                                     k7715
                                                     g7713)))))
                                               (begin
                                                 (write '(funapp 4238 42))
                                                 (display "\n")
                                                 (f7716 x9241)))))
                                            (begin
                                              (write '(funapp 4239 39))
                                              (display "\n")
                                              (TETRA/C j7714 k7715 x9240)))))
                                         g9239))))
                                    g9238))
                                 xj7711
                                 xk7712
                                 list-pick-random))))
                            g9237)))
                         (x9235 (input)))
                        (begin
                          (write '(funapp 4247 21))
                          (display "\n")
                          (x9236 x9235)))
                       (letrec*
                        ((xj7717
                          (begin
                            (write '(funapp 4249 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 4249 34))
                               (display "\n")
                               'module))))
                         (xk7718
                          (begin
                            (write '(funapp 4249 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 4249 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g9244
                           (begin
                             (write '(funapp 4250 38))
                             (display "\n")
                             (integer?/c xj7717 xk7718 neg-1))))
                         g9244))
                       (letrec*
                        ((x9258
                          (letrec*
                           ((xj7719
                             (begin
                               (write '(funapp 4254 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4254 37))
                                  (display "\n")
                                  'module))))
                            (xk7720
                             (begin
                               (write '(funapp 4254 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4254 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9259
                              (begin
                                (write '(funapp 4257 27))
                                (display "\n")
                                ((lambda (j7722 k7723 f7724)
                                   (letrec*
                                    ((g9260
                                      (lambda (g7721)
                                        (letrec*
                                         ((g9261
                                           (letrec*
                                            ((x9262
                                              (letrec*
                                               ((x9263
                                                 (begin
                                                   (write '(funapp 4266 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7722
                                                    k7723
                                                    g7721))))
                                               (begin
                                                 (write '(funapp 4267 42))
                                                 (display "\n")
                                                 (f7724 x9263)))))
                                            (begin
                                              (write '(funapp 4268 39))
                                              (display "\n")
                                              (image/c j7722 k7723 x9262)))))
                                         g9261))))
                                    g9260))
                                 xj7719
                                 xk7720
                                 world->image))))
                            g9259)))
                         (x9245
                          (letrec*
                           ((x9246
                             (letrec*
                              ((x9249
                                (letrec*
                                 ((x9250
                                   (letrec*
                                    ((x9253
                                      (letrec*
                                       ((x9254
                                         (letrec*
                                          ((x9257 (input))
                                           (x9255
                                            (letrec*
                                             ((x9256 (input)))
                                             (begin
                                               (write '(funapp 4291 42))
                                               (display "\n")
                                               (cons
                                                x9256
                                                (begin
                                                  (write '(funapp 4291 53))
                                                  (display "\n")
                                                  '()))))))
                                          (begin
                                            (write '(funapp 4292 39))
                                            (display "\n")
                                            (cons x9257 x9255)))))
                                       (begin
                                         (write '(funapp 4293 36))
                                         (display "\n")
                                         (cons
                                          (begin
                                            (write '(funapp 4293 41))
                                            (display "\n")
                                            'posn)
                                          x9254))))
                                     (x9251
                                      (letrec*
                                       ((x9252 (input)))
                                       (begin
                                         (write '(funapp 4297 36))
                                         (display "\n")
                                         (cons
                                          x9252
                                          (begin
                                            (write '(funapp 4297 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 4298 33))
                                      (display "\n")
                                      (cons x9253 x9251)))))
                                 (begin
                                   (write '(funapp 4299 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 4299 35))
                                      (display "\n")
                                      'tetra)
                                    x9250))))
                               (x9247
                                (letrec*
                                 ((x9248 (input)))
                                 (begin
                                   (write '(funapp 4301 56))
                                   (display "\n")
                                   (cons
                                    x9248
                                    (begin
                                      (write '(funapp 4301 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 4302 27))
                                (display "\n")
                                (cons x9249 x9247)))))
                           (begin
                             (write '(funapp 4303 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 4303 29))
                                (display "\n")
                                'world)
                              x9246)))))
                        (begin
                          (write '(funapp 4304 21))
                          (display "\n")
                          (x9258 x9245)))
                       (letrec*
                        ((x9265
                          (letrec*
                           ((xj7725
                             (begin
                               (write '(funapp 4308 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4308 37))
                                  (display "\n")
                                  'module))))
                            (xk7726
                             (begin
                               (write '(funapp 4308 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4308 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9266
                              (begin
                                (write '(funapp 4311 27))
                                (display "\n")
                                ((lambda (j7728 k7729 f7730)
                                   (letrec*
                                    ((g9267
                                      (lambda (g7727)
                                        (letrec*
                                         ((g9268
                                           (letrec*
                                            ((x9269
                                              (letrec*
                                               ((x9270
                                                 (begin
                                                   (write '(funapp 4320 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7728
                                                    k7729
                                                    g7727))))
                                               (begin
                                                 (write '(funapp 4321 42))
                                                 (display "\n")
                                                 (f7730 x9270)))))
                                            (begin
                                              (write '(funapp 4322 39))
                                              (display "\n")
                                              (image/c j7728 k7729 x9269)))))
                                         g9268))))
                                    g9267))
                                 xj7725
                                 xk7726
                                 blocks->image))))
                            g9266)))
                         (x9264 (input)))
                        (begin
                          (write '(funapp 4330 21))
                          (display "\n")
                          (x9265 x9264)))
                       (letrec*
                        ((x9278
                          (letrec*
                           ((xj7731
                             (begin
                               (write '(funapp 4334 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4334 37))
                                  (display "\n")
                                  'module))))
                            (xk7732
                             (begin
                               (write '(funapp 4334 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4334 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9279
                              (begin
                                (write '(funapp 4337 27))
                                (display "\n")
                                ((lambda (j7734 k7735 f7736)
                                   (letrec*
                                    ((g9280
                                      (lambda (g7733)
                                        (letrec*
                                         ((g9281
                                           (letrec*
                                            ((x9282
                                              (letrec*
                                               ((x9283
                                                 (begin
                                                   (write '(funapp 4346 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7734
                                                    k7735
                                                    g7733))))
                                               (begin
                                                 (write '(funapp 4347 42))
                                                 (display "\n")
                                                 (f7736 x9283)))))
                                            (begin
                                              (write '(funapp 4348 39))
                                              (display "\n")
                                              (image/c j7734 k7735 x9282)))))
                                         g9281))))
                                    g9280))
                                 xj7731
                                 xk7732
                                 block->image))))
                            g9279)))
                         (x9271
                          (letrec*
                           ((x9272
                             (letrec*
                              ((x9277 (input))
                               (x9273
                                (letrec*
                                 ((x9276 (input))
                                  (x9274
                                   (letrec*
                                    ((x9275 (input)))
                                    (begin
                                      (write '(funapp 4364 59))
                                      (display "\n")
                                      (cons
                                       x9275
                                       (begin
                                         (write '(funapp 4364 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 4365 30))
                                   (display "\n")
                                   (cons x9276 x9274)))))
                              (begin
                                (write '(funapp 4366 27))
                                (display "\n")
                                (cons x9277 x9273)))))
                           (begin
                             (write '(funapp 4367 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 4367 29))
                                (display "\n")
                                'block)
                              x9272)))))
                        (begin
                          (write '(funapp 4368 21))
                          (display "\n")
                          (x9278 x9271)))
                       (letrec*
                        ((x9292
                          (letrec*
                           ((xj7737
                             (begin
                               (write '(funapp 4372 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4372 37))
                                  (display "\n")
                                  'module))))
                            (xk7738
                             (begin
                               (write '(funapp 4372 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4372 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9293
                              (begin
                                (write '(funapp 4375 27))
                                (display "\n")
                                ((lambda (j7741 k7742 f7743)
                                   (letrec*
                                    ((g9294
                                      (lambda (g7739 g7740)
                                        (letrec*
                                         ((g9295
                                           (letrec*
                                            ((x9296
                                              (letrec*
                                               ((x9298
                                                 (begin
                                                   (write '(funapp 4384 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7741
                                                    k7742
                                                    g7739)))
                                                (x9297
                                                 (begin
                                                   (write '(funapp 4385 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7741
                                                    k7742
                                                    g7740))))
                                               (begin
                                                 (write '(funapp 4386 42))
                                                 (display "\n")
                                                 (f7743 x9298 x9297)))))
                                            (begin
                                              (write '(funapp 4387 39))
                                              (display "\n")
                                              (image/c j7741 k7742 x9296)))))
                                         g9295))))
                                    g9294))
                                 xj7737
                                 xk7738
                                 place-block))))
                            g9293)))
                         (x9285
                          (letrec*
                           ((x9286
                             (letrec*
                              ((x9291 (input))
                               (x9287
                                (letrec*
                                 ((x9290 (input))
                                  (x9288
                                   (letrec*
                                    ((x9289 (input)))
                                    (begin
                                      (write '(funapp 4403 59))
                                      (display "\n")
                                      (cons
                                       x9289
                                       (begin
                                         (write '(funapp 4403 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 4404 30))
                                   (display "\n")
                                   (cons x9290 x9288)))))
                              (begin
                                (write '(funapp 4405 27))
                                (display "\n")
                                (cons x9291 x9287)))))
                           (begin
                             (write '(funapp 4406 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 4406 29))
                                (display "\n")
                                'block)
                              x9286))))
                         (x9284
                          (begin
                            (write '(funapp 4407 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 4407 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 4407 41))
                               (display "\n")
                               '())))))
                        (begin
                          (write '(funapp 4408 21))
                          (display "\n")
                          (x9292 x9285 x9284)))
                       (letrec*
                        ((x9300
                          (letrec*
                           ((xj7744
                             (begin
                               (write '(funapp 4412 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4412 37))
                                  (display "\n")
                                  'module))))
                            (xk7745
                             (begin
                               (write '(funapp 4412 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4412 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9301
                              (begin
                                (write '(funapp 4415 27))
                                (display "\n")
                                ((lambda (j7747 k7748 f7749)
                                   (letrec*
                                    ((g9302
                                      (lambda (g7746)
                                        (letrec*
                                         ((g9303
                                           (letrec*
                                            ((x9304
                                              (letrec*
                                               ((x9305
                                                 (letrec*
                                                  ((x9306
                                                    (letrec*
                                                     ((x9307
                                                       (begin
                                                         (write
                                                          '(funapp 4428 56))
                                                         (display "\n")
                                                         (listof TETRA/C))))
                                                     (begin
                                                       (write
                                                        '(funapp 4429 48))
                                                       (display "\n")
                                                       (and/c
                                                        cons?/c
                                                        x9307)))))
                                                  (begin
                                                    (write '(funapp 4430 45))
                                                    (display "\n")
                                                    (x9306
                                                     j7747
                                                     k7748
                                                     g7746)))))
                                               (begin
                                                 (write '(funapp 4431 42))
                                                 (display "\n")
                                                 (f7749 x9305)))))
                                            (begin
                                              (write '(funapp 4432 39))
                                              (display "\n")
                                              (WORLD/C j7747 k7748 x9304)))))
                                         g9303))))
                                    g9302))
                                 xj7744
                                 xk7745
                                 world0))))
                            g9301)))
                         (x9299 (input)))
                        (begin
                          (write '(funapp 4440 21))
                          (display "\n")
                          (x9300 x9299)))))))))
               g8740))))
           g7801))))
       g7784)))
    g7783)))
