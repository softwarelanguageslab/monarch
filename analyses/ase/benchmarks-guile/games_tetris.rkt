(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7780 #t)) g7780)))
    (meta (lambda (v) (letrec* ((g7781 v)) g7781)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7782
          (letrec*
           ((g7783
             (letrec*
              ((x-e7784 lst))
              (letrec*
               ((v1742 x-e7784))
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
                   ((x-cnd7785
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7785
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
           g7783)))
        g7782)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7786 (lambda (v) (letrec* ((g7787 v)) g7787)))) g7786)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7788
          (letrec*
           ((x7789 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7789)))))
        g7788))))
   (letrec*
    ((g7790
      (letrec*
       ((g7791
         (letrec*
          ((assert
            (lambda (cnd)
              (letrec*
               ((g7792
                 (if cnd
                   (begin (write '(funapp 47 31)) (display "\n") '())
                   (begin
                     (write '(funapp 47 36))
                     (display "\n")
                     (error "assertion failed")))))
               g7792)))
           (>=
            (lambda (x y)
              (letrec*
               ((g7793
                 (letrec*
                  ((x7795
                    (begin
                      (write '(funapp 52 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 52 55))
                    (display "\n")
                    (assert x7795))))
                (g7794
                 (letrec*
                  ((val7244
                    (begin (write '(funapp 55 29)) (display "\n") (> x y))))
                  (letrec*
                   ((g7796
                     (if val7244
                       val7244
                       (letrec*
                        ((val7245
                          (begin
                            (write '(funapp 61 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7797 (if val7245 val7245 #f))) g7797)))))
                   g7796))))
               g7794)))
           (<=
            (lambda (x y)
              (letrec*
               ((g7798
                 (letrec*
                  ((x7800
                    (begin
                      (write '(funapp 68 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 68 55))
                    (display "\n")
                    (assert x7800))))
                (g7799
                 (letrec*
                  ((val7246
                    (begin (write '(funapp 71 29)) (display "\n") (< x y))))
                  (letrec*
                   ((g7801
                     (if val7246
                       val7246
                       (letrec*
                        ((val7247
                          (begin
                            (write '(funapp 77 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7802 (if val7247 val7247 #f))) g7802)))))
                   g7801))))
               g7799)))
           (>
            (lambda (x y)
              (letrec*
               ((g7803
                 (letrec*
                  ((x7805
                    (begin
                      (write '(funapp 84 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 84 55))
                    (display "\n")
                    (assert x7805))))
                (g7804
                 (letrec*
                  ((x7806
                    (begin (write '(funapp 85 41)) (display "\n") (<= x y))))
                  (begin (write '(funapp 85 52)) (display "\n") (not x7806)))))
               g7804)))
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
           ((g7807 (begin (write '(funapp 101 19)) (display "\n") '()))
            (g7808
             (letrec*
              ((empty (begin (write '(funapp 104 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7809
                     (lambda (k j lst)
                       (letrec*
                        ((g7810
                          (begin
                            (write '(funapp 112 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7811
                                  (begin
                                    (write '(funapp 114 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7811))
                             lst))))
                        g7810))))
                   g7809)))
               (real?/c
                (lambda (g7266 g7267 g7268)
                  (letrec*
                   ((g7812
                     (letrec*
                      ((x-cnd7813
                        (begin
                          (write '(funapp 123 35))
                          (display "\n")
                          (real? g7268))))
                      (if x-cnd7813
                        g7268
                        (begin
                          (write '(blame g7266 124 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7266)))))))
                   g7812)))
               (boolean?/c
                (lambda (g7269 g7270 g7271)
                  (letrec*
                   ((g7814
                     (letrec*
                      ((x-cnd7815
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (boolean? g7271))))
                      (if x-cnd7815
                        g7271
                        (begin
                          (write '(blame g7269 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7269)))))))
                   g7814)))
               (number?/c
                (lambda (g7272 g7273 g7274)
                  (letrec*
                   ((g7816
                     (letrec*
                      ((x-cnd7817
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (number? g7274))))
                      (if x-cnd7817
                        g7274
                        (begin
                          (write '(blame g7272 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7272)))))))
                   g7816)))
               (any/c
                (lambda (g7275 g7276 g7277)
                  (letrec*
                   ((g7818
                     (letrec*
                      ((x-cnd7819
                        (begin
                          (write '(funapp 148 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7820 #t)) g7820)) g7277))))
                      (if x-cnd7819
                        g7277
                        (begin
                          (write '(blame g7275 149 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7275)))))))
                   g7818)))
               (any?/c
                (lambda (g7278 g7279 g7280)
                  (letrec*
                   ((g7821
                     (letrec*
                      ((x-cnd7822
                        (begin
                          (write '(funapp 157 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7823 #t)) g7823)) g7280))))
                      (if x-cnd7822
                        g7280
                        (begin
                          (write '(blame g7278 158 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7278)))))))
                   g7821)))
               (cons?/c
                (lambda (g7281 g7282 g7283)
                  (letrec*
                   ((g7824
                     (letrec*
                      ((x-cnd7825
                        (begin
                          (write '(funapp 165 35))
                          (display "\n")
                          (pair? g7283))))
                      (if x-cnd7825
                        g7283
                        (begin
                          (write '(blame g7281 166 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7281)))))))
                   g7824)))
               (cons/c
                (lambda (k1 k2)
                  (letrec*
                   ((g7826
                     (lambda (k j v)
                       (letrec*
                        ((g7827
                          (letrec*
                           ((x7830
                             (letrec*
                              ((x7831
                                (begin
                                  (write '(funapp 176 53))
                                  (display "\n")
                                  (car v))))
                              (begin
                                (write '(funapp 176 63))
                                (display "\n")
                                (k1 k j x7831))))
                            (x7828
                             (letrec*
                              ((x7829
                                (begin
                                  (write '(funapp 177 53))
                                  (display "\n")
                                  (cdr v))))
                              (begin
                                (write '(funapp 177 63))
                                (display "\n")
                                (k2 k j x7829)))))
                           (begin
                             (write '(funapp 178 28))
                             (display "\n")
                             (cons x7830 x7828)))))
                        g7827))))
                   g7826)))
               (pair?/c
                (lambda (g7284 g7285 g7286)
                  (letrec*
                   ((g7832
                     (letrec*
                      ((x-cnd7833
                        (begin
                          (write '(funapp 186 35))
                          (display "\n")
                          (pair? g7286))))
                      (if x-cnd7833
                        g7286
                        (begin
                          (write '(blame g7284 187 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7284)))))))
                   g7832)))
               (integer?/c
                (lambda (g7287 g7288 g7289)
                  (letrec*
                   ((g7834
                     (letrec*
                      ((x-cnd7835
                        (begin
                          (write '(funapp 194 35))
                          (display "\n")
                          (integer? g7289))))
                      (if x-cnd7835
                        g7289
                        (begin
                          (write '(blame g7287 195 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7287)))))))
                   g7834)))
               (symbol?/c
                (lambda (g7290 g7291 g7292)
                  (letrec*
                   ((g7836
                     (letrec*
                      ((x-cnd7837
                        (begin
                          (write '(funapp 202 35))
                          (display "\n")
                          (symbol? g7292))))
                      (if x-cnd7837
                        g7292
                        (begin
                          (write '(blame g7290 203 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7290)))))))
                   g7836)))
               (string?/c
                (lambda (g7293 g7294 g7295)
                  (letrec*
                   ((g7838
                     (letrec*
                      ((x-cnd7839
                        (begin
                          (write '(funapp 210 35))
                          (display "\n")
                          (string? g7295))))
                      (if x-cnd7839
                        g7295
                        (begin
                          (write '(blame g7293 211 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7293)))))))
                   g7838)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7840
                     (lambda (k j v)
                       (letrec*
                        ((g7841
                          (letrec*
                           ((x-cnd7842
                             (begin
                               (write '(funapp 221 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7842
                             (begin
                               (write '(funapp 222 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7841))))
                   g7840)))
               (or/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7843
                     (lambda (k j v)
                       (letrec*
                        ((g7844
                          (letrec*
                           ((val7248
                             (begin
                               (write '(funapp 233 38))
                               (display "\n")
                               (c1 k j v))))
                           (letrec*
                            ((g7845
                              (if val7248
                                val7248
                                (begin
                                  (write '(funapp 235 57))
                                  (display "\n")
                                  (c2 k j v)))))
                            g7845))))
                        g7844))))
                   g7843)))
               (null?/c
                (lambda (g7296 g7297 g7298)
                  (letrec*
                   ((g7846
                     (letrec*
                      ((x-cnd7847
                        (begin
                          (write '(funapp 244 35))
                          (display "\n")
                          (null? g7298))))
                      (if x-cnd7847
                        g7298
                        (begin
                          (write '(blame g7296 245 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7296)))))))
                   g7846)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7848
                     (lambda (k j v)
                       (letrec*
                        ((g7849
                          (letrec*
                           ((x-cnd7850
                             (begin
                               (write '(funapp 255 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7850
                             (begin
                               (write '(funapp 257 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7854
                                (letrec*
                                 ((x7855
                                   (begin
                                     (write '(funapp 261 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 262 34))
                                   (display "\n")
                                   (contract k j x7855))))
                               (x7851
                                (letrec*
                                 ((x7853
                                   (begin
                                     (write '(funapp 265 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7852
                                   (begin
                                     (write '(funapp 265 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 266 34))
                                   (display "\n")
                                   (x7853 k j x7852)))))
                              (begin
                                (write '(funapp 267 31))
                                (display "\n")
                                (orig-cons x7854 x7851)))))))
                        g7849))))
                   g7848)))
               (any? (lambda (v) (letrec* ((g7856 #t)) g7856)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7857
                     (letrec*
                      ((x7858
                        (begin
                          (write '(funapp 274 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 274 55))
                        (display "\n")
                        (not x7858)))))
                   g7857)))
               (nonzero?/c
                (lambda (g7299 g7300 g7301)
                  (letrec*
                   ((g7859
                     (letrec*
                      ((x-cnd7860
                        (begin
                          (write '(funapp 282 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7861
                                (letrec*
                                 ((x7862
                                   (begin
                                     (write '(funapp 284 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 284 64))
                                   (display "\n")
                                   (not x7862)))))
                              g7861))
                           g7301))))
                      (if x-cnd7860
                        g7301
                        (begin
                          (write '(blame g7299 289 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7299)))))))
                   g7859)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7863
                     (lambda (g7302 g7303 g7304)
                       (letrec*
                        ((g7864
                          (letrec*
                           ((x-cnd7865
                             (begin
                               (write '(funapp 300 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7866
                                     (begin
                                       (write '(funapp 301 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7866))
                                g7304))))
                           (if x-cnd7865
                             g7304
                             (begin
                               (write '(blame g7302 305 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7302)))))))
                        g7864))))
                   g7863)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7867
                     (lambda (g7305 g7306 g7307)
                       (letrec*
                        ((g7868
                          (letrec*
                           ((x-cnd7869
                             (begin
                               (write '(funapp 317 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7870
                                     (begin
                                       (write '(funapp 318 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7870))
                                g7307))))
                           (if x-cnd7869
                             g7307
                             (begin
                               (write '(blame g7305 322 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7305)))))))
                        g7868))))
                   g7867)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7871
                     (lambda (g7308 g7309 g7310)
                       (letrec*
                        ((g7872
                          (letrec*
                           ((x-cnd7873
                             (begin
                               (write '(funapp 334 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7874
                                     (begin
                                       (write '(funapp 335 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7874))
                                g7310))))
                           (if x-cnd7873
                             g7310
                             (begin
                               (write '(blame g7308 339 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7308)))))))
                        g7872))))
                   g7871)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7875
                     (lambda (g7311 g7312 g7313)
                       (letrec*
                        ((g7876
                          (letrec*
                           ((x-cnd7877
                             (begin
                               (write '(funapp 351 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7878
                                     (begin
                                       (write '(funapp 352 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7878))
                                g7313))))
                           (if x-cnd7877
                             g7313
                             (begin
                               (write '(blame g7311 356 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7311)))))))
                        g7876))))
                   g7875)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7879
                     (lambda (g7314 g7315 g7316)
                       (letrec*
                        ((g7880
                          (letrec*
                           ((x-cnd7881
                             (begin
                               (write '(funapp 368 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7882
                                     (begin
                                       (write '(funapp 369 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7882))
                                g7316))))
                           (if x-cnd7881
                             g7316
                             (begin
                               (write '(blame g7314 373 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7314)))))))
                        g7880))))
                   g7879)))
               (meta (lambda (v) (letrec* ((g7883 v)) g7883)))
               (+
                (letrec*
                 ((xj7317
                   (begin (write '(funapp 379 26)) (display "\n") 'server))
                  (xk7318
                   (begin (write '(funapp 379 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7884
                    (begin
                      (write '(funapp 382 21))
                      (display "\n")
                      ((lambda (j7321 k7322 f7323)
                         (letrec*
                          ((g7886
                            (lambda (g7319 g7320)
                              (letrec*
                               ((g7887
                                 (letrec*
                                  ((x7888
                                    (letrec*
                                     ((x7890
                                       (begin
                                         (write '(funapp 391 44))
                                         (display "\n")
                                         (number?/c j7321 k7322 g7319)))
                                      (x7889
                                       (begin
                                         (write '(funapp 392 44))
                                         (display "\n")
                                         (number?/c j7321 k7322 g7320))))
                                     (begin
                                       (write '(funapp 393 36))
                                       (display "\n")
                                       (f7323 x7890 x7889)))))
                                  (begin
                                    (write '(funapp 394 33))
                                    (display "\n")
                                    (number?/c j7321 k7322 x7888)))))
                               g7887))))
                          g7886))
                       xj7317
                       xk7318
                       (lambda (a b)
                         (letrec*
                          ((g7885
                            (begin
                              (write '(funapp 399 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7885))))))
                  g7884)))
               (-
                (letrec*
                 ((xj7324
                   (begin (write '(funapp 403 26)) (display "\n") 'server))
                  (xk7325
                   (begin (write '(funapp 403 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7891
                    (begin
                      (write '(funapp 406 21))
                      (display "\n")
                      ((lambda (j7328 k7329 f7330)
                         (letrec*
                          ((g7893
                            (lambda (g7326 g7327)
                              (letrec*
                               ((g7894
                                 (letrec*
                                  ((x7895
                                    (letrec*
                                     ((x7897
                                       (begin
                                         (write '(funapp 415 44))
                                         (display "\n")
                                         (number?/c j7328 k7329 g7326)))
                                      (x7896
                                       (begin
                                         (write '(funapp 416 44))
                                         (display "\n")
                                         (number?/c j7328 k7329 g7327))))
                                     (begin
                                       (write '(funapp 417 36))
                                       (display "\n")
                                       (f7330 x7897 x7896)))))
                                  (begin
                                    (write '(funapp 418 33))
                                    (display "\n")
                                    (number?/c j7328 k7329 x7895)))))
                               g7894))))
                          g7893))
                       xj7324
                       xk7325
                       (lambda (a b)
                         (letrec*
                          ((g7892
                            (begin
                              (write '(funapp 423 53))
                              (display "\n")
                              (orig-- a b))))
                          g7892))))))
                  g7891)))
               (*
                (letrec*
                 ((xj7331
                   (begin (write '(funapp 427 26)) (display "\n") 'server))
                  (xk7332
                   (begin (write '(funapp 427 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7898
                    (begin
                      (write '(funapp 430 21))
                      (display "\n")
                      ((lambda (j7335 k7336 f7337)
                         (letrec*
                          ((g7900
                            (lambda (g7333 g7334)
                              (letrec*
                               ((g7901
                                 (letrec*
                                  ((x7902
                                    (letrec*
                                     ((x7904
                                       (begin
                                         (write '(funapp 439 44))
                                         (display "\n")
                                         (number?/c j7335 k7336 g7333)))
                                      (x7903
                                       (begin
                                         (write '(funapp 440 44))
                                         (display "\n")
                                         (number?/c j7335 k7336 g7334))))
                                     (begin
                                       (write '(funapp 441 36))
                                       (display "\n")
                                       (f7337 x7904 x7903)))))
                                  (begin
                                    (write '(funapp 442 33))
                                    (display "\n")
                                    (number?/c j7335 k7336 x7902)))))
                               g7901))))
                          g7900))
                       xj7331
                       xk7332
                       (lambda (a b)
                         (letrec*
                          ((g7899
                            (begin
                              (write '(funapp 447 53))
                              (display "\n")
                              (orig-* a b))))
                          g7899))))))
                  g7898)))
               (<
                (letrec*
                 ((xj7338
                   (begin (write '(funapp 451 26)) (display "\n") 'server))
                  (xk7339
                   (begin (write '(funapp 451 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7905
                    (begin
                      (write '(funapp 454 21))
                      (display "\n")
                      ((lambda (j7342 k7343 f7344)
                         (letrec*
                          ((g7907
                            (lambda (g7340 g7341)
                              (letrec*
                               ((g7908
                                 (letrec*
                                  ((x7909
                                    (letrec*
                                     ((x7911
                                       (begin
                                         (write '(funapp 463 44))
                                         (display "\n")
                                         (number?/c j7342 k7343 g7340)))
                                      (x7910
                                       (begin
                                         (write '(funapp 464 44))
                                         (display "\n")
                                         (number?/c j7342 k7343 g7341))))
                                     (begin
                                       (write '(funapp 465 36))
                                       (display "\n")
                                       (f7344 x7911 x7910)))))
                                  (begin
                                    (write '(funapp 466 33))
                                    (display "\n")
                                    (boolean?/c j7342 k7343 x7909)))))
                               g7908))))
                          g7907))
                       xj7338
                       xk7339
                       (lambda (a b)
                         (letrec*
                          ((g7906
                            (begin
                              (write '(funapp 471 53))
                              (display "\n")
                              (orig-< a b))))
                          g7906))))))
                  g7905)))
               (>
                (letrec*
                 ((xj7345
                   (begin (write '(funapp 475 26)) (display "\n") 'server))
                  (xk7346
                   (begin (write '(funapp 475 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7912
                    (begin
                      (write '(funapp 478 21))
                      (display "\n")
                      ((lambda (j7349 k7350 f7351)
                         (letrec*
                          ((g7914
                            (lambda (g7347 g7348)
                              (letrec*
                               ((g7915
                                 (letrec*
                                  ((x7916
                                    (letrec*
                                     ((x7918
                                       (begin
                                         (write '(funapp 487 44))
                                         (display "\n")
                                         (number?/c j7349 k7350 g7347)))
                                      (x7917
                                       (begin
                                         (write '(funapp 488 44))
                                         (display "\n")
                                         (number?/c j7349 k7350 g7348))))
                                     (begin
                                       (write '(funapp 489 36))
                                       (display "\n")
                                       (f7351 x7918 x7917)))))
                                  (begin
                                    (write '(funapp 490 33))
                                    (display "\n")
                                    (boolean?/c j7349 k7350 x7916)))))
                               g7915))))
                          g7914))
                       xj7345
                       xk7346
                       (lambda (a b)
                         (letrec*
                          ((g7913
                            (begin
                              (write '(funapp 495 53))
                              (display "\n")
                              (orig-> a b))))
                          g7913))))))
                  g7912)))
               (<=
                (letrec*
                 ((xj7352
                   (begin (write '(funapp 499 26)) (display "\n") 'server))
                  (xk7353
                   (begin (write '(funapp 499 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7919
                    (begin
                      (write '(funapp 502 21))
                      (display "\n")
                      ((lambda (j7356 k7357 f7358)
                         (letrec*
                          ((g7921
                            (lambda (g7354 g7355)
                              (letrec*
                               ((g7922
                                 (letrec*
                                  ((x7923
                                    (letrec*
                                     ((x7925
                                       (begin
                                         (write '(funapp 511 44))
                                         (display "\n")
                                         (number?/c j7356 k7357 g7354)))
                                      (x7924
                                       (begin
                                         (write '(funapp 512 44))
                                         (display "\n")
                                         (number?/c j7356 k7357 g7355))))
                                     (begin
                                       (write '(funapp 513 36))
                                       (display "\n")
                                       (f7358 x7925 x7924)))))
                                  (begin
                                    (write '(funapp 514 33))
                                    (display "\n")
                                    (boolean?/c j7356 k7357 x7923)))))
                               g7922))))
                          g7921))
                       xj7352
                       xk7353
                       (lambda (a b)
                         (letrec*
                          ((g7920
                            (begin
                              (write '(funapp 519 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7920))))))
                  g7919)))
               (>=
                (letrec*
                 ((xj7359
                   (begin (write '(funapp 523 26)) (display "\n") 'server))
                  (xk7360
                   (begin (write '(funapp 523 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7926
                    (begin
                      (write '(funapp 526 21))
                      (display "\n")
                      ((lambda (j7363 k7364 f7365)
                         (letrec*
                          ((g7928
                            (lambda (g7361 g7362)
                              (letrec*
                               ((g7929
                                 (letrec*
                                  ((x7930
                                    (letrec*
                                     ((x7932
                                       (begin
                                         (write '(funapp 535 44))
                                         (display "\n")
                                         (number?/c j7363 k7364 g7361)))
                                      (x7931
                                       (begin
                                         (write '(funapp 536 44))
                                         (display "\n")
                                         (number?/c j7363 k7364 g7362))))
                                     (begin
                                       (write '(funapp 537 36))
                                       (display "\n")
                                       (f7365 x7932 x7931)))))
                                  (begin
                                    (write '(funapp 538 33))
                                    (display "\n")
                                    (boolean?/c j7363 k7364 x7930)))))
                               g7929))))
                          g7928))
                       xj7359
                       xk7360
                       (lambda (a b)
                         (letrec*
                          ((g7927
                            (begin
                              (write '(funapp 543 53))
                              (display "\n")
                              (orig->= a b))))
                          g7927))))))
                  g7926)))
               (/
                (letrec*
                 ((xj7366
                   (begin (write '(funapp 547 26)) (display "\n") 'server))
                  (xk7367
                   (begin (write '(funapp 547 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7933
                    (begin
                      (write '(funapp 550 21))
                      (display "\n")
                      ((lambda (j7370 k7371 f7372)
                         (letrec*
                          ((g7935
                            (lambda (g7368 g7369)
                              (letrec*
                               ((g7936
                                 (letrec*
                                  ((x7937
                                    (letrec*
                                     ((x7939
                                       (begin
                                         (write '(funapp 559 44))
                                         (display "\n")
                                         (number?/c j7370 k7371 g7368)))
                                      (x7938
                                       (begin
                                         (write '(funapp 560 44))
                                         (display "\n")
                                         (number?/c j7370 k7371 g7369))))
                                     (begin
                                       (write '(funapp 561 36))
                                       (display "\n")
                                       (f7372 x7939 x7938)))))
                                  (begin
                                    (write '(funapp 562 33))
                                    (display "\n")
                                    (number?/c j7370 k7371 x7937)))))
                               g7936))))
                          g7935))
                       xj7366
                       xk7367
                       (lambda (a b)
                         (letrec*
                          ((g7934
                            (begin
                              (write '(funapp 567 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7934))))))
                  g7933)))
               (car
                (letrec*
                 ((xj7373
                   (begin (write '(funapp 571 26)) (display "\n") 'server))
                  (xk7374
                   (begin (write '(funapp 571 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7940
                    (begin
                      (write '(funapp 574 21))
                      (display "\n")
                      ((lambda (j7376 k7377 f7378)
                         (letrec*
                          ((g7942
                            (lambda (g7375)
                              (letrec*
                               ((g7943
                                 (letrec*
                                  ((x7944
                                    (letrec*
                                     ((x7945
                                       (begin
                                         (write '(funapp 583 44))
                                         (display "\n")
                                         (pair?/c j7376 k7377 g7375))))
                                     (begin
                                       (write '(funapp 584 36))
                                       (display "\n")
                                       (f7378 x7945)))))
                                  (begin
                                    (write '(funapp 585 33))
                                    (display "\n")
                                    (any/c j7376 k7377 x7944)))))
                               g7943))))
                          g7942))
                       xj7373
                       xk7374
                       (lambda (p)
                         (letrec*
                          ((g7941
                            (begin
                              (write '(funapp 590 51))
                              (display "\n")
                              (orig-car p))))
                          g7941))))))
                  g7940)))
               (cdr
                (letrec*
                 ((xj7379
                   (begin (write '(funapp 594 26)) (display "\n") 'server))
                  (xk7380
                   (begin (write '(funapp 594 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7946
                    (begin
                      (write '(funapp 597 21))
                      (display "\n")
                      ((lambda (j7382 k7383 f7384)
                         (letrec*
                          ((g7948
                            (lambda (g7381)
                              (letrec*
                               ((g7949
                                 (letrec*
                                  ((x7950
                                    (letrec*
                                     ((x7951
                                       (begin
                                         (write '(funapp 606 44))
                                         (display "\n")
                                         (pair?/c j7382 k7383 g7381))))
                                     (begin
                                       (write '(funapp 607 36))
                                       (display "\n")
                                       (f7384 x7951)))))
                                  (begin
                                    (write '(funapp 608 33))
                                    (display "\n")
                                    (any/c j7382 k7383 x7950)))))
                               g7949))))
                          g7948))
                       xj7379
                       xk7380
                       (lambda (p)
                         (letrec*
                          ((g7947
                            (begin
                              (write '(funapp 613 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7947))))))
                  g7946)))
               (cons
                (letrec*
                 ((xj7385
                   (begin (write '(funapp 617 26)) (display "\n") 'server))
                  (xk7386
                   (begin (write '(funapp 617 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7952
                    (begin
                      (write '(funapp 620 21))
                      (display "\n")
                      ((lambda (j7389 k7390 f7391)
                         (letrec*
                          ((g7954
                            (lambda (g7387 g7388)
                              (letrec*
                               ((g7955
                                 (letrec*
                                  ((x7956
                                    (letrec*
                                     ((x7958
                                       (begin
                                         (write '(funapp 629 44))
                                         (display "\n")
                                         (any/c j7389 k7390 g7387)))
                                      (x7957
                                       (begin
                                         (write '(funapp 630 44))
                                         (display "\n")
                                         (any/c j7389 k7390 g7388))))
                                     (begin
                                       (write '(funapp 631 36))
                                       (display "\n")
                                       (f7391 x7958 x7957)))))
                                  (begin
                                    (write '(funapp 632 33))
                                    (display "\n")
                                    (pair?/c j7389 k7390 x7956)))))
                               g7955))))
                          g7954))
                       xj7385
                       xk7386
                       (lambda (a b)
                         (letrec*
                          ((g7953
                            (begin
                              (write '(funapp 638 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7953))))))
                  g7952)))
               (vector-ref
                (letrec*
                 ((xj7392
                   (begin (write '(funapp 642 26)) (display "\n") 'server))
                  (xk7393
                   (begin (write '(funapp 642 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7959
                    (begin
                      (write '(funapp 645 21))
                      (display "\n")
                      ((lambda (j7395 k7396 f7397)
                         (letrec*
                          ((g7961
                            (lambda (g7394)
                              (letrec*
                               ((g7962
                                 (letrec*
                                  ((x7963
                                    (letrec*
                                     ((x7964
                                       (begin
                                         (write '(funapp 654 44))
                                         (display "\n")
                                         (vector?/c j7395 k7396 g7394))))
                                     (begin
                                       (write '(funapp 655 36))
                                       (display "\n")
                                       (f7397 x7964)))))
                                  (begin
                                    (write '(funapp 656 33))
                                    (display "\n")
                                    (integer?/c j7395 k7396 x7963)))))
                               g7962))))
                          g7961))
                       xj7392
                       xk7393
                       (lambda (v i)
                         (letrec*
                          ((g7960
                            (begin
                              (write '(funapp 662 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7960))))))
                  g7959)))
               (vector-set!
                (letrec*
                 ((xj7398
                   (begin (write '(funapp 666 26)) (display "\n") 'server))
                  (xk7399
                   (begin (write '(funapp 666 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7965
                    (begin
                      (write '(funapp 669 21))
                      (display "\n")
                      ((lambda (j7402 k7403 f7404)
                         (letrec*
                          ((g7967
                            (lambda (g7400 g7401)
                              (letrec*
                               ((g7968
                                 (letrec*
                                  ((x7969
                                    (letrec*
                                     ((x7971
                                       (begin
                                         (write '(funapp 678 44))
                                         (display "\n")
                                         (vector?/c j7402 k7403 g7400)))
                                      (x7970
                                       (begin
                                         (write '(funapp 679 44))
                                         (display "\n")
                                         (integer?/c j7402 k7403 g7401))))
                                     (begin
                                       (write '(funapp 680 36))
                                       (display "\n")
                                       (f7404 x7971 x7970)))))
                                  (begin
                                    (write '(funapp 681 33))
                                    (display "\n")
                                    (any/c j7402 k7403 x7969)))))
                               g7968))))
                          g7967))
                       xj7398
                       xk7399
                       (lambda (vec i v)
                         (letrec*
                          ((g7966
                            (begin
                              (write '(funapp 687 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7966))))))
                  g7965)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7972
                     (letrec*
                      ((x7973
                        (letrec*
                         ((x7974
                           (begin
                             (write '(funapp 694 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 694 58))
                           (display "\n")
                           (cdr x7974)))))
                      (begin
                        (write '(funapp 695 23))
                        (display "\n")
                        (cdr x7973)))))
                   g7972)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7975
                     (letrec*
                      ((x7978
                        (begin
                          (write '(funapp 701 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 701 62))
                        (display "\n")
                        (assert x7978))))
                    (g7976
                     (letrec*
                      ((x7979
                        (begin
                          (write '(funapp 702 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 702 57))
                        (display "\n")
                        (assert x7979))))
                    (g7977
                     (letrec*
                      ((x-cnd7980
                        (begin
                          (write '(funapp 705 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7980
                        (begin (write '(funapp 707 24)) (display "\n") '())
                        (letrec*
                         ((x7983
                           (letrec*
                            ((x7984
                              (begin
                                (write '(funapp 709 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 709 61))
                              (display "\n")
                              (f x7984))))
                          (x7981
                           (letrec*
                            ((x7982
                              (begin
                                (write '(funapp 710 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 710 61))
                              (display "\n")
                              (map f x7982)))))
                         (begin
                           (write '(funapp 711 26))
                           (display "\n")
                           (cons x7983 x7981)))))))
                   g7977)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7985
                     (letrec*
                      ((x7986
                        (begin
                          (write '(funapp 716 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 716 55))
                        (display "\n")
                        (cdr x7986)))))
                   g7985)))
               (cadadr
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
                                (write '(funapp 725 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 725 61))
                              (display "\n")
                              (car x7990)))))
                         (begin
                           (write '(funapp 726 26))
                           (display "\n")
                           (cdr x7989)))))
                      (begin
                        (write '(funapp 727 23))
                        (display "\n")
                        (car x7988)))))
                   g7987)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7991
                     (letrec*
                      ((x7992
                        (letrec*
                         ((x7993
                           (letrec*
                            ((x7994
                              (begin
                                (write '(funapp 736 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 736 61))
                              (display "\n")
                              (cdr x7994)))))
                         (begin
                           (write '(funapp 737 26))
                           (display "\n")
                           (car x7993)))))
                      (begin
                        (write '(funapp 738 23))
                        (display "\n")
                        (cdr x7992)))))
                   g7991)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7995
                     (letrec*
                      ((x7998
                        (begin
                          (write '(funapp 744 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 744 60))
                        (display "\n")
                        (assert x7998))))
                    (g7996
                     (letrec*
                      ((x7999
                        (begin
                          (write '(funapp 746 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 746 59))
                        (display "\n")
                        (assert x7999))))
                    (g7997
                     (letrec*
                      ((output-port
                        (begin
                          (write '(funapp 749 37))
                          (display "\n")
                          (open-output-file filename)))
                       (res
                        (begin
                          (write '(funapp 750 29))
                          (display "\n")
                          (proc output-port))))
                      (letrec*
                       ((g8000
                         (begin
                           (write '(funapp 752 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g8001 res))
                       g8001))))
                   g7997)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g8002
                     (letrec*
                      ((x8003
                        (letrec*
                         ((x8004
                           (begin
                             (write '(funapp 760 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 760 58))
                           (display "\n")
                           (cdr x8004)))))
                      (begin
                        (write '(funapp 761 23))
                        (display "\n")
                        (car x8003)))))
                   g8002)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g8005
                     (letrec*
                      ((x8006
                        (letrec*
                         ((x8007
                           (letrec*
                            ((x8008
                              (begin
                                (write '(funapp 770 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 770 61))
                              (display "\n")
                              (car x8008)))))
                         (begin
                           (write '(funapp 771 26))
                           (display "\n")
                           (car x8007)))))
                      (begin
                        (write '(funapp 772 23))
                        (display "\n")
                        (cdr x8006)))))
                   g8005)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g8009
                     (letrec*
                      ((x8011
                        (begin
                          (write '(funapp 777 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 777 57))
                        (display "\n")
                        (assert x8011))))
                    (g8010
                     (letrec*
                      ((x-cnd8012
                        (begin
                          (write '(funapp 780 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8012
                        #f
                        (letrec*
                         ((x-cnd8013
                           (letrec*
                            ((x8014
                              (begin
                                (write '(funapp 785 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 785 56))
                              (display "\n")
                              (eq? x8014 k)))))
                         (if x-cnd8013
                           (begin
                             (write '(funapp 787 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8015
                              (begin
                                (write '(funapp 788 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 788 55))
                              (display "\n")
                              (assq k x8015)))))))))
                   g8010)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g8016
                     (letrec*
                      ((x8017
                        (begin
                          (write '(funapp 793 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 793 60))
                        (display "\n")
                        (= 0 x8017)))))
                   g8016)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g8018
                     (letrec*
                      ((x8020
                        (begin
                          (write '(funapp 798 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 798 57))
                        (display "\n")
                        (assert x8020))))
                    (g8019
                     (letrec*
                      ((x-cnd8021
                        (begin
                          (write '(funapp 801 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8021
                        ""
                        (letrec*
                         ((x8024
                           (letrec*
                            ((x8025
                              (begin
                                (write '(funapp 806 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 806 55))
                              (display "\n")
                              (char->string x8025))))
                          (x8022
                           (letrec*
                            ((x8023
                              (begin
                                (write '(funapp 808 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 808 55))
                              (display "\n")
                              (list->string x8023)))))
                         (begin
                           (write '(funapp 809 26))
                           (display "\n")
                           (string-append x8024 x8022)))))))
                   g8019)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8026
                     (letrec*
                      ((x8029
                        (begin
                          (write '(funapp 814 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 814 58))
                        (display "\n")
                        (assert x8029))))
                    (g8027
                     (letrec*
                      ((x8030
                        (begin
                          (write '(funapp 815 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 815 58))
                        (display "\n")
                        (assert x8030))))
                    (g8028
                     (letrec*
                      ((val7249
                        (begin
                          (write '(funapp 818 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g8031
                         (if val7249
                           val7249
                           (begin
                             (write '(funapp 820 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g8031))))
                   g8028)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g8032
                     (letrec*
                      ((x8033
                        (letrec*
                         ((x8034
                           (letrec*
                            ((x8035
                              (begin
                                (write '(funapp 830 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 830 61))
                              (display "\n")
                              (cdr x8035)))))
                         (begin
                           (write '(funapp 831 26))
                           (display "\n")
                           (cdr x8034)))))
                      (begin
                        (write '(funapp 832 23))
                        (display "\n")
                        (cdr x8033)))))
                   g8032)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g8036
                     (letrec*
                      ((x8039
                        (begin
                          (write '(funapp 837 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 837 57))
                        (display "\n")
                        (assert x8039))))
                    (g8037
                     (letrec*
                      ((x8040
                        (begin
                          (write '(funapp 838 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 838 57))
                        (display "\n")
                        (assert x8040))))
                    (g8038
                     (letrec*
                      ((x-cnd8041
                        (begin
                          (write '(funapp 841 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd8041
                        x
                        (letrec*
                         ((x8043
                           (begin
                             (write '(funapp 845 34))
                             (display "\n")
                             (cdr x)))
                          (x8042
                           (begin
                             (write '(funapp 845 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 846 26))
                           (display "\n")
                           (list-tail x8043 x8042)))))))
                   g8038)))
               (halt
                (lambda ()
                  (letrec*
                   ((g8044
                     (begin (write '(funapp 848 49)) (display "\n") '())))
                   g8044)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g8045
                     (letrec*
                      ((x-cnd8046
                        (letrec*
                         ((x8047 #\a))
                         (begin
                           (write '(funapp 855 48))
                           (display "\n")
                           (char-ci>=? c x8047)))))
                      (if x-cnd8046
                        (letrec*
                         ((x8048 #\z))
                         (begin
                           (write '(funapp 857 48))
                           (display "\n")
                           (char-ci<=? c x8048)))
                        #f))))
                   g8045)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g8049
                     (letrec*
                      ((val7250
                        (letrec*
                         ((x8050
                           (begin
                             (write '(funapp 866 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 866 62))
                           (display "\n")
                           (= x8050 9)))))
                      (letrec*
                       ((g8051
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x8052
                                 (begin
                                   (write '(funapp 874 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 875 32))
                                 (display "\n")
                                 (= x8052 10)))))
                            (letrec*
                             ((g8053
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((x8054
                                    (begin
                                      (write '(funapp 881 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 882 35))
                                    (display "\n")
                                    (= x8054 32))))))
                             g8053)))))
                       g8051))))
                   g8049)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g8055
                     (letrec*
                      ((x8056
                        (letrec*
                         ((x8057
                           (begin
                             (write '(funapp 891 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 891 58))
                           (display "\n")
                           (cdr x8057)))))
                      (begin
                        (write '(funapp 892 23))
                        (display "\n")
                        (cdr x8056)))))
                   g8055)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g8058
                     (letrec*
                      ((x8060
                        (begin
                          (write '(funapp 897 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 897 59))
                        (display "\n")
                        (assert x8060))))
                    (g8059
                     (begin (write '(funapp 898 28)) (display "\n") (> x 0))))
                   g8059)))
               (string=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8061
                     (begin
                       (write '(funapp 900 59))
                       (display "\n")
                       (bool-top))))
                   g8061)))
               ($pc (begin (write '(funapp 901 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g8062 #f)) g8062)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g8063
                     (letrec*
                      ((x8064
                        (begin
                          (write '(funapp 907 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 907 55))
                        (display "\n")
                        (cdr x8064)))))
                   g8063)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g8065
                     (letrec*
                      ((x8067
                        (begin
                          (write '(funapp 912 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 912 59))
                        (display "\n")
                        (assert x8067))))
                    (g8066
                     (letrec*
                      ((x-cnd8068
                        (begin
                          (write '(funapp 915 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd8068
                        (begin
                          (write '(funapp 916 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 916 49))
                          (display "\n")
                          (floor x))))))
                   g8066)))
               ($cmp (begin (write '(funapp 918 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g8069
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 924 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g8070
                         (if val7252
                           val7252
                           (letrec*
                            ((val7253
                              (letrec*
                               ((x-cnd8071
                                 (begin
                                   (write '(funapp 932 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd8071
                                 (begin
                                   (write '(funapp 933 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g8072
                               (if val7253
                                 val7253
                                 (letrec*
                                  ((val7254
                                    (letrec*
                                     ((x-cnd8073
                                       (begin
                                         (write '(funapp 941 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd8073
                                       (letrec*
                                        ((x-cnd8074
                                          (begin
                                            (write '(funapp 944 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd8074
                                          (begin
                                            (write '(funapp 945 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g8075
                                     (if val7254
                                       val7254
                                       (letrec*
                                        ((val7255
                                          (letrec*
                                           ((x-cnd8076
                                             (begin
                                               (write '(funapp 954 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd8076
                                             (letrec*
                                              ((x-cnd8077
                                                (begin
                                                  (write '(funapp 957 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd8077
                                                (letrec*
                                                 ((x-cnd8078
                                                   (letrec*
                                                    ((x8080
                                                      (begin
                                                        (write
                                                         '(funapp 962 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x8079
                                                      (begin
                                                        (write
                                                         '(funapp 963 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 964 53))
                                                      (display "\n")
                                                      (equal? x8080 x8079)))))
                                                 (if x-cnd8078
                                                   (letrec*
                                                    ((x8082
                                                      (begin
                                                        (write
                                                         '(funapp 967 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x8081
                                                      (begin
                                                        (write
                                                         '(funapp 968 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 969 53))
                                                      (display "\n")
                                                      (equal? x8082 x8081)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g8083
                                           (if val7255
                                             val7255
                                             (letrec*
                                              ((x-cnd8084
                                                (begin
                                                  (write '(funapp 978 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd8084
                                                (letrec*
                                                 ((x-cnd8085
                                                   (begin
                                                     (write '(funapp 981 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd8085
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 984 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g8086
                                                       (letrec*
                                                        ((x-cnd8087
                                                          (letrec*
                                                           ((x8088
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  991
                                                                  62))
                                                               (display "\n")
                                                               (vector-length
                                                                b))))
                                                           (begin
                                                             (write
                                                              '(funapp 993 60))
                                                             (display "\n")
                                                             (= x8088 n)))))
                                                        (if x-cnd8087
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g8089
                                                                  (letrec*
                                                                   ((val7256
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          1002
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (=
                                                                        i
                                                                        n))))
                                                                   (letrec*
                                                                    ((g8090
                                                                      (if val7256
                                                                        val7256
                                                                        (letrec*
                                                                         ((x-cnd8091
                                                                           (letrec*
                                                                            ((x8093
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1011
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 a
                                                                                 i)))
                                                                             (x8092
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1015
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 b
                                                                                 i))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 1018
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (equal?
                                                                               x8093
                                                                               x8092)))))
                                                                         (if x-cnd8091
                                                                           (letrec*
                                                                            ((x8094
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1024
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (+
                                                                                 i
                                                                                 1))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 1027
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (loop
                                                                               x8094)))
                                                                           #f)))))
                                                                    g8090))))
                                                                g8089))))
                                                           (letrec*
                                                            ((g8095
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1033
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g8095))
                                                          #f))))
                                                     g8086))
                                                   #f))
                                                #f)))))
                                         g8083)))))
                                   g8075)))))
                             g8072)))))
                       g8070))))
                   g8069)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g8096
                     (letrec*
                      ((x8097
                        (letrec*
                         ((x8098
                           (letrec*
                            ((x8099
                              (begin
                                (write '(funapp 1051 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1051 61))
                              (display "\n")
                              (car x8099)))))
                         (begin
                           (write '(funapp 1052 26))
                           (display "\n")
                           (car x8098)))))
                      (begin
                        (write '(funapp 1053 23))
                        (display "\n")
                        (cdr x8097)))))
                   g8096)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g8100
                     (letrec*
                      ((x8101
                        (letrec*
                         ((x8102
                           (letrec*
                            ((x8103
                              (begin
                                (write '(funapp 1062 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1062 61))
                              (display "\n")
                              (cdr x8103)))))
                         (begin
                           (write '(funapp 1063 26))
                           (display "\n")
                           (car x8102)))))
                      (begin
                        (write '(funapp 1064 23))
                        (display "\n")
                        (car x8101)))))
                   g8100)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g8104
                     (begin
                       (write '(funapp 1066 53))
                       (display "\n")
                       (eq? x y))))
                   g8104)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g8105
                     (letrec*
                      ((x8108
                        (begin
                          (write '(funapp 1071 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1071 60))
                        (display "\n")
                        (assert x8108))))
                    (g8106
                     (letrec*
                      ((x8109
                        (begin
                          (write '(funapp 1073 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1073 59))
                        (display "\n")
                        (assert x8109))))
                    (g8107
                     (letrec*
                      ((input-port
                        (begin
                          (write '(funapp 1076 36))
                          (display "\n")
                          (open-input-file filename)))
                       (res
                        (begin
                          (write '(funapp 1077 29))
                          (display "\n")
                          (proc input-port))))
                      (letrec*
                       ((g8110
                         (begin
                           (write '(funapp 1079 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g8111 res))
                       g8111))))
                   g8107)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g8112
                     (begin
                       (write '(funapp 1082 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1082 57))
                          (display "\n")
                          '())))))
                   g8112)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8113
                     (letrec*
                      ((x8116
                        (begin
                          (write '(funapp 1086 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1086 58))
                        (display "\n")
                        (assert x8116))))
                    (g8114
                     (letrec*
                      ((x8117
                        (begin
                          (write '(funapp 1087 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1087 58))
                        (display "\n")
                        (assert x8117))))
                    (g8115
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1090 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g8118
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1092 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g8118))))
                   g8115)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g8119
                     (letrec*
                      ((x8120
                        (letrec*
                         ((x8121
                           (begin
                             (write '(funapp 1100 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1100 58))
                           (display "\n")
                           (car x8121)))))
                      (begin
                        (write '(funapp 1101 23))
                        (display "\n")
                        (cdr x8120)))))
                   g8119)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g8122
                     (letrec*
                      ((x8123
                        (letrec*
                         ((x8124
                           (letrec*
                            ((x8125
                              (begin
                                (write '(funapp 1110 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1110 61))
                              (display "\n")
                              (cdr x8125)))))
                         (begin
                           (write '(funapp 1111 26))
                           (display "\n")
                           (car x8124)))))
                      (begin
                        (write '(funapp 1112 23))
                        (display "\n")
                        (cdr x8123)))))
                   g8122)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g8126
                     (letrec*
                      ((x8127
                        (letrec*
                         ((x8128
                           (begin
                             (write '(funapp 1120 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1120 58))
                           (display "\n")
                           (cdr x8128)))))
                      (begin
                        (write '(funapp 1121 23))
                        (display "\n")
                        (car x8127)))))
                   g8126)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g8129
                     (letrec*
                      ((x8130
                        (letrec*
                         ((x8131
                           (begin
                             (write '(funapp 1128 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1128 58))
                           (display "\n")
                           (car x8131)))))
                      (begin
                        (write '(funapp 1129 23))
                        (display "\n")
                        (car x8130)))))
                   g8129)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g8132
                     (letrec*
                      ((x8135
                        (begin
                          (write '(funapp 1134 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1134 58))
                        (display "\n")
                        (assert x8135))))
                    (g8133
                     (letrec*
                      ((x8136
                        (begin
                          (write '(funapp 1135 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1135 58))
                        (display "\n")
                        (assert x8136))))
                    (g8134
                     (letrec*
                      ((x8137
                        (begin
                          (write '(funapp 1136 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1136 66))
                        (display "\n")
                        (not x8137)))))
                   g8134)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g8138
                     (letrec*
                      ((x8139
                        (letrec*
                         ((x8140
                           (letrec*
                            ((x8141
                              (begin
                                (write '(funapp 1146 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1146 61))
                              (display "\n")
                              (car x8141)))))
                         (begin
                           (write '(funapp 1147 26))
                           (display "\n")
                           (car x8140)))))
                      (begin
                        (write '(funapp 1148 23))
                        (display "\n")
                        (car x8139)))))
                   g8138)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g8142
                     (letrec*
                      ((x8144
                        (begin
                          (write '(funapp 1153 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1153 59))
                        (display "\n")
                        (assert x8144))))
                    (g8143
                     (begin (write '(funapp 1154 28)) (display "\n") (< x 0))))
                   g8143)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g8145
                     (begin
                       (write '(funapp 1156 53))
                       (display "\n")
                       (memq e l))))
                   g8145)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g8146
                     (letrec*
                      ((x8147
                        (letrec*
                         ((x8148
                           (begin
                             (write '(funapp 1162 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1162 58))
                           (display "\n")
                           (car x8148)))))
                      (begin
                        (write '(funapp 1163 23))
                        (display "\n")
                        (car x8147)))))
                   g8146)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g8149
                     (begin (write '(funapp 1165 51)) (display "\n") '())))
                   g8149)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g8150
                     (letrec*
                      ((x8152
                        (begin
                          (write '(funapp 1169 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1169 57))
                        (display "\n")
                        (assert x8152))))
                    (g8151
                     (letrec*
                      ((x-cnd8153
                        (begin
                          (write '(funapp 1172 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8153
                        (begin (write '(funapp 1174 24)) (display "\n") '())
                        (letrec*
                         ((x8156
                           (letrec*
                            ((x8157
                              (begin
                                (write '(funapp 1176 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1176 61))
                              (display "\n")
                              (reverse x8157))))
                          (x8154
                           (letrec*
                            ((x8155
                              (begin
                                (write '(funapp 1177 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1177 61))
                              (display "\n")
                              (list x8155)))))
                         (begin
                           (write '(funapp 1178 26))
                           (display "\n")
                           (append x8156 x8154)))))))
                   g8151)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g8158
                     (letrec*
                      ((x8159
                        (letrec*
                         ((x8160
                           (letrec*
                            ((x8161
                              (begin
                                (write '(funapp 1187 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1187 61))
                              (display "\n")
                              (car x8161)))))
                         (begin
                           (write '(funapp 1188 26))
                           (display "\n")
                           (car x8160)))))
                      (begin
                        (write '(funapp 1189 23))
                        (display "\n")
                        (car x8159)))))
                   g8158)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g8162
                     (letrec*
                      ((x8163
                        (letrec*
                         ((x8164
                           (letrec*
                            ((x8165
                              (begin
                                (write '(funapp 1198 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1198 61))
                              (display "\n")
                              (car x8165)))))
                         (begin
                           (write '(funapp 1199 26))
                           (display "\n")
                           (cdr x8164)))))
                      (begin
                        (write '(funapp 1200 23))
                        (display "\n")
                        (cdr x8163)))))
                   g8162)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g8166
                     (letrec*
                      ((x8168
                        (begin
                          (write '(funapp 1205 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1205 59))
                        (display "\n")
                        (assert x8168))))
                    (g8167
                     (letrec*
                      ((x8169
                        (begin
                          (write '(funapp 1206 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1206 60))
                        (display "\n")
                        (= 1 x8169)))))
                   g8167)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g8170
                     (letrec*
                      ((x8171
                        (letrec*
                         ((x8172
                           (letrec*
                            ((x8173
                              (begin
                                (write '(funapp 1215 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1215 61))
                              (display "\n")
                              (cdr x8173)))))
                         (begin
                           (write '(funapp 1216 26))
                           (display "\n")
                           (car x8172)))))
                      (begin
                        (write '(funapp 1217 23))
                        (display "\n")
                        (car x8171)))))
                   g8170)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g8174
                     (letrec*
                      ((x8177
                        (begin
                          (write '(funapp 1223 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1223 59))
                        (display "\n")
                        (assert x8177))))
                    (g8175
                     (letrec*
                      ((x8178
                        (begin
                          (write '(funapp 1224 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1224 60))
                        (display "\n")
                        (assert x8178))))
                    (g8176
                     (letrec*
                      ((x-cnd8179
                        (begin
                          (write '(funapp 1227 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd8179
                        (letrec*
                         ((g8180
                           (begin
                             (write '(funapp 1229 42))
                             (display "\n")
                             (proc))))
                         g8180)
                        (letrec*
                         ((x-cnd8181
                           (letrec*
                            ((x8182
                              (begin
                                (write '(funapp 1232 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1232 58))
                              (display "\n")
                              (null? x8182)))))
                         (if x-cnd8181
                           (letrec*
                            ((g8183
                              (letrec*
                               ((x8184
                                 (begin
                                   (write '(funapp 1236 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1236 61))
                                 (display "\n")
                                 (proc x8184)))))
                            g8183)
                           (letrec*
                            ((x-cnd8185
                              (letrec*
                               ((x8186
                                 (begin
                                   (write '(funapp 1240 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1240 62))
                                 (display "\n")
                                 (null? x8186)))))
                            (if x-cnd8185
                              (letrec*
                               ((g8187
                                 (letrec*
                                  ((x8189
                                    (begin
                                      (write '(funapp 1245 43))
                                      (display "\n")
                                      (car args)))
                                   (x8188
                                    (begin
                                      (write '(funapp 1245 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1246 35))
                                    (display "\n")
                                    (proc x8189 x8188)))))
                               g8187)
                              (letrec*
                               ((x-cnd8190
                                 (letrec*
                                  ((x8191
                                    (begin
                                      (write '(funapp 1251 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1252 35))
                                    (display "\n")
                                    (null? x8191)))))
                               (if x-cnd8190
                                 (letrec*
                                  ((g8192
                                    (letrec*
                                     ((x8195
                                       (begin
                                         (write '(funapp 1257 46))
                                         (display "\n")
                                         (car args)))
                                      (x8194
                                       (begin
                                         (write '(funapp 1258 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x8193
                                       (begin
                                         (write '(funapp 1259 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1260 38))
                                       (display "\n")
                                       (proc x8195 x8194 x8193)))))
                                  g8192)
                                 (letrec*
                                  ((x-cnd8196
                                    (letrec*
                                     ((x8197
                                       (begin
                                         (write '(funapp 1265 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1266 38))
                                       (display "\n")
                                       (null? x8197)))))
                                  (if x-cnd8196
                                    (letrec*
                                     ((g8198
                                       (letrec*
                                        ((x8202
                                          (begin
                                            (write '(funapp 1271 49))
                                            (display "\n")
                                            (car args)))
                                         (x8201
                                          (begin
                                            (write '(funapp 1272 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x8200
                                          (begin
                                            (write '(funapp 1273 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x8199
                                          (begin
                                            (write '(funapp 1274 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1275 41))
                                          (display "\n")
                                          (proc x8202 x8201 x8200 x8199)))))
                                     g8198)
                                    (letrec*
                                     ((x-cnd8203
                                       (letrec*
                                        ((x8204
                                          (letrec*
                                           ((x8205
                                             (begin
                                               (write '(funapp 1282 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1283 44))
                                             (display "\n")
                                             (cdr x8205)))))
                                        (begin
                                          (write '(funapp 1284 41))
                                          (display "\n")
                                          (null? x8204)))))
                                     (if x-cnd8203
                                       (letrec*
                                        ((g8206
                                          (letrec*
                                           ((x8212
                                             (begin
                                               (write '(funapp 1289 52))
                                               (display "\n")
                                               (car args)))
                                            (x8211
                                             (begin
                                               (write '(funapp 1290 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x8210
                                             (begin
                                               (write '(funapp 1291 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x8209
                                             (begin
                                               (write '(funapp 1292 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x8207
                                             (letrec*
                                              ((x8208
                                                (begin
                                                  (write '(funapp 1295 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1296 47))
                                                (display "\n")
                                                (car x8208)))))
                                           (begin
                                             (write '(funapp 1297 44))
                                             (display "\n")
                                             (proc
                                              x8212
                                              x8211
                                              x8210
                                              x8209
                                              x8207)))))
                                        g8206)
                                       (letrec*
                                        ((x-cnd8213
                                          (letrec*
                                           ((x8214
                                             (letrec*
                                              ((x8215
                                                (begin
                                                  (write '(funapp 1309 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1310 47))
                                                (display "\n")
                                                (cddr x8215)))))
                                           (begin
                                             (write '(funapp 1311 44))
                                             (display "\n")
                                             (null? x8214)))))
                                        (if x-cnd8213
                                          (letrec*
                                           ((g8216
                                             (letrec*
                                              ((x8224
                                                (begin
                                                  (write '(funapp 1316 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x8223
                                                (begin
                                                  (write '(funapp 1317 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x8222
                                                (begin
                                                  (write '(funapp 1318 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x8221
                                                (begin
                                                  (write '(funapp 1319 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x8219
                                                (letrec*
                                                 ((x8220
                                                   (begin
                                                     (write '(funapp 1322 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1323 50))
                                                   (display "\n")
                                                   (car x8220))))
                                               (x8217
                                                (letrec*
                                                 ((x8218
                                                   (begin
                                                     (write '(funapp 1326 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1327 50))
                                                   (display "\n")
                                                   (cadr x8218)))))
                                              (begin
                                                (write '(funapp 1328 47))
                                                (display "\n")
                                                (proc
                                                 x8224
                                                 x8223
                                                 x8222
                                                 x8221
                                                 x8219
                                                 x8217)))))
                                           g8216)
                                          (letrec*
                                           ((x-cnd8225
                                             (letrec*
                                              ((x8226
                                                (letrec*
                                                 ((x8227
                                                   (begin
                                                     (write '(funapp 1341 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1342 50))
                                                   (display "\n")
                                                   (cdddr x8227)))))
                                              (begin
                                                (write '(funapp 1343 47))
                                                (display "\n")
                                                (null? x8226)))))
                                           (if x-cnd8225
                                             (letrec*
                                              ((g8228
                                                (letrec*
                                                 ((x8238
                                                   (begin
                                                     (write '(funapp 1348 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x8237
                                                   (begin
                                                     (write '(funapp 1349 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x8236
                                                   (begin
                                                     (write '(funapp 1350 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x8235
                                                   (begin
                                                     (write '(funapp 1351 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x8233
                                                   (letrec*
                                                    ((x8234
                                                      (begin
                                                        (write
                                                         '(funapp 1354 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1355 53))
                                                      (display "\n")
                                                      (car x8234))))
                                                  (x8231
                                                   (letrec*
                                                    ((x8232
                                                      (begin
                                                        (write
                                                         '(funapp 1358 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1359 53))
                                                      (display "\n")
                                                      (cadr x8232))))
                                                  (x8229
                                                   (letrec*
                                                    ((x8230
                                                      (begin
                                                        (write
                                                         '(funapp 1362 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1363 53))
                                                      (display "\n")
                                                      (caddr x8230)))))
                                                 (begin
                                                   (write '(funapp 1364 50))
                                                   (display "\n")
                                                   (proc
                                                    x8238
                                                    x8237
                                                    x8236
                                                    x8235
                                                    x8233
                                                    x8231
                                                    x8229)))))
                                              g8228)
                                             (letrec*
                                              ((g8239
                                                (begin
                                                  (write '(funapp 1375 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g8239)))))))))))))))))))
                   g8176)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g8240
                     (letrec*
                      ((x8242
                        (begin
                          (write '(funapp 1381 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1381 57))
                        (display "\n")
                        (assert x8242))))
                    (g8241
                     (letrec*
                      ((x-cnd8243
                        (begin
                          (write '(funapp 1384 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8243
                        #f
                        (letrec*
                         ((x-cnd8244
                           (letrec*
                            ((x8245
                              (begin
                                (write '(funapp 1389 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1389 55))
                              (display "\n")
                              (equal? x8245 e)))))
                         (if x-cnd8244
                           l
                           (letrec*
                            ((x8246
                              (begin
                                (write '(funapp 1392 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1392 55))
                              (display "\n")
                              (member e x8246)))))))))
                   g8241)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g8247
                     (letrec*
                      ((x8248
                        (letrec*
                         ((x8249
                           (letrec*
                            ((x8250
                              (begin
                                (write '(funapp 1401 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1401 61))
                              (display "\n")
                              (cdr x8250)))))
                         (begin
                           (write '(funapp 1402 26))
                           (display "\n")
                           (cdr x8249)))))
                      (begin
                        (write '(funapp 1403 23))
                        (display "\n")
                        (cdr x8248)))))
                   g8247)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g8251
                     (letrec*
                      ((x8252
                        (letrec*
                         ((x8253
                           (letrec*
                            ((x8254
                              (begin
                                (write '(funapp 1412 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1412 61))
                              (display "\n")
                              (cdr x8254)))))
                         (begin
                           (write '(funapp 1413 26))
                           (display "\n")
                           (cdr x8253)))))
                      (begin
                        (write '(funapp 1414 23))
                        (display "\n")
                        (car x8252)))))
                   g8251)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g8255
                     (begin
                       (write '(funapp 1416 53))
                       (display "\n")
                       (random 42))))
                   g8255)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g8256
                     (letrec*
                      ((x8258
                        (begin
                          (write '(funapp 1420 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1420 59))
                        (display "\n")
                        (assert x8258))))
                    (g8257
                     (begin (write '(funapp 1421 28)) (display "\n") (= x 0))))
                   g8257)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8259
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1428 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g8260
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1430 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8260))))
                   g8259)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g8261
                     (letrec*
                      ((x8262
                        (begin
                          (write '(funapp 1436 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1436 55))
                        (display "\n")
                        (car x8262)))))
                   g8261)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g8263
                     (letrec*
                      ((val7259
                        (letrec*
                         ((x-cnd8264
                           (begin
                             (write '(funapp 1446 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8264
                           (letrec*
                            ((x8265
                              (begin
                                (write '(funapp 1448 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1448 55))
                              (display "\n")
                              (list? x8265)))
                           #f))))
                      (letrec*
                       ((g8266
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1451 52))
                             (display "\n")
                             (null? l)))))
                       g8266))))
                   g8263)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g8267
                     (letrec*
                      ((x8268
                        (letrec*
                         ((x8269
                           (letrec*
                            ((x8270
                              (begin
                                (write '(funapp 1461 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1461 61))
                              (display "\n")
                              (car x8270)))))
                         (begin
                           (write '(funapp 1462 26))
                           (display "\n")
                           (cdr x8269)))))
                      (begin
                        (write '(funapp 1463 23))
                        (display "\n")
                        (cdr x8268)))))
                   g8267)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g8271
                     (letrec*
                      ((x-cnd8272
                        (letrec*
                         ((x8273 #\0))
                         (begin
                           (write '(funapp 1470 58))
                           (display "\n")
                           (char<=? x8273 c)))))
                      (if x-cnd8272
                        (letrec*
                         ((x8274 #\9))
                         (begin
                           (write '(funapp 1472 48))
                           (display "\n")
                           (char<=? c x8274)))
                        #f))))
                   g8271)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g8275
                     (letrec*
                      ((x8277
                        (begin
                          (write '(funapp 1479 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1479 57))
                        (display "\n")
                        (assert x8277))))
                    (g8276
                     (letrec*
                      ((x-cnd8278
                        (begin
                          (write '(funapp 1482 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8278
                        #f
                        (letrec*
                         ((x-cnd8279
                           (letrec*
                            ((x8280
                              (begin
                                (write '(funapp 1487 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1487 56))
                              (display "\n")
                              (eqv? x8280 k)))))
                         (if x-cnd8279
                           (begin
                             (write '(funapp 1489 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8281
                              (begin
                                (write '(funapp 1490 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1490 55))
                              (display "\n")
                              (assq k x8281)))))))))
                   g8276)))
               (not (lambda (x) (letrec* ((g8282 (if x #f #t))) g8282)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g8283
                     (begin
                       (write '(funapp 1494 50))
                       (display "\n")
                       (append l1 l2))))
                   g8283)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g8284
                     (letrec*
                      ((x8286
                        (begin
                          (write '(funapp 1498 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1498 57))
                        (display "\n")
                        (assert x8286))))
                    (g8285
                     (letrec*
                      ((x-cnd8287
                        (begin
                          (write '(funapp 1501 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8287
                        #f
                        (letrec*
                         ((x-cnd8288
                           (letrec*
                            ((x8289
                              (begin
                                (write '(funapp 1506 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1506 55))
                              (display "\n")
                              (eq? x8289 e)))))
                         (if x-cnd8288
                           l
                           (letrec*
                            ((x8290
                              (begin
                                (write '(funapp 1509 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1509 55))
                              (display "\n")
                              (memq e x8290)))))))))
                   g8285)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g8291
                     (letrec*
                      ((x8292
                        (letrec*
                         ((x8293
                           (letrec*
                            ((x8294
                              (begin
                                (write '(funapp 1518 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1518 61))
                              (display "\n")
                              (car x8294)))))
                         (begin
                           (write '(funapp 1519 26))
                           (display "\n")
                           (cdr x8293)))))
                      (begin
                        (write '(funapp 1520 23))
                        (display "\n")
                        (car x8292)))))
                   g8291)))
               (length
                (lambda (l)
                  (letrec*
                   ((g8295
                     (letrec*
                      ((x8297
                        (begin
                          (write '(funapp 1525 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1525 57))
                        (display "\n")
                        (assert x8297))))
                    (g8296
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g8298
                             (letrec*
                              ((x-cnd8299
                                (begin
                                  (write '(funapp 1533 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd8299
                                0
                                (letrec*
                                 ((x8300
                                   (letrec*
                                    ((x8301
                                      (begin
                                        (write '(funapp 1538 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1538 63))
                                      (display "\n")
                                      (rec x8301)))))
                                 (begin
                                   (write '(funapp 1539 34))
                                   (display "\n")
                                   (+ 1 x8300)))))))
                           g8298))))
                      (letrec*
                       ((g8302
                         (begin
                           (write '(funapp 1541 40))
                           (display "\n")
                           (rec l))))
                       g8302))))
                   g8296)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8303
                     (letrec*
                      ((x8306
                        (begin
                          (write '(funapp 1546 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1546 58))
                        (display "\n")
                        (assert x8306))))
                    (g8304
                     (letrec*
                      ((x8307
                        (begin
                          (write '(funapp 1547 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1547 58))
                        (display "\n")
                        (assert x8307))))
                    (g8305
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1550 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g8308
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1552 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8308))))
                   g8305)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g8309
                     (letrec*
                      ((x8310
                        (begin
                          (write '(funapp 1558 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1558 65))
                        (display "\n")
                        (not x8310)))))
                   g8309)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g8311
                     (letrec*
                      ((x8312
                        (letrec*
                         ((x8313
                           (begin
                             (write '(funapp 1565 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1565 58))
                           (display "\n")
                           (car x8313)))))
                      (begin
                        (write '(funapp 1566 23))
                        (display "\n")
                        (cdr x8312)))))
                   g8311)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g8314
                     (letrec*
                      ((x8316
                        (begin
                          (write '(funapp 1571 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1571 57))
                        (display "\n")
                        (assert x8316))))
                    (g8315
                     (letrec*
                      ((x-cnd8317
                        (begin
                          (write '(funapp 1574 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8317
                        #f
                        (letrec*
                         ((x-cnd8318
                           (letrec*
                            ((x8319
                              (begin
                                (write '(funapp 1579 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1579 56))
                              (display "\n")
                              (equal? x8319 k)))))
                         (if x-cnd8318
                           (begin
                             (write '(funapp 1581 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8320
                              (begin
                                (write '(funapp 1582 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1582 55))
                              (display "\n")
                              (assoc k x8320)))))))))
                   g8315)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g8321
                     (letrec*
                      ((x8322
                        (begin
                          (write '(funapp 1587 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1587 55))
                        (display "\n")
                        (car x8322)))))
                   g8321)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g8323
                     (letrec*
                      ((x8326
                        (begin
                          (write '(funapp 1592 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1592 58))
                        (display "\n")
                        (assert x8326))))
                    (g8324
                     (letrec*
                      ((x8327
                        (begin
                          (write '(funapp 1593 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1593 58))
                        (display "\n")
                        (assert x8327))))
                    (g8325
                     (letrec*
                      ((x8328
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1594 63))
                        (display "\n")
                        (not x8328)))))
                   g8325)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8329
                     (letrec*
                      ((val7261
                        (begin
                          (write '(funapp 1601 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g8330
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1603 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8330))))
                   g8329)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g8331
                     (letrec*
                      ((x8334
                        (begin
                          (write '(funapp 1609 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1609 62))
                        (display "\n")
                        (assert x8334))))
                    (g8332
                     (letrec*
                      ((x8335
                        (begin
                          (write '(funapp 1610 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1610 57))
                        (display "\n")
                        (assert x8335))))
                    (g8333
                     (letrec*
                      ((x-cnd8336
                        (begin
                          (write '(funapp 1613 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8336
                        #t
                        (letrec*
                         ((x-cnd8337
                           (begin
                             (write '(funapp 1617 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8337
                           (letrec*
                            ((g8338
                              (letrec*
                               ((x8340
                                 (begin
                                   (write '(funapp 1620 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1620 64))
                                 (display "\n")
                                 (f x8340))))
                             (g8339
                              (letrec*
                               ((x8341
                                 (begin
                                   (write '(funapp 1622 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1622 58))
                                 (display "\n")
                                 (for-each f x8341)))))
                            g8339)
                           (begin
                             (write '(funapp 1624 27))
                             (display "\n")
                             '())))))))
                   g8333)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g8342
                     (letrec*
                      ((x8344
                        (begin
                          (write '(funapp 1629 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1629 59))
                        (display "\n")
                        (assert x8344))))
                    (g8343
                     (letrec*
                      ((x-cnd8345
                        (begin
                          (write '(funapp 1631 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd8345
                        (begin
                          (write '(funapp 1631 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g8343)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8346
                     (letrec*
                      ((x8349
                        (begin
                          (write '(funapp 1636 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1636 58))
                        (display "\n")
                        (assert x8349))))
                    (g8347
                     (letrec*
                      ((x8350
                        (begin
                          (write '(funapp 1637 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1637 58))
                        (display "\n")
                        (assert x8350))))
                    (g8348
                     (letrec*
                      ((val7262
                        (begin
                          (write '(funapp 1640 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g8351
                         (if val7262
                           val7262
                           (begin
                             (write '(funapp 1642 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8351))))
                   g8348)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g8352
                     (letrec*
                      ((x8353
                        (letrec*
                         ((x8354
                           (letrec*
                            ((x8355
                              (begin
                                (write '(funapp 1652 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1652 61))
                              (display "\n")
                              (cdr x8355)))))
                         (begin
                           (write '(funapp 1653 26))
                           (display "\n")
                           (cdr x8354)))))
                      (begin
                        (write '(funapp 1654 23))
                        (display "\n")
                        (car x8353)))))
                   g8352)))
               (newline (lambda () (letrec* ((g8356 #f)) g8356)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g8357
                     (letrec*
                      ((x8359
                        (letrec*
                         ((x8360
                           (begin
                             (write '(funapp 1662 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1662 58))
                           (display "\n")
                           (abs x8360))))
                       (x8358
                        (begin
                          (write '(funapp 1663 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1664 23))
                        (display "\n")
                        (/ x8359 x8358)))))
                   g8357)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g8361
                     (letrec*
                      ((x8365
                        (begin
                          (write '(funapp 1670 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1670 57))
                        (display "\n")
                        (assert x8365))))
                    (g8362
                     (letrec*
                      ((x8366
                        (begin
                          (write '(funapp 1671 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1671 63))
                        (display "\n")
                        (assert x8366))))
                    (g8363
                     (letrec*
                      ((x8367
                        (letrec*
                         ((x8368
                           (begin
                             (write '(funapp 1674 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1674 61))
                           (display "\n")
                           (< index x8368)))))
                      (begin
                        (write '(funapp 1675 23))
                        (display "\n")
                        (assert x8367))))
                    (g8364
                     (letrec*
                      ((x-cnd8369
                        (begin
                          (write '(funapp 1678 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8369
                        (begin
                          (write '(funapp 1680 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8371
                           (begin
                             (write '(funapp 1682 34))
                             (display "\n")
                             (cdr l)))
                          (x8370
                           (begin
                             (write '(funapp 1682 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1683 26))
                           (display "\n")
                           (list-ref x8371 x8370)))))))
                   g8364)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8372
                     (letrec*
                      ((x-cnd8373
                        (begin
                          (write '(funapp 1690 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8373
                        a
                        (letrec*
                         ((x8374
                           (begin
                             (write '(funapp 1693 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1693 57))
                           (display "\n")
                           (gcd b x8374)))))))
                   g8372)))
               (block
                (lambda (x7758 y7759 color7760)
                  (letrec*
                   ((g8375
                     (letrec*
                      ((x8376
                        (letrec*
                         ((x8377
                           (letrec*
                            ((x8378
                              (begin
                                (write '(funapp 1704 37))
                                (display "\n")
                                (orig-cons
                                 color7760
                                 (begin
                                   (write '(funapp 1704 57))
                                   (display "\n")
                                   '())))))
                            (begin
                              (write '(funapp 1705 29))
                              (display "\n")
                              (orig-cons y7759 x8378)))))
                         (begin
                           (write '(funapp 1706 26))
                           (display "\n")
                           (orig-cons x7758 x8377)))))
                      (begin
                        (write '(funapp 1707 23))
                        (display "\n")
                        (orig-cons
                         (begin
                           (write '(funapp 1707 33))
                           (display "\n")
                           'block)
                         x8376)))))
                   g8375)))
               (block?
                (lambda (block7757)
                  (letrec*
                   ((g8379
                     (letrec*
                      ((x8380
                        (begin
                          (write '(funapp 1713 39))
                          (display "\n")
                          (car block7757))))
                      (begin
                        (write '(funapp 1713 57))
                        (display "\n")
                        (eq?
                         x8380
                         (begin
                           (write '(funapp 1713 67))
                           (display "\n")
                           'block))))))
                   g8379)))
               (block-x
                (lambda (block)
                  (letrec*
                   ((g8381
                     (letrec*
                      ((x8382
                        (begin
                          (write '(funapp 1719 39))
                          (display "\n")
                          (orig-cdr block))))
                      (begin
                        (write '(funapp 1719 58))
                        (display "\n")
                        (orig-car x8382)))))
                   g8381)))
               (block-y
                (lambda (block)
                  (letrec*
                   ((g8383
                     (letrec*
                      ((x8384
                        (letrec*
                         ((x8385
                           (begin
                             (write '(funapp 1727 42))
                             (display "\n")
                             (orig-cdr block))))
                         (begin
                           (write '(funapp 1727 61))
                           (display "\n")
                           (orig-cdr x8385)))))
                      (begin
                        (write '(funapp 1728 23))
                        (display "\n")
                        (orig-car x8384)))))
                   g8383)))
               (block-color
                (lambda (block)
                  (letrec*
                   ((g8386
                     (letrec*
                      ((x8387
                        (letrec*
                         ((x8388
                           (letrec*
                            ((x8389
                              (begin
                                (write '(funapp 1739 37))
                                (display "\n")
                                (orig-cdr block))))
                            (begin
                              (write '(funapp 1740 29))
                              (display "\n")
                              (orig-cdr x8389)))))
                         (begin
                           (write '(funapp 1741 26))
                           (display "\n")
                           (orig-cdr x8388)))))
                      (begin
                        (write '(funapp 1742 23))
                        (display "\n")
                        (orig-car x8387)))))
                   g8386)))
               (tetra
                (lambda (center7765 blocks7766)
                  (letrec*
                   ((g8390
                     (letrec*
                      ((x8391
                        (letrec*
                         ((x8392
                           (begin
                             (write '(funapp 1751 34))
                             (display "\n")
                             (orig-cons
                              blocks7766
                              (begin
                                (write '(funapp 1751 55))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1752 26))
                           (display "\n")
                           (orig-cons center7765 x8392)))))
                      (begin
                        (write '(funapp 1753 23))
                        (display "\n")
                        (orig-cons
                         (begin
                           (write '(funapp 1753 33))
                           (display "\n")
                           'tetra)
                         x8391)))))
                   g8390)))
               (tetra?
                (lambda (tetra7764)
                  (letrec*
                   ((g8393
                     (letrec*
                      ((x8394
                        (begin
                          (write '(funapp 1759 39))
                          (display "\n")
                          (car tetra7764))))
                      (begin
                        (write '(funapp 1759 57))
                        (display "\n")
                        (eq?
                         x8394
                         (begin
                           (write '(funapp 1759 67))
                           (display "\n")
                           'tetra))))))
                   g8393)))
               (tetra-center
                (lambda (tetra)
                  (letrec*
                   ((g8395
                     (letrec*
                      ((x8396
                        (begin
                          (write '(funapp 1765 39))
                          (display "\n")
                          (orig-cdr tetra))))
                      (begin
                        (write '(funapp 1765 58))
                        (display "\n")
                        (orig-car x8396)))))
                   g8395)))
               (tetra-blocks
                (lambda (tetra)
                  (letrec*
                   ((g8397
                     (letrec*
                      ((x8398
                        (letrec*
                         ((x8399
                           (begin
                             (write '(funapp 1773 42))
                             (display "\n")
                             (orig-cdr tetra))))
                         (begin
                           (write '(funapp 1773 61))
                           (display "\n")
                           (orig-cdr x8399)))))
                      (begin
                        (write '(funapp 1774 23))
                        (display "\n")
                        (orig-car x8398)))))
                   g8397)))
               (world
                (lambda (tetra7770 blocks7771)
                  (letrec*
                   ((g8400
                     (letrec*
                      ((x8401
                        (letrec*
                         ((x8402
                           (begin
                             (write '(funapp 1783 34))
                             (display "\n")
                             (orig-cons
                              blocks7771
                              (begin
                                (write '(funapp 1783 55))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1784 26))
                           (display "\n")
                           (orig-cons tetra7770 x8402)))))
                      (begin
                        (write '(funapp 1785 23))
                        (display "\n")
                        (orig-cons
                         (begin
                           (write '(funapp 1785 33))
                           (display "\n")
                           'world)
                         x8401)))))
                   g8400)))
               (world?
                (lambda (world7769)
                  (letrec*
                   ((g8403
                     (letrec*
                      ((x8404
                        (begin
                          (write '(funapp 1791 39))
                          (display "\n")
                          (car world7769))))
                      (begin
                        (write '(funapp 1791 57))
                        (display "\n")
                        (eq?
                         x8404
                         (begin
                           (write '(funapp 1791 67))
                           (display "\n")
                           'world))))))
                   g8403)))
               (world-tetra
                (lambda (world)
                  (letrec*
                   ((g8405
                     (letrec*
                      ((x8406
                        (begin
                          (write '(funapp 1797 39))
                          (display "\n")
                          (orig-cdr world))))
                      (begin
                        (write '(funapp 1797 58))
                        (display "\n")
                        (orig-car x8406)))))
                   g8405)))
               (world-blocks
                (lambda (world)
                  (letrec*
                   ((g8407
                     (letrec*
                      ((x8408
                        (letrec*
                         ((x8409
                           (begin
                             (write '(funapp 1805 42))
                             (display "\n")
                             (orig-cdr world))))
                         (begin
                           (write '(funapp 1805 61))
                           (display "\n")
                           (orig-cdr x8409)))))
                      (begin
                        (write '(funapp 1806 23))
                        (display "\n")
                        (orig-car x8408)))))
                   g8407)))
               (posn
                (lambda (x7775 y7776)
                  (letrec*
                   ((g8410
                     (letrec*
                      ((x8411
                        (letrec*
                         ((x8412
                           (begin
                             (write '(funapp 1815 34))
                             (display "\n")
                             (orig-cons
                              y7776
                              (begin
                                (write '(funapp 1815 50))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1816 26))
                           (display "\n")
                           (orig-cons x7775 x8412)))))
                      (begin
                        (write '(funapp 1817 23))
                        (display "\n")
                        (orig-cons
                         (begin (write '(funapp 1817 33)) (display "\n") 'posn)
                         x8411)))))
                   g8410)))
               (posn?
                (lambda (posn7774)
                  (letrec*
                   ((g8413
                     (letrec*
                      ((x8414
                        (begin
                          (write '(funapp 1823 39))
                          (display "\n")
                          (car posn7774))))
                      (begin
                        (write '(funapp 1823 56))
                        (display "\n")
                        (eq?
                         x8414
                         (begin
                           (write '(funapp 1823 66))
                           (display "\n")
                           'posn))))))
                   g8413)))
               (posn-x
                (lambda (posn)
                  (letrec*
                   ((g8415
                     (letrec*
                      ((x8416
                        (begin
                          (write '(funapp 1829 39))
                          (display "\n")
                          (orig-cdr posn))))
                      (begin
                        (write '(funapp 1829 57))
                        (display "\n")
                        (orig-car x8416)))))
                   g8415)))
               (posn-y
                (lambda (posn)
                  (letrec*
                   ((g8417
                     (letrec*
                      ((x8418
                        (letrec*
                         ((x8419
                           (begin
                             (write '(funapp 1837 42))
                             (display "\n")
                             (orig-cdr posn))))
                         (begin
                           (write '(funapp 1837 60))
                           (display "\n")
                           (orig-cdr x8419)))))
                      (begin
                        (write '(funapp 1838 23))
                        (display "\n")
                        (orig-car x8418)))))
                   g8417)))
               (COLOR/C symbol?/c)
               (POSN/C
                (lambda (j7406 k7407 v7405)
                  (letrec*
                   ((g8420
                     (letrec*
                      ((checked7408
                        (letrec*
                         ((x8421
                           (letrec*
                            ((x8422
                              (begin
                                (write '(funapp 1850 37))
                                (display "\n")
                                (orig-cdr v7405))))
                            (begin
                              (write '(funapp 1851 29))
                              (display "\n")
                              (orig-car x8422)))))
                         (begin
                           (write '(funapp 1852 26))
                           (display "\n")
                           (real?/c j7406 k7407 x8421)))))
                      (letrec*
                       ((g8423
                         (letrec*
                          ((checked7409
                            (letrec*
                             ((x8424
                               (letrec*
                                ((x8425
                                  (letrec*
                                   ((x8426
                                     (begin
                                       (write '(funapp 1862 44))
                                       (display "\n")
                                       (orig-cdr v7405))))
                                   (begin
                                     (write '(funapp 1863 36))
                                     (display "\n")
                                     (orig-cdr x8426)))))
                                (begin
                                  (write '(funapp 1864 33))
                                  (display "\n")
                                  (orig-car x8425)))))
                             (begin
                               (write '(funapp 1865 30))
                               (display "\n")
                               (real?/c j7406 k7407 x8424)))))
                          (letrec*
                           ((g8427
                             (letrec*
                              ((x8428
                                (letrec*
                                 ((x8429
                                   (begin
                                     (write '(funapp 1871 42))
                                     (display "\n")
                                     (cons
                                      checked7409
                                      (begin
                                        (write '(funapp 1871 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1872 34))
                                   (display "\n")
                                   (cons checked7408 x8429)))))
                              (begin
                                (write '(funapp 1873 31))
                                (display "\n")
                                (cons posn x8428)))))
                           g8427))))
                       g8423))))
                   g8420)))
               (BLOCK/C
                (lambda (j7412 k7413 v7411)
                  (letrec*
                   ((g8430
                     (letrec*
                      ((checked7414
                        (letrec*
                         ((x8431
                           (letrec*
                            ((x8432
                              (begin
                                (write '(funapp 1886 37))
                                (display "\n")
                                (orig-cdr v7411))))
                            (begin
                              (write '(funapp 1887 29))
                              (display "\n")
                              (orig-car x8432)))))
                         (begin
                           (write '(funapp 1888 26))
                           (display "\n")
                           (real?/c j7412 k7413 x8431)))))
                      (letrec*
                       ((g8433
                         (letrec*
                          ((checked7415
                            (letrec*
                             ((x8434
                               (letrec*
                                ((x8435
                                  (letrec*
                                   ((x8436
                                     (begin
                                       (write '(funapp 1898 44))
                                       (display "\n")
                                       (orig-cdr v7411))))
                                   (begin
                                     (write '(funapp 1899 36))
                                     (display "\n")
                                     (orig-cdr x8436)))))
                                (begin
                                  (write '(funapp 1900 33))
                                  (display "\n")
                                  (orig-car x8435)))))
                             (begin
                               (write '(funapp 1901 30))
                               (display "\n")
                               (real?/c j7412 k7413 x8434)))))
                          (letrec*
                           ((g8437
                             (letrec*
                              ((checked7416
                                (letrec*
                                 ((x8438
                                   (letrec*
                                    ((x8439
                                      (letrec*
                                       ((x8440
                                         (letrec*
                                          ((x8441
                                            (begin
                                              (write '(funapp 1913 51))
                                              (display "\n")
                                              (orig-cdr v7411))))
                                          (begin
                                            (write '(funapp 1914 43))
                                            (display "\n")
                                            (orig-cdr x8441)))))
                                       (begin
                                         (write '(funapp 1915 40))
                                         (display "\n")
                                         (orig-cdr x8440)))))
                                    (begin
                                      (write '(funapp 1916 37))
                                      (display "\n")
                                      (orig-car x8439)))))
                                 (begin
                                   (write '(funapp 1917 34))
                                   (display "\n")
                                   (COLOR/C j7412 k7413 x8438)))))
                              (letrec*
                               ((g8442
                                 (letrec*
                                  ((x8443
                                    (letrec*
                                     ((x8444
                                       (letrec*
                                        ((x8445
                                          (begin
                                            (write '(funapp 1925 49))
                                            (display "\n")
                                            (cons
                                             checked7416
                                             (begin
                                               (write '(funapp 1925 66))
                                               (display "\n")
                                               '())))))
                                        (begin
                                          (write '(funapp 1926 41))
                                          (display "\n")
                                          (cons checked7415 x8445)))))
                                     (begin
                                       (write '(funapp 1927 38))
                                       (display "\n")
                                       (cons checked7414 x8444)))))
                                  (begin
                                    (write '(funapp 1928 35))
                                    (display "\n")
                                    (cons block x8443)))))
                               g8442))))
                           g8437))))
                       g8433))))
                   g8430)))
               (BSET/C
                (begin
                  (write '(funapp 1933 24))
                  (display "\n")
                  (listof BLOCK/C)))
               (TETRA/C
                (lambda (j7419 k7420 v7418)
                  (letrec*
                   ((g8446
                     (letrec*
                      ((checked7421
                        (letrec*
                         ((x8447
                           (letrec*
                            ((x8448
                              (begin
                                (write '(funapp 1943 37))
                                (display "\n")
                                (orig-cdr v7418))))
                            (begin
                              (write '(funapp 1944 29))
                              (display "\n")
                              (orig-car x8448)))))
                         (begin
                           (write '(funapp 1945 26))
                           (display "\n")
                           (POSN/C j7419 k7420 x8447)))))
                      (letrec*
                       ((g8449
                         (letrec*
                          ((checked7422
                            (letrec*
                             ((x8450
                               (letrec*
                                ((x8451
                                  (letrec*
                                   ((x8452
                                     (begin
                                       (write '(funapp 1955 44))
                                       (display "\n")
                                       (orig-cdr v7418))))
                                   (begin
                                     (write '(funapp 1956 36))
                                     (display "\n")
                                     (orig-cdr x8452)))))
                                (begin
                                  (write '(funapp 1957 33))
                                  (display "\n")
                                  (orig-car x8451)))))
                             (begin
                               (write '(funapp 1958 30))
                               (display "\n")
                               (BSET/C j7419 k7420 x8450)))))
                          (letrec*
                           ((g8453
                             (letrec*
                              ((x8454
                                (letrec*
                                 ((x8455
                                   (begin
                                     (write '(funapp 1964 42))
                                     (display "\n")
                                     (cons
                                      checked7422
                                      (begin
                                        (write '(funapp 1964 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1965 34))
                                   (display "\n")
                                   (cons checked7421 x8455)))))
                              (begin
                                (write '(funapp 1966 31))
                                (display "\n")
                                (cons tetra x8454)))))
                           g8453))))
                       g8449))))
                   g8446)))
               (WORLD/C
                (lambda (j7425 k7426 v7424)
                  (letrec*
                   ((g8456
                     (letrec*
                      ((checked7427
                        (letrec*
                         ((x8457
                           (letrec*
                            ((x8458
                              (begin
                                (write '(funapp 1979 37))
                                (display "\n")
                                (orig-cdr v7424))))
                            (begin
                              (write '(funapp 1980 29))
                              (display "\n")
                              (orig-car x8458)))))
                         (begin
                           (write '(funapp 1981 26))
                           (display "\n")
                           (TETRA/C j7425 k7426 x8457)))))
                      (letrec*
                       ((g8459
                         (letrec*
                          ((checked7428
                            (letrec*
                             ((x8460
                               (letrec*
                                ((x8461
                                  (letrec*
                                   ((x8462
                                     (begin
                                       (write '(funapp 1991 44))
                                       (display "\n")
                                       (orig-cdr v7424))))
                                   (begin
                                     (write '(funapp 1992 36))
                                     (display "\n")
                                     (orig-cdr x8462)))))
                                (begin
                                  (write '(funapp 1993 33))
                                  (display "\n")
                                  (orig-car x8461)))))
                             (begin
                               (write '(funapp 1994 30))
                               (display "\n")
                               (BSET/C j7425 k7426 x8460)))))
                          (letrec*
                           ((g8463
                             (letrec*
                              ((x8464
                                (letrec*
                                 ((x8465
                                   (begin
                                     (write '(funapp 2000 42))
                                     (display "\n")
                                     (cons
                                      checked7428
                                      (begin
                                        (write '(funapp 2000 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 2001 34))
                                   (display "\n")
                                   (cons checked7427 x8465)))))
                              (begin
                                (write '(funapp 2002 31))
                                (display "\n")
                                (cons world x8464)))))
                           g8463))))
                       g8459))))
                   g8456)))
               (posn=?
                (lambda (p1 p2)
                  (letrec*
                   ((g8466
                     (letrec*
                      ((x-cnd8467
                        (letrec*
                         ((x8469
                           (begin
                             (write '(funapp 2013 34))
                             (display "\n")
                             (posn-x p1)))
                          (x8468
                           (begin
                             (write '(funapp 2013 54))
                             (display "\n")
                             (posn-x p2))))
                         (begin
                           (write '(funapp 2014 26))
                           (display "\n")
                           (= x8469 x8468)))))
                      (if x-cnd8467
                        (letrec*
                         ((x8471
                           (begin
                             (write '(funapp 2017 34))
                             (display "\n")
                             (posn-y p1)))
                          (x8470
                           (begin
                             (write '(funapp 2017 54))
                             (display "\n")
                             (posn-y p2))))
                         (begin
                           (write '(funapp 2018 26))
                           (display "\n")
                           (= x8471 x8470)))
                        #f))))
                   g8466)))
               (block-size 20)
               (board-height 20)
               (board-width 10)
               (block=?
                (lambda (b1 b2)
                  (letrec*
                   ((g8472
                     (letrec*
                      ((x-cnd8473
                        (letrec*
                         ((x8475
                           (begin
                             (write '(funapp 2031 34))
                             (display "\n")
                             (block-x b1)))
                          (x8474
                           (begin
                             (write '(funapp 2031 55))
                             (display "\n")
                             (block-x b2))))
                         (begin
                           (write '(funapp 2032 26))
                           (display "\n")
                           (= x8475 x8474)))))
                      (if x-cnd8473
                        (letrec*
                         ((x8477
                           (begin
                             (write '(funapp 2035 34))
                             (display "\n")
                             (block-y b1)))
                          (x8476
                           (begin
                             (write '(funapp 2035 55))
                             (display "\n")
                             (block-y b2))))
                         (begin
                           (write '(funapp 2036 26))
                           (display "\n")
                           (= x8477 x8476)))
                        #f))))
                   g8472)))
               (block-move
                (lambda (dx dy b)
                  (letrec*
                   ((g8478
                     (letrec*
                      ((x8482
                        (letrec*
                         ((x8483
                           (begin
                             (write '(funapp 2044 48))
                             (display "\n")
                             (block-x b))))
                         (begin
                           (write '(funapp 2044 62))
                           (display "\n")
                           (+ dx x8483))))
                       (x8480
                        (letrec*
                         ((x8481
                           (begin
                             (write '(funapp 2045 48))
                             (display "\n")
                             (block-y b))))
                         (begin
                           (write '(funapp 2045 62))
                           (display "\n")
                           (+ dy x8481))))
                       (x8479
                        (begin
                          (write '(funapp 2046 31))
                          (display "\n")
                          (block-color b))))
                      (begin
                        (write '(funapp 2047 23))
                        (display "\n")
                        (block x8482 x8480 x8479)))))
                   g8478)))
               (block-rotate-ccw
                (lambda (c b)
                  (letrec*
                   ((g8484
                     (letrec*
                      ((x8491
                        (letrec*
                         ((x8495
                           (begin
                             (write '(funapp 2056 34))
                             (display "\n")
                             (posn-x c)))
                          (x8492
                           (letrec*
                            ((x8494
                              (begin
                                (write '(funapp 2059 37))
                                (display "\n")
                                (posn-y c)))
                             (x8493
                              (begin
                                (write '(funapp 2059 56))
                                (display "\n")
                                (block-y b))))
                            (begin
                              (write '(funapp 2060 29))
                              (display "\n")
                              (- x8494 x8493)))))
                         (begin
                           (write '(funapp 2061 26))
                           (display "\n")
                           (+ x8495 x8492))))
                       (x8486
                        (letrec*
                         ((x8490
                           (begin
                             (write '(funapp 2064 34))
                             (display "\n")
                             (posn-y c)))
                          (x8487
                           (letrec*
                            ((x8489
                              (begin
                                (write '(funapp 2067 37))
                                (display "\n")
                                (block-x b)))
                             (x8488
                              (begin
                                (write '(funapp 2067 57))
                                (display "\n")
                                (posn-x c))))
                            (begin
                              (write '(funapp 2068 29))
                              (display "\n")
                              (- x8489 x8488)))))
                         (begin
                           (write '(funapp 2069 26))
                           (display "\n")
                           (+ x8490 x8487))))
                       (x8485
                        (begin
                          (write '(funapp 2070 31))
                          (display "\n")
                          (block-color b))))
                      (begin
                        (write '(funapp 2071 23))
                        (display "\n")
                        (block x8491 x8486 x8485)))))
                   g8484)))
               (block-rotate-cw
                (lambda (c b)
                  (letrec*
                   ((g8496
                     (letrec*
                      ((x8497
                        (letrec*
                         ((x8498
                           (begin
                             (write '(funapp 2080 34))
                             (display "\n")
                             (block-rotate-ccw c b))))
                         (begin
                           (write '(funapp 2081 26))
                           (display "\n")
                           (block-rotate-ccw c x8498)))))
                      (begin
                        (write '(funapp 2082 23))
                        (display "\n")
                        (block-rotate-ccw c x8497)))))
                   g8496)))
               (ormap
                (lambda (p? xs)
                  (letrec*
                   ((g8499
                     (letrec*
                      ((x-cnd8500
                        (begin
                          (write '(funapp 2089 35))
                          (display "\n")
                          (null? xs))))
                      (if x-cnd8500
                        (letrec* ((g8501 #f)) g8501)
                        (letrec*
                         ((g8502
                           (letrec*
                            ((x8505
                              (letrec*
                               ((x8506
                                 (begin
                                   (write '(funapp 2095 54))
                                   (display "\n")
                                   (car xs))))
                               (begin
                                 (write '(funapp 2095 65))
                                 (display "\n")
                                 (p? x8506))))
                             (x8503
                              (letrec*
                               ((x8504
                                 (begin
                                   (write '(funapp 2097 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 2097 59))
                                 (display "\n")
                                 (ormap p? x8504)))))
                            (begin
                              (write '(funapp 2098 29))
                              (display "\n")
                              (or x8505 x8503)))))
                         g8502)))))
                   g8499)))
               (andmap
                (lambda (p? xs)
                  (letrec*
                   ((g8507
                     (letrec*
                      ((x-cnd8508
                        (begin
                          (write '(funapp 2106 35))
                          (display "\n")
                          (null? xs))))
                      (if x-cnd8508
                        (letrec* ((g8509 #t)) g8509)
                        (letrec*
                         ((g8510
                           (letrec*
                            ((x8513
                              (letrec*
                               ((x8514
                                 (begin
                                   (write '(funapp 2112 54))
                                   (display "\n")
                                   (car xs))))
                               (begin
                                 (write '(funapp 2112 65))
                                 (display "\n")
                                 (p? x8514))))
                             (x8511
                              (letrec*
                               ((x8512
                                 (begin
                                   (write '(funapp 2114 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 2114 59))
                                 (display "\n")
                                 (andmap p? x8512)))))
                            (begin
                              (write '(funapp 2115 29))
                              (display "\n")
                              (and x8513 x8511)))))
                         g8510)))))
                   g8507)))
               (filter
                (lambda (p? xs)
                  (letrec*
                   ((g8515
                     (letrec*
                      ((x-cnd8516
                        (begin
                          (write '(funapp 2123 35))
                          (display "\n")
                          (null? xs))))
                      (if x-cnd8516
                        (letrec* ((g8517 null)) g8517)
                        (letrec*
                         ((x-cnd8518
                           (letrec*
                            ((x8519
                              (begin
                                (write '(funapp 2127 55))
                                (display "\n")
                                (car xs))))
                            (begin
                              (write '(funapp 2127 66))
                              (display "\n")
                              (p? x8519)))))
                         (if x-cnd8518
                           (letrec*
                            ((g8520
                              (letrec*
                               ((x8523
                                 (begin
                                   (write '(funapp 2132 40))
                                   (display "\n")
                                   (car xs)))
                                (x8521
                                 (letrec*
                                  ((x8522
                                    (begin
                                      (write '(funapp 2135 43))
                                      (display "\n")
                                      (cdr xs))))
                                  (begin
                                    (write '(funapp 2136 35))
                                    (display "\n")
                                    (filter p? x8522)))))
                               (begin
                                 (write '(funapp 2137 32))
                                 (display "\n")
                                 (cons x8523 x8521)))))
                            g8520)
                           (letrec*
                            ((g8524
                              (letrec*
                               ((x8525
                                 (begin
                                   (write '(funapp 2141 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 2141 59))
                                 (display "\n")
                                 (filter p? x8525)))))
                            g8524)))))))
                   g8515)))
               (append
                (lambda (l r)
                  (letrec*
                   ((g8526
                     (letrec*
                      ((x-cnd8527
                        (begin
                          (write '(funapp 2149 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8527
                        (letrec* ((g8528 r)) g8528)
                        (letrec*
                         ((g8529
                           (letrec*
                            ((x8532
                              (begin
                                (write '(funapp 2155 37))
                                (display "\n")
                                (car l)))
                             (x8530
                              (letrec*
                               ((x8531
                                 (begin
                                   (write '(funapp 2157 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 2157 58))
                                 (display "\n")
                                 (append x8531 r)))))
                            (begin
                              (write '(funapp 2158 29))
                              (display "\n")
                              (cons x8532 x8530)))))
                         g8529)))))
                   g8526)))
               (foldr
                (lambda (f a xs)
                  (letrec*
                   ((g8533
                     (letrec*
                      ((x-cnd8534
                        (begin
                          (write '(funapp 2166 35))
                          (display "\n")
                          (null? xs))))
                      (if x-cnd8534
                        (letrec* ((g8535 a)) g8535)
                        (letrec*
                         ((g8536
                           (letrec*
                            ((x8539
                              (begin
                                (write '(funapp 2172 37))
                                (display "\n")
                                (car xs)))
                             (x8537
                              (letrec*
                               ((x8538
                                 (begin
                                   (write '(funapp 2174 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 2174 59))
                                 (display "\n")
                                 (foldr f a x8538)))))
                            (begin
                              (write '(funapp 2175 29))
                              (display "\n")
                              (f x8539 x8537)))))
                         g8536)))))
                   g8533)))
               (blocks-contains?
                (lambda (bs b)
                  (letrec*
                   ((g8540
                     (begin
                       (write '(funapp 2182 22))
                       (display "\n")
                       (ormap
                        (lambda (c)
                          (letrec*
                           ((g8541
                             (begin
                               (write '(funapp 2183 52))
                               (display "\n")
                               (block=? b c))))
                           g8541))
                        bs))))
                   g8540)))
               (blocks-subset?
                (lambda (bs1 bs2)
                  (letrec*
                   ((g8542
                     (begin
                       (write '(funapp 2190 22))
                       (display "\n")
                       (andmap
                        (lambda (b)
                          (letrec*
                           ((g8543
                             (begin
                               (write '(funapp 2192 42))
                               (display "\n")
                               (blocks-contains? bs2 b))))
                           g8543))
                        bs1))))
                   g8542)))
               (blocks=?
                (lambda (bs1 bs2)
                  (letrec*
                   ((g8544
                     (letrec*
                      ((x-cnd8545
                        (begin
                          (write '(funapp 2200 35))
                          (display "\n")
                          (blocks-subset? bs1 bs2))))
                      (if x-cnd8545
                        (begin
                          (write '(funapp 2201 37))
                          (display "\n")
                          (blocks-subset? bs2 bs1))
                        #f))))
                   g8544)))
               (blocks-intersect
                (lambda (bs1 bs2)
                  (letrec*
                   ((g8546
                     (begin
                       (write '(funapp 2207 22))
                       (display "\n")
                       (filter
                        (lambda (b)
                          (letrec*
                           ((g8547
                             (begin
                               (write '(funapp 2209 42))
                               (display "\n")
                               (blocks-contains? bs2 b))))
                           g8547))
                        bs1))))
                   g8546)))
               (blocks-count
                (lambda (bs)
                  (letrec*
                   ((g8548
                     (begin
                       (write '(funapp 2213 47))
                       (display "\n")
                       (length bs))))
                   g8548)))
               (blocks-move
                (lambda (dx dy bs)
                  (letrec*
                   ((g8549
                     (begin
                       (write '(funapp 2218 22))
                       (display "\n")
                       (map
                        (lambda (b)
                          (letrec*
                           ((g8550
                             (begin
                               (write '(funapp 2220 42))
                               (display "\n")
                               (block-move dx dy b))))
                           g8550))
                        bs))))
                   g8549)))
               (blocks-rotate-ccw
                (lambda (c bs)
                  (letrec*
                   ((g8551
                     (begin
                       (write '(funapp 2227 22))
                       (display "\n")
                       (map
                        (lambda (b)
                          (letrec*
                           ((g8552
                             (begin
                               (write '(funapp 2229 42))
                               (display "\n")
                               (block-rotate-ccw c b))))
                           g8552))
                        bs))))
                   g8551)))
               (blocks-rotate-cw
                (lambda (c bs)
                  (letrec*
                   ((g8553
                     (begin
                       (write '(funapp 2236 22))
                       (display "\n")
                       (map
                        (lambda (b)
                          (letrec*
                           ((g8554
                             (begin
                               (write '(funapp 2238 42))
                               (display "\n")
                               (block-rotate-cw c b))))
                           g8554))
                        bs))))
                   g8553)))
               (blocks-change-color
                (lambda (bs c)
                  (letrec*
                   ((g8555
                     (begin
                       (write '(funapp 2245 22))
                       (display "\n")
                       (map
                        (lambda (b)
                          (letrec*
                           ((g8556
                             (letrec*
                              ((x8558
                                (begin
                                  (write '(funapp 2250 37))
                                  (display "\n")
                                  (block-x b)))
                               (x8557
                                (begin
                                  (write '(funapp 2250 57))
                                  (display "\n")
                                  (block-y b))))
                              (begin
                                (write '(funapp 2251 29))
                                (display "\n")
                                (block x8558 x8557 c)))))
                           g8556))
                        bs))))
                   g8555)))
               (blocks-row
                (lambda (bs i)
                  (letrec*
                   ((g8559
                     (begin
                       (write '(funapp 2259 22))
                       (display "\n")
                       (filter
                        (lambda (b)
                          (letrec*
                           ((g8560
                             (letrec*
                              ((x8561
                                (begin
                                  (write '(funapp 2262 51))
                                  (display "\n")
                                  (block-y b))))
                              (begin
                                (write '(funapp 2262 65))
                                (display "\n")
                                (= i x8561)))))
                           g8560))
                        bs))))
                   g8559)))
               (full-row?
                (lambda (bs i)
                  (letrec*
                   ((g8562
                     (letrec*
                      ((x8563
                        (letrec*
                         ((x8564
                           (begin
                             (write '(funapp 2273 34))
                             (display "\n")
                             (blocks-row bs i))))
                         (begin
                           (write '(funapp 2274 26))
                           (display "\n")
                           (blocks-count x8564)))))
                      (begin
                        (write '(funapp 2275 23))
                        (display "\n")
                        (= board-width x8563)))))
                   g8562)))
               (blocks-overflow?
                (lambda (bs)
                  (letrec*
                   ((g8565
                     (begin
                       (write '(funapp 2281 22))
                       (display "\n")
                       (ormap
                        (lambda (b)
                          (letrec*
                           ((g8566
                             (letrec*
                              ((x8567
                                (begin
                                  (write '(funapp 2284 51))
                                  (display "\n")
                                  (block-y b))))
                              (begin
                                (write '(funapp 2284 65))
                                (display "\n")
                                (<= x8567 0)))))
                           g8566))
                        bs))))
                   g8565)))
               (blocks-union
                (lambda (bs1 bs2)
                  (letrec*
                   ((g8568
                     (begin
                       (write '(funapp 2292 22))
                       (display "\n")
                       (foldr
                        (lambda (b bs)
                          (letrec*
                           ((g8569
                             (letrec*
                              ((x-cnd8570
                                (begin
                                  (write '(funapp 2297 41))
                                  (display "\n")
                                  (blocks-contains? bs b))))
                              (if x-cnd8570
                                (letrec* ((g8571 bs)) g8571)
                                (letrec*
                                 ((g8572
                                   (begin
                                     (write '(funapp 2300 48))
                                     (display "\n")
                                     (cons b bs))))
                                 g8572)))))
                           g8569))
                        bs2
                        bs1))))
                   g8568)))
               (blocks-max-y
                (lambda (bs)
                  (letrec*
                   ((g8573
                     (begin
                       (write '(funapp 2309 22))
                       (display "\n")
                       (foldr
                        (lambda (b n)
                          (letrec*
                           ((g8574
                             (letrec*
                              ((x8575
                                (begin
                                  (write '(funapp 2313 45))
                                  (display "\n")
                                  (block-y b))))
                              (begin
                                (write '(funapp 2313 59))
                                (display "\n")
                                (max x8575 n)))))
                           g8574))
                        0
                        bs))))
                   g8573)))
               (blocks-min-x
                (lambda (bs)
                  (letrec*
                   ((g8576
                     (begin
                       (write '(funapp 2322 22))
                       (display "\n")
                       (foldr
                        (lambda (b n)
                          (letrec*
                           ((g8577
                             (letrec*
                              ((x8578
                                (begin
                                  (write '(funapp 2326 45))
                                  (display "\n")
                                  (block-x b))))
                              (begin
                                (write '(funapp 2326 59))
                                (display "\n")
                                (min x8578 n)))))
                           g8577))
                        board-width
                        bs))))
                   g8576)))
               (blocks-max-x
                (lambda (bs)
                  (letrec*
                   ((g8579
                     (begin
                       (write '(funapp 2335 22))
                       (display "\n")
                       (foldr
                        (lambda (b n)
                          (letrec*
                           ((g8580
                             (letrec*
                              ((x8581
                                (begin
                                  (write '(funapp 2339 45))
                                  (display "\n")
                                  (block-x b))))
                              (begin
                                (write '(funapp 2339 59))
                                (display "\n")
                                (max x8581 n)))))
                           g8580))
                        0
                        bs))))
                   g8579)))
               (eliminate-full-rows
                (lambda (bs)
                  (letrec*
                   ((g8582
                     (begin
                       (write '(funapp 2346 36))
                       (display "\n")
                       (elim-row bs board-height 0))))
                   g8582)))
               (elim-row
                (lambda (bs i offset)
                  (letrec*
                   ((g8583
                     (letrec*
                      ((x-cnd8584
                        (begin
                          (write '(funapp 2352 35))
                          (display "\n")
                          (< i 0))))
                      (if x-cnd8584
                        (letrec* ((g8585 empty)) g8585)
                        (letrec*
                         ((x-cnd8586
                           (begin
                             (write '(funapp 2356 38))
                             (display "\n")
                             (full-row? bs i))))
                         (if x-cnd8586
                           (letrec*
                            ((g8587
                              (letrec*
                               ((x8589
                                 (begin
                                   (write '(funapp 2361 40))
                                   (display "\n")
                                   (sub1 i)))
                                (x8588
                                 (begin
                                   (write '(funapp 2361 57))
                                   (display "\n")
                                   (add1 offset))))
                               (begin
                                 (write '(funapp 2362 32))
                                 (display "\n")
                                 (elim-row bs x8589 x8588)))))
                            g8587)
                           (letrec*
                            ((g8590
                              (letrec*
                               ((x8593
                                 (letrec*
                                  ((x8594
                                    (begin
                                      (write '(funapp 2369 43))
                                      (display "\n")
                                      (sub1 i))))
                                  (begin
                                    (write '(funapp 2370 35))
                                    (display "\n")
                                    (elim-row bs x8594 offset))))
                                (x8591
                                 (letrec*
                                  ((x8592
                                    (begin
                                      (write '(funapp 2373 43))
                                      (display "\n")
                                      (blocks-row bs i))))
                                  (begin
                                    (write '(funapp 2374 35))
                                    (display "\n")
                                    (blocks-move 0 offset x8592)))))
                               (begin
                                 (write '(funapp 2375 32))
                                 (display "\n")
                                 (blocks-union x8593 x8591)))))
                            g8590)))))))
                   g8583)))
               (tetra-move
                (lambda (dx dy t)
                  (letrec*
                   ((g8595
                     (letrec*
                      ((x8598
                        (letrec*
                         ((x8602
                           (letrec*
                            ((x8603
                              (letrec*
                               ((x8604
                                 (begin
                                   (write '(funapp 2389 40))
                                   (display "\n")
                                   (tetra-center t))))
                               (begin
                                 (write '(funapp 2390 32))
                                 (display "\n")
                                 (posn-x x8604)))))
                            (begin
                              (write '(funapp 2391 29))
                              (display "\n")
                              (+ dx x8603))))
                          (x8599
                           (letrec*
                            ((x8600
                              (letrec*
                               ((x8601
                                 (begin
                                   (write '(funapp 2396 40))
                                   (display "\n")
                                   (tetra-center t))))
                               (begin
                                 (write '(funapp 2397 32))
                                 (display "\n")
                                 (posn-y x8601)))))
                            (begin
                              (write '(funapp 2398 29))
                              (display "\n")
                              (+ dy x8600)))))
                         (begin
                           (write '(funapp 2399 26))
                           (display "\n")
                           (posn x8602 x8599))))
                       (x8596
                        (letrec*
                         ((x8597
                           (begin
                             (write '(funapp 2402 34))
                             (display "\n")
                             (tetra-blocks t))))
                         (begin
                           (write '(funapp 2403 26))
                           (display "\n")
                           (blocks-move dx dy x8597)))))
                      (begin
                        (write '(funapp 2404 23))
                        (display "\n")
                        (tetra x8598 x8596)))))
                   g8595)))
               (tetra-rotate-ccw
                (lambda (t)
                  (letrec*
                   ((g8605
                     (letrec*
                      ((x8609
                        (begin
                          (write '(funapp 2411 31))
                          (display "\n")
                          (tetra-center t)))
                       (x8606
                        (letrec*
                         ((x8608
                           (begin
                             (write '(funapp 2414 34))
                             (display "\n")
                             (tetra-center t)))
                          (x8607
                           (begin
                             (write '(funapp 2414 59))
                             (display "\n")
                             (tetra-blocks t))))
                         (begin
                           (write '(funapp 2415 26))
                           (display "\n")
                           (blocks-rotate-ccw x8608 x8607)))))
                      (begin
                        (write '(funapp 2416 23))
                        (display "\n")
                        (tetra x8609 x8606)))))
                   g8605)))
               (tetra-rotate-cw
                (lambda (t)
                  (letrec*
                   ((g8610
                     (letrec*
                      ((x8614
                        (begin
                          (write '(funapp 2423 31))
                          (display "\n")
                          (tetra-center t)))
                       (x8611
                        (letrec*
                         ((x8613
                           (begin
                             (write '(funapp 2426 34))
                             (display "\n")
                             (tetra-center t)))
                          (x8612
                           (begin
                             (write '(funapp 2426 59))
                             (display "\n")
                             (tetra-blocks t))))
                         (begin
                           (write '(funapp 2427 26))
                           (display "\n")
                           (blocks-rotate-cw x8613 x8612)))))
                      (begin
                        (write '(funapp 2428 23))
                        (display "\n")
                        (tetra x8614 x8611)))))
                   g8610)))
               (tetra-overlaps-blocks?
                (lambda (t bs)
                  (letrec*
                   ((g8615
                     (letrec*
                      ((x8616
                        (letrec*
                         ((x8617
                           (letrec*
                            ((x8618
                              (begin
                                (write '(funapp 2439 37))
                                (display "\n")
                                (tetra-blocks t))))
                            (begin
                              (write '(funapp 2440 29))
                              (display "\n")
                              (blocks-intersect x8618 bs)))))
                         (begin
                           (write '(funapp 2441 26))
                           (display "\n")
                           (false? x8617)))))
                      (begin
                        (write '(funapp 2442 23))
                        (display "\n")
                        (false? x8616)))))
                   g8615)))
               (tetra-change-color
                (lambda (t c)
                  (letrec*
                   ((g8619
                     (letrec*
                      ((x8622
                        (begin
                          (write '(funapp 2449 31))
                          (display "\n")
                          (tetra-center t)))
                       (x8620
                        (letrec*
                         ((x8621
                           (begin
                             (write '(funapp 2452 34))
                             (display "\n")
                             (tetra-blocks t))))
                         (begin
                           (write '(funapp 2453 26))
                           (display "\n")
                           (blocks-change-color x8621 c)))))
                      (begin
                        (write '(funapp 2454 23))
                        (display "\n")
                        (tetra x8622 x8620)))))
                   g8619)))
               (build-tetra-blocks
                (lambda (color xc yc x1 y1 x2 y2 x3 y3 x4 y4)
                  (letrec*
                   ((g8623
                     (letrec*
                      ((x8624
                        (letrec*
                         ((x8630
                           (begin
                             (write '(funapp 2463 34))
                             (display "\n")
                             (posn xc yc)))
                          (x8625
                           (letrec*
                            ((x8629
                              (begin
                                (write '(funapp 2466 37))
                                (display "\n")
                                (block x1 y1 color)))
                             (x8628
                              (begin
                                (write '(funapp 2467 37))
                                (display "\n")
                                (block x2 y2 color)))
                             (x8627
                              (begin
                                (write '(funapp 2468 37))
                                (display "\n")
                                (block x3 y3 color)))
                             (x8626
                              (begin
                                (write '(funapp 2469 37))
                                (display "\n")
                                (block x4 y4 color))))
                            (begin
                              (write '(funapp 2470 29))
                              (display "\n")
                              (list x8629 x8628 x8627 x8626)))))
                         (begin
                           (write '(funapp 2471 26))
                           (display "\n")
                           (tetra x8630 x8625)))))
                      (begin
                        (write '(funapp 2472 23))
                        (display "\n")
                        (tetra-move 3 0 x8624)))))
                   g8623)))
               (touchdown
                (lambda (w tetras)
                  (letrec*
                   ((g8631
                     (letrec*
                      ((x8637
                        (begin
                          (write '(funapp 2479 31))
                          (display "\n")
                          (list-pick-random tetras)))
                       (x8632
                        (letrec*
                         ((x8633
                           (letrec*
                            ((x8635
                              (letrec*
                               ((x8636
                                 (begin
                                   (write '(funapp 2486 40))
                                   (display "\n")
                                   (world-tetra w))))
                               (begin
                                 (write '(funapp 2487 32))
                                 (display "\n")
                                 (tetra-blocks x8636))))
                             (x8634
                              (begin
                                (write '(funapp 2488 37))
                                (display "\n")
                                (world-blocks w))))
                            (begin
                              (write '(funapp 2489 29))
                              (display "\n")
                              (blocks-union x8635 x8634)))))
                         (begin
                           (write '(funapp 2490 26))
                           (display "\n")
                           (eliminate-full-rows x8633)))))
                      (begin
                        (write '(funapp 2491 23))
                        (display "\n")
                        (world x8637 x8632)))))
                   g8631)))
               (world-jump-down
                (lambda (w)
                  (letrec*
                   ((g8638
                     (letrec*
                      ((x-cnd8639
                        (begin
                          (write '(funapp 2498 35))
                          (display "\n")
                          (landed? w))))
                      (if x-cnd8639
                        (letrec* ((g8640 w)) g8640)
                        (letrec*
                         ((g8641
                           (letrec*
                            ((x8642
                              (letrec*
                               ((x8644
                                 (letrec*
                                  ((x8645
                                    (begin
                                      (write '(funapp 2508 43))
                                      (display "\n")
                                      (world-tetra w))))
                                  (begin
                                    (write '(funapp 2509 35))
                                    (display "\n")
                                    (tetra-move 0 1 x8645))))
                                (x8643
                                 (begin
                                   (write '(funapp 2510 40))
                                   (display "\n")
                                   (world-blocks w))))
                               (begin
                                 (write '(funapp 2511 32))
                                 (display "\n")
                                 (world x8644 x8643)))))
                            (begin
                              (write '(funapp 2512 29))
                              (display "\n")
                              (world-jump-down x8642)))))
                         g8641)))))
                   g8638)))
               (landed-on-blocks?
                (lambda (w)
                  (letrec*
                   ((g8646
                     (letrec*
                      ((x8648
                        (letrec*
                         ((x8649
                           (begin
                             (write '(funapp 2522 34))
                             (display "\n")
                             (world-tetra w))))
                         (begin
                           (write '(funapp 2523 26))
                           (display "\n")
                           (tetra-move 0 1 x8649))))
                       (x8647
                        (begin
                          (write '(funapp 2524 31))
                          (display "\n")
                          (world-blocks w))))
                      (begin
                        (write '(funapp 2525 23))
                        (display "\n")
                        (tetra-overlaps-blocks? x8648 x8647)))))
                   g8646)))
               (landed-on-floor?
                (lambda (w)
                  (letrec*
                   ((g8650
                     (letrec*
                      ((x8652
                        (letrec*
                         ((x8653
                           (letrec*
                            ((x8654
                              (begin
                                (write '(funapp 2536 37))
                                (display "\n")
                                (world-tetra w))))
                            (begin
                              (write '(funapp 2537 29))
                              (display "\n")
                              (tetra-blocks x8654)))))
                         (begin
                           (write '(funapp 2538 26))
                           (display "\n")
                           (blocks-max-y x8653))))
                       (x8651
                        (begin
                          (write '(funapp 2539 31))
                          (display "\n")
                          (sub1 board-height))))
                      (begin
                        (write '(funapp 2540 23))
                        (display "\n")
                        (= x8652 x8651)))))
                   g8650)))
               (landed?
                (lambda (w)
                  (letrec*
                   ((g8655
                     (letrec*
                      ((val7263
                        (begin
                          (write '(funapp 2547 33))
                          (display "\n")
                          (landed-on-blocks? w))))
                      (letrec*
                       ((g8656
                         (if val7263
                           val7263
                           (begin
                             (write '(funapp 2549 52))
                             (display "\n")
                             (landed-on-floor? w)))))
                       g8656))))
                   g8655)))
               (next-world
                (lambda (w tetras)
                  (letrec*
                   ((g8657
                     (letrec*
                      ((x-cnd8658
                        (begin
                          (write '(funapp 2557 35))
                          (display "\n")
                          (landed? w))))
                      (if x-cnd8658
                        (letrec*
                         ((g8659
                           (begin
                             (write '(funapp 2559 42))
                             (display "\n")
                             (touchdown w tetras))))
                         g8659)
                        (letrec*
                         ((g8660
                           (letrec*
                            ((x8662
                              (letrec*
                               ((x8663
                                 (begin
                                   (write '(funapp 2565 40))
                                   (display "\n")
                                   (world-tetra w))))
                               (begin
                                 (write '(funapp 2566 32))
                                 (display "\n")
                                 (tetra-move 0 1 x8663))))
                             (x8661
                              (begin
                                (write '(funapp 2567 37))
                                (display "\n")
                                (world-blocks w))))
                            (begin
                              (write '(funapp 2568 29))
                              (display "\n")
                              (world x8662 x8661)))))
                         g8660)))))
                   g8657)))
               (try-new-tetra
                (lambda (w new-tetra)
                  (letrec*
                   ((g8664
                     (letrec*
                      ((x-cnd8665
                        (letrec*
                         ((val7264
                           (letrec*
                            ((x8666
                              (letrec*
                               ((x8667
                                 (begin
                                   (write '(funapp 2582 40))
                                   (display "\n")
                                   (tetra-blocks new-tetra))))
                               (begin
                                 (write '(funapp 2583 32))
                                 (display "\n")
                                 (blocks-min-x x8667)))))
                            (begin
                              (write '(funapp 2584 29))
                              (display "\n")
                              (< x8666 0)))))
                         (letrec*
                          ((g8668
                            (if val7264
                              val7264
                              (letrec*
                               ((val7265
                                 (letrec*
                                  ((x8669
                                    (letrec*
                                     ((x8670
                                       (begin
                                         (write '(funapp 2594 46))
                                         (display "\n")
                                         (tetra-blocks new-tetra))))
                                     (begin
                                       (write '(funapp 2595 38))
                                       (display "\n")
                                       (blocks-max-x x8670)))))
                                  (begin
                                    (write '(funapp 2596 35))
                                    (display "\n")
                                    (>= x8669 board-width)))))
                               (letrec*
                                ((g8671
                                  (if val7265
                                    val7265
                                    (letrec*
                                     ((x8672
                                       (begin
                                         (write '(funapp 2602 46))
                                         (display "\n")
                                         (world-blocks w))))
                                     (begin
                                       (write '(funapp 2603 38))
                                       (display "\n")
                                       (tetra-overlaps-blocks?
                                        new-tetra
                                        x8672))))))
                                g8671)))))
                          g8668))))
                      (if x-cnd8665
                        (letrec* ((g8673 w)) g8673)
                        (letrec*
                         ((g8674
                           (letrec*
                            ((x8675
                              (begin
                                (write '(funapp 2613 37))
                                (display "\n")
                                (world-blocks w))))
                            (begin
                              (write '(funapp 2614 29))
                              (display "\n")
                              (world new-tetra x8675)))))
                         g8674)))))
                   g8664)))
               (world-move
                (lambda (dx dy w)
                  (letrec*
                   ((g8676
                     (letrec*
                      ((x8677
                        (letrec*
                         ((x8678
                           (begin
                             (write '(funapp 2624 34))
                             (display "\n")
                             (world-tetra w))))
                         (begin
                           (write '(funapp 2625 26))
                           (display "\n")
                           (tetra-move dx dy x8678)))))
                      (begin
                        (write '(funapp 2626 23))
                        (display "\n")
                        (try-new-tetra w x8677)))))
                   g8676)))
               (world-rotate-ccw
                (lambda (w)
                  (letrec*
                   ((g8679
                     (letrec*
                      ((x8680
                        (letrec*
                         ((x8681
                           (begin
                             (write '(funapp 2635 34))
                             (display "\n")
                             (world-tetra w))))
                         (begin
                           (write '(funapp 2636 26))
                           (display "\n")
                           (tetra-rotate-ccw x8681)))))
                      (begin
                        (write '(funapp 2637 23))
                        (display "\n")
                        (try-new-tetra w x8680)))))
                   g8679)))
               (world-rotate-cw
                (lambda (w)
                  (letrec*
                   ((g8682
                     (letrec*
                      ((x8683
                        (letrec*
                         ((x8684
                           (begin
                             (write '(funapp 2646 34))
                             (display "\n")
                             (world-tetra w))))
                         (begin
                           (write '(funapp 2647 26))
                           (display "\n")
                           (tetra-rotate-cw x8684)))))
                      (begin
                        (write '(funapp 2648 23))
                        (display "\n")
                        (try-new-tetra w x8683)))))
                   g8682)))
               (ghost-blocks
                (lambda (w)
                  (letrec*
                   ((g8685
                     (letrec*
                      ((x8686
                        (letrec*
                         ((x8687
                           (letrec*
                            ((x8688
                              (begin
                                (write '(funapp 2659 37))
                                (display "\n")
                                (world-jump-down w))))
                            (begin
                              (write '(funapp 2660 29))
                              (display "\n")
                              (world-tetra x8688)))))
                         (begin
                           (write '(funapp 2661 26))
                           (display "\n")
                           (tetra-change-color
                            x8687
                            (begin
                              (write '(funapp 2661 51))
                              (display "\n")
                              'gray))))))
                      (begin
                        (write '(funapp 2662 23))
                        (display "\n")
                        (tetra-blocks x8686)))))
                   g8685)))
               (world-key-move
                (lambda (w k)
                  (letrec*
                   ((g8689
                     (letrec*
                      ((x-cnd8690
                        (begin
                          (write '(funapp 2669 35))
                          (display "\n")
                          (equal? k "left"))))
                      (if x-cnd8690
                        (letrec*
                         ((g8691
                           (begin
                             (write '(funapp 2671 42))
                             (display "\n")
                             (world-move neg-1 0 w))))
                         g8691)
                        (letrec*
                         ((x-cnd8692
                           (begin
                             (write '(funapp 2673 38))
                             (display "\n")
                             (equal? k "right"))))
                         (if x-cnd8692
                           (letrec*
                            ((g8693
                              (begin
                                (write '(funapp 2675 45))
                                (display "\n")
                                (world-move 1 0 w))))
                            g8693)
                           (letrec*
                            ((x-cnd8694
                              (begin
                                (write '(funapp 2677 41))
                                (display "\n")
                                (equal? k "down"))))
                            (if x-cnd8694
                              (letrec*
                               ((g8695
                                 (begin
                                   (write '(funapp 2679 48))
                                   (display "\n")
                                   (world-jump-down w))))
                               g8695)
                              (letrec*
                               ((x-cnd8696
                                 (begin
                                   (write '(funapp 2681 44))
                                   (display "\n")
                                   (equal? k "a"))))
                               (if x-cnd8696
                                 (letrec*
                                  ((g8697
                                    (begin
                                      (write '(funapp 2683 51))
                                      (display "\n")
                                      (world-rotate-ccw w))))
                                  g8697)
                                 (letrec*
                                  ((x-cnd8698
                                    (begin
                                      (write '(funapp 2685 47))
                                      (display "\n")
                                      (equal? k "s"))))
                                  (if x-cnd8698
                                    (letrec*
                                     ((g8699
                                       (begin
                                         (write '(funapp 2688 46))
                                         (display "\n")
                                         (world-rotate-cw w))))
                                     g8699)
                                    (letrec* ((g8700 w)) g8700)))))))))))))
                   g8689)))
               (image
                (lambda ()
                  (letrec*
                   ((g8701
                     (begin
                       (write '(funapp 2693 45))
                       (display "\n")
                       (orig-cons
                        (begin (write '(funapp 2693 55)) (display "\n") 'image)
                        (begin
                          (write '(funapp 2693 62))
                          (display "\n")
                          '())))))
                   g8701)))
               (image?
                (lambda (image7779)
                  (letrec*
                   ((g8702
                     (letrec*
                      ((x8703
                        (begin
                          (write '(funapp 2698 39))
                          (display "\n")
                          (car image7779))))
                      (begin
                        (write '(funapp 2698 57))
                        (display "\n")
                        (eq?
                         x8703
                         (begin
                           (write '(funapp 2698 67))
                           (display "\n")
                           'image))))))
                   g8702)))
               (image/c
                (lambda (j7431 k7432 v7430)
                  (letrec*
                   ((g8704
                     (begin
                       (write '(funapp 2702 36))
                       (display "\n")
                       (cons
                        image
                        (begin
                          (write '(funapp 2702 47))
                          (display "\n")
                          '())))))
                   g8704)))
               (overlay
                (lambda (i₁ i₂)
                  (letrec*
                   ((g8705
                     (begin (write '(funapp 2703 58)) (display "\n") (image))))
                   g8705)))
               (circle
                (lambda (r m c)
                  (letrec*
                   ((g8706
                     (begin (write '(funapp 2704 57)) (display "\n") (image))))
                   g8706)))
               (rectangle
                (lambda (w h m c)
                  (letrec*
                   ((g8707
                     (begin (write '(funapp 2705 62)) (display "\n") (image))))
                   g8707)))
               (place-image
                (lambda (i₁ r c i₂)
                  (letrec*
                   ((g8708
                     (begin (write '(funapp 2707 54)) (display "\n") (image))))
                   g8708)))
               (empty-scene
                (lambda (w h)
                  (letrec*
                   ((g8709
                     (begin (write '(funapp 2708 60)) (display "\n") (image))))
                   g8709)))
               (list-pick-random
                (lambda (xs)
                  (letrec*
                   ((g8710
                     (letrec*
                      ((x-cnd8711
                        (letrec*
                         ((x8712
                           (begin
                             (write '(funapp 2714 52))
                             (display "\n")
                             (cdr xs))))
                         (begin
                           (write '(funapp 2714 63))
                           (display "\n")
                           (null? x8712)))))
                      (if x-cnd8711
                        (letrec*
                         ((g8713
                           (begin
                             (write '(funapp 2716 42))
                             (display "\n")
                             (car xs))))
                         g8713)
                        (letrec*
                         ((g8714
                           (letrec*
                            ((x8715
                              (begin
                                (write '(funapp 2720 37))
                                (display "\n")
                                (cdr xs))))
                            (begin
                              (write '(funapp 2721 29))
                              (display "\n")
                              (list-pick-random x8715)))))
                         g8714)))))
                   g8710)))
               (neg-1
                (begin (write '(funapp 2724 23)) (display "\n") (random 10)))
               (world->image
                (lambda (w)
                  (letrec*
                   ((g8716
                     (letrec*
                      ((x8720
                        (letrec*
                         ((x8721
                           (letrec*
                            ((x8725
                              (letrec*
                               ((x8726
                                 (begin
                                   (write '(funapp 2736 40))
                                   (display "\n")
                                   (world-tetra w))))
                               (begin
                                 (write '(funapp 2737 32))
                                 (display "\n")
                                 (tetra-blocks x8726))))
                             (x8722
                              (letrec*
                               ((x8724
                                 (begin
                                   (write '(funapp 2740 40))
                                   (display "\n")
                                   (ghost-blocks w)))
                                (x8723
                                 (begin
                                   (write '(funapp 2741 40))
                                   (display "\n")
                                   (world-blocks w))))
                               (begin
                                 (write '(funapp 2742 32))
                                 (display "\n")
                                 (append x8724 x8723)))))
                            (begin
                              (write '(funapp 2743 29))
                              (display "\n")
                              (append x8725 x8722)))))
                         (begin
                           (write '(funapp 2744 26))
                           (display "\n")
                           (blocks->image x8721))))
                       (x8717
                        (letrec*
                         ((x8719
                           (begin
                             (write '(funapp 2747 34))
                             (display "\n")
                             (* board-width block-size)))
                          (x8718
                           (begin
                             (write '(funapp 2748 34))
                             (display "\n")
                             (* board-height block-size))))
                         (begin
                           (write '(funapp 2749 26))
                           (display "\n")
                           (empty-scene x8719 x8718)))))
                      (begin
                        (write '(funapp 2750 23))
                        (display "\n")
                        (place-image x8720 0 0 x8717)))))
                   g8716)))
               (blocks->image
                (lambda (bs)
                  (letrec*
                   ((g8727
                     (letrec*
                      ((x8728
                        (letrec*
                         ((x8731
                           (letrec*
                            ((x8732
                              (begin
                                (write '(funapp 2761 37))
                                (display "\n")
                                (* board-width block-size))))
                            (begin
                              (write '(funapp 2762 29))
                              (display "\n")
                              (add1 x8732))))
                          (x8729
                           (letrec*
                            ((x8730
                              (begin
                                (write '(funapp 2765 37))
                                (display "\n")
                                (* board-height block-size))))
                            (begin
                              (write '(funapp 2766 29))
                              (display "\n")
                              (add1 x8730)))))
                         (begin
                           (write '(funapp 2767 26))
                           (display "\n")
                           (empty-scene x8731 x8729)))))
                      (begin
                        (write '(funapp 2768 23))
                        (display "\n")
                        (foldr
                         (lambda (b img)
                           (letrec*
                            ((g8733
                              (letrec*
                               ((x-cnd8734
                                 (letrec*
                                  ((x8735
                                    (begin
                                      (write '(funapp 2774 49))
                                      (display "\n")
                                      (block-y b))))
                                  (begin
                                    (write '(funapp 2774 63))
                                    (display "\n")
                                    (<= 0 x8735)))))
                               (if x-cnd8734
                                 (letrec*
                                  ((g8736
                                    (begin
                                      (write '(funapp 2776 49))
                                      (display "\n")
                                      (place-block b img))))
                                  g8736)
                                 (letrec* ((g8737 img)) g8737)))))
                            g8733))
                         x8728
                         bs)))))
                   g8727)))
               (block->image
                (lambda (b)
                  (letrec*
                   ((g8738
                     (letrec*
                      ((x8742
                        (letrec*
                         ((x8745
                           (begin
                             (write '(funapp 2789 34))
                             (display "\n")
                             (add1 block-size)))
                          (x8744
                           (begin
                             (write '(funapp 2790 34))
                             (display "\n")
                             (add1 block-size)))
                          (x8743
                           (begin
                             (write '(funapp 2791 34))
                             (display "\n")
                             (block-color b))))
                         (begin
                           (write '(funapp 2792 26))
                           (display "\n")
                           (rectangle
                            x8745
                            x8744
                            (begin
                              (write '(funapp 2792 48))
                              (display "\n")
                              'solid)
                            x8743))))
                       (x8739
                        (letrec*
                         ((x8741
                           (begin
                             (write '(funapp 2795 34))
                             (display "\n")
                             (add1 block-size)))
                          (x8740
                           (begin
                             (write '(funapp 2795 60))
                             (display "\n")
                             (add1 block-size))))
                         (begin
                           (write '(funapp 2796 26))
                           (display "\n")
                           (rectangle
                            x8741
                            x8740
                            (begin
                              (write '(funapp 2796 48))
                              (display "\n")
                              'outline)
                            (begin
                              (write '(funapp 2796 57))
                              (display "\n")
                              'black))))))
                      (begin
                        (write '(funapp 2797 23))
                        (display "\n")
                        (overlay x8742 x8739)))))
                   g8738)))
               (place-block
                (lambda (b scene)
                  (letrec*
                   ((g8746
                     (letrec*
                      ((x8755
                        (begin
                          (write '(funapp 2804 31))
                          (display "\n")
                          (block->image b)))
                       (x8751
                        (letrec*
                         ((x8753
                           (letrec*
                            ((x8754
                              (begin
                                (write '(funapp 2809 37))
                                (display "\n")
                                (block-x b))))
                            (begin
                              (write '(funapp 2810 29))
                              (display "\n")
                              (* x8754 block-size))))
                          (x8752
                           (begin
                             (write '(funapp 2811 34))
                             (display "\n")
                             (/ block-size 2))))
                         (begin
                           (write '(funapp 2812 26))
                           (display "\n")
                           (+ x8753 x8752))))
                       (x8747
                        (letrec*
                         ((x8749
                           (letrec*
                            ((x8750
                              (begin
                                (write '(funapp 2817 37))
                                (display "\n")
                                (block-y b))))
                            (begin
                              (write '(funapp 2818 29))
                              (display "\n")
                              (* x8750 block-size))))
                          (x8748
                           (begin
                             (write '(funapp 2819 34))
                             (display "\n")
                             (/ block-size 2))))
                         (begin
                           (write '(funapp 2820 26))
                           (display "\n")
                           (+ x8749 x8748)))))
                      (begin
                        (write '(funapp 2821 23))
                        (display "\n")
                        (place-image x8755 x8751 x8747 scene)))))
                   g8746)))
               (world0
                (lambda (tetras)
                  (letrec*
                   ((g8756
                     (letrec*
                      ((x8757
                        (begin
                          (write '(funapp 2828 31))
                          (display "\n")
                          (list-pick-random tetras))))
                      (begin
                        (write '(funapp 2829 23))
                        (display "\n")
                        (world x8757 null)))))
                   g8756))))
              (letrec*
               ((g8758
                 (begin
                   (write '(funapp 2833 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 2834 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8769
                          (letrec*
                           ((xj7434
                             (begin
                               (write '(funapp 2838 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2838 37))
                                  (display "\n")
                                  'module))))
                            (xk7435
                             (begin
                               (write '(funapp 2838 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2838 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8770
                              (begin
                                (write '(funapp 2841 27))
                                (display "\n")
                                ((lambda (j7438 k7439 f7440)
                                   (letrec*
                                    ((g8771
                                      (lambda (g7436 g7437)
                                        (letrec*
                                         ((g8772
                                           (letrec*
                                            ((x8773
                                              (letrec*
                                               ((x8775
                                                 (begin
                                                   (write '(funapp 2850 50))
                                                   (display "\n")
                                                   (POSN/C j7438 k7439 g7436)))
                                                (x8774
                                                 (begin
                                                   (write '(funapp 2851 50))
                                                   (display "\n")
                                                   (POSN/C
                                                    j7438
                                                    k7439
                                                    g7437))))
                                               (begin
                                                 (write '(funapp 2852 42))
                                                 (display "\n")
                                                 (f7440 x8775 x8774)))))
                                            (begin
                                              (write '(funapp 2853 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7438
                                               k7439
                                               x8773)))))
                                         g8772))))
                                    g8771))
                                 xj7434
                                 xk7435
                                 posn=?))))
                            g8770)))
                         (x8764
                          (letrec*
                           ((x8765
                             (letrec*
                              ((x8768 (input))
                               (x8766
                                (letrec*
                                 ((x8767 (input)))
                                 (begin
                                   (write '(funapp 2866 56))
                                   (display "\n")
                                   (cons
                                    x8767
                                    (begin
                                      (write '(funapp 2866 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2867 27))
                                (display "\n")
                                (cons x8768 x8766)))))
                           (begin
                             (write '(funapp 2868 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2868 29))
                                (display "\n")
                                'posn)
                              x8765))))
                         (x8759
                          (letrec*
                           ((x8760
                             (letrec*
                              ((x8763 (input))
                               (x8761
                                (letrec*
                                 ((x8762 (input)))
                                 (begin
                                   (write '(funapp 2875 56))
                                   (display "\n")
                                   (cons
                                    x8762
                                    (begin
                                      (write '(funapp 2875 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2876 27))
                                (display "\n")
                                (cons x8763 x8761)))))
                           (begin
                             (write '(funapp 2877 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2877 29))
                                (display "\n")
                                'posn)
                              x8760)))))
                        (begin
                          (write '(funapp 2878 21))
                          (display "\n")
                          (x8769 x8764 x8759)))
                       (letrec*
                        ((xj7441
                          (begin
                            (write '(funapp 2880 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2880 34))
                               (display "\n")
                               'module))))
                         (xk7442
                          (begin
                            (write '(funapp 2880 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2880 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8776
                           (begin
                             (write '(funapp 2881 38))
                             (display "\n")
                             (any/c xj7441 xk7442 COLOR/C))))
                         g8776))
                       (letrec*
                        ((xj7443
                          (begin
                            (write '(funapp 2883 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2883 34))
                               (display "\n")
                               'module))))
                         (xk7444
                          (begin
                            (write '(funapp 2883 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2883 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8777
                           (begin
                             (write '(funapp 2884 38))
                             (display "\n")
                             (any/c xj7443 xk7444 POSN/C))))
                         g8777))
                       (letrec*
                        ((xj7445
                          (begin
                            (write '(funapp 2886 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2886 34))
                               (display "\n")
                               'module))))
                         (xk7446
                          (begin
                            (write '(funapp 2886 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2886 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8778
                           (begin
                             (write '(funapp 2887 38))
                             (display "\n")
                             (any/c xj7445 xk7446 BLOCK/C))))
                         g8778))
                       (letrec*
                        ((xj7447
                          (begin
                            (write '(funapp 2889 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2889 34))
                               (display "\n")
                               'module))))
                         (xk7448
                          (begin
                            (write '(funapp 2889 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2889 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8779
                           (begin
                             (write '(funapp 2890 38))
                             (display "\n")
                             (any/c xj7447 xk7448 TETRA/C))))
                         g8779))
                       (letrec*
                        ((xj7449
                          (begin
                            (write '(funapp 2892 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2892 34))
                               (display "\n")
                               'module))))
                         (xk7450
                          (begin
                            (write '(funapp 2892 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2892 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8780
                           (begin
                             (write '(funapp 2893 38))
                             (display "\n")
                             (any/c xj7449 xk7450 WORLD/C))))
                         g8780))
                       (letrec*
                        ((xj7451
                          (begin
                            (write '(funapp 2895 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2895 34))
                               (display "\n")
                               'module))))
                         (xk7452
                          (begin
                            (write '(funapp 2895 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2895 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8781
                           (begin
                             (write '(funapp 2896 38))
                             (display "\n")
                             (any/c xj7451 xk7452 BSET/C))))
                         g8781))
                       (letrec*
                        ((xj7453
                          (begin
                            (write '(funapp 2898 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2898 34))
                               (display "\n")
                               'module))))
                         (xk7454
                          (begin
                            (write '(funapp 2898 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2898 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8782
                           (begin
                             (write '(funapp 2900 30))
                             (display "\n")
                             (integer?/c xj7453 xk7454 block-size))))
                         g8782))
                       (letrec*
                        ((xj7455
                          (begin
                            (write '(funapp 2903 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2903 34))
                               (display "\n")
                               'module))))
                         (xk7456
                          (begin
                            (write '(funapp 2903 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2903 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8783
                           (begin
                             (write '(funapp 2905 30))
                             (display "\n")
                             (integer?/c xj7455 xk7456 board-width))))
                         g8783))
                       (letrec*
                        ((xj7457
                          (begin
                            (write '(funapp 2908 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2908 34))
                               (display "\n")
                               'module))))
                         (xk7458
                          (begin
                            (write '(funapp 2908 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2908 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8784
                           (begin
                             (write '(funapp 2910 30))
                             (display "\n")
                             (integer?/c xj7457 xk7458 board-height))))
                         g8784))
                       (letrec*
                        ((x8797
                          (letrec*
                           ((xj7459
                             (begin
                               (write '(funapp 2915 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2915 37))
                                  (display "\n")
                                  'module))))
                            (xk7460
                             (begin
                               (write '(funapp 2915 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2915 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8798
                              (begin
                                (write '(funapp 2918 27))
                                (display "\n")
                                ((lambda (j7463 k7464 f7465)
                                   (letrec*
                                    ((g8799
                                      (lambda (g7461 g7462)
                                        (letrec*
                                         ((g8800
                                           (letrec*
                                            ((x8801
                                              (letrec*
                                               ((x8803
                                                 (begin
                                                   (write '(funapp 2927 50))
                                                   (display "\n")
                                                   (POSN/C j7463 k7464 g7461)))
                                                (x8802
                                                 (begin
                                                   (write '(funapp 2928 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7463
                                                    k7464
                                                    g7462))))
                                               (begin
                                                 (write '(funapp 2929 42))
                                                 (display "\n")
                                                 (f7465 x8803 x8802)))))
                                            (begin
                                              (write '(funapp 2930 39))
                                              (display "\n")
                                              (BLOCK/C j7463 k7464 x8801)))))
                                         g8800))))
                                    g8799))
                                 xj7459
                                 xk7460
                                 block-rotate-ccw))))
                            g8798)))
                         (x8792
                          (letrec*
                           ((x8793
                             (letrec*
                              ((x8796 (input))
                               (x8794
                                (letrec*
                                 ((x8795 (input)))
                                 (begin
                                   (write '(funapp 2943 56))
                                   (display "\n")
                                   (cons
                                    x8795
                                    (begin
                                      (write '(funapp 2943 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2944 27))
                                (display "\n")
                                (cons x8796 x8794)))))
                           (begin
                             (write '(funapp 2945 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2945 29))
                                (display "\n")
                                'posn)
                              x8793))))
                         (x8785
                          (letrec*
                           ((x8786
                             (letrec*
                              ((x8791 (input))
                               (x8787
                                (letrec*
                                 ((x8790 (input))
                                  (x8788
                                   (letrec*
                                    ((x8789 (input)))
                                    (begin
                                      (write '(funapp 2955 59))
                                      (display "\n")
                                      (cons
                                       x8789
                                       (begin
                                         (write '(funapp 2955 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 2956 30))
                                   (display "\n")
                                   (cons x8790 x8788)))))
                              (begin
                                (write '(funapp 2957 27))
                                (display "\n")
                                (cons x8791 x8787)))))
                           (begin
                             (write '(funapp 2958 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2958 29))
                                (display "\n")
                                'block)
                              x8786)))))
                        (begin
                          (write '(funapp 2959 21))
                          (display "\n")
                          (x8797 x8792 x8785)))
                       (letrec*
                        ((x8816
                          (letrec*
                           ((xj7466
                             (begin
                               (write '(funapp 2963 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2963 37))
                                  (display "\n")
                                  'module))))
                            (xk7467
                             (begin
                               (write '(funapp 2963 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2963 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8817
                              (begin
                                (write '(funapp 2966 27))
                                (display "\n")
                                ((lambda (j7470 k7471 f7472)
                                   (letrec*
                                    ((g8818
                                      (lambda (g7468 g7469)
                                        (letrec*
                                         ((g8819
                                           (letrec*
                                            ((x8820
                                              (letrec*
                                               ((x8822
                                                 (begin
                                                   (write '(funapp 2975 50))
                                                   (display "\n")
                                                   (POSN/C j7470 k7471 g7468)))
                                                (x8821
                                                 (begin
                                                   (write '(funapp 2976 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7470
                                                    k7471
                                                    g7469))))
                                               (begin
                                                 (write '(funapp 2977 42))
                                                 (display "\n")
                                                 (f7472 x8822 x8821)))))
                                            (begin
                                              (write '(funapp 2978 39))
                                              (display "\n")
                                              (BLOCK/C j7470 k7471 x8820)))))
                                         g8819))))
                                    g8818))
                                 xj7466
                                 xk7467
                                 block-rotate-cw))))
                            g8817)))
                         (x8811
                          (letrec*
                           ((x8812
                             (letrec*
                              ((x8815 (input))
                               (x8813
                                (letrec*
                                 ((x8814 (input)))
                                 (begin
                                   (write '(funapp 2991 56))
                                   (display "\n")
                                   (cons
                                    x8814
                                    (begin
                                      (write '(funapp 2991 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2992 27))
                                (display "\n")
                                (cons x8815 x8813)))))
                           (begin
                             (write '(funapp 2993 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2993 29))
                                (display "\n")
                                'posn)
                              x8812))))
                         (x8804
                          (letrec*
                           ((x8805
                             (letrec*
                              ((x8810 (input))
                               (x8806
                                (letrec*
                                 ((x8809 (input))
                                  (x8807
                                   (letrec*
                                    ((x8808 (input)))
                                    (begin
                                      (write '(funapp 3003 59))
                                      (display "\n")
                                      (cons
                                       x8808
                                       (begin
                                         (write '(funapp 3003 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 3004 30))
                                   (display "\n")
                                   (cons x8809 x8807)))))
                              (begin
                                (write '(funapp 3005 27))
                                (display "\n")
                                (cons x8810 x8806)))))
                           (begin
                             (write '(funapp 3006 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3006 29))
                                (display "\n")
                                'block)
                              x8805)))))
                        (begin
                          (write '(funapp 3007 21))
                          (display "\n")
                          (x8816 x8811 x8804)))
                       (letrec*
                        ((x8837
                          (letrec*
                           ((xj7473
                             (begin
                               (write '(funapp 3011 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3011 37))
                                  (display "\n")
                                  'module))))
                            (xk7474
                             (begin
                               (write '(funapp 3011 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3011 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8838
                              (begin
                                (write '(funapp 3014 27))
                                (display "\n")
                                ((lambda (j7477 k7478 f7479)
                                   (letrec*
                                    ((g8839
                                      (lambda (g7475 g7476)
                                        (letrec*
                                         ((g8840
                                           (letrec*
                                            ((x8841
                                              (letrec*
                                               ((x8843
                                                 (begin
                                                   (write '(funapp 3023 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7477
                                                    k7478
                                                    g7475)))
                                                (x8842
                                                 (begin
                                                   (write '(funapp 3024 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7477
                                                    k7478
                                                    g7476))))
                                               (begin
                                                 (write '(funapp 3025 42))
                                                 (display "\n")
                                                 (f7479 x8843 x8842)))))
                                            (begin
                                              (write '(funapp 3026 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7477
                                               k7478
                                               x8841)))))
                                         g8840))))
                                    g8839))
                                 xj7473
                                 xk7474
                                 block=?))))
                            g8838)))
                         (x8830
                          (letrec*
                           ((x8831
                             (letrec*
                              ((x8836 (input))
                               (x8832
                                (letrec*
                                 ((x8835 (input))
                                  (x8833
                                   (letrec*
                                    ((x8834 (input)))
                                    (begin
                                      (write '(funapp 3042 59))
                                      (display "\n")
                                      (cons
                                       x8834
                                       (begin
                                         (write '(funapp 3042 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 3043 30))
                                   (display "\n")
                                   (cons x8835 x8833)))))
                              (begin
                                (write '(funapp 3044 27))
                                (display "\n")
                                (cons x8836 x8832)))))
                           (begin
                             (write '(funapp 3045 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3045 29))
                                (display "\n")
                                'block)
                              x8831))))
                         (x8823
                          (letrec*
                           ((x8824
                             (letrec*
                              ((x8829 (input))
                               (x8825
                                (letrec*
                                 ((x8828 (input))
                                  (x8826
                                   (letrec*
                                    ((x8827 (input)))
                                    (begin
                                      (write '(funapp 3055 59))
                                      (display "\n")
                                      (cons
                                       x8827
                                       (begin
                                         (write '(funapp 3055 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 3056 30))
                                   (display "\n")
                                   (cons x8828 x8826)))))
                              (begin
                                (write '(funapp 3057 27))
                                (display "\n")
                                (cons x8829 x8825)))))
                           (begin
                             (write '(funapp 3058 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3058 29))
                                (display "\n")
                                'block)
                              x8824)))))
                        (begin
                          (write '(funapp 3059 21))
                          (display "\n")
                          (x8837 x8830 x8823)))
                       (letrec*
                        ((x8853
                          (letrec*
                           ((xj7480
                             (begin
                               (write '(funapp 3063 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3063 37))
                                  (display "\n")
                                  'module))))
                            (xk7481
                             (begin
                               (write '(funapp 3063 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3063 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8854
                              (begin
                                (write '(funapp 3066 27))
                                (display "\n")
                                ((lambda (j7485 k7486 f7487)
                                   (letrec*
                                    ((g8855
                                      (lambda (g7482 g7483 g7484)
                                        (letrec*
                                         ((g8856
                                           (letrec*
                                            ((x8857
                                              (letrec*
                                               ((x8860
                                                 (begin
                                                   (write '(funapp 3075 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7485
                                                    k7486
                                                    g7482)))
                                                (x8859
                                                 (begin
                                                   (write '(funapp 3076 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7485
                                                    k7486
                                                    g7483)))
                                                (x8858
                                                 (begin
                                                   (write '(funapp 3077 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7485
                                                    k7486
                                                    g7484))))
                                               (begin
                                                 (write '(funapp 3078 42))
                                                 (display "\n")
                                                 (f7487 x8860 x8859 x8858)))))
                                            (begin
                                              (write '(funapp 3079 39))
                                              (display "\n")
                                              (BLOCK/C j7485 k7486 x8857)))))
                                         g8856))))
                                    g8855))
                                 xj7480
                                 xk7481
                                 block-move))))
                            g8854)))
                         (x8852 (input))
                         (x8851 (input))
                         (x8844
                          (letrec*
                           ((x8845
                             (letrec*
                              ((x8850 (input))
                               (x8846
                                (letrec*
                                 ((x8849 (input))
                                  (x8847
                                   (letrec*
                                    ((x8848 (input)))
                                    (begin
                                      (write '(funapp 3097 59))
                                      (display "\n")
                                      (cons
                                       x8848
                                       (begin
                                         (write '(funapp 3097 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 3098 30))
                                   (display "\n")
                                   (cons x8849 x8847)))))
                              (begin
                                (write '(funapp 3099 27))
                                (display "\n")
                                (cons x8850 x8846)))))
                           (begin
                             (write '(funapp 3100 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3100 29))
                                (display "\n")
                                'block)
                              x8845)))))
                        (begin
                          (write '(funapp 3101 21))
                          (display "\n")
                          (x8853 x8852 x8851 x8844)))
                       (letrec*
                        ((x8869
                          (letrec*
                           ((xj7488
                             (begin
                               (write '(funapp 3105 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3105 37))
                                  (display "\n")
                                  'module))))
                            (xk7489
                             (begin
                               (write '(funapp 3105 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3105 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8870
                              (begin
                                (write '(funapp 3108 27))
                                (display "\n")
                                ((lambda (j7492 k7493 f7494)
                                   (letrec*
                                    ((g8871
                                      (lambda (g7490 g7491)
                                        (letrec*
                                         ((g8872
                                           (letrec*
                                            ((x8873
                                              (letrec*
                                               ((x8875
                                                 (begin
                                                   (write '(funapp 3117 50))
                                                   (display "\n")
                                                   (BSET/C j7492 k7493 g7490)))
                                                (x8874
                                                 (begin
                                                   (write '(funapp 3118 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7492
                                                    k7493
                                                    g7491))))
                                               (begin
                                                 (write '(funapp 3119 42))
                                                 (display "\n")
                                                 (f7494 x8875 x8874)))))
                                            (begin
                                              (write '(funapp 3120 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7492
                                               k7493
                                               x8873)))))
                                         g8872))))
                                    g8871))
                                 xj7488
                                 xk7489
                                 blocks-contains?))))
                            g8870)))
                         (x8868 (input))
                         (x8861
                          (letrec*
                           ((x8862
                             (letrec*
                              ((x8867 (input))
                               (x8863
                                (letrec*
                                 ((x8866 (input))
                                  (x8864
                                   (letrec*
                                    ((x8865 (input)))
                                    (begin
                                      (write '(funapp 3137 59))
                                      (display "\n")
                                      (cons
                                       x8865
                                       (begin
                                         (write '(funapp 3137 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 3138 30))
                                   (display "\n")
                                   (cons x8866 x8864)))))
                              (begin
                                (write '(funapp 3139 27))
                                (display "\n")
                                (cons x8867 x8863)))))
                           (begin
                             (write '(funapp 3140 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3140 29))
                                (display "\n")
                                'block)
                              x8862)))))
                        (begin
                          (write '(funapp 3141 21))
                          (display "\n")
                          (x8869 x8868 x8861)))
                       (letrec*
                        ((x8878
                          (letrec*
                           ((xj7495
                             (begin
                               (write '(funapp 3145 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3145 37))
                                  (display "\n")
                                  'module))))
                            (xk7496
                             (begin
                               (write '(funapp 3145 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3145 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8879
                              (begin
                                (write '(funapp 3148 27))
                                (display "\n")
                                ((lambda (j7499 k7500 f7501)
                                   (letrec*
                                    ((g8880
                                      (lambda (g7497 g7498)
                                        (letrec*
                                         ((g8881
                                           (letrec*
                                            ((x8882
                                              (letrec*
                                               ((x8884
                                                 (begin
                                                   (write '(funapp 3157 50))
                                                   (display "\n")
                                                   (BSET/C j7499 k7500 g7497)))
                                                (x8883
                                                 (begin
                                                   (write '(funapp 3158 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7499
                                                    k7500
                                                    g7498))))
                                               (begin
                                                 (write '(funapp 3159 42))
                                                 (display "\n")
                                                 (f7501 x8884 x8883)))))
                                            (begin
                                              (write '(funapp 3160 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7499
                                               k7500
                                               x8882)))))
                                         g8881))))
                                    g8880))
                                 xj7495
                                 xk7496
                                 blocks=?))))
                            g8879)))
                         (x8877 (input))
                         (x8876 (input)))
                        (begin
                          (write '(funapp 3169 21))
                          (display "\n")
                          (x8878 x8877 x8876)))
                       (letrec*
                        ((x8887
                          (letrec*
                           ((xj7502
                             (begin
                               (write '(funapp 3173 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3173 37))
                                  (display "\n")
                                  'module))))
                            (xk7503
                             (begin
                               (write '(funapp 3173 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3173 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8888
                              (begin
                                (write '(funapp 3176 27))
                                (display "\n")
                                ((lambda (j7506 k7507 f7508)
                                   (letrec*
                                    ((g8889
                                      (lambda (g7504 g7505)
                                        (letrec*
                                         ((g8890
                                           (letrec*
                                            ((x8891
                                              (letrec*
                                               ((x8893
                                                 (begin
                                                   (write '(funapp 3185 50))
                                                   (display "\n")
                                                   (BSET/C j7506 k7507 g7504)))
                                                (x8892
                                                 (begin
                                                   (write '(funapp 3186 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7506
                                                    k7507
                                                    g7505))))
                                               (begin
                                                 (write '(funapp 3187 42))
                                                 (display "\n")
                                                 (f7508 x8893 x8892)))))
                                            (begin
                                              (write '(funapp 3188 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7506
                                               k7507
                                               x8891)))))
                                         g8890))))
                                    g8889))
                                 xj7502
                                 xk7503
                                 blocks-subset?))))
                            g8888)))
                         (x8886 (input))
                         (x8885 (input)))
                        (begin
                          (write '(funapp 3197 21))
                          (display "\n")
                          (x8887 x8886 x8885)))
                       (letrec*
                        ((x8896
                          (letrec*
                           ((xj7509
                             (begin
                               (write '(funapp 3201 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3201 37))
                                  (display "\n")
                                  'module))))
                            (xk7510
                             (begin
                               (write '(funapp 3201 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3201 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8897
                              (begin
                                (write '(funapp 3204 27))
                                (display "\n")
                                ((lambda (j7513 k7514 f7515)
                                   (letrec*
                                    ((g8898
                                      (lambda (g7511 g7512)
                                        (letrec*
                                         ((g8899
                                           (letrec*
                                            ((x8900
                                              (letrec*
                                               ((x8902
                                                 (begin
                                                   (write '(funapp 3213 50))
                                                   (display "\n")
                                                   (BSET/C j7513 k7514 g7511)))
                                                (x8901
                                                 (begin
                                                   (write '(funapp 3214 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7513
                                                    k7514
                                                    g7512))))
                                               (begin
                                                 (write '(funapp 3215 42))
                                                 (display "\n")
                                                 (f7515 x8902 x8901)))))
                                            (begin
                                              (write '(funapp 3216 39))
                                              (display "\n")
                                              (BSET/C j7513 k7514 x8900)))))
                                         g8899))))
                                    g8898))
                                 xj7509
                                 xk7510
                                 blocks-intersect))))
                            g8897)))
                         (x8895 (input))
                         (x8894 (input)))
                        (begin
                          (write '(funapp 3225 21))
                          (display "\n")
                          (x8896 x8895 x8894)))
                       (letrec*
                        ((x8904
                          (letrec*
                           ((xj7516
                             (begin
                               (write '(funapp 3229 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3229 37))
                                  (display "\n")
                                  'module))))
                            (xk7517
                             (begin
                               (write '(funapp 3229 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3229 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8905
                              (begin
                                (write '(funapp 3232 27))
                                (display "\n")
                                ((lambda (j7519 k7520 f7521)
                                   (letrec*
                                    ((g8906
                                      (lambda (g7518)
                                        (letrec*
                                         ((g8907
                                           (letrec*
                                            ((x8908
                                              (letrec*
                                               ((x8909
                                                 (begin
                                                   (write '(funapp 3241 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7519
                                                    k7520
                                                    g7518))))
                                               (begin
                                                 (write '(funapp 3242 42))
                                                 (display "\n")
                                                 (f7521 x8909)))))
                                            (begin
                                              (write '(funapp 3243 39))
                                              (display "\n")
                                              (real?/c j7519 k7520 x8908)))))
                                         g8907))))
                                    g8906))
                                 xj7516
                                 xk7517
                                 blocks-count))))
                            g8905)))
                         (x8903 (input)))
                        (begin
                          (write '(funapp 3251 21))
                          (display "\n")
                          (x8904 x8903)))
                       (letrec*
                        ((x8911
                          (letrec*
                           ((xj7522
                             (begin
                               (write '(funapp 3255 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3255 37))
                                  (display "\n")
                                  'module))))
                            (xk7523
                             (begin
                               (write '(funapp 3255 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3255 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8912
                              (begin
                                (write '(funapp 3258 27))
                                (display "\n")
                                ((lambda (j7525 k7526 f7527)
                                   (letrec*
                                    ((g8913
                                      (lambda (g7524)
                                        (letrec*
                                         ((g8914
                                           (letrec*
                                            ((x8915
                                              (letrec*
                                               ((x8916
                                                 (begin
                                                   (write '(funapp 3267 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7525
                                                    k7526
                                                    g7524))))
                                               (begin
                                                 (write '(funapp 3268 42))
                                                 (display "\n")
                                                 (f7527 x8916)))))
                                            (begin
                                              (write '(funapp 3269 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7525
                                               k7526
                                               x8915)))))
                                         g8914))))
                                    g8913))
                                 xj7522
                                 xk7523
                                 blocks-overflow?))))
                            g8912)))
                         (x8910 (input)))
                        (begin
                          (write '(funapp 3277 21))
                          (display "\n")
                          (x8911 x8910)))
                       (letrec*
                        ((x8920
                          (letrec*
                           ((xj7528
                             (begin
                               (write '(funapp 3281 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3281 37))
                                  (display "\n")
                                  'module))))
                            (xk7529
                             (begin
                               (write '(funapp 3281 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3281 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8921
                              (begin
                                (write '(funapp 3284 27))
                                (display "\n")
                                ((lambda (j7533 k7534 f7535)
                                   (letrec*
                                    ((g8922
                                      (lambda (g7530 g7531 g7532)
                                        (letrec*
                                         ((g8923
                                           (letrec*
                                            ((x8924
                                              (letrec*
                                               ((x8927
                                                 (begin
                                                   (write '(funapp 3293 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7533
                                                    k7534
                                                    g7530)))
                                                (x8926
                                                 (begin
                                                   (write '(funapp 3294 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7533
                                                    k7534
                                                    g7531)))
                                                (x8925
                                                 (begin
                                                   (write '(funapp 3295 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7533
                                                    k7534
                                                    g7532))))
                                               (begin
                                                 (write '(funapp 3296 42))
                                                 (display "\n")
                                                 (f7535 x8927 x8926 x8925)))))
                                            (begin
                                              (write '(funapp 3297 39))
                                              (display "\n")
                                              (BSET/C j7533 k7534 x8924)))))
                                         g8923))))
                                    g8922))
                                 xj7528
                                 xk7529
                                 blocks-move))))
                            g8921)))
                         (x8919 (input))
                         (x8918 (input))
                         (x8917 (input)))
                        (begin
                          (write '(funapp 3307 21))
                          (display "\n")
                          (x8920 x8919 x8918 x8917)))
                       (letrec*
                        ((x8934
                          (letrec*
                           ((xj7536
                             (begin
                               (write '(funapp 3311 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3311 37))
                                  (display "\n")
                                  'module))))
                            (xk7537
                             (begin
                               (write '(funapp 3311 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3311 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8935
                              (begin
                                (write '(funapp 3314 27))
                                (display "\n")
                                ((lambda (j7540 k7541 f7542)
                                   (letrec*
                                    ((g8936
                                      (lambda (g7538 g7539)
                                        (letrec*
                                         ((g8937
                                           (letrec*
                                            ((x8938
                                              (letrec*
                                               ((x8940
                                                 (begin
                                                   (write '(funapp 3323 50))
                                                   (display "\n")
                                                   (POSN/C j7540 k7541 g7538)))
                                                (x8939
                                                 (begin
                                                   (write '(funapp 3324 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7540
                                                    k7541
                                                    g7539))))
                                               (begin
                                                 (write '(funapp 3325 42))
                                                 (display "\n")
                                                 (f7542 x8940 x8939)))))
                                            (begin
                                              (write '(funapp 3326 39))
                                              (display "\n")
                                              (BSET/C j7540 k7541 x8938)))))
                                         g8937))))
                                    g8936))
                                 xj7536
                                 xk7537
                                 blocks-rotate-cw))))
                            g8935)))
                         (x8929
                          (letrec*
                           ((x8930
                             (letrec*
                              ((x8933 (input))
                               (x8931
                                (letrec*
                                 ((x8932 (input)))
                                 (begin
                                   (write '(funapp 3339 56))
                                   (display "\n")
                                   (cons
                                    x8932
                                    (begin
                                      (write '(funapp 3339 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3340 27))
                                (display "\n")
                                (cons x8933 x8931)))))
                           (begin
                             (write '(funapp 3341 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3341 29))
                                (display "\n")
                                'posn)
                              x8930))))
                         (x8928 (input)))
                        (begin
                          (write '(funapp 3343 21))
                          (display "\n")
                          (x8934 x8929 x8928)))
                       (letrec*
                        ((x8947
                          (letrec*
                           ((xj7543
                             (begin
                               (write '(funapp 3347 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3347 37))
                                  (display "\n")
                                  'module))))
                            (xk7544
                             (begin
                               (write '(funapp 3347 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3347 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8948
                              (begin
                                (write '(funapp 3350 27))
                                (display "\n")
                                ((lambda (j7547 k7548 f7549)
                                   (letrec*
                                    ((g8949
                                      (lambda (g7545 g7546)
                                        (letrec*
                                         ((g8950
                                           (letrec*
                                            ((x8951
                                              (letrec*
                                               ((x8953
                                                 (begin
                                                   (write '(funapp 3359 50))
                                                   (display "\n")
                                                   (POSN/C j7547 k7548 g7545)))
                                                (x8952
                                                 (begin
                                                   (write '(funapp 3360 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7547
                                                    k7548
                                                    g7546))))
                                               (begin
                                                 (write '(funapp 3361 42))
                                                 (display "\n")
                                                 (f7549 x8953 x8952)))))
                                            (begin
                                              (write '(funapp 3362 39))
                                              (display "\n")
                                              (BSET/C j7547 k7548 x8951)))))
                                         g8950))))
                                    g8949))
                                 xj7543
                                 xk7544
                                 blocks-rotate-ccw))))
                            g8948)))
                         (x8942
                          (letrec*
                           ((x8943
                             (letrec*
                              ((x8946 (input))
                               (x8944
                                (letrec*
                                 ((x8945 (input)))
                                 (begin
                                   (write '(funapp 3375 56))
                                   (display "\n")
                                   (cons
                                    x8945
                                    (begin
                                      (write '(funapp 3375 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3376 27))
                                (display "\n")
                                (cons x8946 x8944)))))
                           (begin
                             (write '(funapp 3377 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3377 29))
                                (display "\n")
                                'posn)
                              x8943))))
                         (x8941 (input)))
                        (begin
                          (write '(funapp 3379 21))
                          (display "\n")
                          (x8947 x8942 x8941)))
                       (letrec*
                        ((x8956
                          (letrec*
                           ((xj7550
                             (begin
                               (write '(funapp 3383 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3383 37))
                                  (display "\n")
                                  'module))))
                            (xk7551
                             (begin
                               (write '(funapp 3383 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3383 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8957
                              (begin
                                (write '(funapp 3386 27))
                                (display "\n")
                                ((lambda (j7554 k7555 f7556)
                                   (letrec*
                                    ((g8958
                                      (lambda (g7552 g7553)
                                        (letrec*
                                         ((g8959
                                           (letrec*
                                            ((x8960
                                              (letrec*
                                               ((x8962
                                                 (begin
                                                   (write '(funapp 3395 50))
                                                   (display "\n")
                                                   (BSET/C j7554 k7555 g7552)))
                                                (x8961
                                                 (begin
                                                   (write '(funapp 3396 50))
                                                   (display "\n")
                                                   (COLOR/C
                                                    j7554
                                                    k7555
                                                    g7553))))
                                               (begin
                                                 (write '(funapp 3397 42))
                                                 (display "\n")
                                                 (f7556 x8962 x8961)))))
                                            (begin
                                              (write '(funapp 3398 39))
                                              (display "\n")
                                              (BSET/C j7554 k7555 x8960)))))
                                         g8959))))
                                    g8958))
                                 xj7550
                                 xk7551
                                 blocks-change-color))))
                            g8957)))
                         (x8955 (input))
                         (x8954 (input)))
                        (begin
                          (write '(funapp 3407 21))
                          (display "\n")
                          (x8956 x8955 x8954)))
                       (letrec*
                        ((x8965
                          (letrec*
                           ((xj7557
                             (begin
                               (write '(funapp 3411 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3411 37))
                                  (display "\n")
                                  'module))))
                            (xk7558
                             (begin
                               (write '(funapp 3411 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3411 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8966
                              (begin
                                (write '(funapp 3414 27))
                                (display "\n")
                                ((lambda (j7561 k7562 f7563)
                                   (letrec*
                                    ((g8967
                                      (lambda (g7559 g7560)
                                        (letrec*
                                         ((g8968
                                           (letrec*
                                            ((x8969
                                              (letrec*
                                               ((x8971
                                                 (begin
                                                   (write '(funapp 3423 50))
                                                   (display "\n")
                                                   (BSET/C j7561 k7562 g7559)))
                                                (x8970
                                                 (begin
                                                   (write '(funapp 3424 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7561
                                                    k7562
                                                    g7560))))
                                               (begin
                                                 (write '(funapp 3425 42))
                                                 (display "\n")
                                                 (f7563 x8971 x8970)))))
                                            (begin
                                              (write '(funapp 3426 39))
                                              (display "\n")
                                              (BSET/C j7561 k7562 x8969)))))
                                         g8968))))
                                    g8967))
                                 xj7557
                                 xk7558
                                 blocks-row))))
                            g8966)))
                         (x8964 (input))
                         (x8963 (input)))
                        (begin
                          (write '(funapp 3435 21))
                          (display "\n")
                          (x8965 x8964 x8963)))
                       (letrec*
                        ((x8974
                          (letrec*
                           ((xj7564
                             (begin
                               (write '(funapp 3439 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3439 37))
                                  (display "\n")
                                  'module))))
                            (xk7565
                             (begin
                               (write '(funapp 3439 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3439 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8975
                              (begin
                                (write '(funapp 3442 27))
                                (display "\n")
                                ((lambda (j7568 k7569 f7570)
                                   (letrec*
                                    ((g8976
                                      (lambda (g7566 g7567)
                                        (letrec*
                                         ((g8977
                                           (letrec*
                                            ((x8978
                                              (letrec*
                                               ((x8980
                                                 (begin
                                                   (write '(funapp 3451 50))
                                                   (display "\n")
                                                   (BSET/C j7568 k7569 g7566)))
                                                (x8979
                                                 (begin
                                                   (write '(funapp 3452 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7568
                                                    k7569
                                                    g7567))))
                                               (begin
                                                 (write '(funapp 3453 42))
                                                 (display "\n")
                                                 (f7570 x8980 x8979)))))
                                            (begin
                                              (write '(funapp 3454 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7568
                                               k7569
                                               x8978)))))
                                         g8977))))
                                    g8976))
                                 xj7564
                                 xk7565
                                 full-row?))))
                            g8975)))
                         (x8973 (input))
                         (x8972 (input)))
                        (begin
                          (write '(funapp 3463 21))
                          (display "\n")
                          (x8974 x8973 x8972)))
                       (letrec*
                        ((x8983
                          (letrec*
                           ((xj7571
                             (begin
                               (write '(funapp 3467 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3467 37))
                                  (display "\n")
                                  'module))))
                            (xk7572
                             (begin
                               (write '(funapp 3467 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3467 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8984
                              (begin
                                (write '(funapp 3470 27))
                                (display "\n")
                                ((lambda (j7575 k7576 f7577)
                                   (letrec*
                                    ((g8985
                                      (lambda (g7573 g7574)
                                        (letrec*
                                         ((g8986
                                           (letrec*
                                            ((x8987
                                              (letrec*
                                               ((x8989
                                                 (begin
                                                   (write '(funapp 3479 50))
                                                   (display "\n")
                                                   (BSET/C j7575 k7576 g7573)))
                                                (x8988
                                                 (begin
                                                   (write '(funapp 3480 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7575
                                                    k7576
                                                    g7574))))
                                               (begin
                                                 (write '(funapp 3481 42))
                                                 (display "\n")
                                                 (f7577 x8989 x8988)))))
                                            (begin
                                              (write '(funapp 3482 39))
                                              (display "\n")
                                              (BSET/C j7575 k7576 x8987)))))
                                         g8986))))
                                    g8985))
                                 xj7571
                                 xk7572
                                 blocks-union))))
                            g8984)))
                         (x8982 (input))
                         (x8981 (input)))
                        (begin
                          (write '(funapp 3491 21))
                          (display "\n")
                          (x8983 x8982 x8981)))
                       (letrec*
                        ((x8991
                          (letrec*
                           ((xj7578
                             (begin
                               (write '(funapp 3495 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3495 37))
                                  (display "\n")
                                  'module))))
                            (xk7579
                             (begin
                               (write '(funapp 3495 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3495 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8992
                              (begin
                                (write '(funapp 3498 27))
                                (display "\n")
                                ((lambda (j7581 k7582 f7583)
                                   (letrec*
                                    ((g8993
                                      (lambda (g7580)
                                        (letrec*
                                         ((g8994
                                           (letrec*
                                            ((x8995
                                              (letrec*
                                               ((x8996
                                                 (begin
                                                   (write '(funapp 3507 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7581
                                                    k7582
                                                    g7580))))
                                               (begin
                                                 (write '(funapp 3508 42))
                                                 (display "\n")
                                                 (f7583 x8996)))))
                                            (begin
                                              (write '(funapp 3509 39))
                                              (display "\n")
                                              (real?/c j7581 k7582 x8995)))))
                                         g8994))))
                                    g8993))
                                 xj7578
                                 xk7579
                                 blocks-max-x))))
                            g8992)))
                         (x8990 (input)))
                        (begin
                          (write '(funapp 3517 21))
                          (display "\n")
                          (x8991 x8990)))
                       (letrec*
                        ((x8998
                          (letrec*
                           ((xj7584
                             (begin
                               (write '(funapp 3521 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3521 37))
                                  (display "\n")
                                  'module))))
                            (xk7585
                             (begin
                               (write '(funapp 3521 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3521 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8999
                              (begin
                                (write '(funapp 3524 27))
                                (display "\n")
                                ((lambda (j7587 k7588 f7589)
                                   (letrec*
                                    ((g9000
                                      (lambda (g7586)
                                        (letrec*
                                         ((g9001
                                           (letrec*
                                            ((x9002
                                              (letrec*
                                               ((x9003
                                                 (begin
                                                   (write '(funapp 3533 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7587
                                                    k7588
                                                    g7586))))
                                               (begin
                                                 (write '(funapp 3534 42))
                                                 (display "\n")
                                                 (f7589 x9003)))))
                                            (begin
                                              (write '(funapp 3535 39))
                                              (display "\n")
                                              (real?/c j7587 k7588 x9002)))))
                                         g9001))))
                                    g9000))
                                 xj7584
                                 xk7585
                                 blocks-min-x))))
                            g8999)))
                         (x8997 (input)))
                        (begin
                          (write '(funapp 3543 21))
                          (display "\n")
                          (x8998 x8997)))
                       (letrec*
                        ((x9005
                          (letrec*
                           ((xj7590
                             (begin
                               (write '(funapp 3547 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3547 37))
                                  (display "\n")
                                  'module))))
                            (xk7591
                             (begin
                               (write '(funapp 3547 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3547 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9006
                              (begin
                                (write '(funapp 3550 27))
                                (display "\n")
                                ((lambda (j7593 k7594 f7595)
                                   (letrec*
                                    ((g9007
                                      (lambda (g7592)
                                        (letrec*
                                         ((g9008
                                           (letrec*
                                            ((x9009
                                              (letrec*
                                               ((x9010
                                                 (begin
                                                   (write '(funapp 3559 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7593
                                                    k7594
                                                    g7592))))
                                               (begin
                                                 (write '(funapp 3560 42))
                                                 (display "\n")
                                                 (f7595 x9010)))))
                                            (begin
                                              (write '(funapp 3561 39))
                                              (display "\n")
                                              (real?/c j7593 k7594 x9009)))))
                                         g9008))))
                                    g9007))
                                 xj7590
                                 xk7591
                                 blocks-max-y))))
                            g9006)))
                         (x9004 (input)))
                        (begin
                          (write '(funapp 3569 21))
                          (display "\n")
                          (x9005 x9004)))
                       (letrec*
                        ((x9012
                          (letrec*
                           ((xj7596
                             (begin
                               (write '(funapp 3573 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3573 37))
                                  (display "\n")
                                  'module))))
                            (xk7597
                             (begin
                               (write '(funapp 3573 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3573 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9013
                              (begin
                                (write '(funapp 3576 27))
                                (display "\n")
                                ((lambda (j7599 k7600 f7601)
                                   (letrec*
                                    ((g9014
                                      (lambda (g7598)
                                        (letrec*
                                         ((g9015
                                           (letrec*
                                            ((x9016
                                              (letrec*
                                               ((x9017
                                                 (begin
                                                   (write '(funapp 3585 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7599
                                                    k7600
                                                    g7598))))
                                               (begin
                                                 (write '(funapp 3586 42))
                                                 (display "\n")
                                                 (f7601 x9017)))))
                                            (begin
                                              (write '(funapp 3587 39))
                                              (display "\n")
                                              (BSET/C j7599 k7600 x9016)))))
                                         g9015))))
                                    g9014))
                                 xj7596
                                 xk7597
                                 eliminate-full-rows))))
                            g9013)))
                         (x9011 (input)))
                        (begin
                          (write '(funapp 3595 21))
                          (display "\n")
                          (x9012 x9011)))
                       (letrec*
                        ((x9029
                          (letrec*
                           ((xj7602
                             (begin
                               (write '(funapp 3599 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3599 37))
                                  (display "\n")
                                  'module))))
                            (xk7603
                             (begin
                               (write '(funapp 3599 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3599 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9030
                              (begin
                                (write '(funapp 3602 27))
                                (display "\n")
                                ((lambda (j7607 k7608 f7609)
                                   (letrec*
                                    ((g9031
                                      (lambda (g7604 g7605 g7606)
                                        (letrec*
                                         ((g9032
                                           (letrec*
                                            ((x9033
                                              (letrec*
                                               ((x9036
                                                 (begin
                                                   (write '(funapp 3612 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7607
                                                    k7608
                                                    g7604)))
                                                (x9035
                                                 (begin
                                                   (write '(funapp 3614 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7607
                                                    k7608
                                                    g7605)))
                                                (x9034
                                                 (begin
                                                   (write '(funapp 3615 50))
                                                   (display "\n")
                                                   (TETRA/C
                                                    j7607
                                                    k7608
                                                    g7606))))
                                               (begin
                                                 (write '(funapp 3616 42))
                                                 (display "\n")
                                                 (f7609 x9036 x9035 x9034)))))
                                            (begin
                                              (write '(funapp 3617 39))
                                              (display "\n")
                                              (TETRA/C j7607 k7608 x9033)))))
                                         g9032))))
                                    g9031))
                                 xj7602
                                 xk7603
                                 tetra-move))))
                            g9030)))
                         (x9028 (input))
                         (x9027 (input))
                         (x9018
                          (letrec*
                           ((x9019
                             (letrec*
                              ((x9022
                                (letrec*
                                 ((x9023
                                   (letrec*
                                    ((x9026 (input))
                                     (x9024
                                      (letrec*
                                       ((x9025 (input)))
                                       (begin
                                         (write '(funapp 3638 36))
                                         (display "\n")
                                         (cons
                                          x9025
                                          (begin
                                            (write '(funapp 3638 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3639 33))
                                      (display "\n")
                                      (cons x9026 x9024)))))
                                 (begin
                                   (write '(funapp 3640 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3640 35))
                                      (display "\n")
                                      'posn)
                                    x9023))))
                               (x9020
                                (letrec*
                                 ((x9021 (input)))
                                 (begin
                                   (write '(funapp 3642 56))
                                   (display "\n")
                                   (cons
                                    x9021
                                    (begin
                                      (write '(funapp 3642 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3643 27))
                                (display "\n")
                                (cons x9022 x9020)))))
                           (begin
                             (write '(funapp 3644 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3644 29))
                                (display "\n")
                                'tetra)
                              x9019)))))
                        (begin
                          (write '(funapp 3645 21))
                          (display "\n")
                          (x9029 x9028 x9027 x9018)))
                       (letrec*
                        ((x9046
                          (letrec*
                           ((xj7610
                             (begin
                               (write '(funapp 3649 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3649 37))
                                  (display "\n")
                                  'module))))
                            (xk7611
                             (begin
                               (write '(funapp 3649 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3649 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9047
                              (begin
                                (write '(funapp 3652 27))
                                (display "\n")
                                ((lambda (j7613 k7614 f7615)
                                   (letrec*
                                    ((g9048
                                      (lambda (g7612)
                                        (letrec*
                                         ((g9049
                                           (letrec*
                                            ((x9050
                                              (letrec*
                                               ((x9051
                                                 (begin
                                                   (write '(funapp 3661 50))
                                                   (display "\n")
                                                   (TETRA/C
                                                    j7613
                                                    k7614
                                                    g7612))))
                                               (begin
                                                 (write '(funapp 3662 42))
                                                 (display "\n")
                                                 (f7615 x9051)))))
                                            (begin
                                              (write '(funapp 3663 39))
                                              (display "\n")
                                              (TETRA/C j7613 k7614 x9050)))))
                                         g9049))))
                                    g9048))
                                 xj7610
                                 xk7611
                                 tetra-rotate-ccw))))
                            g9047)))
                         (x9037
                          (letrec*
                           ((x9038
                             (letrec*
                              ((x9041
                                (letrec*
                                 ((x9042
                                   (letrec*
                                    ((x9045 (input))
                                     (x9043
                                      (letrec*
                                       ((x9044 (input)))
                                       (begin
                                         (write '(funapp 3682 36))
                                         (display "\n")
                                         (cons
                                          x9044
                                          (begin
                                            (write '(funapp 3682 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3683 33))
                                      (display "\n")
                                      (cons x9045 x9043)))))
                                 (begin
                                   (write '(funapp 3684 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3684 35))
                                      (display "\n")
                                      'posn)
                                    x9042))))
                               (x9039
                                (letrec*
                                 ((x9040 (input)))
                                 (begin
                                   (write '(funapp 3686 56))
                                   (display "\n")
                                   (cons
                                    x9040
                                    (begin
                                      (write '(funapp 3686 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3687 27))
                                (display "\n")
                                (cons x9041 x9039)))))
                           (begin
                             (write '(funapp 3688 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3688 29))
                                (display "\n")
                                'tetra)
                              x9038)))))
                        (begin
                          (write '(funapp 3689 21))
                          (display "\n")
                          (x9046 x9037)))
                       (letrec*
                        ((x9061
                          (letrec*
                           ((xj7616
                             (begin
                               (write '(funapp 3693 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3693 37))
                                  (display "\n")
                                  'module))))
                            (xk7617
                             (begin
                               (write '(funapp 3693 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3693 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9062
                              (begin
                                (write '(funapp 3696 27))
                                (display "\n")
                                ((lambda (j7619 k7620 f7621)
                                   (letrec*
                                    ((g9063
                                      (lambda (g7618)
                                        (letrec*
                                         ((g9064
                                           (letrec*
                                            ((x9065
                                              (letrec*
                                               ((x9066
                                                 (begin
                                                   (write '(funapp 3705 50))
                                                   (display "\n")
                                                   (TETRA/C
                                                    j7619
                                                    k7620
                                                    g7618))))
                                               (begin
                                                 (write '(funapp 3706 42))
                                                 (display "\n")
                                                 (f7621 x9066)))))
                                            (begin
                                              (write '(funapp 3707 39))
                                              (display "\n")
                                              (TETRA/C j7619 k7620 x9065)))))
                                         g9064))))
                                    g9063))
                                 xj7616
                                 xk7617
                                 tetra-rotate-cw))))
                            g9062)))
                         (x9052
                          (letrec*
                           ((x9053
                             (letrec*
                              ((x9056
                                (letrec*
                                 ((x9057
                                   (letrec*
                                    ((x9060 (input))
                                     (x9058
                                      (letrec*
                                       ((x9059 (input)))
                                       (begin
                                         (write '(funapp 3726 36))
                                         (display "\n")
                                         (cons
                                          x9059
                                          (begin
                                            (write '(funapp 3726 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3727 33))
                                      (display "\n")
                                      (cons x9060 x9058)))))
                                 (begin
                                   (write '(funapp 3728 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3728 35))
                                      (display "\n")
                                      'posn)
                                    x9057))))
                               (x9054
                                (letrec*
                                 ((x9055 (input)))
                                 (begin
                                   (write '(funapp 3730 56))
                                   (display "\n")
                                   (cons
                                    x9055
                                    (begin
                                      (write '(funapp 3730 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3731 27))
                                (display "\n")
                                (cons x9056 x9054)))))
                           (begin
                             (write '(funapp 3732 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3732 29))
                                (display "\n")
                                'tetra)
                              x9053)))))
                        (begin
                          (write '(funapp 3733 21))
                          (display "\n")
                          (x9061 x9052)))
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
                                ((lambda (j7626 k7627 f7628)
                                   (letrec*
                                    ((g9079
                                      (lambda (g7624 g7625)
                                        (letrec*
                                         ((g9080
                                           (letrec*
                                            ((x9081
                                              (letrec*
                                               ((x9083
                                                 (begin
                                                   (write '(funapp 3749 50))
                                                   (display "\n")
                                                   (TETRA/C
                                                    j7626
                                                    k7627
                                                    g7624)))
                                                (x9082
                                                 (begin
                                                   (write '(funapp 3750 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7626
                                                    k7627
                                                    g7625))))
                                               (begin
                                                 (write '(funapp 3751 42))
                                                 (display "\n")
                                                 (f7628 x9083 x9082)))))
                                            (begin
                                              (write '(funapp 3752 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7626
                                               k7627
                                               x9081)))))
                                         g9080))))
                                    g9079))
                                 xj7622
                                 xk7623
                                 tetra-overlaps-blocks?))))
                            g9078)))
                         (x9068
                          (letrec*
                           ((x9069
                             (letrec*
                              ((x9072
                                (letrec*
                                 ((x9073
                                   (letrec*
                                    ((x9076 (input))
                                     (x9074
                                      (letrec*
                                       ((x9075 (input)))
                                       (begin
                                         (write '(funapp 3771 36))
                                         (display "\n")
                                         (cons
                                          x9075
                                          (begin
                                            (write '(funapp 3771 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3772 33))
                                      (display "\n")
                                      (cons x9076 x9074)))))
                                 (begin
                                   (write '(funapp 3773 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3773 35))
                                      (display "\n")
                                      'posn)
                                    x9073))))
                               (x9070
                                (letrec*
                                 ((x9071 (input)))
                                 (begin
                                   (write '(funapp 3775 56))
                                   (display "\n")
                                   (cons
                                    x9071
                                    (begin
                                      (write '(funapp 3775 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3776 27))
                                (display "\n")
                                (cons x9072 x9070)))))
                           (begin
                             (write '(funapp 3777 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3777 29))
                                (display "\n")
                                'tetra)
                              x9069))))
                         (x9067 (input)))
                        (begin
                          (write '(funapp 3779 21))
                          (display "\n")
                          (x9077 x9068 x9067)))
                       (letrec*
                        ((x9095
                          (letrec*
                           ((xj7629
                             (begin
                               (write '(funapp 3783 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3783 37))
                                  (display "\n")
                                  'module))))
                            (xk7630
                             (begin
                               (write '(funapp 3783 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3783 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9096
                              (begin
                                (write '(funapp 3786 27))
                                (display "\n")
                                ((lambda (j7642 k7643 f7644)
                                   (letrec*
                                    ((g9097
                                      (lambda (g7631
                                               g7632
                                               g7633
                                               g7634
                                               g7635
                                               g7636
                                               g7637
                                               g7638
                                               g7639
                                               g7640
                                               g7641)
                                        (letrec*
                                         ((g9098
                                           (letrec*
                                            ((x9099
                                              (letrec*
                                               ((x9110
                                                 (begin
                                                   (write '(funapp 3805 50))
                                                   (display "\n")
                                                   (COLOR/C
                                                    j7642
                                                    k7643
                                                    g7631)))
                                                (x9109
                                                 (begin
                                                   (write '(funapp 3806 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7642
                                                    k7643
                                                    g7632)))
                                                (x9108
                                                 (begin
                                                   (write '(funapp 3807 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7642
                                                    k7643
                                                    g7633)))
                                                (x9107
                                                 (begin
                                                   (write '(funapp 3809 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7642
                                                    k7643
                                                    g7634)))
                                                (x9106
                                                 (begin
                                                   (write '(funapp 3811 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7642
                                                    k7643
                                                    g7635)))
                                                (x9105
                                                 (begin
                                                   (write '(funapp 3813 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7642
                                                    k7643
                                                    g7636)))
                                                (x9104
                                                 (begin
                                                   (write '(funapp 3815 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7642
                                                    k7643
                                                    g7637)))
                                                (x9103
                                                 (begin
                                                   (write '(funapp 3817 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7642
                                                    k7643
                                                    g7638)))
                                                (x9102
                                                 (begin
                                                   (write '(funapp 3819 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7642
                                                    k7643
                                                    g7639)))
                                                (x9101
                                                 (begin
                                                   (write '(funapp 3821 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7642
                                                    k7643
                                                    g7640)))
                                                (x9100
                                                 (begin
                                                   (write '(funapp 3823 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7642
                                                    k7643
                                                    g7641))))
                                               (begin
                                                 (write '(funapp 3824 42))
                                                 (display "\n")
                                                 (f7644
                                                  x9110
                                                  x9109
                                                  x9108
                                                  x9107
                                                  x9106
                                                  x9105
                                                  x9104
                                                  x9103
                                                  x9102
                                                  x9101
                                                  x9100)))))
                                            (begin
                                              (write '(funapp 3836 39))
                                              (display "\n")
                                              (TETRA/C j7642 k7643 x9099)))))
                                         g9098))))
                                    g9097))
                                 xj7629
                                 xk7630
                                 build-tetra-blocks))))
                            g9096)))
                         (x9094 (input))
                         (x9093 (input))
                         (x9092 (input))
                         (x9091 (input))
                         (x9090 (input))
                         (x9089 (input))
                         (x9088 (input))
                         (x9087 (input))
                         (x9086 (input))
                         (x9085 (input))
                         (x9084 (input)))
                        (begin
                          (write '(funapp 3854 21))
                          (display "\n")
                          (x9095
                           x9094
                           x9093
                           x9092
                           x9091
                           x9090
                           x9089
                           x9088
                           x9087
                           x9086
                           x9085
                           x9084)))
                       (letrec*
                        ((x9121
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
                            ((g9122
                              (begin
                                (write '(funapp 3872 27))
                                (display "\n")
                                ((lambda (j7649 k7650 f7651)
                                   (letrec*
                                    ((g9123
                                      (lambda (g7647 g7648)
                                        (letrec*
                                         ((g9124
                                           (letrec*
                                            ((x9125
                                              (letrec*
                                               ((x9127
                                                 (begin
                                                   (write '(funapp 3881 50))
                                                   (display "\n")
                                                   (TETRA/C
                                                    j7649
                                                    k7650
                                                    g7647)))
                                                (x9126
                                                 (begin
                                                   (write '(funapp 3882 50))
                                                   (display "\n")
                                                   (COLOR/C
                                                    j7649
                                                    k7650
                                                    g7648))))
                                               (begin
                                                 (write '(funapp 3883 42))
                                                 (display "\n")
                                                 (f7651 x9127 x9126)))))
                                            (begin
                                              (write '(funapp 3884 39))
                                              (display "\n")
                                              (TETRA/C j7649 k7650 x9125)))))
                                         g9124))))
                                    g9123))
                                 xj7645
                                 xk7646
                                 tetra-change-color))))
                            g9122)))
                         (x9112
                          (letrec*
                           ((x9113
                             (letrec*
                              ((x9116
                                (letrec*
                                 ((x9117
                                   (letrec*
                                    ((x9120 (input))
                                     (x9118
                                      (letrec*
                                       ((x9119 (input)))
                                       (begin
                                         (write '(funapp 3903 36))
                                         (display "\n")
                                         (cons
                                          x9119
                                          (begin
                                            (write '(funapp 3903 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3904 33))
                                      (display "\n")
                                      (cons x9120 x9118)))))
                                 (begin
                                   (write '(funapp 3905 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3905 35))
                                      (display "\n")
                                      'posn)
                                    x9117))))
                               (x9114
                                (letrec*
                                 ((x9115 (input)))
                                 (begin
                                   (write '(funapp 3907 56))
                                   (display "\n")
                                   (cons
                                    x9115
                                    (begin
                                      (write '(funapp 3907 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3908 27))
                                (display "\n")
                                (cons x9116 x9114)))))
                           (begin
                             (write '(funapp 3909 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3909 29))
                                (display "\n")
                                'tetra)
                              x9113))))
                         (x9111 (input)))
                        (begin
                          (write '(funapp 3911 21))
                          (display "\n")
                          (x9121 x9112 x9111)))
                       (letrec*
                        ((x9142
                          (letrec*
                           ((xj7652
                             (begin
                               (write '(funapp 3915 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3915 37))
                                  (display "\n")
                                  'module))))
                            (xk7653
                             (begin
                               (write '(funapp 3915 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3915 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9143
                              (begin
                                (write '(funapp 3918 27))
                                (display "\n")
                                ((lambda (j7656 k7657 f7658)
                                   (letrec*
                                    ((g9144
                                      (lambda (g7654 g7655)
                                        (letrec*
                                         ((g9145
                                           (letrec*
                                            ((x9146
                                              (letrec*
                                               ((x9148
                                                 (begin
                                                   (write '(funapp 3927 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7656
                                                    k7657
                                                    g7654)))
                                                (x9147
                                                 (begin
                                                   (write '(funapp 3929 44))
                                                   (display "\n")
                                                   (string?/c
                                                    j7656
                                                    k7657
                                                    g7655))))
                                               (begin
                                                 (write '(funapp 3930 42))
                                                 (display "\n")
                                                 (f7658 x9148 x9147)))))
                                            (begin
                                              (write '(funapp 3931 39))
                                              (display "\n")
                                              (WORLD/C j7656 k7657 x9146)))))
                                         g9145))))
                                    g9144))
                                 xj7652
                                 xk7653
                                 world-key-move))))
                            g9143)))
                         (x9129
                          (letrec*
                           ((x9130
                             (letrec*
                              ((x9133
                                (letrec*
                                 ((x9134
                                   (letrec*
                                    ((x9137
                                      (letrec*
                                       ((x9138
                                         (letrec*
                                          ((x9141 (input))
                                           (x9139
                                            (letrec*
                                             ((x9140 (input)))
                                             (begin
                                               (write '(funapp 3954 42))
                                               (display "\n")
                                               (cons
                                                x9140
                                                (begin
                                                  (write '(funapp 3954 53))
                                                  (display "\n")
                                                  '()))))))
                                          (begin
                                            (write '(funapp 3955 39))
                                            (display "\n")
                                            (cons x9141 x9139)))))
                                       (begin
                                         (write '(funapp 3956 36))
                                         (display "\n")
                                         (cons
                                          (begin
                                            (write '(funapp 3956 41))
                                            (display "\n")
                                            'posn)
                                          x9138))))
                                     (x9135
                                      (letrec*
                                       ((x9136 (input)))
                                       (begin
                                         (write '(funapp 3960 36))
                                         (display "\n")
                                         (cons
                                          x9136
                                          (begin
                                            (write '(funapp 3960 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3961 33))
                                      (display "\n")
                                      (cons x9137 x9135)))))
                                 (begin
                                   (write '(funapp 3962 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3962 35))
                                      (display "\n")
                                      'tetra)
                                    x9134))))
                               (x9131
                                (letrec*
                                 ((x9132 (input)))
                                 (begin
                                   (write '(funapp 3964 56))
                                   (display "\n")
                                   (cons
                                    x9132
                                    (begin
                                      (write '(funapp 3964 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3965 27))
                                (display "\n")
                                (cons x9133 x9131)))))
                           (begin
                             (write '(funapp 3966 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3966 29))
                                (display "\n")
                                'world)
                              x9130))))
                         (x9128 (input)))
                        (begin
                          (write '(funapp 3968 21))
                          (display "\n")
                          (x9142 x9129 x9128)))
                       (letrec*
                        ((x9163
                          (letrec*
                           ((xj7659
                             (begin
                               (write '(funapp 3972 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3972 37))
                                  (display "\n")
                                  'module))))
                            (xk7660
                             (begin
                               (write '(funapp 3972 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3972 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9164
                              (begin
                                (write '(funapp 3975 27))
                                (display "\n")
                                ((lambda (j7663 k7664 f7665)
                                   (letrec*
                                    ((g9165
                                      (lambda (g7661 g7662)
                                        (letrec*
                                         ((g9166
                                           (letrec*
                                            ((x9167
                                              (letrec*
                                               ((x9171
                                                 (begin
                                                   (write '(funapp 3984 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7663
                                                    k7664
                                                    g7661)))
                                                (x9168
                                                 (letrec*
                                                  ((x9169
                                                    (letrec*
                                                     ((x9170
                                                       (begin
                                                         (write
                                                          '(funapp 3989 56))
                                                         (display "\n")
                                                         (listof TETRA/C))))
                                                     (begin
                                                       (write
                                                        '(funapp 3990 48))
                                                       (display "\n")
                                                       (and/c
                                                        cons?/c
                                                        x9170)))))
                                                  (begin
                                                    (write '(funapp 3991 45))
                                                    (display "\n")
                                                    (x9169
                                                     j7663
                                                     k7664
                                                     g7662)))))
                                               (begin
                                                 (write '(funapp 3992 42))
                                                 (display "\n")
                                                 (f7665 x9171 x9168)))))
                                            (begin
                                              (write '(funapp 3993 39))
                                              (display "\n")
                                              (WORLD/C j7663 k7664 x9167)))))
                                         g9166))))
                                    g9165))
                                 xj7659
                                 xk7660
                                 next-world))))
                            g9164)))
                         (x9150
                          (letrec*
                           ((x9151
                             (letrec*
                              ((x9154
                                (letrec*
                                 ((x9155
                                   (letrec*
                                    ((x9158
                                      (letrec*
                                       ((x9159
                                         (letrec*
                                          ((x9162 (input))
                                           (x9160
                                            (letrec*
                                             ((x9161 (input)))
                                             (begin
                                               (write '(funapp 4016 42))
                                               (display "\n")
                                               (cons
                                                x9161
                                                (begin
                                                  (write '(funapp 4016 53))
                                                  (display "\n")
                                                  '()))))))
                                          (begin
                                            (write '(funapp 4017 39))
                                            (display "\n")
                                            (cons x9162 x9160)))))
                                       (begin
                                         (write '(funapp 4018 36))
                                         (display "\n")
                                         (cons
                                          (begin
                                            (write '(funapp 4018 41))
                                            (display "\n")
                                            'posn)
                                          x9159))))
                                     (x9156
                                      (letrec*
                                       ((x9157 (input)))
                                       (begin
                                         (write '(funapp 4022 36))
                                         (display "\n")
                                         (cons
                                          x9157
                                          (begin
                                            (write '(funapp 4022 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 4023 33))
                                      (display "\n")
                                      (cons x9158 x9156)))))
                                 (begin
                                   (write '(funapp 4024 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 4024 35))
                                      (display "\n")
                                      'tetra)
                                    x9155))))
                               (x9152
                                (letrec*
                                 ((x9153 (input)))
                                 (begin
                                   (write '(funapp 4026 56))
                                   (display "\n")
                                   (cons
                                    x9153
                                    (begin
                                      (write '(funapp 4026 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 4027 27))
                                (display "\n")
                                (cons x9154 x9152)))))
                           (begin
                             (write '(funapp 4028 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 4028 29))
                                (display "\n")
                                'world)
                              x9151))))
                         (x9149 (input)))
                        (begin
                          (write '(funapp 4030 21))
                          (display "\n")
                          (x9163 x9150 x9149)))
                       (letrec*
                        ((x9185
                          (letrec*
                           ((xj7666
                             (begin
                               (write '(funapp 4034 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4034 37))
                                  (display "\n")
                                  'module))))
                            (xk7667
                             (begin
                               (write '(funapp 4034 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4034 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9186
                              (begin
                                (write '(funapp 4037 27))
                                (display "\n")
                                ((lambda (j7669 k7670 f7671)
                                   (letrec*
                                    ((g9187
                                      (lambda (g7668)
                                        (letrec*
                                         ((g9188
                                           (letrec*
                                            ((x9189
                                              (letrec*
                                               ((x9190
                                                 (begin
                                                   (write '(funapp 4046 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7669
                                                    k7670
                                                    g7668))))
                                               (begin
                                                 (write '(funapp 4047 42))
                                                 (display "\n")
                                                 (f7671 x9190)))))
                                            (begin
                                              (write '(funapp 4048 39))
                                              (display "\n")
                                              (BSET/C j7669 k7670 x9189)))))
                                         g9188))))
                                    g9187))
                                 xj7666
                                 xk7667
                                 ghost-blocks))))
                            g9186)))
                         (x9172
                          (letrec*
                           ((x9173
                             (letrec*
                              ((x9176
                                (letrec*
                                 ((x9177
                                   (letrec*
                                    ((x9180
                                      (letrec*
                                       ((x9181
                                         (letrec*
                                          ((x9184 (input))
                                           (x9182
                                            (letrec*
                                             ((x9183 (input)))
                                             (begin
                                               (write '(funapp 4071 42))
                                               (display "\n")
                                               (cons
                                                x9183
                                                (begin
                                                  (write '(funapp 4071 53))
                                                  (display "\n")
                                                  '()))))))
                                          (begin
                                            (write '(funapp 4072 39))
                                            (display "\n")
                                            (cons x9184 x9182)))))
                                       (begin
                                         (write '(funapp 4073 36))
                                         (display "\n")
                                         (cons
                                          (begin
                                            (write '(funapp 4073 41))
                                            (display "\n")
                                            'posn)
                                          x9181))))
                                     (x9178
                                      (letrec*
                                       ((x9179 (input)))
                                       (begin
                                         (write '(funapp 4077 36))
                                         (display "\n")
                                         (cons
                                          x9179
                                          (begin
                                            (write '(funapp 4077 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 4078 33))
                                      (display "\n")
                                      (cons x9180 x9178)))))
                                 (begin
                                   (write '(funapp 4079 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 4079 35))
                                      (display "\n")
                                      'tetra)
                                    x9177))))
                               (x9174
                                (letrec*
                                 ((x9175 (input)))
                                 (begin
                                   (write '(funapp 4081 56))
                                   (display "\n")
                                   (cons
                                    x9175
                                    (begin
                                      (write '(funapp 4081 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 4082 27))
                                (display "\n")
                                (cons x9176 x9174)))))
                           (begin
                             (write '(funapp 4083 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 4083 29))
                                (display "\n")
                                'world)
                              x9173)))))
                        (begin
                          (write '(funapp 4084 21))
                          (display "\n")
                          (x9185 x9172)))
                       (letrec*
                        ((x9192
                          (letrec*
                           ((xj7672
                             (begin
                               (write '(funapp 4088 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4088 37))
                                  (display "\n")
                                  'module))))
                            (xk7673
                             (begin
                               (write '(funapp 4088 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4088 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9193
                              (begin
                                (write '(funapp 4091 27))
                                (display "\n")
                                ((lambda (j7675 k7676 f7677)
                                   (letrec*
                                    ((g9194
                                      (lambda (g7674)
                                        (letrec*
                                         ((g9195
                                           (letrec*
                                            ((x9196
                                              (letrec*
                                               ((x9197
                                                 (begin
                                                   (write '(funapp 4100 50))
                                                   (display "\n")
                                                   (any/c j7675 k7676 g7674))))
                                               (begin
                                                 (write '(funapp 4101 42))
                                                 (display "\n")
                                                 (f7677 x9197)))))
                                            (begin
                                              (write '(funapp 4102 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7675
                                               k7676
                                               x9196)))))
                                         g9195))))
                                    g9194))
                                 xj7672
                                 xk7673
                                 image?))))
                            g9193)))
                         (x9191 (input)))
                        (begin
                          (write '(funapp 4110 21))
                          (display "\n")
                          (x9192 x9191)))
                       (letrec*
                        ((x9200
                          (letrec*
                           ((xj7678
                             (begin
                               (write '(funapp 4114 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4114 37))
                                  (display "\n")
                                  'module))))
                            (xk7679
                             (begin
                               (write '(funapp 4114 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4114 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9201
                              (begin
                                (write '(funapp 4117 27))
                                (display "\n")
                                ((lambda (j7682 k7683 f7684)
                                   (letrec*
                                    ((g9202
                                      (lambda (g7680 g7681)
                                        (letrec*
                                         ((g9203
                                           (letrec*
                                            ((x9204
                                              (letrec*
                                               ((x9206
                                                 (begin
                                                   (write '(funapp 4126 50))
                                                   (display "\n")
                                                   (image? j7682 k7683 g7680)))
                                                (x9205
                                                 (begin
                                                   (write '(funapp 4127 50))
                                                   (display "\n")
                                                   (image?
                                                    j7682
                                                    k7683
                                                    g7681))))
                                               (begin
                                                 (write '(funapp 4128 42))
                                                 (display "\n")
                                                 (f7684 x9206 x9205)))))
                                            (begin
                                              (write '(funapp 4129 39))
                                              (display "\n")
                                              (image? j7682 k7683 x9204)))))
                                         g9203))))
                                    g9202))
                                 xj7678
                                 xk7679
                                 overlay))))
                            g9201)))
                         (x9199 (input))
                         (x9198 (input)))
                        (begin
                          (write '(funapp 4138 21))
                          (display "\n")
                          (x9200 x9199 x9198)))
                       (letrec*
                        ((x9210
                          (letrec*
                           ((xj7685
                             (begin
                               (write '(funapp 4142 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4142 37))
                                  (display "\n")
                                  'module))))
                            (xk7686
                             (begin
                               (write '(funapp 4142 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4142 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9211
                              (begin
                                (write '(funapp 4145 27))
                                (display "\n")
                                ((lambda (j7690 k7691 f7692)
                                   (letrec*
                                    ((g9212
                                      (lambda (g7687 g7688 g7689)
                                        (letrec*
                                         ((g9213
                                           (letrec*
                                            ((x9214
                                              (letrec*
                                               ((x9217
                                                 (begin
                                                   (write '(funapp 4154 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7690
                                                    k7691
                                                    g7687)))
                                                (x9216
                                                 (begin
                                                   (write '(funapp 4155 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7690
                                                    k7691
                                                    g7688)))
                                                (x9215
                                                 (begin
                                                   (write '(funapp 4157 44))
                                                   (display "\n")
                                                   (string?/c
                                                    j7690
                                                    k7691
                                                    g7689))))
                                               (begin
                                                 (write '(funapp 4158 42))
                                                 (display "\n")
                                                 (f7692 x9217 x9216 x9215)))))
                                            (begin
                                              (write '(funapp 4159 39))
                                              (display "\n")
                                              (image? j7690 k7691 x9214)))))
                                         g9213))))
                                    g9212))
                                 xj7685
                                 xk7686
                                 circle))))
                            g9211)))
                         (x9209 (input))
                         (x9208 (input))
                         (x9207 (input)))
                        (begin
                          (write '(funapp 4169 21))
                          (display "\n")
                          (x9210 x9209 x9208 x9207)))
                       (letrec*
                        ((x9222
                          (letrec*
                           ((xj7693
                             (begin
                               (write '(funapp 4173 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4173 37))
                                  (display "\n")
                                  'module))))
                            (xk7694
                             (begin
                               (write '(funapp 4173 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4173 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9223
                              (begin
                                (write '(funapp 4176 27))
                                (display "\n")
                                ((lambda (j7699 k7700 f7701)
                                   (letrec*
                                    ((g9224
                                      (lambda (g7695 g7696 g7697 g7698)
                                        (letrec*
                                         ((g9225
                                           (letrec*
                                            ((x9226
                                              (letrec*
                                               ((x9230
                                                 (begin
                                                   (write '(funapp 4185 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7699
                                                    k7700
                                                    g7695)))
                                                (x9229
                                                 (begin
                                                   (write '(funapp 4186 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7699
                                                    k7700
                                                    g7696)))
                                                (x9228
                                                 (begin
                                                   (write '(funapp 4187 50))
                                                   (display "\n")
                                                   (COLOR/C
                                                    j7699
                                                    k7700
                                                    g7697)))
                                                (x9227
                                                 (begin
                                                   (write '(funapp 4188 50))
                                                   (display "\n")
                                                   (COLOR/C
                                                    j7699
                                                    k7700
                                                    g7698))))
                                               (begin
                                                 (write '(funapp 4189 42))
                                                 (display "\n")
                                                 (f7701
                                                  x9230
                                                  x9229
                                                  x9228
                                                  x9227)))))
                                            (begin
                                              (write '(funapp 4190 39))
                                              (display "\n")
                                              (image? j7699 k7700 x9226)))))
                                         g9225))))
                                    g9224))
                                 xj7693
                                 xk7694
                                 rectangle))))
                            g9223)))
                         (x9221 (input))
                         (x9220 (input))
                         (x9219 (input))
                         (x9218 (input)))
                        (begin
                          (write '(funapp 4201 21))
                          (display "\n")
                          (x9222 x9221 x9220 x9219 x9218)))
                       (letrec*
                        ((x9235
                          (letrec*
                           ((xj7702
                             (begin
                               (write '(funapp 4205 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4205 37))
                                  (display "\n")
                                  'module))))
                            (xk7703
                             (begin
                               (write '(funapp 4205 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4205 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9236
                              (begin
                                (write '(funapp 4208 27))
                                (display "\n")
                                ((lambda (j7708 k7709 f7710)
                                   (letrec*
                                    ((g9237
                                      (lambda (g7704 g7705 g7706 g7707)
                                        (letrec*
                                         ((g9238
                                           (letrec*
                                            ((x9239
                                              (letrec*
                                               ((x9243
                                                 (begin
                                                   (write '(funapp 4217 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7708
                                                    k7709
                                                    g7704)))
                                                (x9242
                                                 (begin
                                                   (write '(funapp 4218 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7708
                                                    k7709
                                                    g7705)))
                                                (x9241
                                                 (begin
                                                   (write '(funapp 4219 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7708
                                                    k7709
                                                    g7706)))
                                                (x9240
                                                 (begin
                                                   (write '(funapp 4220 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7708
                                                    k7709
                                                    g7707))))
                                               (begin
                                                 (write '(funapp 4221 42))
                                                 (display "\n")
                                                 (f7710
                                                  x9243
                                                  x9242
                                                  x9241
                                                  x9240)))))
                                            (begin
                                              (write '(funapp 4222 39))
                                              (display "\n")
                                              (image/c j7708 k7709 x9239)))))
                                         g9238))))
                                    g9237))
                                 xj7702
                                 xk7703
                                 place-image))))
                            g9236)))
                         (x9234
                          (begin
                            (write '(funapp 4229 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 4229 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 4229 41))
                               (display "\n")
                               '()))))
                         (x9233 (input))
                         (x9232 (input))
                         (x9231
                          (begin
                            (write '(funapp 4232 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 4232 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 4232 41))
                               (display "\n")
                               '())))))
                        (begin
                          (write '(funapp 4233 21))
                          (display "\n")
                          (x9235 x9234 x9233 x9232 x9231)))
                       (letrec*
                        ((x9246
                          (letrec*
                           ((xj7711
                             (begin
                               (write '(funapp 4237 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4237 37))
                                  (display "\n")
                                  'module))))
                            (xk7712
                             (begin
                               (write '(funapp 4237 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4237 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9247
                              (begin
                                (write '(funapp 4240 27))
                                (display "\n")
                                ((lambda (j7715 k7716 f7717)
                                   (letrec*
                                    ((g9248
                                      (lambda (g7713 g7714)
                                        (letrec*
                                         ((g9249
                                           (letrec*
                                            ((x9250
                                              (letrec*
                                               ((x9252
                                                 (begin
                                                   (write '(funapp 4249 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7715
                                                    k7716
                                                    g7713)))
                                                (x9251
                                                 (begin
                                                   (write '(funapp 4250 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7715
                                                    k7716
                                                    g7714))))
                                               (begin
                                                 (write '(funapp 4251 42))
                                                 (display "\n")
                                                 (f7717 x9252 x9251)))))
                                            (begin
                                              (write '(funapp 4252 39))
                                              (display "\n")
                                              (image? j7715 k7716 x9250)))))
                                         g9249))))
                                    g9248))
                                 xj7711
                                 xk7712
                                 empty-scene))))
                            g9247)))
                         (x9245 (input))
                         (x9244 (input)))
                        (begin
                          (write '(funapp 4261 21))
                          (display "\n")
                          (x9246 x9245 x9244)))
                       (letrec*
                        ((x9254
                          (letrec*
                           ((xj7718
                             (begin
                               (write '(funapp 4265 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4265 37))
                                  (display "\n")
                                  'module))))
                            (xk7719
                             (begin
                               (write '(funapp 4265 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4265 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9255
                              (begin
                                (write '(funapp 4268 27))
                                (display "\n")
                                ((lambda (j7721 k7722 f7723)
                                   (letrec*
                                    ((g9256
                                      (lambda (g7720)
                                        (letrec*
                                         ((g9257
                                           (letrec*
                                            ((x9258
                                              (letrec*
                                               ((x9259
                                                 (letrec*
                                                  ((x9260
                                                    (letrec*
                                                     ((x9261
                                                       (begin
                                                         (write
                                                          '(funapp 4281 56))
                                                         (display "\n")
                                                         (listof TETRA/C))))
                                                     (begin
                                                       (write
                                                        '(funapp 4282 48))
                                                       (display "\n")
                                                       (and/c
                                                        cons?/c
                                                        x9261)))))
                                                  (begin
                                                    (write '(funapp 4283 45))
                                                    (display "\n")
                                                    (x9260
                                                     j7721
                                                     k7722
                                                     g7720)))))
                                               (begin
                                                 (write '(funapp 4284 42))
                                                 (display "\n")
                                                 (f7723 x9259)))))
                                            (begin
                                              (write '(funapp 4285 39))
                                              (display "\n")
                                              (TETRA/C j7721 k7722 x9258)))))
                                         g9257))))
                                    g9256))
                                 xj7718
                                 xk7719
                                 list-pick-random))))
                            g9255)))
                         (x9253 (input)))
                        (begin
                          (write '(funapp 4293 21))
                          (display "\n")
                          (x9254 x9253)))
                       (letrec*
                        ((xj7724
                          (begin
                            (write '(funapp 4295 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 4295 34))
                               (display "\n")
                               'module))))
                         (xk7725
                          (begin
                            (write '(funapp 4295 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 4295 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g9262
                           (begin
                             (write '(funapp 4296 38))
                             (display "\n")
                             (integer?/c xj7724 xk7725 neg-1))))
                         g9262))
                       (letrec*
                        ((x9276
                          (letrec*
                           ((xj7726
                             (begin
                               (write '(funapp 4300 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4300 37))
                                  (display "\n")
                                  'module))))
                            (xk7727
                             (begin
                               (write '(funapp 4300 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4300 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9277
                              (begin
                                (write '(funapp 4303 27))
                                (display "\n")
                                ((lambda (j7729 k7730 f7731)
                                   (letrec*
                                    ((g9278
                                      (lambda (g7728)
                                        (letrec*
                                         ((g9279
                                           (letrec*
                                            ((x9280
                                              (letrec*
                                               ((x9281
                                                 (begin
                                                   (write '(funapp 4312 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7729
                                                    k7730
                                                    g7728))))
                                               (begin
                                                 (write '(funapp 4313 42))
                                                 (display "\n")
                                                 (f7731 x9281)))))
                                            (begin
                                              (write '(funapp 4314 39))
                                              (display "\n")
                                              (image/c j7729 k7730 x9280)))))
                                         g9279))))
                                    g9278))
                                 xj7726
                                 xk7727
                                 world->image))))
                            g9277)))
                         (x9263
                          (letrec*
                           ((x9264
                             (letrec*
                              ((x9267
                                (letrec*
                                 ((x9268
                                   (letrec*
                                    ((x9271
                                      (letrec*
                                       ((x9272
                                         (letrec*
                                          ((x9275 (input))
                                           (x9273
                                            (letrec*
                                             ((x9274 (input)))
                                             (begin
                                               (write '(funapp 4337 42))
                                               (display "\n")
                                               (cons
                                                x9274
                                                (begin
                                                  (write '(funapp 4337 53))
                                                  (display "\n")
                                                  '()))))))
                                          (begin
                                            (write '(funapp 4338 39))
                                            (display "\n")
                                            (cons x9275 x9273)))))
                                       (begin
                                         (write '(funapp 4339 36))
                                         (display "\n")
                                         (cons
                                          (begin
                                            (write '(funapp 4339 41))
                                            (display "\n")
                                            'posn)
                                          x9272))))
                                     (x9269
                                      (letrec*
                                       ((x9270 (input)))
                                       (begin
                                         (write '(funapp 4343 36))
                                         (display "\n")
                                         (cons
                                          x9270
                                          (begin
                                            (write '(funapp 4343 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 4344 33))
                                      (display "\n")
                                      (cons x9271 x9269)))))
                                 (begin
                                   (write '(funapp 4345 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 4345 35))
                                      (display "\n")
                                      'tetra)
                                    x9268))))
                               (x9265
                                (letrec*
                                 ((x9266 (input)))
                                 (begin
                                   (write '(funapp 4347 56))
                                   (display "\n")
                                   (cons
                                    x9266
                                    (begin
                                      (write '(funapp 4347 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 4348 27))
                                (display "\n")
                                (cons x9267 x9265)))))
                           (begin
                             (write '(funapp 4349 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 4349 29))
                                (display "\n")
                                'world)
                              x9264)))))
                        (begin
                          (write '(funapp 4350 21))
                          (display "\n")
                          (x9276 x9263)))
                       (letrec*
                        ((x9283
                          (letrec*
                           ((xj7732
                             (begin
                               (write '(funapp 4354 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4354 37))
                                  (display "\n")
                                  'module))))
                            (xk7733
                             (begin
                               (write '(funapp 4354 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4354 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9284
                              (begin
                                (write '(funapp 4357 27))
                                (display "\n")
                                ((lambda (j7735 k7736 f7737)
                                   (letrec*
                                    ((g9285
                                      (lambda (g7734)
                                        (letrec*
                                         ((g9286
                                           (letrec*
                                            ((x9287
                                              (letrec*
                                               ((x9288
                                                 (begin
                                                   (write '(funapp 4366 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7735
                                                    k7736
                                                    g7734))))
                                               (begin
                                                 (write '(funapp 4367 42))
                                                 (display "\n")
                                                 (f7737 x9288)))))
                                            (begin
                                              (write '(funapp 4368 39))
                                              (display "\n")
                                              (image/c j7735 k7736 x9287)))))
                                         g9286))))
                                    g9285))
                                 xj7732
                                 xk7733
                                 blocks->image))))
                            g9284)))
                         (x9282 (input)))
                        (begin
                          (write '(funapp 4376 21))
                          (display "\n")
                          (x9283 x9282)))
                       (letrec*
                        ((x9296
                          (letrec*
                           ((xj7738
                             (begin
                               (write '(funapp 4380 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4380 37))
                                  (display "\n")
                                  'module))))
                            (xk7739
                             (begin
                               (write '(funapp 4380 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4380 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9297
                              (begin
                                (write '(funapp 4383 27))
                                (display "\n")
                                ((lambda (j7741 k7742 f7743)
                                   (letrec*
                                    ((g9298
                                      (lambda (g7740)
                                        (letrec*
                                         ((g9299
                                           (letrec*
                                            ((x9300
                                              (letrec*
                                               ((x9301
                                                 (begin
                                                   (write '(funapp 4392 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7741
                                                    k7742
                                                    g7740))))
                                               (begin
                                                 (write '(funapp 4393 42))
                                                 (display "\n")
                                                 (f7743 x9301)))))
                                            (begin
                                              (write '(funapp 4394 39))
                                              (display "\n")
                                              (image/c j7741 k7742 x9300)))))
                                         g9299))))
                                    g9298))
                                 xj7738
                                 xk7739
                                 block->image))))
                            g9297)))
                         (x9289
                          (letrec*
                           ((x9290
                             (letrec*
                              ((x9295 (input))
                               (x9291
                                (letrec*
                                 ((x9294 (input))
                                  (x9292
                                   (letrec*
                                    ((x9293 (input)))
                                    (begin
                                      (write '(funapp 4410 59))
                                      (display "\n")
                                      (cons
                                       x9293
                                       (begin
                                         (write '(funapp 4410 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 4411 30))
                                   (display "\n")
                                   (cons x9294 x9292)))))
                              (begin
                                (write '(funapp 4412 27))
                                (display "\n")
                                (cons x9295 x9291)))))
                           (begin
                             (write '(funapp 4413 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 4413 29))
                                (display "\n")
                                'block)
                              x9290)))))
                        (begin
                          (write '(funapp 4414 21))
                          (display "\n")
                          (x9296 x9289)))
                       (letrec*
                        ((x9310
                          (letrec*
                           ((xj7744
                             (begin
                               (write '(funapp 4418 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4418 37))
                                  (display "\n")
                                  'module))))
                            (xk7745
                             (begin
                               (write '(funapp 4418 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4418 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9311
                              (begin
                                (write '(funapp 4421 27))
                                (display "\n")
                                ((lambda (j7748 k7749 f7750)
                                   (letrec*
                                    ((g9312
                                      (lambda (g7746 g7747)
                                        (letrec*
                                         ((g9313
                                           (letrec*
                                            ((x9314
                                              (letrec*
                                               ((x9316
                                                 (begin
                                                   (write '(funapp 4430 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7748
                                                    k7749
                                                    g7746)))
                                                (x9315
                                                 (begin
                                                   (write '(funapp 4431 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7748
                                                    k7749
                                                    g7747))))
                                               (begin
                                                 (write '(funapp 4432 42))
                                                 (display "\n")
                                                 (f7750 x9316 x9315)))))
                                            (begin
                                              (write '(funapp 4433 39))
                                              (display "\n")
                                              (image/c j7748 k7749 x9314)))))
                                         g9313))))
                                    g9312))
                                 xj7744
                                 xk7745
                                 place-block))))
                            g9311)))
                         (x9303
                          (letrec*
                           ((x9304
                             (letrec*
                              ((x9309 (input))
                               (x9305
                                (letrec*
                                 ((x9308 (input))
                                  (x9306
                                   (letrec*
                                    ((x9307 (input)))
                                    (begin
                                      (write '(funapp 4449 59))
                                      (display "\n")
                                      (cons
                                       x9307
                                       (begin
                                         (write '(funapp 4449 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 4450 30))
                                   (display "\n")
                                   (cons x9308 x9306)))))
                              (begin
                                (write '(funapp 4451 27))
                                (display "\n")
                                (cons x9309 x9305)))))
                           (begin
                             (write '(funapp 4452 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 4452 29))
                                (display "\n")
                                'block)
                              x9304))))
                         (x9302
                          (begin
                            (write '(funapp 4453 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 4453 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 4453 41))
                               (display "\n")
                               '())))))
                        (begin
                          (write '(funapp 4454 21))
                          (display "\n")
                          (x9310 x9303 x9302)))
                       (letrec*
                        ((x9318
                          (letrec*
                           ((xj7751
                             (begin
                               (write '(funapp 4458 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4458 37))
                                  (display "\n")
                                  'module))))
                            (xk7752
                             (begin
                               (write '(funapp 4458 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4458 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9319
                              (begin
                                (write '(funapp 4461 27))
                                (display "\n")
                                ((lambda (j7754 k7755 f7756)
                                   (letrec*
                                    ((g9320
                                      (lambda (g7753)
                                        (letrec*
                                         ((g9321
                                           (letrec*
                                            ((x9322
                                              (letrec*
                                               ((x9323
                                                 (letrec*
                                                  ((x9324
                                                    (letrec*
                                                     ((x9325
                                                       (begin
                                                         (write
                                                          '(funapp 4474 56))
                                                         (display "\n")
                                                         (listof TETRA/C))))
                                                     (begin
                                                       (write
                                                        '(funapp 4475 48))
                                                       (display "\n")
                                                       (and/c
                                                        cons?/c
                                                        x9325)))))
                                                  (begin
                                                    (write '(funapp 4476 45))
                                                    (display "\n")
                                                    (x9324
                                                     j7754
                                                     k7755
                                                     g7753)))))
                                               (begin
                                                 (write '(funapp 4477 42))
                                                 (display "\n")
                                                 (f7756 x9323)))))
                                            (begin
                                              (write '(funapp 4478 39))
                                              (display "\n")
                                              (WORLD/C j7754 k7755 x9322)))))
                                         g9321))))
                                    g9320))
                                 xj7751
                                 xk7752
                                 world0))))
                            g9319)))
                         (x9317 (input)))
                        (begin
                          (write '(funapp 4486 21))
                          (display "\n")
                          (x9318 x9317)))))))))
               g8758))))
           g7808))))
       g7791)))
    g7790)))
