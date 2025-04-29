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
               (add1
                (lambda (x)
                  (letrec*
                   ((g7933
                     (begin (write '(funapp 545 51)) (display "\n") (+ x 1))))
                   g7933)))
               (sub1
                (lambda (x)
                  (letrec*
                   ((g7934
                     (begin (write '(funapp 546 51)) (display "\n") (- x 1))))
                   g7934)))
               (/
                (letrec*
                 ((xj7366
                   (begin (write '(funapp 549 26)) (display "\n") 'server))
                  (xk7367
                   (begin (write '(funapp 549 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7935
                    (begin
                      (write '(funapp 552 21))
                      (display "\n")
                      ((lambda (j7370 k7371 f7372)
                         (letrec*
                          ((g7937
                            (lambda (g7368 g7369)
                              (letrec*
                               ((g7938
                                 (letrec*
                                  ((x7939
                                    (letrec*
                                     ((x7941
                                       (begin
                                         (write '(funapp 561 44))
                                         (display "\n")
                                         (number?/c j7370 k7371 g7368)))
                                      (x7940
                                       (begin
                                         (write '(funapp 562 44))
                                         (display "\n")
                                         (number?/c j7370 k7371 g7369))))
                                     (begin
                                       (write '(funapp 563 36))
                                       (display "\n")
                                       (f7372 x7941 x7940)))))
                                  (begin
                                    (write '(funapp 564 33))
                                    (display "\n")
                                    (number?/c j7370 k7371 x7939)))))
                               g7938))))
                          g7937))
                       xj7366
                       xk7367
                       (lambda (a b)
                         (letrec*
                          ((g7936
                            (begin
                              (write '(funapp 569 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7936))))))
                  g7935)))
               (car
                (letrec*
                 ((xj7373
                   (begin (write '(funapp 573 26)) (display "\n") 'server))
                  (xk7374
                   (begin (write '(funapp 573 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7942
                    (begin
                      (write '(funapp 576 21))
                      (display "\n")
                      ((lambda (j7376 k7377 f7378)
                         (letrec*
                          ((g7944
                            (lambda (g7375)
                              (letrec*
                               ((g7945
                                 (letrec*
                                  ((x7946
                                    (letrec*
                                     ((x7947
                                       (begin
                                         (write '(funapp 585 44))
                                         (display "\n")
                                         (pair?/c j7376 k7377 g7375))))
                                     (begin
                                       (write '(funapp 586 36))
                                       (display "\n")
                                       (f7378 x7947)))))
                                  (begin
                                    (write '(funapp 587 33))
                                    (display "\n")
                                    (any/c j7376 k7377 x7946)))))
                               g7945))))
                          g7944))
                       xj7373
                       xk7374
                       (lambda (p)
                         (letrec*
                          ((g7943
                            (begin
                              (write '(funapp 592 51))
                              (display "\n")
                              (orig-car p))))
                          g7943))))))
                  g7942)))
               (cdr
                (letrec*
                 ((xj7379
                   (begin (write '(funapp 596 26)) (display "\n") 'server))
                  (xk7380
                   (begin (write '(funapp 596 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7948
                    (begin
                      (write '(funapp 599 21))
                      (display "\n")
                      ((lambda (j7382 k7383 f7384)
                         (letrec*
                          ((g7950
                            (lambda (g7381)
                              (letrec*
                               ((g7951
                                 (letrec*
                                  ((x7952
                                    (letrec*
                                     ((x7953
                                       (begin
                                         (write '(funapp 608 44))
                                         (display "\n")
                                         (pair?/c j7382 k7383 g7381))))
                                     (begin
                                       (write '(funapp 609 36))
                                       (display "\n")
                                       (f7384 x7953)))))
                                  (begin
                                    (write '(funapp 610 33))
                                    (display "\n")
                                    (any/c j7382 k7383 x7952)))))
                               g7951))))
                          g7950))
                       xj7379
                       xk7380
                       (lambda (p)
                         (letrec*
                          ((g7949
                            (begin
                              (write '(funapp 615 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7949))))))
                  g7948)))
               (cons
                (letrec*
                 ((xj7385
                   (begin (write '(funapp 619 26)) (display "\n") 'server))
                  (xk7386
                   (begin (write '(funapp 619 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7954
                    (begin
                      (write '(funapp 622 21))
                      (display "\n")
                      ((lambda (j7389 k7390 f7391)
                         (letrec*
                          ((g7956
                            (lambda (g7387 g7388)
                              (letrec*
                               ((g7957
                                 (letrec*
                                  ((x7958
                                    (letrec*
                                     ((x7960
                                       (begin
                                         (write '(funapp 631 44))
                                         (display "\n")
                                         (any/c j7389 k7390 g7387)))
                                      (x7959
                                       (begin
                                         (write '(funapp 632 44))
                                         (display "\n")
                                         (any/c j7389 k7390 g7388))))
                                     (begin
                                       (write '(funapp 633 36))
                                       (display "\n")
                                       (f7391 x7960 x7959)))))
                                  (begin
                                    (write '(funapp 634 33))
                                    (display "\n")
                                    (pair?/c j7389 k7390 x7958)))))
                               g7957))))
                          g7956))
                       xj7385
                       xk7386
                       (lambda (a b)
                         (letrec*
                          ((g7955
                            (begin
                              (write '(funapp 640 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7955))))))
                  g7954)))
               (vector-ref
                (letrec*
                 ((xj7392
                   (begin (write '(funapp 644 26)) (display "\n") 'server))
                  (xk7393
                   (begin (write '(funapp 644 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7961
                    (begin
                      (write '(funapp 647 21))
                      (display "\n")
                      ((lambda (j7395 k7396 f7397)
                         (letrec*
                          ((g7963
                            (lambda (g7394)
                              (letrec*
                               ((g7964
                                 (letrec*
                                  ((x7965
                                    (letrec*
                                     ((x7966
                                       (begin
                                         (write '(funapp 656 44))
                                         (display "\n")
                                         (vector?/c j7395 k7396 g7394))))
                                     (begin
                                       (write '(funapp 657 36))
                                       (display "\n")
                                       (f7397 x7966)))))
                                  (begin
                                    (write '(funapp 658 33))
                                    (display "\n")
                                    (integer?/c j7395 k7396 x7965)))))
                               g7964))))
                          g7963))
                       xj7392
                       xk7393
                       (lambda (v i)
                         (letrec*
                          ((g7962
                            (begin
                              (write '(funapp 664 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7962))))))
                  g7961)))
               (vector-set!
                (letrec*
                 ((xj7398
                   (begin (write '(funapp 668 26)) (display "\n") 'server))
                  (xk7399
                   (begin (write '(funapp 668 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7967
                    (begin
                      (write '(funapp 671 21))
                      (display "\n")
                      ((lambda (j7402 k7403 f7404)
                         (letrec*
                          ((g7969
                            (lambda (g7400 g7401)
                              (letrec*
                               ((g7970
                                 (letrec*
                                  ((x7971
                                    (letrec*
                                     ((x7973
                                       (begin
                                         (write '(funapp 680 44))
                                         (display "\n")
                                         (vector?/c j7402 k7403 g7400)))
                                      (x7972
                                       (begin
                                         (write '(funapp 681 44))
                                         (display "\n")
                                         (integer?/c j7402 k7403 g7401))))
                                     (begin
                                       (write '(funapp 682 36))
                                       (display "\n")
                                       (f7404 x7973 x7972)))))
                                  (begin
                                    (write '(funapp 683 33))
                                    (display "\n")
                                    (any/c j7402 k7403 x7971)))))
                               g7970))))
                          g7969))
                       xj7398
                       xk7399
                       (lambda (vec i v)
                         (letrec*
                          ((g7968
                            (begin
                              (write '(funapp 689 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7968))))))
                  g7967)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7974
                     (letrec*
                      ((x7975
                        (letrec*
                         ((x7976
                           (begin
                             (write '(funapp 696 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 696 58))
                           (display "\n")
                           (cdr x7976)))))
                      (begin
                        (write '(funapp 697 23))
                        (display "\n")
                        (cdr x7975)))))
                   g7974)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7977
                     (letrec*
                      ((x7980
                        (begin
                          (write '(funapp 703 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 703 62))
                        (display "\n")
                        (assert x7980))))
                    (g7978
                     (letrec*
                      ((x7981
                        (begin
                          (write '(funapp 704 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 704 57))
                        (display "\n")
                        (assert x7981))))
                    (g7979
                     (letrec*
                      ((x-cnd7982
                        (begin
                          (write '(funapp 707 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7982
                        (begin (write '(funapp 709 24)) (display "\n") '())
                        (letrec*
                         ((x7985
                           (letrec*
                            ((x7986
                              (begin
                                (write '(funapp 711 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 711 61))
                              (display "\n")
                              (f x7986))))
                          (x7983
                           (letrec*
                            ((x7984
                              (begin
                                (write '(funapp 712 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 712 61))
                              (display "\n")
                              (map f x7984)))))
                         (begin
                           (write '(funapp 713 26))
                           (display "\n")
                           (cons x7985 x7983)))))))
                   g7979)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7987
                     (letrec*
                      ((x7988
                        (begin
                          (write '(funapp 718 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 718 55))
                        (display "\n")
                        (cdr x7988)))))
                   g7987)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7989
                     (letrec*
                      ((x7990
                        (letrec*
                         ((x7991
                           (letrec*
                            ((x7992
                              (begin
                                (write '(funapp 727 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 727 61))
                              (display "\n")
                              (car x7992)))))
                         (begin
                           (write '(funapp 728 26))
                           (display "\n")
                           (cdr x7991)))))
                      (begin
                        (write '(funapp 729 23))
                        (display "\n")
                        (car x7990)))))
                   g7989)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7993
                     (letrec*
                      ((x7994
                        (letrec*
                         ((x7995
                           (letrec*
                            ((x7996
                              (begin
                                (write '(funapp 738 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 738 61))
                              (display "\n")
                              (cdr x7996)))))
                         (begin
                           (write '(funapp 739 26))
                           (display "\n")
                           (car x7995)))))
                      (begin
                        (write '(funapp 740 23))
                        (display "\n")
                        (cdr x7994)))))
                   g7993)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7997
                     (letrec*
                      ((x8000
                        (begin
                          (write '(funapp 746 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 746 60))
                        (display "\n")
                        (assert x8000))))
                    (g7998
                     (letrec*
                      ((x8001
                        (begin
                          (write '(funapp 748 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 748 59))
                        (display "\n")
                        (assert x8001))))
                    (g7999
                     (letrec*
                      ((output-port
                        (begin
                          (write '(funapp 751 37))
                          (display "\n")
                          (open-output-file filename)))
                       (res
                        (begin
                          (write '(funapp 752 29))
                          (display "\n")
                          (proc output-port))))
                      (letrec*
                       ((g8002
                         (begin
                           (write '(funapp 754 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g8003 res))
                       g8003))))
                   g7999)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g8004
                     (letrec*
                      ((x8005
                        (letrec*
                         ((x8006
                           (begin
                             (write '(funapp 762 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 762 58))
                           (display "\n")
                           (cdr x8006)))))
                      (begin
                        (write '(funapp 763 23))
                        (display "\n")
                        (car x8005)))))
                   g8004)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g8007
                     (letrec*
                      ((x8008
                        (letrec*
                         ((x8009
                           (letrec*
                            ((x8010
                              (begin
                                (write '(funapp 772 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 772 61))
                              (display "\n")
                              (car x8010)))))
                         (begin
                           (write '(funapp 773 26))
                           (display "\n")
                           (car x8009)))))
                      (begin
                        (write '(funapp 774 23))
                        (display "\n")
                        (cdr x8008)))))
                   g8007)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g8011
                     (letrec*
                      ((x8013
                        (begin
                          (write '(funapp 779 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 779 57))
                        (display "\n")
                        (assert x8013))))
                    (g8012
                     (letrec*
                      ((x-cnd8014
                        (begin
                          (write '(funapp 782 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8014
                        #f
                        (letrec*
                         ((x-cnd8015
                           (letrec*
                            ((x8016
                              (begin
                                (write '(funapp 787 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 787 56))
                              (display "\n")
                              (eq? x8016 k)))))
                         (if x-cnd8015
                           (begin
                             (write '(funapp 789 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8017
                              (begin
                                (write '(funapp 790 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 790 55))
                              (display "\n")
                              (assq k x8017)))))))))
                   g8012)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g8018
                     (letrec*
                      ((x8019
                        (begin
                          (write '(funapp 795 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 795 60))
                        (display "\n")
                        (= 0 x8019)))))
                   g8018)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g8020
                     (letrec*
                      ((x8022
                        (begin
                          (write '(funapp 800 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 800 57))
                        (display "\n")
                        (assert x8022))))
                    (g8021
                     (letrec*
                      ((x-cnd8023
                        (begin
                          (write '(funapp 803 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8023
                        ""
                        (letrec*
                         ((x8026
                           (letrec*
                            ((x8027
                              (begin
                                (write '(funapp 808 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 808 55))
                              (display "\n")
                              (char->string x8027))))
                          (x8024
                           (letrec*
                            ((x8025
                              (begin
                                (write '(funapp 810 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 810 55))
                              (display "\n")
                              (list->string x8025)))))
                         (begin
                           (write '(funapp 811 26))
                           (display "\n")
                           (string-append x8026 x8024)))))))
                   g8021)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8028
                     (letrec*
                      ((x8031
                        (begin
                          (write '(funapp 816 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 816 58))
                        (display "\n")
                        (assert x8031))))
                    (g8029
                     (letrec*
                      ((x8032
                        (begin
                          (write '(funapp 817 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 817 58))
                        (display "\n")
                        (assert x8032))))
                    (g8030
                     (letrec*
                      ((val7249
                        (begin
                          (write '(funapp 820 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g8033
                         (if val7249
                           val7249
                           (begin
                             (write '(funapp 822 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g8033))))
                   g8030)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g8034
                     (letrec*
                      ((x8035
                        (letrec*
                         ((x8036
                           (letrec*
                            ((x8037
                              (begin
                                (write '(funapp 832 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 832 61))
                              (display "\n")
                              (cdr x8037)))))
                         (begin
                           (write '(funapp 833 26))
                           (display "\n")
                           (cdr x8036)))))
                      (begin
                        (write '(funapp 834 23))
                        (display "\n")
                        (cdr x8035)))))
                   g8034)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g8038
                     (letrec*
                      ((x8041
                        (begin
                          (write '(funapp 839 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 839 57))
                        (display "\n")
                        (assert x8041))))
                    (g8039
                     (letrec*
                      ((x8042
                        (begin
                          (write '(funapp 840 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 840 57))
                        (display "\n")
                        (assert x8042))))
                    (g8040
                     (letrec*
                      ((x-cnd8043
                        (begin
                          (write '(funapp 843 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd8043
                        x
                        (letrec*
                         ((x8045
                           (begin
                             (write '(funapp 847 34))
                             (display "\n")
                             (cdr x)))
                          (x8044
                           (begin
                             (write '(funapp 847 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 848 26))
                           (display "\n")
                           (list-tail x8045 x8044)))))))
                   g8040)))
               (halt
                (lambda ()
                  (letrec*
                   ((g8046
                     (begin (write '(funapp 850 49)) (display "\n") '())))
                   g8046)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g8047
                     (letrec*
                      ((x-cnd8048
                        (letrec*
                         ((x8049 #\a))
                         (begin
                           (write '(funapp 857 48))
                           (display "\n")
                           (char-ci>=? c x8049)))))
                      (if x-cnd8048
                        (letrec*
                         ((x8050 #\z))
                         (begin
                           (write '(funapp 859 48))
                           (display "\n")
                           (char-ci<=? c x8050)))
                        #f))))
                   g8047)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g8051
                     (letrec*
                      ((val7250
                        (letrec*
                         ((x8052
                           (begin
                             (write '(funapp 868 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 868 62))
                           (display "\n")
                           (= x8052 9)))))
                      (letrec*
                       ((g8053
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x8054
                                 (begin
                                   (write '(funapp 876 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 877 32))
                                 (display "\n")
                                 (= x8054 10)))))
                            (letrec*
                             ((g8055
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((x8056
                                    (begin
                                      (write '(funapp 883 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 884 35))
                                    (display "\n")
                                    (= x8056 32))))))
                             g8055)))))
                       g8053))))
                   g8051)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g8057
                     (letrec*
                      ((x8058
                        (letrec*
                         ((x8059
                           (begin
                             (write '(funapp 893 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 893 58))
                           (display "\n")
                           (cdr x8059)))))
                      (begin
                        (write '(funapp 894 23))
                        (display "\n")
                        (cdr x8058)))))
                   g8057)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g8060
                     (letrec*
                      ((x8062
                        (begin
                          (write '(funapp 899 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 899 59))
                        (display "\n")
                        (assert x8062))))
                    (g8061
                     (begin (write '(funapp 900 28)) (display "\n") (> x 0))))
                   g8061)))
               (string=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8063
                     (begin
                       (write '(funapp 902 59))
                       (display "\n")
                       (bool-top))))
                   g8063)))
               ($pc (begin (write '(funapp 903 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g8064 #f)) g8064)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g8065
                     (letrec*
                      ((x8066
                        (begin
                          (write '(funapp 909 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 909 55))
                        (display "\n")
                        (cdr x8066)))))
                   g8065)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g8067
                     (letrec*
                      ((x8069
                        (begin
                          (write '(funapp 914 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 914 59))
                        (display "\n")
                        (assert x8069))))
                    (g8068
                     (letrec*
                      ((x-cnd8070
                        (begin
                          (write '(funapp 917 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd8070
                        (begin
                          (write '(funapp 918 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 918 49))
                          (display "\n")
                          (floor x))))))
                   g8068)))
               ($cmp (begin (write '(funapp 920 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g8071
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 926 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g8072
                         (if val7252
                           val7252
                           (letrec*
                            ((val7253
                              (letrec*
                               ((x-cnd8073
                                 (begin
                                   (write '(funapp 934 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd8073
                                 (begin
                                   (write '(funapp 935 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g8074
                               (if val7253
                                 val7253
                                 (letrec*
                                  ((val7254
                                    (letrec*
                                     ((x-cnd8075
                                       (begin
                                         (write '(funapp 943 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd8075
                                       (letrec*
                                        ((x-cnd8076
                                          (begin
                                            (write '(funapp 946 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd8076
                                          (begin
                                            (write '(funapp 947 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g8077
                                     (if val7254
                                       val7254
                                       (letrec*
                                        ((val7255
                                          (letrec*
                                           ((x-cnd8078
                                             (begin
                                               (write '(funapp 956 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd8078
                                             (letrec*
                                              ((x-cnd8079
                                                (begin
                                                  (write '(funapp 959 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd8079
                                                (letrec*
                                                 ((x-cnd8080
                                                   (letrec*
                                                    ((x8082
                                                      (begin
                                                        (write
                                                         '(funapp 964 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x8081
                                                      (begin
                                                        (write
                                                         '(funapp 965 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 966 53))
                                                      (display "\n")
                                                      (equal? x8082 x8081)))))
                                                 (if x-cnd8080
                                                   (letrec*
                                                    ((x8084
                                                      (begin
                                                        (write
                                                         '(funapp 969 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x8083
                                                      (begin
                                                        (write
                                                         '(funapp 970 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 971 53))
                                                      (display "\n")
                                                      (equal? x8084 x8083)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g8085
                                           (if val7255
                                             val7255
                                             (letrec*
                                              ((x-cnd8086
                                                (begin
                                                  (write '(funapp 980 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd8086
                                                (letrec*
                                                 ((x-cnd8087
                                                   (begin
                                                     (write '(funapp 983 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd8087
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 986 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g8088
                                                       (letrec*
                                                        ((x-cnd8089
                                                          (letrec*
                                                           ((x8090
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  993
                                                                  62))
                                                               (display "\n")
                                                               (vector-length
                                                                b))))
                                                           (begin
                                                             (write
                                                              '(funapp 995 60))
                                                             (display "\n")
                                                             (= x8090 n)))))
                                                        (if x-cnd8089
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g8091
                                                                  (letrec*
                                                                   ((val7256
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          1004
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (=
                                                                        i
                                                                        n))))
                                                                   (letrec*
                                                                    ((g8092
                                                                      (if val7256
                                                                        val7256
                                                                        (letrec*
                                                                         ((x-cnd8093
                                                                           (letrec*
                                                                            ((x8095
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1013
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 a
                                                                                 i)))
                                                                             (x8094
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1017
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 b
                                                                                 i))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 1020
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (equal?
                                                                               x8095
                                                                               x8094)))))
                                                                         (if x-cnd8093
                                                                           (letrec*
                                                                            ((x8096
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1026
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (+
                                                                                 i
                                                                                 1))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 1029
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (loop
                                                                               x8096)))
                                                                           #f)))))
                                                                    g8092))))
                                                                g8091))))
                                                           (letrec*
                                                            ((g8097
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1035
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g8097))
                                                          #f))))
                                                     g8088))
                                                   #f))
                                                #f)))))
                                         g8085)))))
                                   g8077)))))
                             g8074)))))
                       g8072))))
                   g8071)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g8098
                     (letrec*
                      ((x8099
                        (letrec*
                         ((x8100
                           (letrec*
                            ((x8101
                              (begin
                                (write '(funapp 1053 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1053 61))
                              (display "\n")
                              (car x8101)))))
                         (begin
                           (write '(funapp 1054 26))
                           (display "\n")
                           (car x8100)))))
                      (begin
                        (write '(funapp 1055 23))
                        (display "\n")
                        (cdr x8099)))))
                   g8098)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g8102
                     (letrec*
                      ((x8103
                        (letrec*
                         ((x8104
                           (letrec*
                            ((x8105
                              (begin
                                (write '(funapp 1064 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1064 61))
                              (display "\n")
                              (cdr x8105)))))
                         (begin
                           (write '(funapp 1065 26))
                           (display "\n")
                           (car x8104)))))
                      (begin
                        (write '(funapp 1066 23))
                        (display "\n")
                        (car x8103)))))
                   g8102)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g8106
                     (begin
                       (write '(funapp 1068 53))
                       (display "\n")
                       (eq? x y))))
                   g8106)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g8107
                     (letrec*
                      ((x8110
                        (begin
                          (write '(funapp 1073 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1073 60))
                        (display "\n")
                        (assert x8110))))
                    (g8108
                     (letrec*
                      ((x8111
                        (begin
                          (write '(funapp 1075 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1075 59))
                        (display "\n")
                        (assert x8111))))
                    (g8109
                     (letrec*
                      ((input-port
                        (begin
                          (write '(funapp 1078 36))
                          (display "\n")
                          (open-input-file filename)))
                       (res
                        (begin
                          (write '(funapp 1079 29))
                          (display "\n")
                          (proc input-port))))
                      (letrec*
                       ((g8112
                         (begin
                           (write '(funapp 1081 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g8113 res))
                       g8113))))
                   g8109)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g8114
                     (begin
                       (write '(funapp 1084 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1084 57))
                          (display "\n")
                          '())))))
                   g8114)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8115
                     (letrec*
                      ((x8118
                        (begin
                          (write '(funapp 1088 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1088 58))
                        (display "\n")
                        (assert x8118))))
                    (g8116
                     (letrec*
                      ((x8119
                        (begin
                          (write '(funapp 1089 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1089 58))
                        (display "\n")
                        (assert x8119))))
                    (g8117
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1092 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g8120
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1094 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g8120))))
                   g8117)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g8121
                     (letrec*
                      ((x8122
                        (letrec*
                         ((x8123
                           (begin
                             (write '(funapp 1102 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1102 58))
                           (display "\n")
                           (car x8123)))))
                      (begin
                        (write '(funapp 1103 23))
                        (display "\n")
                        (cdr x8122)))))
                   g8121)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g8124
                     (letrec*
                      ((x8125
                        (letrec*
                         ((x8126
                           (letrec*
                            ((x8127
                              (begin
                                (write '(funapp 1112 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1112 61))
                              (display "\n")
                              (cdr x8127)))))
                         (begin
                           (write '(funapp 1113 26))
                           (display "\n")
                           (car x8126)))))
                      (begin
                        (write '(funapp 1114 23))
                        (display "\n")
                        (cdr x8125)))))
                   g8124)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g8128
                     (letrec*
                      ((x8129
                        (letrec*
                         ((x8130
                           (begin
                             (write '(funapp 1122 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1122 58))
                           (display "\n")
                           (cdr x8130)))))
                      (begin
                        (write '(funapp 1123 23))
                        (display "\n")
                        (car x8129)))))
                   g8128)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g8131
                     (letrec*
                      ((x8132
                        (letrec*
                         ((x8133
                           (begin
                             (write '(funapp 1130 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1130 58))
                           (display "\n")
                           (car x8133)))))
                      (begin
                        (write '(funapp 1131 23))
                        (display "\n")
                        (car x8132)))))
                   g8131)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g8134
                     (letrec*
                      ((x8137
                        (begin
                          (write '(funapp 1136 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1136 58))
                        (display "\n")
                        (assert x8137))))
                    (g8135
                     (letrec*
                      ((x8138
                        (begin
                          (write '(funapp 1137 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1137 58))
                        (display "\n")
                        (assert x8138))))
                    (g8136
                     (letrec*
                      ((x8139
                        (begin
                          (write '(funapp 1138 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1138 66))
                        (display "\n")
                        (not x8139)))))
                   g8136)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g8140
                     (letrec*
                      ((x8141
                        (letrec*
                         ((x8142
                           (letrec*
                            ((x8143
                              (begin
                                (write '(funapp 1148 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1148 61))
                              (display "\n")
                              (car x8143)))))
                         (begin
                           (write '(funapp 1149 26))
                           (display "\n")
                           (car x8142)))))
                      (begin
                        (write '(funapp 1150 23))
                        (display "\n")
                        (car x8141)))))
                   g8140)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g8144
                     (letrec*
                      ((x8146
                        (begin
                          (write '(funapp 1155 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1155 59))
                        (display "\n")
                        (assert x8146))))
                    (g8145
                     (begin (write '(funapp 1156 28)) (display "\n") (< x 0))))
                   g8145)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g8147
                     (begin
                       (write '(funapp 1158 53))
                       (display "\n")
                       (memq e l))))
                   g8147)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g8148
                     (letrec*
                      ((x8149
                        (letrec*
                         ((x8150
                           (begin
                             (write '(funapp 1164 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1164 58))
                           (display "\n")
                           (car x8150)))))
                      (begin
                        (write '(funapp 1165 23))
                        (display "\n")
                        (car x8149)))))
                   g8148)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g8151
                     (begin (write '(funapp 1167 51)) (display "\n") '())))
                   g8151)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g8152
                     (letrec*
                      ((x8154
                        (begin
                          (write '(funapp 1171 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1171 57))
                        (display "\n")
                        (assert x8154))))
                    (g8153
                     (letrec*
                      ((x-cnd8155
                        (begin
                          (write '(funapp 1174 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8155
                        (begin (write '(funapp 1176 24)) (display "\n") '())
                        (letrec*
                         ((x8158
                           (letrec*
                            ((x8159
                              (begin
                                (write '(funapp 1178 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1178 61))
                              (display "\n")
                              (reverse x8159))))
                          (x8156
                           (letrec*
                            ((x8157
                              (begin
                                (write '(funapp 1179 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1179 61))
                              (display "\n")
                              (list x8157)))))
                         (begin
                           (write '(funapp 1180 26))
                           (display "\n")
                           (append x8158 x8156)))))))
                   g8153)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g8160
                     (letrec*
                      ((x8161
                        (letrec*
                         ((x8162
                           (letrec*
                            ((x8163
                              (begin
                                (write '(funapp 1189 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1189 61))
                              (display "\n")
                              (car x8163)))))
                         (begin
                           (write '(funapp 1190 26))
                           (display "\n")
                           (car x8162)))))
                      (begin
                        (write '(funapp 1191 23))
                        (display "\n")
                        (car x8161)))))
                   g8160)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g8164
                     (letrec*
                      ((x8165
                        (letrec*
                         ((x8166
                           (letrec*
                            ((x8167
                              (begin
                                (write '(funapp 1200 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1200 61))
                              (display "\n")
                              (car x8167)))))
                         (begin
                           (write '(funapp 1201 26))
                           (display "\n")
                           (cdr x8166)))))
                      (begin
                        (write '(funapp 1202 23))
                        (display "\n")
                        (cdr x8165)))))
                   g8164)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g8168
                     (letrec*
                      ((x8170
                        (begin
                          (write '(funapp 1207 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1207 59))
                        (display "\n")
                        (assert x8170))))
                    (g8169
                     (letrec*
                      ((x8171
                        (begin
                          (write '(funapp 1208 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1208 60))
                        (display "\n")
                        (= 1 x8171)))))
                   g8169)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g8172
                     (letrec*
                      ((x8173
                        (letrec*
                         ((x8174
                           (letrec*
                            ((x8175
                              (begin
                                (write '(funapp 1217 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1217 61))
                              (display "\n")
                              (cdr x8175)))))
                         (begin
                           (write '(funapp 1218 26))
                           (display "\n")
                           (car x8174)))))
                      (begin
                        (write '(funapp 1219 23))
                        (display "\n")
                        (car x8173)))))
                   g8172)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g8176
                     (letrec*
                      ((x8179
                        (begin
                          (write '(funapp 1225 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1225 59))
                        (display "\n")
                        (assert x8179))))
                    (g8177
                     (letrec*
                      ((x8180
                        (begin
                          (write '(funapp 1226 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1226 60))
                        (display "\n")
                        (assert x8180))))
                    (g8178
                     (letrec*
                      ((x-cnd8181
                        (begin
                          (write '(funapp 1229 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd8181
                        (letrec*
                         ((g8182
                           (begin
                             (write '(funapp 1231 42))
                             (display "\n")
                             (proc))))
                         g8182)
                        (letrec*
                         ((x-cnd8183
                           (letrec*
                            ((x8184
                              (begin
                                (write '(funapp 1234 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1234 58))
                              (display "\n")
                              (null? x8184)))))
                         (if x-cnd8183
                           (letrec*
                            ((g8185
                              (letrec*
                               ((x8186
                                 (begin
                                   (write '(funapp 1238 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1238 61))
                                 (display "\n")
                                 (proc x8186)))))
                            g8185)
                           (letrec*
                            ((x-cnd8187
                              (letrec*
                               ((x8188
                                 (begin
                                   (write '(funapp 1242 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1242 62))
                                 (display "\n")
                                 (null? x8188)))))
                            (if x-cnd8187
                              (letrec*
                               ((g8189
                                 (letrec*
                                  ((x8191
                                    (begin
                                      (write '(funapp 1247 43))
                                      (display "\n")
                                      (car args)))
                                   (x8190
                                    (begin
                                      (write '(funapp 1247 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1248 35))
                                    (display "\n")
                                    (proc x8191 x8190)))))
                               g8189)
                              (letrec*
                               ((x-cnd8192
                                 (letrec*
                                  ((x8193
                                    (begin
                                      (write '(funapp 1253 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1254 35))
                                    (display "\n")
                                    (null? x8193)))))
                               (if x-cnd8192
                                 (letrec*
                                  ((g8194
                                    (letrec*
                                     ((x8197
                                       (begin
                                         (write '(funapp 1259 46))
                                         (display "\n")
                                         (car args)))
                                      (x8196
                                       (begin
                                         (write '(funapp 1260 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x8195
                                       (begin
                                         (write '(funapp 1261 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1262 38))
                                       (display "\n")
                                       (proc x8197 x8196 x8195)))))
                                  g8194)
                                 (letrec*
                                  ((x-cnd8198
                                    (letrec*
                                     ((x8199
                                       (begin
                                         (write '(funapp 1267 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1268 38))
                                       (display "\n")
                                       (null? x8199)))))
                                  (if x-cnd8198
                                    (letrec*
                                     ((g8200
                                       (letrec*
                                        ((x8204
                                          (begin
                                            (write '(funapp 1273 49))
                                            (display "\n")
                                            (car args)))
                                         (x8203
                                          (begin
                                            (write '(funapp 1274 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x8202
                                          (begin
                                            (write '(funapp 1275 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x8201
                                          (begin
                                            (write '(funapp 1276 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1277 41))
                                          (display "\n")
                                          (proc x8204 x8203 x8202 x8201)))))
                                     g8200)
                                    (letrec*
                                     ((x-cnd8205
                                       (letrec*
                                        ((x8206
                                          (letrec*
                                           ((x8207
                                             (begin
                                               (write '(funapp 1284 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1285 44))
                                             (display "\n")
                                             (cdr x8207)))))
                                        (begin
                                          (write '(funapp 1286 41))
                                          (display "\n")
                                          (null? x8206)))))
                                     (if x-cnd8205
                                       (letrec*
                                        ((g8208
                                          (letrec*
                                           ((x8214
                                             (begin
                                               (write '(funapp 1291 52))
                                               (display "\n")
                                               (car args)))
                                            (x8213
                                             (begin
                                               (write '(funapp 1292 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x8212
                                             (begin
                                               (write '(funapp 1293 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x8211
                                             (begin
                                               (write '(funapp 1294 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x8209
                                             (letrec*
                                              ((x8210
                                                (begin
                                                  (write '(funapp 1297 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1298 47))
                                                (display "\n")
                                                (car x8210)))))
                                           (begin
                                             (write '(funapp 1299 44))
                                             (display "\n")
                                             (proc
                                              x8214
                                              x8213
                                              x8212
                                              x8211
                                              x8209)))))
                                        g8208)
                                       (letrec*
                                        ((x-cnd8215
                                          (letrec*
                                           ((x8216
                                             (letrec*
                                              ((x8217
                                                (begin
                                                  (write '(funapp 1311 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1312 47))
                                                (display "\n")
                                                (cddr x8217)))))
                                           (begin
                                             (write '(funapp 1313 44))
                                             (display "\n")
                                             (null? x8216)))))
                                        (if x-cnd8215
                                          (letrec*
                                           ((g8218
                                             (letrec*
                                              ((x8226
                                                (begin
                                                  (write '(funapp 1318 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x8225
                                                (begin
                                                  (write '(funapp 1319 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x8224
                                                (begin
                                                  (write '(funapp 1320 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x8223
                                                (begin
                                                  (write '(funapp 1321 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x8221
                                                (letrec*
                                                 ((x8222
                                                   (begin
                                                     (write '(funapp 1324 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1325 50))
                                                   (display "\n")
                                                   (car x8222))))
                                               (x8219
                                                (letrec*
                                                 ((x8220
                                                   (begin
                                                     (write '(funapp 1328 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1329 50))
                                                   (display "\n")
                                                   (cadr x8220)))))
                                              (begin
                                                (write '(funapp 1330 47))
                                                (display "\n")
                                                (proc
                                                 x8226
                                                 x8225
                                                 x8224
                                                 x8223
                                                 x8221
                                                 x8219)))))
                                           g8218)
                                          (letrec*
                                           ((x-cnd8227
                                             (letrec*
                                              ((x8228
                                                (letrec*
                                                 ((x8229
                                                   (begin
                                                     (write '(funapp 1343 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1344 50))
                                                   (display "\n")
                                                   (cdddr x8229)))))
                                              (begin
                                                (write '(funapp 1345 47))
                                                (display "\n")
                                                (null? x8228)))))
                                           (if x-cnd8227
                                             (letrec*
                                              ((g8230
                                                (letrec*
                                                 ((x8240
                                                   (begin
                                                     (write '(funapp 1350 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x8239
                                                   (begin
                                                     (write '(funapp 1351 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x8238
                                                   (begin
                                                     (write '(funapp 1352 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x8237
                                                   (begin
                                                     (write '(funapp 1353 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x8235
                                                   (letrec*
                                                    ((x8236
                                                      (begin
                                                        (write
                                                         '(funapp 1356 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1357 53))
                                                      (display "\n")
                                                      (car x8236))))
                                                  (x8233
                                                   (letrec*
                                                    ((x8234
                                                      (begin
                                                        (write
                                                         '(funapp 1360 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1361 53))
                                                      (display "\n")
                                                      (cadr x8234))))
                                                  (x8231
                                                   (letrec*
                                                    ((x8232
                                                      (begin
                                                        (write
                                                         '(funapp 1364 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1365 53))
                                                      (display "\n")
                                                      (caddr x8232)))))
                                                 (begin
                                                   (write '(funapp 1366 50))
                                                   (display "\n")
                                                   (proc
                                                    x8240
                                                    x8239
                                                    x8238
                                                    x8237
                                                    x8235
                                                    x8233
                                                    x8231)))))
                                              g8230)
                                             (letrec*
                                              ((g8241
                                                (begin
                                                  (write '(funapp 1377 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g8241)))))))))))))))))))
                   g8178)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g8242
                     (letrec*
                      ((x8244
                        (begin
                          (write '(funapp 1383 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1383 57))
                        (display "\n")
                        (assert x8244))))
                    (g8243
                     (letrec*
                      ((x-cnd8245
                        (begin
                          (write '(funapp 1386 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8245
                        #f
                        (letrec*
                         ((x-cnd8246
                           (letrec*
                            ((x8247
                              (begin
                                (write '(funapp 1391 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1391 55))
                              (display "\n")
                              (equal? x8247 e)))))
                         (if x-cnd8246
                           l
                           (letrec*
                            ((x8248
                              (begin
                                (write '(funapp 1394 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1394 55))
                              (display "\n")
                              (member e x8248)))))))))
                   g8243)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g8249
                     (letrec*
                      ((x8250
                        (letrec*
                         ((x8251
                           (letrec*
                            ((x8252
                              (begin
                                (write '(funapp 1403 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1403 61))
                              (display "\n")
                              (cdr x8252)))))
                         (begin
                           (write '(funapp 1404 26))
                           (display "\n")
                           (cdr x8251)))))
                      (begin
                        (write '(funapp 1405 23))
                        (display "\n")
                        (cdr x8250)))))
                   g8249)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g8253
                     (letrec*
                      ((x8254
                        (letrec*
                         ((x8255
                           (letrec*
                            ((x8256
                              (begin
                                (write '(funapp 1414 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1414 61))
                              (display "\n")
                              (cdr x8256)))))
                         (begin
                           (write '(funapp 1415 26))
                           (display "\n")
                           (cdr x8255)))))
                      (begin
                        (write '(funapp 1416 23))
                        (display "\n")
                        (car x8254)))))
                   g8253)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g8257
                     (begin
                       (write '(funapp 1418 53))
                       (display "\n")
                       (random 42))))
                   g8257)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g8258
                     (letrec*
                      ((x8260
                        (begin
                          (write '(funapp 1422 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1422 59))
                        (display "\n")
                        (assert x8260))))
                    (g8259
                     (begin (write '(funapp 1423 28)) (display "\n") (= x 0))))
                   g8259)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8261
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1430 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g8262
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1432 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8262))))
                   g8261)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g8263
                     (letrec*
                      ((x8264
                        (begin
                          (write '(funapp 1438 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1438 55))
                        (display "\n")
                        (car x8264)))))
                   g8263)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g8265
                     (letrec*
                      ((val7259
                        (letrec*
                         ((x-cnd8266
                           (begin
                             (write '(funapp 1448 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8266
                           (letrec*
                            ((x8267
                              (begin
                                (write '(funapp 1450 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1450 55))
                              (display "\n")
                              (list? x8267)))
                           #f))))
                      (letrec*
                       ((g8268
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1453 52))
                             (display "\n")
                             (null? l)))))
                       g8268))))
                   g8265)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g8269
                     (letrec*
                      ((x8270
                        (letrec*
                         ((x8271
                           (letrec*
                            ((x8272
                              (begin
                                (write '(funapp 1463 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1463 61))
                              (display "\n")
                              (car x8272)))))
                         (begin
                           (write '(funapp 1464 26))
                           (display "\n")
                           (cdr x8271)))))
                      (begin
                        (write '(funapp 1465 23))
                        (display "\n")
                        (cdr x8270)))))
                   g8269)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g8273
                     (letrec*
                      ((x-cnd8274
                        (letrec*
                         ((x8275 #\0))
                         (begin
                           (write '(funapp 1472 58))
                           (display "\n")
                           (char<=? x8275 c)))))
                      (if x-cnd8274
                        (letrec*
                         ((x8276 #\9))
                         (begin
                           (write '(funapp 1474 48))
                           (display "\n")
                           (char<=? c x8276)))
                        #f))))
                   g8273)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g8277
                     (letrec*
                      ((x8279
                        (begin
                          (write '(funapp 1481 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1481 57))
                        (display "\n")
                        (assert x8279))))
                    (g8278
                     (letrec*
                      ((x-cnd8280
                        (begin
                          (write '(funapp 1484 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8280
                        #f
                        (letrec*
                         ((x-cnd8281
                           (letrec*
                            ((x8282
                              (begin
                                (write '(funapp 1489 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1489 56))
                              (display "\n")
                              (eqv? x8282 k)))))
                         (if x-cnd8281
                           (begin
                             (write '(funapp 1491 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8283
                              (begin
                                (write '(funapp 1492 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1492 55))
                              (display "\n")
                              (assq k x8283)))))))))
                   g8278)))
               (not (lambda (x) (letrec* ((g8284 (if x #f #t))) g8284)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g8285
                     (begin
                       (write '(funapp 1496 50))
                       (display "\n")
                       (append l1 l2))))
                   g8285)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g8286
                     (letrec*
                      ((x8288
                        (begin
                          (write '(funapp 1500 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1500 57))
                        (display "\n")
                        (assert x8288))))
                    (g8287
                     (letrec*
                      ((x-cnd8289
                        (begin
                          (write '(funapp 1503 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8289
                        #f
                        (letrec*
                         ((x-cnd8290
                           (letrec*
                            ((x8291
                              (begin
                                (write '(funapp 1508 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1508 55))
                              (display "\n")
                              (eq? x8291 e)))))
                         (if x-cnd8290
                           l
                           (letrec*
                            ((x8292
                              (begin
                                (write '(funapp 1511 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1511 55))
                              (display "\n")
                              (memq e x8292)))))))))
                   g8287)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g8293
                     (letrec*
                      ((x8294
                        (letrec*
                         ((x8295
                           (letrec*
                            ((x8296
                              (begin
                                (write '(funapp 1520 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1520 61))
                              (display "\n")
                              (car x8296)))))
                         (begin
                           (write '(funapp 1521 26))
                           (display "\n")
                           (cdr x8295)))))
                      (begin
                        (write '(funapp 1522 23))
                        (display "\n")
                        (car x8294)))))
                   g8293)))
               (length
                (lambda (l)
                  (letrec*
                   ((g8297
                     (letrec*
                      ((x8299
                        (begin
                          (write '(funapp 1527 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1527 57))
                        (display "\n")
                        (assert x8299))))
                    (g8298
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g8300
                             (letrec*
                              ((x-cnd8301
                                (begin
                                  (write '(funapp 1535 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd8301
                                0
                                (letrec*
                                 ((x8302
                                   (letrec*
                                    ((x8303
                                      (begin
                                        (write '(funapp 1540 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1540 63))
                                      (display "\n")
                                      (rec x8303)))))
                                 (begin
                                   (write '(funapp 1541 34))
                                   (display "\n")
                                   (+ 1 x8302)))))))
                           g8300))))
                      (letrec*
                       ((g8304
                         (begin
                           (write '(funapp 1543 40))
                           (display "\n")
                           (rec l))))
                       g8304))))
                   g8298)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8305
                     (letrec*
                      ((x8308
                        (begin
                          (write '(funapp 1548 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1548 58))
                        (display "\n")
                        (assert x8308))))
                    (g8306
                     (letrec*
                      ((x8309
                        (begin
                          (write '(funapp 1549 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1549 58))
                        (display "\n")
                        (assert x8309))))
                    (g8307
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1552 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g8310
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1554 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8310))))
                   g8307)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g8311
                     (letrec*
                      ((x8312
                        (begin
                          (write '(funapp 1560 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1560 65))
                        (display "\n")
                        (not x8312)))))
                   g8311)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g8313
                     (letrec*
                      ((x8314
                        (letrec*
                         ((x8315
                           (begin
                             (write '(funapp 1567 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1567 58))
                           (display "\n")
                           (car x8315)))))
                      (begin
                        (write '(funapp 1568 23))
                        (display "\n")
                        (cdr x8314)))))
                   g8313)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g8316
                     (letrec*
                      ((x8318
                        (begin
                          (write '(funapp 1573 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1573 57))
                        (display "\n")
                        (assert x8318))))
                    (g8317
                     (letrec*
                      ((x-cnd8319
                        (begin
                          (write '(funapp 1576 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8319
                        #f
                        (letrec*
                         ((x-cnd8320
                           (letrec*
                            ((x8321
                              (begin
                                (write '(funapp 1581 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1581 56))
                              (display "\n")
                              (equal? x8321 k)))))
                         (if x-cnd8320
                           (begin
                             (write '(funapp 1583 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8322
                              (begin
                                (write '(funapp 1584 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1584 55))
                              (display "\n")
                              (assoc k x8322)))))))))
                   g8317)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g8323
                     (letrec*
                      ((x8324
                        (begin
                          (write '(funapp 1589 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1589 55))
                        (display "\n")
                        (car x8324)))))
                   g8323)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g8325
                     (letrec*
                      ((x8328
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1594 58))
                        (display "\n")
                        (assert x8328))))
                    (g8326
                     (letrec*
                      ((x8329
                        (begin
                          (write '(funapp 1595 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1595 58))
                        (display "\n")
                        (assert x8329))))
                    (g8327
                     (letrec*
                      ((x8330
                        (begin
                          (write '(funapp 1596 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1596 63))
                        (display "\n")
                        (not x8330)))))
                   g8327)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8331
                     (letrec*
                      ((val7261
                        (begin
                          (write '(funapp 1603 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g8332
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1605 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8332))))
                   g8331)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g8333
                     (letrec*
                      ((x8336
                        (begin
                          (write '(funapp 1611 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1611 62))
                        (display "\n")
                        (assert x8336))))
                    (g8334
                     (letrec*
                      ((x8337
                        (begin
                          (write '(funapp 1612 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1612 57))
                        (display "\n")
                        (assert x8337))))
                    (g8335
                     (letrec*
                      ((x-cnd8338
                        (begin
                          (write '(funapp 1615 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8338
                        #t
                        (letrec*
                         ((x-cnd8339
                           (begin
                             (write '(funapp 1619 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8339
                           (letrec*
                            ((g8340
                              (letrec*
                               ((x8342
                                 (begin
                                   (write '(funapp 1622 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1622 64))
                                 (display "\n")
                                 (f x8342))))
                             (g8341
                              (letrec*
                               ((x8343
                                 (begin
                                   (write '(funapp 1624 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1624 58))
                                 (display "\n")
                                 (for-each f x8343)))))
                            g8341)
                           (begin
                             (write '(funapp 1626 27))
                             (display "\n")
                             '())))))))
                   g8335)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g8344
                     (letrec*
                      ((x8346
                        (begin
                          (write '(funapp 1631 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1631 59))
                        (display "\n")
                        (assert x8346))))
                    (g8345
                     (letrec*
                      ((x-cnd8347
                        (begin
                          (write '(funapp 1633 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd8347
                        (begin
                          (write '(funapp 1633 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g8345)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8348
                     (letrec*
                      ((x8351
                        (begin
                          (write '(funapp 1638 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1638 58))
                        (display "\n")
                        (assert x8351))))
                    (g8349
                     (letrec*
                      ((x8352
                        (begin
                          (write '(funapp 1639 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1639 58))
                        (display "\n")
                        (assert x8352))))
                    (g8350
                     (letrec*
                      ((val7262
                        (begin
                          (write '(funapp 1642 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g8353
                         (if val7262
                           val7262
                           (begin
                             (write '(funapp 1644 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8353))))
                   g8350)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g8354
                     (letrec*
                      ((x8355
                        (letrec*
                         ((x8356
                           (letrec*
                            ((x8357
                              (begin
                                (write '(funapp 1654 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1654 61))
                              (display "\n")
                              (cdr x8357)))))
                         (begin
                           (write '(funapp 1655 26))
                           (display "\n")
                           (cdr x8356)))))
                      (begin
                        (write '(funapp 1656 23))
                        (display "\n")
                        (car x8355)))))
                   g8354)))
               (newline (lambda () (letrec* ((g8358 #f)) g8358)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g8359
                     (letrec*
                      ((x8361
                        (letrec*
                         ((x8362
                           (begin
                             (write '(funapp 1664 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1664 58))
                           (display "\n")
                           (abs x8362))))
                       (x8360
                        (begin
                          (write '(funapp 1665 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1666 23))
                        (display "\n")
                        (/ x8361 x8360)))))
                   g8359)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g8363
                     (letrec*
                      ((x8367
                        (begin
                          (write '(funapp 1672 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1672 57))
                        (display "\n")
                        (assert x8367))))
                    (g8364
                     (letrec*
                      ((x8368
                        (begin
                          (write '(funapp 1673 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1673 63))
                        (display "\n")
                        (assert x8368))))
                    (g8365
                     (letrec*
                      ((x8369
                        (letrec*
                         ((x8370
                           (begin
                             (write '(funapp 1676 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1676 61))
                           (display "\n")
                           (< index x8370)))))
                      (begin
                        (write '(funapp 1677 23))
                        (display "\n")
                        (assert x8369))))
                    (g8366
                     (letrec*
                      ((x-cnd8371
                        (begin
                          (write '(funapp 1680 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8371
                        (begin
                          (write '(funapp 1682 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8373
                           (begin
                             (write '(funapp 1684 34))
                             (display "\n")
                             (cdr l)))
                          (x8372
                           (begin
                             (write '(funapp 1684 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1685 26))
                           (display "\n")
                           (list-ref x8373 x8372)))))))
                   g8366)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8374
                     (letrec*
                      ((x-cnd8375
                        (begin
                          (write '(funapp 1692 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8375
                        a
                        (letrec*
                         ((x8376
                           (begin
                             (write '(funapp 1695 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1695 57))
                           (display "\n")
                           (gcd b x8376)))))))
                   g8374)))
               (block
                (lambda (x7758 y7759 color7760)
                  (letrec*
                   ((g8377
                     (letrec*
                      ((x8378
                        (letrec*
                         ((x8379
                           (letrec*
                            ((x8380
                              (begin
                                (write '(funapp 1706 37))
                                (display "\n")
                                (orig-cons
                                 color7760
                                 (begin
                                   (write '(funapp 1706 57))
                                   (display "\n")
                                   '())))))
                            (begin
                              (write '(funapp 1707 29))
                              (display "\n")
                              (orig-cons y7759 x8380)))))
                         (begin
                           (write '(funapp 1708 26))
                           (display "\n")
                           (orig-cons x7758 x8379)))))
                      (begin
                        (write '(funapp 1709 23))
                        (display "\n")
                        (orig-cons
                         (begin
                           (write '(funapp 1709 33))
                           (display "\n")
                           'block)
                         x8378)))))
                   g8377)))
               (block?
                (lambda (block7757)
                  (letrec*
                   ((g8381
                     (letrec*
                      ((x8382
                        (begin
                          (write '(funapp 1715 39))
                          (display "\n")
                          (car block7757))))
                      (begin
                        (write '(funapp 1715 57))
                        (display "\n")
                        (eq?
                         x8382
                         (begin
                           (write '(funapp 1715 67))
                           (display "\n")
                           'block))))))
                   g8381)))
               (block-x
                (lambda (block)
                  (letrec*
                   ((g8383
                     (letrec*
                      ((x8384
                        (begin
                          (write '(funapp 1721 39))
                          (display "\n")
                          (orig-cdr block))))
                      (begin
                        (write '(funapp 1721 58))
                        (display "\n")
                        (orig-car x8384)))))
                   g8383)))
               (block-y
                (lambda (block)
                  (letrec*
                   ((g8385
                     (letrec*
                      ((x8386
                        (letrec*
                         ((x8387
                           (begin
                             (write '(funapp 1729 42))
                             (display "\n")
                             (orig-cdr block))))
                         (begin
                           (write '(funapp 1729 61))
                           (display "\n")
                           (orig-cdr x8387)))))
                      (begin
                        (write '(funapp 1730 23))
                        (display "\n")
                        (orig-car x8386)))))
                   g8385)))
               (block-color
                (lambda (block)
                  (letrec*
                   ((g8388
                     (letrec*
                      ((x8389
                        (letrec*
                         ((x8390
                           (letrec*
                            ((x8391
                              (begin
                                (write '(funapp 1741 37))
                                (display "\n")
                                (orig-cdr block))))
                            (begin
                              (write '(funapp 1742 29))
                              (display "\n")
                              (orig-cdr x8391)))))
                         (begin
                           (write '(funapp 1743 26))
                           (display "\n")
                           (orig-cdr x8390)))))
                      (begin
                        (write '(funapp 1744 23))
                        (display "\n")
                        (orig-car x8389)))))
                   g8388)))
               (tetra
                (lambda (center7765 blocks7766)
                  (letrec*
                   ((g8392
                     (letrec*
                      ((x8393
                        (letrec*
                         ((x8394
                           (begin
                             (write '(funapp 1753 34))
                             (display "\n")
                             (orig-cons
                              blocks7766
                              (begin
                                (write '(funapp 1753 55))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1754 26))
                           (display "\n")
                           (orig-cons center7765 x8394)))))
                      (begin
                        (write '(funapp 1755 23))
                        (display "\n")
                        (orig-cons
                         (begin
                           (write '(funapp 1755 33))
                           (display "\n")
                           'tetra)
                         x8393)))))
                   g8392)))
               (tetra?
                (lambda (tetra7764)
                  (letrec*
                   ((g8395
                     (letrec*
                      ((x8396
                        (begin
                          (write '(funapp 1761 39))
                          (display "\n")
                          (car tetra7764))))
                      (begin
                        (write '(funapp 1761 57))
                        (display "\n")
                        (eq?
                         x8396
                         (begin
                           (write '(funapp 1761 67))
                           (display "\n")
                           'tetra))))))
                   g8395)))
               (tetra-center
                (lambda (tetra)
                  (letrec*
                   ((g8397
                     (letrec*
                      ((x8398
                        (begin
                          (write '(funapp 1767 39))
                          (display "\n")
                          (orig-cdr tetra))))
                      (begin
                        (write '(funapp 1767 58))
                        (display "\n")
                        (orig-car x8398)))))
                   g8397)))
               (tetra-blocks
                (lambda (tetra)
                  (letrec*
                   ((g8399
                     (letrec*
                      ((x8400
                        (letrec*
                         ((x8401
                           (begin
                             (write '(funapp 1775 42))
                             (display "\n")
                             (orig-cdr tetra))))
                         (begin
                           (write '(funapp 1775 61))
                           (display "\n")
                           (orig-cdr x8401)))))
                      (begin
                        (write '(funapp 1776 23))
                        (display "\n")
                        (orig-car x8400)))))
                   g8399)))
               (world
                (lambda (tetra7770 blocks7771)
                  (letrec*
                   ((g8402
                     (letrec*
                      ((x8403
                        (letrec*
                         ((x8404
                           (begin
                             (write '(funapp 1785 34))
                             (display "\n")
                             (orig-cons
                              blocks7771
                              (begin
                                (write '(funapp 1785 55))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1786 26))
                           (display "\n")
                           (orig-cons tetra7770 x8404)))))
                      (begin
                        (write '(funapp 1787 23))
                        (display "\n")
                        (orig-cons
                         (begin
                           (write '(funapp 1787 33))
                           (display "\n")
                           'world)
                         x8403)))))
                   g8402)))
               (world?
                (lambda (world7769)
                  (letrec*
                   ((g8405
                     (letrec*
                      ((x8406
                        (begin
                          (write '(funapp 1793 39))
                          (display "\n")
                          (car world7769))))
                      (begin
                        (write '(funapp 1793 57))
                        (display "\n")
                        (eq?
                         x8406
                         (begin
                           (write '(funapp 1793 67))
                           (display "\n")
                           'world))))))
                   g8405)))
               (world-tetra
                (lambda (world)
                  (letrec*
                   ((g8407
                     (letrec*
                      ((x8408
                        (begin
                          (write '(funapp 1799 39))
                          (display "\n")
                          (orig-cdr world))))
                      (begin
                        (write '(funapp 1799 58))
                        (display "\n")
                        (orig-car x8408)))))
                   g8407)))
               (world-blocks
                (lambda (world)
                  (letrec*
                   ((g8409
                     (letrec*
                      ((x8410
                        (letrec*
                         ((x8411
                           (begin
                             (write '(funapp 1807 42))
                             (display "\n")
                             (orig-cdr world))))
                         (begin
                           (write '(funapp 1807 61))
                           (display "\n")
                           (orig-cdr x8411)))))
                      (begin
                        (write '(funapp 1808 23))
                        (display "\n")
                        (orig-car x8410)))))
                   g8409)))
               (posn
                (lambda (x7775 y7776)
                  (letrec*
                   ((g8412
                     (letrec*
                      ((x8413
                        (letrec*
                         ((x8414
                           (begin
                             (write '(funapp 1817 34))
                             (display "\n")
                             (orig-cons
                              y7776
                              (begin
                                (write '(funapp 1817 50))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1818 26))
                           (display "\n")
                           (orig-cons x7775 x8414)))))
                      (begin
                        (write '(funapp 1819 23))
                        (display "\n")
                        (orig-cons
                         (begin (write '(funapp 1819 33)) (display "\n") 'posn)
                         x8413)))))
                   g8412)))
               (posn?
                (lambda (posn7774)
                  (letrec*
                   ((g8415
                     (letrec*
                      ((x8416
                        (begin
                          (write '(funapp 1825 39))
                          (display "\n")
                          (car posn7774))))
                      (begin
                        (write '(funapp 1825 56))
                        (display "\n")
                        (eq?
                         x8416
                         (begin
                           (write '(funapp 1825 66))
                           (display "\n")
                           'posn))))))
                   g8415)))
               (posn-x
                (lambda (posn)
                  (letrec*
                   ((g8417
                     (letrec*
                      ((x8418
                        (begin
                          (write '(funapp 1831 39))
                          (display "\n")
                          (orig-cdr posn))))
                      (begin
                        (write '(funapp 1831 57))
                        (display "\n")
                        (orig-car x8418)))))
                   g8417)))
               (posn-y
                (lambda (posn)
                  (letrec*
                   ((g8419
                     (letrec*
                      ((x8420
                        (letrec*
                         ((x8421
                           (begin
                             (write '(funapp 1839 42))
                             (display "\n")
                             (orig-cdr posn))))
                         (begin
                           (write '(funapp 1839 60))
                           (display "\n")
                           (orig-cdr x8421)))))
                      (begin
                        (write '(funapp 1840 23))
                        (display "\n")
                        (orig-car x8420)))))
                   g8419)))
               (COLOR/C symbol?/c)
               (POSN/C
                (lambda (j7406 k7407 v7405)
                  (letrec*
                   ((g8422
                     (letrec*
                      ((checked7408
                        (letrec*
                         ((x8423
                           (letrec*
                            ((x8424
                              (begin
                                (write '(funapp 1852 37))
                                (display "\n")
                                (orig-cdr v7405))))
                            (begin
                              (write '(funapp 1853 29))
                              (display "\n")
                              (orig-car x8424)))))
                         (begin
                           (write '(funapp 1854 26))
                           (display "\n")
                           (real?/c j7406 k7407 x8423)))))
                      (letrec*
                       ((g8425
                         (letrec*
                          ((checked7409
                            (letrec*
                             ((x8426
                               (letrec*
                                ((x8427
                                  (letrec*
                                   ((x8428
                                     (begin
                                       (write '(funapp 1864 44))
                                       (display "\n")
                                       (orig-cdr v7405))))
                                   (begin
                                     (write '(funapp 1865 36))
                                     (display "\n")
                                     (orig-cdr x8428)))))
                                (begin
                                  (write '(funapp 1866 33))
                                  (display "\n")
                                  (orig-car x8427)))))
                             (begin
                               (write '(funapp 1867 30))
                               (display "\n")
                               (real?/c j7406 k7407 x8426)))))
                          (letrec*
                           ((g8429
                             (letrec*
                              ((x8430
                                (letrec*
                                 ((x8431
                                   (begin
                                     (write '(funapp 1873 42))
                                     (display "\n")
                                     (cons
                                      checked7409
                                      (begin
                                        (write '(funapp 1873 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1874 34))
                                   (display "\n")
                                   (cons checked7408 x8431)))))
                              (begin
                                (write '(funapp 1875 31))
                                (display "\n")
                                (cons posn x8430)))))
                           g8429))))
                       g8425))))
                   g8422)))
               (BLOCK/C
                (lambda (j7412 k7413 v7411)
                  (letrec*
                   ((g8432
                     (letrec*
                      ((checked7414
                        (letrec*
                         ((x8433
                           (letrec*
                            ((x8434
                              (begin
                                (write '(funapp 1888 37))
                                (display "\n")
                                (orig-cdr v7411))))
                            (begin
                              (write '(funapp 1889 29))
                              (display "\n")
                              (orig-car x8434)))))
                         (begin
                           (write '(funapp 1890 26))
                           (display "\n")
                           (real?/c j7412 k7413 x8433)))))
                      (letrec*
                       ((g8435
                         (letrec*
                          ((checked7415
                            (letrec*
                             ((x8436
                               (letrec*
                                ((x8437
                                  (letrec*
                                   ((x8438
                                     (begin
                                       (write '(funapp 1900 44))
                                       (display "\n")
                                       (orig-cdr v7411))))
                                   (begin
                                     (write '(funapp 1901 36))
                                     (display "\n")
                                     (orig-cdr x8438)))))
                                (begin
                                  (write '(funapp 1902 33))
                                  (display "\n")
                                  (orig-car x8437)))))
                             (begin
                               (write '(funapp 1903 30))
                               (display "\n")
                               (real?/c j7412 k7413 x8436)))))
                          (letrec*
                           ((g8439
                             (letrec*
                              ((checked7416
                                (letrec*
                                 ((x8440
                                   (letrec*
                                    ((x8441
                                      (letrec*
                                       ((x8442
                                         (letrec*
                                          ((x8443
                                            (begin
                                              (write '(funapp 1915 51))
                                              (display "\n")
                                              (orig-cdr v7411))))
                                          (begin
                                            (write '(funapp 1916 43))
                                            (display "\n")
                                            (orig-cdr x8443)))))
                                       (begin
                                         (write '(funapp 1917 40))
                                         (display "\n")
                                         (orig-cdr x8442)))))
                                    (begin
                                      (write '(funapp 1918 37))
                                      (display "\n")
                                      (orig-car x8441)))))
                                 (begin
                                   (write '(funapp 1919 34))
                                   (display "\n")
                                   (COLOR/C j7412 k7413 x8440)))))
                              (letrec*
                               ((g8444
                                 (letrec*
                                  ((x8445
                                    (letrec*
                                     ((x8446
                                       (letrec*
                                        ((x8447
                                          (begin
                                            (write '(funapp 1927 49))
                                            (display "\n")
                                            (cons
                                             checked7416
                                             (begin
                                               (write '(funapp 1927 66))
                                               (display "\n")
                                               '())))))
                                        (begin
                                          (write '(funapp 1928 41))
                                          (display "\n")
                                          (cons checked7415 x8447)))))
                                     (begin
                                       (write '(funapp 1929 38))
                                       (display "\n")
                                       (cons checked7414 x8446)))))
                                  (begin
                                    (write '(funapp 1930 35))
                                    (display "\n")
                                    (cons block x8445)))))
                               g8444))))
                           g8439))))
                       g8435))))
                   g8432)))
               (BSET/C
                (begin
                  (write '(funapp 1935 24))
                  (display "\n")
                  (listof BLOCK/C)))
               (TETRA/C
                (lambda (j7419 k7420 v7418)
                  (letrec*
                   ((g8448
                     (letrec*
                      ((checked7421
                        (letrec*
                         ((x8449
                           (letrec*
                            ((x8450
                              (begin
                                (write '(funapp 1945 37))
                                (display "\n")
                                (orig-cdr v7418))))
                            (begin
                              (write '(funapp 1946 29))
                              (display "\n")
                              (orig-car x8450)))))
                         (begin
                           (write '(funapp 1947 26))
                           (display "\n")
                           (POSN/C j7419 k7420 x8449)))))
                      (letrec*
                       ((g8451
                         (letrec*
                          ((checked7422
                            (letrec*
                             ((x8452
                               (letrec*
                                ((x8453
                                  (letrec*
                                   ((x8454
                                     (begin
                                       (write '(funapp 1957 44))
                                       (display "\n")
                                       (orig-cdr v7418))))
                                   (begin
                                     (write '(funapp 1958 36))
                                     (display "\n")
                                     (orig-cdr x8454)))))
                                (begin
                                  (write '(funapp 1959 33))
                                  (display "\n")
                                  (orig-car x8453)))))
                             (begin
                               (write '(funapp 1960 30))
                               (display "\n")
                               (BSET/C j7419 k7420 x8452)))))
                          (letrec*
                           ((g8455
                             (letrec*
                              ((x8456
                                (letrec*
                                 ((x8457
                                   (begin
                                     (write '(funapp 1966 42))
                                     (display "\n")
                                     (cons
                                      checked7422
                                      (begin
                                        (write '(funapp 1966 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1967 34))
                                   (display "\n")
                                   (cons checked7421 x8457)))))
                              (begin
                                (write '(funapp 1968 31))
                                (display "\n")
                                (cons tetra x8456)))))
                           g8455))))
                       g8451))))
                   g8448)))
               (WORLD/C
                (lambda (j7425 k7426 v7424)
                  (letrec*
                   ((g8458
                     (letrec*
                      ((checked7427
                        (letrec*
                         ((x8459
                           (letrec*
                            ((x8460
                              (begin
                                (write '(funapp 1981 37))
                                (display "\n")
                                (orig-cdr v7424))))
                            (begin
                              (write '(funapp 1982 29))
                              (display "\n")
                              (orig-car x8460)))))
                         (begin
                           (write '(funapp 1983 26))
                           (display "\n")
                           (TETRA/C j7425 k7426 x8459)))))
                      (letrec*
                       ((g8461
                         (letrec*
                          ((checked7428
                            (letrec*
                             ((x8462
                               (letrec*
                                ((x8463
                                  (letrec*
                                   ((x8464
                                     (begin
                                       (write '(funapp 1993 44))
                                       (display "\n")
                                       (orig-cdr v7424))))
                                   (begin
                                     (write '(funapp 1994 36))
                                     (display "\n")
                                     (orig-cdr x8464)))))
                                (begin
                                  (write '(funapp 1995 33))
                                  (display "\n")
                                  (orig-car x8463)))))
                             (begin
                               (write '(funapp 1996 30))
                               (display "\n")
                               (BSET/C j7425 k7426 x8462)))))
                          (letrec*
                           ((g8465
                             (letrec*
                              ((x8466
                                (letrec*
                                 ((x8467
                                   (begin
                                     (write '(funapp 2002 42))
                                     (display "\n")
                                     (cons
                                      checked7428
                                      (begin
                                        (write '(funapp 2002 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 2003 34))
                                   (display "\n")
                                   (cons checked7427 x8467)))))
                              (begin
                                (write '(funapp 2004 31))
                                (display "\n")
                                (cons world x8466)))))
                           g8465))))
                       g8461))))
                   g8458)))
               (posn=?
                (lambda (p1 p2)
                  (letrec*
                   ((g8468
                     (letrec*
                      ((x-cnd8469
                        (letrec*
                         ((x8471
                           (begin
                             (write '(funapp 2015 34))
                             (display "\n")
                             (posn-x p1)))
                          (x8470
                           (begin
                             (write '(funapp 2015 54))
                             (display "\n")
                             (posn-x p2))))
                         (begin
                           (write '(funapp 2016 26))
                           (display "\n")
                           (= x8471 x8470)))))
                      (if x-cnd8469
                        (letrec*
                         ((x8473
                           (begin
                             (write '(funapp 2019 34))
                             (display "\n")
                             (posn-y p1)))
                          (x8472
                           (begin
                             (write '(funapp 2019 54))
                             (display "\n")
                             (posn-y p2))))
                         (begin
                           (write '(funapp 2020 26))
                           (display "\n")
                           (= x8473 x8472)))
                        #f))))
                   g8468)))
               (block-size 20)
               (board-height 20)
               (board-width 10)
               (block=?
                (lambda (b1 b2)
                  (letrec*
                   ((g8474
                     (letrec*
                      ((x-cnd8475
                        (letrec*
                         ((x8477
                           (begin
                             (write '(funapp 2033 34))
                             (display "\n")
                             (block-x b1)))
                          (x8476
                           (begin
                             (write '(funapp 2033 55))
                             (display "\n")
                             (block-x b2))))
                         (begin
                           (write '(funapp 2034 26))
                           (display "\n")
                           (= x8477 x8476)))))
                      (if x-cnd8475
                        (letrec*
                         ((x8479
                           (begin
                             (write '(funapp 2037 34))
                             (display "\n")
                             (block-y b1)))
                          (x8478
                           (begin
                             (write '(funapp 2037 55))
                             (display "\n")
                             (block-y b2))))
                         (begin
                           (write '(funapp 2038 26))
                           (display "\n")
                           (= x8479 x8478)))
                        #f))))
                   g8474)))
               (block-move
                (lambda (dx dy b)
                  (letrec*
                   ((g8480
                     (letrec*
                      ((x8484
                        (letrec*
                         ((x8485
                           (begin
                             (write '(funapp 2046 48))
                             (display "\n")
                             (block-x b))))
                         (begin
                           (write '(funapp 2046 62))
                           (display "\n")
                           (+ dx x8485))))
                       (x8482
                        (letrec*
                         ((x8483
                           (begin
                             (write '(funapp 2047 48))
                             (display "\n")
                             (block-y b))))
                         (begin
                           (write '(funapp 2047 62))
                           (display "\n")
                           (+ dy x8483))))
                       (x8481
                        (begin
                          (write '(funapp 2048 31))
                          (display "\n")
                          (block-color b))))
                      (begin
                        (write '(funapp 2049 23))
                        (display "\n")
                        (block x8484 x8482 x8481)))))
                   g8480)))
               (block-rotate-ccw
                (lambda (c b)
                  (letrec*
                   ((g8486
                     (letrec*
                      ((x8493
                        (letrec*
                         ((x8497
                           (begin
                             (write '(funapp 2058 34))
                             (display "\n")
                             (posn-x c)))
                          (x8494
                           (letrec*
                            ((x8496
                              (begin
                                (write '(funapp 2061 37))
                                (display "\n")
                                (posn-y c)))
                             (x8495
                              (begin
                                (write '(funapp 2061 56))
                                (display "\n")
                                (block-y b))))
                            (begin
                              (write '(funapp 2062 29))
                              (display "\n")
                              (- x8496 x8495)))))
                         (begin
                           (write '(funapp 2063 26))
                           (display "\n")
                           (+ x8497 x8494))))
                       (x8488
                        (letrec*
                         ((x8492
                           (begin
                             (write '(funapp 2066 34))
                             (display "\n")
                             (posn-y c)))
                          (x8489
                           (letrec*
                            ((x8491
                              (begin
                                (write '(funapp 2069 37))
                                (display "\n")
                                (block-x b)))
                             (x8490
                              (begin
                                (write '(funapp 2069 57))
                                (display "\n")
                                (posn-x c))))
                            (begin
                              (write '(funapp 2070 29))
                              (display "\n")
                              (- x8491 x8490)))))
                         (begin
                           (write '(funapp 2071 26))
                           (display "\n")
                           (+ x8492 x8489))))
                       (x8487
                        (begin
                          (write '(funapp 2072 31))
                          (display "\n")
                          (block-color b))))
                      (begin
                        (write '(funapp 2073 23))
                        (display "\n")
                        (block x8493 x8488 x8487)))))
                   g8486)))
               (block-rotate-cw
                (lambda (c b)
                  (letrec*
                   ((g8498
                     (letrec*
                      ((x8499
                        (letrec*
                         ((x8500
                           (begin
                             (write '(funapp 2082 34))
                             (display "\n")
                             (block-rotate-ccw c b))))
                         (begin
                           (write '(funapp 2083 26))
                           (display "\n")
                           (block-rotate-ccw c x8500)))))
                      (begin
                        (write '(funapp 2084 23))
                        (display "\n")
                        (block-rotate-ccw c x8499)))))
                   g8498)))
               (ormap
                (lambda (p? xs)
                  (letrec*
                   ((g8501
                     (letrec*
                      ((x-cnd8502
                        (begin
                          (write '(funapp 2091 35))
                          (display "\n")
                          (null? xs))))
                      (if x-cnd8502
                        (letrec* ((g8503 #f)) g8503)
                        (letrec*
                         ((g8504
                           (letrec*
                            ((x8507
                              (letrec*
                               ((x8508
                                 (begin
                                   (write '(funapp 2097 54))
                                   (display "\n")
                                   (car xs))))
                               (begin
                                 (write '(funapp 2097 65))
                                 (display "\n")
                                 (p? x8508))))
                             (x8505
                              (letrec*
                               ((x8506
                                 (begin
                                   (write '(funapp 2099 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 2099 59))
                                 (display "\n")
                                 (ormap p? x8506)))))
                            (begin
                              (write '(funapp 2100 29))
                              (display "\n")
                              (or x8507 x8505)))))
                         g8504)))))
                   g8501)))
               (andmap
                (lambda (p? xs)
                  (letrec*
                   ((g8509
                     (letrec*
                      ((x-cnd8510
                        (begin
                          (write '(funapp 2108 35))
                          (display "\n")
                          (null? xs))))
                      (if x-cnd8510
                        (letrec* ((g8511 #t)) g8511)
                        (letrec*
                         ((g8512
                           (letrec*
                            ((x8515
                              (letrec*
                               ((x8516
                                 (begin
                                   (write '(funapp 2114 54))
                                   (display "\n")
                                   (car xs))))
                               (begin
                                 (write '(funapp 2114 65))
                                 (display "\n")
                                 (p? x8516))))
                             (x8513
                              (letrec*
                               ((x8514
                                 (begin
                                   (write '(funapp 2116 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 2116 59))
                                 (display "\n")
                                 (andmap p? x8514)))))
                            (begin
                              (write '(funapp 2117 29))
                              (display "\n")
                              (and x8515 x8513)))))
                         g8512)))))
                   g8509)))
               (filter
                (lambda (p? xs)
                  (letrec*
                   ((g8517
                     (letrec*
                      ((x-cnd8518
                        (begin
                          (write '(funapp 2125 35))
                          (display "\n")
                          (null? xs))))
                      (if x-cnd8518
                        (letrec* ((g8519 null)) g8519)
                        (letrec*
                         ((x-cnd8520
                           (letrec*
                            ((x8521
                              (begin
                                (write '(funapp 2129 55))
                                (display "\n")
                                (car xs))))
                            (begin
                              (write '(funapp 2129 66))
                              (display "\n")
                              (p? x8521)))))
                         (if x-cnd8520
                           (letrec*
                            ((g8522
                              (letrec*
                               ((x8525
                                 (begin
                                   (write '(funapp 2134 40))
                                   (display "\n")
                                   (car xs)))
                                (x8523
                                 (letrec*
                                  ((x8524
                                    (begin
                                      (write '(funapp 2137 43))
                                      (display "\n")
                                      (cdr xs))))
                                  (begin
                                    (write '(funapp 2138 35))
                                    (display "\n")
                                    (filter p? x8524)))))
                               (begin
                                 (write '(funapp 2139 32))
                                 (display "\n")
                                 (cons x8525 x8523)))))
                            g8522)
                           (letrec*
                            ((g8526
                              (letrec*
                               ((x8527
                                 (begin
                                   (write '(funapp 2143 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 2143 59))
                                 (display "\n")
                                 (filter p? x8527)))))
                            g8526)))))))
                   g8517)))
               (append
                (lambda (l r)
                  (letrec*
                   ((g8528
                     (letrec*
                      ((x-cnd8529
                        (begin
                          (write '(funapp 2151 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8529
                        (letrec* ((g8530 r)) g8530)
                        (letrec*
                         ((g8531
                           (letrec*
                            ((x8534
                              (begin
                                (write '(funapp 2157 37))
                                (display "\n")
                                (car l)))
                             (x8532
                              (letrec*
                               ((x8533
                                 (begin
                                   (write '(funapp 2159 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 2159 58))
                                 (display "\n")
                                 (append x8533 r)))))
                            (begin
                              (write '(funapp 2160 29))
                              (display "\n")
                              (cons x8534 x8532)))))
                         g8531)))))
                   g8528)))
               (foldr
                (lambda (f a xs)
                  (letrec*
                   ((g8535
                     (letrec*
                      ((x-cnd8536
                        (begin
                          (write '(funapp 2168 35))
                          (display "\n")
                          (null? xs))))
                      (if x-cnd8536
                        (letrec* ((g8537 a)) g8537)
                        (letrec*
                         ((g8538
                           (letrec*
                            ((x8541
                              (begin
                                (write '(funapp 2174 37))
                                (display "\n")
                                (car xs)))
                             (x8539
                              (letrec*
                               ((x8540
                                 (begin
                                   (write '(funapp 2176 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 2176 59))
                                 (display "\n")
                                 (foldr f a x8540)))))
                            (begin
                              (write '(funapp 2177 29))
                              (display "\n")
                              (f x8541 x8539)))))
                         g8538)))))
                   g8535)))
               (blocks-contains?
                (lambda (bs b)
                  (letrec*
                   ((g8542
                     (begin
                       (write '(funapp 2184 22))
                       (display "\n")
                       (ormap
                        (lambda (c)
                          (letrec*
                           ((g8543
                             (begin
                               (write '(funapp 2185 52))
                               (display "\n")
                               (block=? b c))))
                           g8543))
                        bs))))
                   g8542)))
               (blocks-subset?
                (lambda (bs1 bs2)
                  (letrec*
                   ((g8544
                     (begin
                       (write '(funapp 2192 22))
                       (display "\n")
                       (andmap
                        (lambda (b)
                          (letrec*
                           ((g8545
                             (begin
                               (write '(funapp 2194 42))
                               (display "\n")
                               (blocks-contains? bs2 b))))
                           g8545))
                        bs1))))
                   g8544)))
               (blocks=?
                (lambda (bs1 bs2)
                  (letrec*
                   ((g8546
                     (letrec*
                      ((x-cnd8547
                        (begin
                          (write '(funapp 2202 35))
                          (display "\n")
                          (blocks-subset? bs1 bs2))))
                      (if x-cnd8547
                        (begin
                          (write '(funapp 2203 37))
                          (display "\n")
                          (blocks-subset? bs2 bs1))
                        #f))))
                   g8546)))
               (blocks-intersect
                (lambda (bs1 bs2)
                  (letrec*
                   ((g8548
                     (begin
                       (write '(funapp 2209 22))
                       (display "\n")
                       (filter
                        (lambda (b)
                          (letrec*
                           ((g8549
                             (begin
                               (write '(funapp 2211 42))
                               (display "\n")
                               (blocks-contains? bs2 b))))
                           g8549))
                        bs1))))
                   g8548)))
               (blocks-count
                (lambda (bs)
                  (letrec*
                   ((g8550
                     (begin
                       (write '(funapp 2215 47))
                       (display "\n")
                       (length bs))))
                   g8550)))
               (blocks-move
                (lambda (dx dy bs)
                  (letrec*
                   ((g8551
                     (begin
                       (write '(funapp 2220 22))
                       (display "\n")
                       (map
                        (lambda (b)
                          (letrec*
                           ((g8552
                             (begin
                               (write '(funapp 2222 42))
                               (display "\n")
                               (block-move dx dy b))))
                           g8552))
                        bs))))
                   g8551)))
               (blocks-rotate-ccw
                (lambda (c bs)
                  (letrec*
                   ((g8553
                     (begin
                       (write '(funapp 2229 22))
                       (display "\n")
                       (map
                        (lambda (b)
                          (letrec*
                           ((g8554
                             (begin
                               (write '(funapp 2231 42))
                               (display "\n")
                               (block-rotate-ccw c b))))
                           g8554))
                        bs))))
                   g8553)))
               (blocks-rotate-cw
                (lambda (c bs)
                  (letrec*
                   ((g8555
                     (begin
                       (write '(funapp 2238 22))
                       (display "\n")
                       (map
                        (lambda (b)
                          (letrec*
                           ((g8556
                             (begin
                               (write '(funapp 2240 42))
                               (display "\n")
                               (block-rotate-cw c b))))
                           g8556))
                        bs))))
                   g8555)))
               (blocks-change-color
                (lambda (bs c)
                  (letrec*
                   ((g8557
                     (begin
                       (write '(funapp 2247 22))
                       (display "\n")
                       (map
                        (lambda (b)
                          (letrec*
                           ((g8558
                             (letrec*
                              ((x8560
                                (begin
                                  (write '(funapp 2252 37))
                                  (display "\n")
                                  (block-x b)))
                               (x8559
                                (begin
                                  (write '(funapp 2252 57))
                                  (display "\n")
                                  (block-y b))))
                              (begin
                                (write '(funapp 2253 29))
                                (display "\n")
                                (block x8560 x8559 c)))))
                           g8558))
                        bs))))
                   g8557)))
               (blocks-row
                (lambda (bs i)
                  (letrec*
                   ((g8561
                     (begin
                       (write '(funapp 2261 22))
                       (display "\n")
                       (filter
                        (lambda (b)
                          (letrec*
                           ((g8562
                             (letrec*
                              ((x8563
                                (begin
                                  (write '(funapp 2264 51))
                                  (display "\n")
                                  (block-y b))))
                              (begin
                                (write '(funapp 2264 65))
                                (display "\n")
                                (= i x8563)))))
                           g8562))
                        bs))))
                   g8561)))
               (full-row?
                (lambda (bs i)
                  (letrec*
                   ((g8564
                     (letrec*
                      ((x8565
                        (letrec*
                         ((x8566
                           (begin
                             (write '(funapp 2275 34))
                             (display "\n")
                             (blocks-row bs i))))
                         (begin
                           (write '(funapp 2276 26))
                           (display "\n")
                           (blocks-count x8566)))))
                      (begin
                        (write '(funapp 2277 23))
                        (display "\n")
                        (= board-width x8565)))))
                   g8564)))
               (blocks-overflow?
                (lambda (bs)
                  (letrec*
                   ((g8567
                     (begin
                       (write '(funapp 2283 22))
                       (display "\n")
                       (ormap
                        (lambda (b)
                          (letrec*
                           ((g8568
                             (letrec*
                              ((x8569
                                (begin
                                  (write '(funapp 2286 51))
                                  (display "\n")
                                  (block-y b))))
                              (begin
                                (write '(funapp 2286 65))
                                (display "\n")
                                (<= x8569 0)))))
                           g8568))
                        bs))))
                   g8567)))
               (blocks-union
                (lambda (bs1 bs2)
                  (letrec*
                   ((g8570
                     (begin
                       (write '(funapp 2294 22))
                       (display "\n")
                       (foldr
                        (lambda (b bs)
                          (letrec*
                           ((g8571
                             (letrec*
                              ((x-cnd8572
                                (begin
                                  (write '(funapp 2299 41))
                                  (display "\n")
                                  (blocks-contains? bs b))))
                              (if x-cnd8572
                                (letrec* ((g8573 bs)) g8573)
                                (letrec*
                                 ((g8574
                                   (begin
                                     (write '(funapp 2302 48))
                                     (display "\n")
                                     (cons b bs))))
                                 g8574)))))
                           g8571))
                        bs2
                        bs1))))
                   g8570)))
               (blocks-max-y
                (lambda (bs)
                  (letrec*
                   ((g8575
                     (begin
                       (write '(funapp 2311 22))
                       (display "\n")
                       (foldr
                        (lambda (b n)
                          (letrec*
                           ((g8576
                             (letrec*
                              ((x8577
                                (begin
                                  (write '(funapp 2315 45))
                                  (display "\n")
                                  (block-y b))))
                              (begin
                                (write '(funapp 2315 59))
                                (display "\n")
                                (max x8577 n)))))
                           g8576))
                        0
                        bs))))
                   g8575)))
               (blocks-min-x
                (lambda (bs)
                  (letrec*
                   ((g8578
                     (begin
                       (write '(funapp 2324 22))
                       (display "\n")
                       (foldr
                        (lambda (b n)
                          (letrec*
                           ((g8579
                             (letrec*
                              ((x8580
                                (begin
                                  (write '(funapp 2328 45))
                                  (display "\n")
                                  (block-x b))))
                              (begin
                                (write '(funapp 2328 59))
                                (display "\n")
                                (min x8580 n)))))
                           g8579))
                        board-width
                        bs))))
                   g8578)))
               (blocks-max-x
                (lambda (bs)
                  (letrec*
                   ((g8581
                     (begin
                       (write '(funapp 2337 22))
                       (display "\n")
                       (foldr
                        (lambda (b n)
                          (letrec*
                           ((g8582
                             (letrec*
                              ((x8583
                                (begin
                                  (write '(funapp 2341 45))
                                  (display "\n")
                                  (block-x b))))
                              (begin
                                (write '(funapp 2341 59))
                                (display "\n")
                                (max x8583 n)))))
                           g8582))
                        0
                        bs))))
                   g8581)))
               (eliminate-full-rows
                (lambda (bs)
                  (letrec*
                   ((g8584
                     (begin
                       (write '(funapp 2348 36))
                       (display "\n")
                       (elim-row bs board-height 0))))
                   g8584)))
               (elim-row
                (lambda (bs i offset)
                  (letrec*
                   ((g8585
                     (letrec*
                      ((x-cnd8586
                        (begin
                          (write '(funapp 2354 35))
                          (display "\n")
                          (< i 0))))
                      (if x-cnd8586
                        (letrec* ((g8587 empty)) g8587)
                        (letrec*
                         ((x-cnd8588
                           (begin
                             (write '(funapp 2358 38))
                             (display "\n")
                             (full-row? bs i))))
                         (if x-cnd8588
                           (letrec*
                            ((g8589
                              (letrec*
                               ((x8591
                                 (begin
                                   (write '(funapp 2363 40))
                                   (display "\n")
                                   (sub1 i)))
                                (x8590
                                 (begin
                                   (write '(funapp 2363 57))
                                   (display "\n")
                                   (add1 offset))))
                               (begin
                                 (write '(funapp 2364 32))
                                 (display "\n")
                                 (elim-row bs x8591 x8590)))))
                            g8589)
                           (letrec*
                            ((g8592
                              (letrec*
                               ((x8595
                                 (letrec*
                                  ((x8596
                                    (begin
                                      (write '(funapp 2371 43))
                                      (display "\n")
                                      (sub1 i))))
                                  (begin
                                    (write '(funapp 2372 35))
                                    (display "\n")
                                    (elim-row bs x8596 offset))))
                                (x8593
                                 (letrec*
                                  ((x8594
                                    (begin
                                      (write '(funapp 2375 43))
                                      (display "\n")
                                      (blocks-row bs i))))
                                  (begin
                                    (write '(funapp 2376 35))
                                    (display "\n")
                                    (blocks-move 0 offset x8594)))))
                               (begin
                                 (write '(funapp 2377 32))
                                 (display "\n")
                                 (blocks-union x8595 x8593)))))
                            g8592)))))))
                   g8585)))
               (tetra-move
                (lambda (dx dy t)
                  (letrec*
                   ((g8597
                     (letrec*
                      ((x8600
                        (letrec*
                         ((x8604
                           (letrec*
                            ((x8605
                              (letrec*
                               ((x8606
                                 (begin
                                   (write '(funapp 2391 40))
                                   (display "\n")
                                   (tetra-center t))))
                               (begin
                                 (write '(funapp 2392 32))
                                 (display "\n")
                                 (posn-x x8606)))))
                            (begin
                              (write '(funapp 2393 29))
                              (display "\n")
                              (+ dx x8605))))
                          (x8601
                           (letrec*
                            ((x8602
                              (letrec*
                               ((x8603
                                 (begin
                                   (write '(funapp 2398 40))
                                   (display "\n")
                                   (tetra-center t))))
                               (begin
                                 (write '(funapp 2399 32))
                                 (display "\n")
                                 (posn-y x8603)))))
                            (begin
                              (write '(funapp 2400 29))
                              (display "\n")
                              (+ dy x8602)))))
                         (begin
                           (write '(funapp 2401 26))
                           (display "\n")
                           (posn x8604 x8601))))
                       (x8598
                        (letrec*
                         ((x8599
                           (begin
                             (write '(funapp 2404 34))
                             (display "\n")
                             (tetra-blocks t))))
                         (begin
                           (write '(funapp 2405 26))
                           (display "\n")
                           (blocks-move dx dy x8599)))))
                      (begin
                        (write '(funapp 2406 23))
                        (display "\n")
                        (tetra x8600 x8598)))))
                   g8597)))
               (tetra-rotate-ccw
                (lambda (t)
                  (letrec*
                   ((g8607
                     (letrec*
                      ((x8611
                        (begin
                          (write '(funapp 2413 31))
                          (display "\n")
                          (tetra-center t)))
                       (x8608
                        (letrec*
                         ((x8610
                           (begin
                             (write '(funapp 2416 34))
                             (display "\n")
                             (tetra-center t)))
                          (x8609
                           (begin
                             (write '(funapp 2416 59))
                             (display "\n")
                             (tetra-blocks t))))
                         (begin
                           (write '(funapp 2417 26))
                           (display "\n")
                           (blocks-rotate-ccw x8610 x8609)))))
                      (begin
                        (write '(funapp 2418 23))
                        (display "\n")
                        (tetra x8611 x8608)))))
                   g8607)))
               (tetra-rotate-cw
                (lambda (t)
                  (letrec*
                   ((g8612
                     (letrec*
                      ((x8616
                        (begin
                          (write '(funapp 2425 31))
                          (display "\n")
                          (tetra-center t)))
                       (x8613
                        (letrec*
                         ((x8615
                           (begin
                             (write '(funapp 2428 34))
                             (display "\n")
                             (tetra-center t)))
                          (x8614
                           (begin
                             (write '(funapp 2428 59))
                             (display "\n")
                             (tetra-blocks t))))
                         (begin
                           (write '(funapp 2429 26))
                           (display "\n")
                           (blocks-rotate-cw x8615 x8614)))))
                      (begin
                        (write '(funapp 2430 23))
                        (display "\n")
                        (tetra x8616 x8613)))))
                   g8612)))
               (tetra-overlaps-blocks?
                (lambda (t bs)
                  (letrec*
                   ((g8617
                     (letrec*
                      ((x8618
                        (letrec*
                         ((x8619
                           (letrec*
                            ((x8620
                              (begin
                                (write '(funapp 2441 37))
                                (display "\n")
                                (tetra-blocks t))))
                            (begin
                              (write '(funapp 2442 29))
                              (display "\n")
                              (blocks-intersect x8620 bs)))))
                         (begin
                           (write '(funapp 2443 26))
                           (display "\n")
                           (false? x8619)))))
                      (begin
                        (write '(funapp 2444 23))
                        (display "\n")
                        (false? x8618)))))
                   g8617)))
               (tetra-change-color
                (lambda (t c)
                  (letrec*
                   ((g8621
                     (letrec*
                      ((x8624
                        (begin
                          (write '(funapp 2451 31))
                          (display "\n")
                          (tetra-center t)))
                       (x8622
                        (letrec*
                         ((x8623
                           (begin
                             (write '(funapp 2454 34))
                             (display "\n")
                             (tetra-blocks t))))
                         (begin
                           (write '(funapp 2455 26))
                           (display "\n")
                           (blocks-change-color x8623 c)))))
                      (begin
                        (write '(funapp 2456 23))
                        (display "\n")
                        (tetra x8624 x8622)))))
                   g8621)))
               (build-tetra-blocks
                (lambda (color xc yc x1 y1 x2 y2 x3 y3 x4 y4)
                  (letrec*
                   ((g8625
                     (letrec*
                      ((x8626
                        (letrec*
                         ((x8632
                           (begin
                             (write '(funapp 2465 34))
                             (display "\n")
                             (posn xc yc)))
                          (x8627
                           (letrec*
                            ((x8631
                              (begin
                                (write '(funapp 2468 37))
                                (display "\n")
                                (block x1 y1 color)))
                             (x8630
                              (begin
                                (write '(funapp 2469 37))
                                (display "\n")
                                (block x2 y2 color)))
                             (x8629
                              (begin
                                (write '(funapp 2470 37))
                                (display "\n")
                                (block x3 y3 color)))
                             (x8628
                              (begin
                                (write '(funapp 2471 37))
                                (display "\n")
                                (block x4 y4 color))))
                            (begin
                              (write '(funapp 2472 29))
                              (display "\n")
                              (list x8631 x8630 x8629 x8628)))))
                         (begin
                           (write '(funapp 2473 26))
                           (display "\n")
                           (tetra x8632 x8627)))))
                      (begin
                        (write '(funapp 2474 23))
                        (display "\n")
                        (tetra-move 3 0 x8626)))))
                   g8625)))
               (touchdown
                (lambda (w tetras)
                  (letrec*
                   ((g8633
                     (letrec*
                      ((x8639
                        (begin
                          (write '(funapp 2481 31))
                          (display "\n")
                          (list-pick-random tetras)))
                       (x8634
                        (letrec*
                         ((x8635
                           (letrec*
                            ((x8637
                              (letrec*
                               ((x8638
                                 (begin
                                   (write '(funapp 2488 40))
                                   (display "\n")
                                   (world-tetra w))))
                               (begin
                                 (write '(funapp 2489 32))
                                 (display "\n")
                                 (tetra-blocks x8638))))
                             (x8636
                              (begin
                                (write '(funapp 2490 37))
                                (display "\n")
                                (world-blocks w))))
                            (begin
                              (write '(funapp 2491 29))
                              (display "\n")
                              (blocks-union x8637 x8636)))))
                         (begin
                           (write '(funapp 2492 26))
                           (display "\n")
                           (eliminate-full-rows x8635)))))
                      (begin
                        (write '(funapp 2493 23))
                        (display "\n")
                        (world x8639 x8634)))))
                   g8633)))
               (world-jump-down
                (lambda (w)
                  (letrec*
                   ((g8640
                     (letrec*
                      ((x-cnd8641
                        (begin
                          (write '(funapp 2500 35))
                          (display "\n")
                          (landed? w))))
                      (if x-cnd8641
                        (letrec* ((g8642 w)) g8642)
                        (letrec*
                         ((g8643
                           (letrec*
                            ((x8644
                              (letrec*
                               ((x8646
                                 (letrec*
                                  ((x8647
                                    (begin
                                      (write '(funapp 2510 43))
                                      (display "\n")
                                      (world-tetra w))))
                                  (begin
                                    (write '(funapp 2511 35))
                                    (display "\n")
                                    (tetra-move 0 1 x8647))))
                                (x8645
                                 (begin
                                   (write '(funapp 2512 40))
                                   (display "\n")
                                   (world-blocks w))))
                               (begin
                                 (write '(funapp 2513 32))
                                 (display "\n")
                                 (world x8646 x8645)))))
                            (begin
                              (write '(funapp 2514 29))
                              (display "\n")
                              (world-jump-down x8644)))))
                         g8643)))))
                   g8640)))
               (landed-on-blocks?
                (lambda (w)
                  (letrec*
                   ((g8648
                     (letrec*
                      ((x8650
                        (letrec*
                         ((x8651
                           (begin
                             (write '(funapp 2524 34))
                             (display "\n")
                             (world-tetra w))))
                         (begin
                           (write '(funapp 2525 26))
                           (display "\n")
                           (tetra-move 0 1 x8651))))
                       (x8649
                        (begin
                          (write '(funapp 2526 31))
                          (display "\n")
                          (world-blocks w))))
                      (begin
                        (write '(funapp 2527 23))
                        (display "\n")
                        (tetra-overlaps-blocks? x8650 x8649)))))
                   g8648)))
               (landed-on-floor?
                (lambda (w)
                  (letrec*
                   ((g8652
                     (letrec*
                      ((x8654
                        (letrec*
                         ((x8655
                           (letrec*
                            ((x8656
                              (begin
                                (write '(funapp 2538 37))
                                (display "\n")
                                (world-tetra w))))
                            (begin
                              (write '(funapp 2539 29))
                              (display "\n")
                              (tetra-blocks x8656)))))
                         (begin
                           (write '(funapp 2540 26))
                           (display "\n")
                           (blocks-max-y x8655))))
                       (x8653
                        (begin
                          (write '(funapp 2541 31))
                          (display "\n")
                          (sub1 board-height))))
                      (begin
                        (write '(funapp 2542 23))
                        (display "\n")
                        (= x8654 x8653)))))
                   g8652)))
               (landed?
                (lambda (w)
                  (letrec*
                   ((g8657
                     (letrec*
                      ((val7263
                        (begin
                          (write '(funapp 2549 33))
                          (display "\n")
                          (landed-on-blocks? w))))
                      (letrec*
                       ((g8658
                         (if val7263
                           val7263
                           (begin
                             (write '(funapp 2551 52))
                             (display "\n")
                             (landed-on-floor? w)))))
                       g8658))))
                   g8657)))
               (next-world
                (lambda (w tetras)
                  (letrec*
                   ((g8659
                     (letrec*
                      ((x-cnd8660
                        (begin
                          (write '(funapp 2559 35))
                          (display "\n")
                          (landed? w))))
                      (if x-cnd8660
                        (letrec*
                         ((g8661
                           (begin
                             (write '(funapp 2561 42))
                             (display "\n")
                             (touchdown w tetras))))
                         g8661)
                        (letrec*
                         ((g8662
                           (letrec*
                            ((x8664
                              (letrec*
                               ((x8665
                                 (begin
                                   (write '(funapp 2567 40))
                                   (display "\n")
                                   (world-tetra w))))
                               (begin
                                 (write '(funapp 2568 32))
                                 (display "\n")
                                 (tetra-move 0 1 x8665))))
                             (x8663
                              (begin
                                (write '(funapp 2569 37))
                                (display "\n")
                                (world-blocks w))))
                            (begin
                              (write '(funapp 2570 29))
                              (display "\n")
                              (world x8664 x8663)))))
                         g8662)))))
                   g8659)))
               (try-new-tetra
                (lambda (w new-tetra)
                  (letrec*
                   ((g8666
                     (letrec*
                      ((x-cnd8667
                        (letrec*
                         ((val7264
                           (letrec*
                            ((x8668
                              (letrec*
                               ((x8669
                                 (begin
                                   (write '(funapp 2584 40))
                                   (display "\n")
                                   (tetra-blocks new-tetra))))
                               (begin
                                 (write '(funapp 2585 32))
                                 (display "\n")
                                 (blocks-min-x x8669)))))
                            (begin
                              (write '(funapp 2586 29))
                              (display "\n")
                              (< x8668 0)))))
                         (letrec*
                          ((g8670
                            (if val7264
                              val7264
                              (letrec*
                               ((val7265
                                 (letrec*
                                  ((x8671
                                    (letrec*
                                     ((x8672
                                       (begin
                                         (write '(funapp 2596 46))
                                         (display "\n")
                                         (tetra-blocks new-tetra))))
                                     (begin
                                       (write '(funapp 2597 38))
                                       (display "\n")
                                       (blocks-max-x x8672)))))
                                  (begin
                                    (write '(funapp 2598 35))
                                    (display "\n")
                                    (>= x8671 board-width)))))
                               (letrec*
                                ((g8673
                                  (if val7265
                                    val7265
                                    (letrec*
                                     ((x8674
                                       (begin
                                         (write '(funapp 2604 46))
                                         (display "\n")
                                         (world-blocks w))))
                                     (begin
                                       (write '(funapp 2605 38))
                                       (display "\n")
                                       (tetra-overlaps-blocks?
                                        new-tetra
                                        x8674))))))
                                g8673)))))
                          g8670))))
                      (if x-cnd8667
                        (letrec* ((g8675 w)) g8675)
                        (letrec*
                         ((g8676
                           (letrec*
                            ((x8677
                              (begin
                                (write '(funapp 2615 37))
                                (display "\n")
                                (world-blocks w))))
                            (begin
                              (write '(funapp 2616 29))
                              (display "\n")
                              (world new-tetra x8677)))))
                         g8676)))))
                   g8666)))
               (world-move
                (lambda (dx dy w)
                  (letrec*
                   ((g8678
                     (letrec*
                      ((x8679
                        (letrec*
                         ((x8680
                           (begin
                             (write '(funapp 2626 34))
                             (display "\n")
                             (world-tetra w))))
                         (begin
                           (write '(funapp 2627 26))
                           (display "\n")
                           (tetra-move dx dy x8680)))))
                      (begin
                        (write '(funapp 2628 23))
                        (display "\n")
                        (try-new-tetra w x8679)))))
                   g8678)))
               (world-rotate-ccw
                (lambda (w)
                  (letrec*
                   ((g8681
                     (letrec*
                      ((x8682
                        (letrec*
                         ((x8683
                           (begin
                             (write '(funapp 2637 34))
                             (display "\n")
                             (world-tetra w))))
                         (begin
                           (write '(funapp 2638 26))
                           (display "\n")
                           (tetra-rotate-ccw x8683)))))
                      (begin
                        (write '(funapp 2639 23))
                        (display "\n")
                        (try-new-tetra w x8682)))))
                   g8681)))
               (world-rotate-cw
                (lambda (w)
                  (letrec*
                   ((g8684
                     (letrec*
                      ((x8685
                        (letrec*
                         ((x8686
                           (begin
                             (write '(funapp 2648 34))
                             (display "\n")
                             (world-tetra w))))
                         (begin
                           (write '(funapp 2649 26))
                           (display "\n")
                           (tetra-rotate-cw x8686)))))
                      (begin
                        (write '(funapp 2650 23))
                        (display "\n")
                        (try-new-tetra w x8685)))))
                   g8684)))
               (ghost-blocks
                (lambda (w)
                  (letrec*
                   ((g8687
                     (letrec*
                      ((x8688
                        (letrec*
                         ((x8689
                           (letrec*
                            ((x8690
                              (begin
                                (write '(funapp 2661 37))
                                (display "\n")
                                (world-jump-down w))))
                            (begin
                              (write '(funapp 2662 29))
                              (display "\n")
                              (world-tetra x8690)))))
                         (begin
                           (write '(funapp 2663 26))
                           (display "\n")
                           (tetra-change-color
                            x8689
                            (begin
                              (write '(funapp 2663 51))
                              (display "\n")
                              'gray))))))
                      (begin
                        (write '(funapp 2664 23))
                        (display "\n")
                        (tetra-blocks x8688)))))
                   g8687)))
               (world-key-move
                (lambda (w k)
                  (letrec*
                   ((g8691
                     (letrec*
                      ((x-cnd8692
                        (begin
                          (write '(funapp 2671 35))
                          (display "\n")
                          (equal? k "left"))))
                      (if x-cnd8692
                        (letrec*
                         ((g8693
                           (begin
                             (write '(funapp 2673 42))
                             (display "\n")
                             (world-move neg-1 0 w))))
                         g8693)
                        (letrec*
                         ((x-cnd8694
                           (begin
                             (write '(funapp 2675 38))
                             (display "\n")
                             (equal? k "right"))))
                         (if x-cnd8694
                           (letrec*
                            ((g8695
                              (begin
                                (write '(funapp 2677 45))
                                (display "\n")
                                (world-move 1 0 w))))
                            g8695)
                           (letrec*
                            ((x-cnd8696
                              (begin
                                (write '(funapp 2679 41))
                                (display "\n")
                                (equal? k "down"))))
                            (if x-cnd8696
                              (letrec*
                               ((g8697
                                 (begin
                                   (write '(funapp 2681 48))
                                   (display "\n")
                                   (world-jump-down w))))
                               g8697)
                              (letrec*
                               ((x-cnd8698
                                 (begin
                                   (write '(funapp 2683 44))
                                   (display "\n")
                                   (equal? k "a"))))
                               (if x-cnd8698
                                 (letrec*
                                  ((g8699
                                    (begin
                                      (write '(funapp 2685 51))
                                      (display "\n")
                                      (world-rotate-ccw w))))
                                  g8699)
                                 (letrec*
                                  ((x-cnd8700
                                    (begin
                                      (write '(funapp 2687 47))
                                      (display "\n")
                                      (equal? k "s"))))
                                  (if x-cnd8700
                                    (letrec*
                                     ((g8701
                                       (begin
                                         (write '(funapp 2690 46))
                                         (display "\n")
                                         (world-rotate-cw w))))
                                     g8701)
                                    (letrec* ((g8702 w)) g8702)))))))))))))
                   g8691)))
               (image
                (lambda ()
                  (letrec*
                   ((g8703
                     (begin
                       (write '(funapp 2695 45))
                       (display "\n")
                       (orig-cons
                        (begin (write '(funapp 2695 55)) (display "\n") 'image)
                        (begin
                          (write '(funapp 2695 62))
                          (display "\n")
                          '())))))
                   g8703)))
               (image?
                (lambda (image7779)
                  (letrec*
                   ((g8704
                     (letrec*
                      ((x8705
                        (begin
                          (write '(funapp 2700 39))
                          (display "\n")
                          (car image7779))))
                      (begin
                        (write '(funapp 2700 57))
                        (display "\n")
                        (eq?
                         x8705
                         (begin
                           (write '(funapp 2700 67))
                           (display "\n")
                           'image))))))
                   g8704)))
               (image/c
                (lambda (j7431 k7432 v7430)
                  (letrec*
                   ((g8706
                     (begin
                       (write '(funapp 2704 36))
                       (display "\n")
                       (cons
                        image
                        (begin
                          (write '(funapp 2704 47))
                          (display "\n")
                          '())))))
                   g8706)))
               (overlay
                (lambda (i₁ i₂)
                  (letrec*
                   ((g8707
                     (begin (write '(funapp 2705 58)) (display "\n") (image))))
                   g8707)))
               (circle
                (lambda (r m c)
                  (letrec*
                   ((g8708
                     (begin (write '(funapp 2706 57)) (display "\n") (image))))
                   g8708)))
               (rectangle
                (lambda (w h m c)
                  (letrec*
                   ((g8709
                     (begin (write '(funapp 2707 62)) (display "\n") (image))))
                   g8709)))
               (place-image
                (lambda (i₁ r c i₂)
                  (letrec*
                   ((g8710
                     (begin (write '(funapp 2709 54)) (display "\n") (image))))
                   g8710)))
               (empty-scene
                (lambda (w h)
                  (letrec*
                   ((g8711
                     (begin (write '(funapp 2710 60)) (display "\n") (image))))
                   g8711)))
               (list-pick-random
                (lambda (xs)
                  (letrec*
                   ((g8712
                     (letrec*
                      ((x-cnd8713
                        (letrec*
                         ((x8714
                           (begin
                             (write '(funapp 2716 52))
                             (display "\n")
                             (cdr xs))))
                         (begin
                           (write '(funapp 2716 63))
                           (display "\n")
                           (null? x8714)))))
                      (if x-cnd8713
                        (letrec*
                         ((g8715
                           (begin
                             (write '(funapp 2718 42))
                             (display "\n")
                             (car xs))))
                         g8715)
                        (letrec*
                         ((g8716
                           (letrec*
                            ((x8717
                              (begin
                                (write '(funapp 2722 37))
                                (display "\n")
                                (cdr xs))))
                            (begin
                              (write '(funapp 2723 29))
                              (display "\n")
                              (list-pick-random x8717)))))
                         g8716)))))
                   g8712)))
               (neg-1
                (begin (write '(funapp 2726 23)) (display "\n") (random 10)))
               (world->image
                (lambda (w)
                  (letrec*
                   ((g8718
                     (letrec*
                      ((x8722
                        (letrec*
                         ((x8723
                           (letrec*
                            ((x8727
                              (letrec*
                               ((x8728
                                 (begin
                                   (write '(funapp 2738 40))
                                   (display "\n")
                                   (world-tetra w))))
                               (begin
                                 (write '(funapp 2739 32))
                                 (display "\n")
                                 (tetra-blocks x8728))))
                             (x8724
                              (letrec*
                               ((x8726
                                 (begin
                                   (write '(funapp 2742 40))
                                   (display "\n")
                                   (ghost-blocks w)))
                                (x8725
                                 (begin
                                   (write '(funapp 2743 40))
                                   (display "\n")
                                   (world-blocks w))))
                               (begin
                                 (write '(funapp 2744 32))
                                 (display "\n")
                                 (append x8726 x8725)))))
                            (begin
                              (write '(funapp 2745 29))
                              (display "\n")
                              (append x8727 x8724)))))
                         (begin
                           (write '(funapp 2746 26))
                           (display "\n")
                           (blocks->image x8723))))
                       (x8719
                        (letrec*
                         ((x8721
                           (begin
                             (write '(funapp 2749 34))
                             (display "\n")
                             (* board-width block-size)))
                          (x8720
                           (begin
                             (write '(funapp 2750 34))
                             (display "\n")
                             (* board-height block-size))))
                         (begin
                           (write '(funapp 2751 26))
                           (display "\n")
                           (empty-scene x8721 x8720)))))
                      (begin
                        (write '(funapp 2752 23))
                        (display "\n")
                        (place-image x8722 0 0 x8719)))))
                   g8718)))
               (blocks->image
                (lambda (bs)
                  (letrec*
                   ((g8729
                     (letrec*
                      ((x8730
                        (letrec*
                         ((x8733
                           (letrec*
                            ((x8734
                              (begin
                                (write '(funapp 2763 37))
                                (display "\n")
                                (* board-width block-size))))
                            (begin
                              (write '(funapp 2764 29))
                              (display "\n")
                              (add1 x8734))))
                          (x8731
                           (letrec*
                            ((x8732
                              (begin
                                (write '(funapp 2767 37))
                                (display "\n")
                                (* board-height block-size))))
                            (begin
                              (write '(funapp 2768 29))
                              (display "\n")
                              (add1 x8732)))))
                         (begin
                           (write '(funapp 2769 26))
                           (display "\n")
                           (empty-scene x8733 x8731)))))
                      (begin
                        (write '(funapp 2770 23))
                        (display "\n")
                        (foldr
                         (lambda (b img)
                           (letrec*
                            ((g8735
                              (letrec*
                               ((x-cnd8736
                                 (letrec*
                                  ((x8737
                                    (begin
                                      (write '(funapp 2776 49))
                                      (display "\n")
                                      (block-y b))))
                                  (begin
                                    (write '(funapp 2776 63))
                                    (display "\n")
                                    (<= 0 x8737)))))
                               (if x-cnd8736
                                 (letrec*
                                  ((g8738
                                    (begin
                                      (write '(funapp 2778 49))
                                      (display "\n")
                                      (place-block b img))))
                                  g8738)
                                 (letrec* ((g8739 img)) g8739)))))
                            g8735))
                         x8730
                         bs)))))
                   g8729)))
               (block->image
                (lambda (b)
                  (letrec*
                   ((g8740
                     (letrec*
                      ((x8744
                        (letrec*
                         ((x8747
                           (begin
                             (write '(funapp 2791 34))
                             (display "\n")
                             (add1 block-size)))
                          (x8746
                           (begin
                             (write '(funapp 2792 34))
                             (display "\n")
                             (add1 block-size)))
                          (x8745
                           (begin
                             (write '(funapp 2793 34))
                             (display "\n")
                             (block-color b))))
                         (begin
                           (write '(funapp 2794 26))
                           (display "\n")
                           (rectangle
                            x8747
                            x8746
                            (begin
                              (write '(funapp 2794 48))
                              (display "\n")
                              'solid)
                            x8745))))
                       (x8741
                        (letrec*
                         ((x8743
                           (begin
                             (write '(funapp 2797 34))
                             (display "\n")
                             (add1 block-size)))
                          (x8742
                           (begin
                             (write '(funapp 2797 60))
                             (display "\n")
                             (add1 block-size))))
                         (begin
                           (write '(funapp 2798 26))
                           (display "\n")
                           (rectangle
                            x8743
                            x8742
                            (begin
                              (write '(funapp 2798 48))
                              (display "\n")
                              'outline)
                            (begin
                              (write '(funapp 2798 57))
                              (display "\n")
                              'black))))))
                      (begin
                        (write '(funapp 2799 23))
                        (display "\n")
                        (overlay x8744 x8741)))))
                   g8740)))
               (place-block
                (lambda (b scene)
                  (letrec*
                   ((g8748
                     (letrec*
                      ((x8757
                        (begin
                          (write '(funapp 2806 31))
                          (display "\n")
                          (block->image b)))
                       (x8753
                        (letrec*
                         ((x8755
                           (letrec*
                            ((x8756
                              (begin
                                (write '(funapp 2811 37))
                                (display "\n")
                                (block-x b))))
                            (begin
                              (write '(funapp 2812 29))
                              (display "\n")
                              (* x8756 block-size))))
                          (x8754
                           (begin
                             (write '(funapp 2813 34))
                             (display "\n")
                             (/ block-size 2))))
                         (begin
                           (write '(funapp 2814 26))
                           (display "\n")
                           (+ x8755 x8754))))
                       (x8749
                        (letrec*
                         ((x8751
                           (letrec*
                            ((x8752
                              (begin
                                (write '(funapp 2819 37))
                                (display "\n")
                                (block-y b))))
                            (begin
                              (write '(funapp 2820 29))
                              (display "\n")
                              (* x8752 block-size))))
                          (x8750
                           (begin
                             (write '(funapp 2821 34))
                             (display "\n")
                             (/ block-size 2))))
                         (begin
                           (write '(funapp 2822 26))
                           (display "\n")
                           (+ x8751 x8750)))))
                      (begin
                        (write '(funapp 2823 23))
                        (display "\n")
                        (place-image x8757 x8753 x8749 scene)))))
                   g8748)))
               (world0
                (lambda (tetras)
                  (letrec*
                   ((g8758
                     (letrec*
                      ((x8759
                        (begin
                          (write '(funapp 2830 31))
                          (display "\n")
                          (list-pick-random tetras))))
                      (begin
                        (write '(funapp 2831 23))
                        (display "\n")
                        (world x8759 null)))))
                   g8758))))
              (letrec*
               ((g8760
                 (begin
                   (write '(funapp 2835 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 2836 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8771
                          (letrec*
                           ((xj7434
                             (begin
                               (write '(funapp 2840 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2840 37))
                                  (display "\n")
                                  'module))))
                            (xk7435
                             (begin
                               (write '(funapp 2840 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2840 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8772
                              (begin
                                (write '(funapp 2843 27))
                                (display "\n")
                                ((lambda (j7438 k7439 f7440)
                                   (letrec*
                                    ((g8773
                                      (lambda (g7436 g7437)
                                        (letrec*
                                         ((g8774
                                           (letrec*
                                            ((x8775
                                              (letrec*
                                               ((x8777
                                                 (begin
                                                   (write '(funapp 2852 50))
                                                   (display "\n")
                                                   (POSN/C j7438 k7439 g7436)))
                                                (x8776
                                                 (begin
                                                   (write '(funapp 2853 50))
                                                   (display "\n")
                                                   (POSN/C
                                                    j7438
                                                    k7439
                                                    g7437))))
                                               (begin
                                                 (write '(funapp 2854 42))
                                                 (display "\n")
                                                 (f7440 x8777 x8776)))))
                                            (begin
                                              (write '(funapp 2855 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7438
                                               k7439
                                               x8775)))))
                                         g8774))))
                                    g8773))
                                 xj7434
                                 xk7435
                                 posn=?))))
                            g8772)))
                         (x8766
                          (letrec*
                           ((x8767
                             (letrec*
                              ((x8770 (input))
                               (x8768
                                (letrec*
                                 ((x8769 (input)))
                                 (begin
                                   (write '(funapp 2868 56))
                                   (display "\n")
                                   (cons
                                    x8769
                                    (begin
                                      (write '(funapp 2868 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2869 27))
                                (display "\n")
                                (cons x8770 x8768)))))
                           (begin
                             (write '(funapp 2870 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2870 29))
                                (display "\n")
                                'posn)
                              x8767))))
                         (x8761
                          (letrec*
                           ((x8762
                             (letrec*
                              ((x8765 (input))
                               (x8763
                                (letrec*
                                 ((x8764 (input)))
                                 (begin
                                   (write '(funapp 2877 56))
                                   (display "\n")
                                   (cons
                                    x8764
                                    (begin
                                      (write '(funapp 2877 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2878 27))
                                (display "\n")
                                (cons x8765 x8763)))))
                           (begin
                             (write '(funapp 2879 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2879 29))
                                (display "\n")
                                'posn)
                              x8762)))))
                        (begin
                          (write '(funapp 2880 21))
                          (display "\n")
                          (x8771 x8766 x8761)))
                       (letrec*
                        ((xj7441
                          (begin
                            (write '(funapp 2882 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2882 34))
                               (display "\n")
                               'module))))
                         (xk7442
                          (begin
                            (write '(funapp 2882 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2882 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8778
                           (begin
                             (write '(funapp 2883 38))
                             (display "\n")
                             (any/c xj7441 xk7442 COLOR/C))))
                         g8778))
                       (letrec*
                        ((xj7443
                          (begin
                            (write '(funapp 2885 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2885 34))
                               (display "\n")
                               'module))))
                         (xk7444
                          (begin
                            (write '(funapp 2885 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2885 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8779
                           (begin
                             (write '(funapp 2886 38))
                             (display "\n")
                             (any/c xj7443 xk7444 POSN/C))))
                         g8779))
                       (letrec*
                        ((xj7445
                          (begin
                            (write '(funapp 2888 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2888 34))
                               (display "\n")
                               'module))))
                         (xk7446
                          (begin
                            (write '(funapp 2888 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2888 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8780
                           (begin
                             (write '(funapp 2889 38))
                             (display "\n")
                             (any/c xj7445 xk7446 BLOCK/C))))
                         g8780))
                       (letrec*
                        ((xj7447
                          (begin
                            (write '(funapp 2891 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2891 34))
                               (display "\n")
                               'module))))
                         (xk7448
                          (begin
                            (write '(funapp 2891 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2891 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8781
                           (begin
                             (write '(funapp 2892 38))
                             (display "\n")
                             (any/c xj7447 xk7448 TETRA/C))))
                         g8781))
                       (letrec*
                        ((xj7449
                          (begin
                            (write '(funapp 2894 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2894 34))
                               (display "\n")
                               'module))))
                         (xk7450
                          (begin
                            (write '(funapp 2894 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2894 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8782
                           (begin
                             (write '(funapp 2895 38))
                             (display "\n")
                             (any/c xj7449 xk7450 WORLD/C))))
                         g8782))
                       (letrec*
                        ((xj7451
                          (begin
                            (write '(funapp 2897 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2897 34))
                               (display "\n")
                               'module))))
                         (xk7452
                          (begin
                            (write '(funapp 2897 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2897 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8783
                           (begin
                             (write '(funapp 2898 38))
                             (display "\n")
                             (any/c xj7451 xk7452 BSET/C))))
                         g8783))
                       (letrec*
                        ((xj7453
                          (begin
                            (write '(funapp 2900 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2900 34))
                               (display "\n")
                               'module))))
                         (xk7454
                          (begin
                            (write '(funapp 2900 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2900 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8784
                           (begin
                             (write '(funapp 2902 30))
                             (display "\n")
                             (integer?/c xj7453 xk7454 block-size))))
                         g8784))
                       (letrec*
                        ((xj7455
                          (begin
                            (write '(funapp 2905 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2905 34))
                               (display "\n")
                               'module))))
                         (xk7456
                          (begin
                            (write '(funapp 2905 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2905 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8785
                           (begin
                             (write '(funapp 2907 30))
                             (display "\n")
                             (integer?/c xj7455 xk7456 board-width))))
                         g8785))
                       (letrec*
                        ((xj7457
                          (begin
                            (write '(funapp 2910 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2910 34))
                               (display "\n")
                               'module))))
                         (xk7458
                          (begin
                            (write '(funapp 2910 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2910 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8786
                           (begin
                             (write '(funapp 2912 30))
                             (display "\n")
                             (integer?/c xj7457 xk7458 board-height))))
                         g8786))
                       (letrec*
                        ((x8799
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
                            ((g8800
                              (begin
                                (write '(funapp 2920 27))
                                (display "\n")
                                ((lambda (j7463 k7464 f7465)
                                   (letrec*
                                    ((g8801
                                      (lambda (g7461 g7462)
                                        (letrec*
                                         ((g8802
                                           (letrec*
                                            ((x8803
                                              (letrec*
                                               ((x8805
                                                 (begin
                                                   (write '(funapp 2929 50))
                                                   (display "\n")
                                                   (POSN/C j7463 k7464 g7461)))
                                                (x8804
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
                                                 (f7465 x8805 x8804)))))
                                            (begin
                                              (write '(funapp 2932 39))
                                              (display "\n")
                                              (BLOCK/C j7463 k7464 x8803)))))
                                         g8802))))
                                    g8801))
                                 xj7459
                                 xk7460
                                 block-rotate-ccw))))
                            g8800)))
                         (x8794
                          (letrec*
                           ((x8795
                             (letrec*
                              ((x8798 (input))
                               (x8796
                                (letrec*
                                 ((x8797 (input)))
                                 (begin
                                   (write '(funapp 2945 56))
                                   (display "\n")
                                   (cons
                                    x8797
                                    (begin
                                      (write '(funapp 2945 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2946 27))
                                (display "\n")
                                (cons x8798 x8796)))))
                           (begin
                             (write '(funapp 2947 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2947 29))
                                (display "\n")
                                'posn)
                              x8795))))
                         (x8787
                          (letrec*
                           ((x8788
                             (letrec*
                              ((x8793 (input))
                               (x8789
                                (letrec*
                                 ((x8792 (input))
                                  (x8790
                                   (letrec*
                                    ((x8791 (input)))
                                    (begin
                                      (write '(funapp 2957 59))
                                      (display "\n")
                                      (cons
                                       x8791
                                       (begin
                                         (write '(funapp 2957 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 2958 30))
                                   (display "\n")
                                   (cons x8792 x8790)))))
                              (begin
                                (write '(funapp 2959 27))
                                (display "\n")
                                (cons x8793 x8789)))))
                           (begin
                             (write '(funapp 2960 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2960 29))
                                (display "\n")
                                'block)
                              x8788)))))
                        (begin
                          (write '(funapp 2961 21))
                          (display "\n")
                          (x8799 x8794 x8787)))
                       (letrec*
                        ((x8818
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
                            ((g8819
                              (begin
                                (write '(funapp 2968 27))
                                (display "\n")
                                ((lambda (j7470 k7471 f7472)
                                   (letrec*
                                    ((g8820
                                      (lambda (g7468 g7469)
                                        (letrec*
                                         ((g8821
                                           (letrec*
                                            ((x8822
                                              (letrec*
                                               ((x8824
                                                 (begin
                                                   (write '(funapp 2977 50))
                                                   (display "\n")
                                                   (POSN/C j7470 k7471 g7468)))
                                                (x8823
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
                                                 (f7472 x8824 x8823)))))
                                            (begin
                                              (write '(funapp 2980 39))
                                              (display "\n")
                                              (BLOCK/C j7470 k7471 x8822)))))
                                         g8821))))
                                    g8820))
                                 xj7466
                                 xk7467
                                 block-rotate-cw))))
                            g8819)))
                         (x8813
                          (letrec*
                           ((x8814
                             (letrec*
                              ((x8817 (input))
                               (x8815
                                (letrec*
                                 ((x8816 (input)))
                                 (begin
                                   (write '(funapp 2993 56))
                                   (display "\n")
                                   (cons
                                    x8816
                                    (begin
                                      (write '(funapp 2993 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2994 27))
                                (display "\n")
                                (cons x8817 x8815)))))
                           (begin
                             (write '(funapp 2995 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2995 29))
                                (display "\n")
                                'posn)
                              x8814))))
                         (x8806
                          (letrec*
                           ((x8807
                             (letrec*
                              ((x8812 (input))
                               (x8808
                                (letrec*
                                 ((x8811 (input))
                                  (x8809
                                   (letrec*
                                    ((x8810 (input)))
                                    (begin
                                      (write '(funapp 3005 59))
                                      (display "\n")
                                      (cons
                                       x8810
                                       (begin
                                         (write '(funapp 3005 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 3006 30))
                                   (display "\n")
                                   (cons x8811 x8809)))))
                              (begin
                                (write '(funapp 3007 27))
                                (display "\n")
                                (cons x8812 x8808)))))
                           (begin
                             (write '(funapp 3008 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3008 29))
                                (display "\n")
                                'block)
                              x8807)))))
                        (begin
                          (write '(funapp 3009 21))
                          (display "\n")
                          (x8818 x8813 x8806)))
                       (letrec*
                        ((x8839
                          (letrec*
                           ((xj7473
                             (begin
                               (write '(funapp 3013 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3013 37))
                                  (display "\n")
                                  'module))))
                            (xk7474
                             (begin
                               (write '(funapp 3013 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3013 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8840
                              (begin
                                (write '(funapp 3016 27))
                                (display "\n")
                                ((lambda (j7477 k7478 f7479)
                                   (letrec*
                                    ((g8841
                                      (lambda (g7475 g7476)
                                        (letrec*
                                         ((g8842
                                           (letrec*
                                            ((x8843
                                              (letrec*
                                               ((x8845
                                                 (begin
                                                   (write '(funapp 3025 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7477
                                                    k7478
                                                    g7475)))
                                                (x8844
                                                 (begin
                                                   (write '(funapp 3026 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7477
                                                    k7478
                                                    g7476))))
                                               (begin
                                                 (write '(funapp 3027 42))
                                                 (display "\n")
                                                 (f7479 x8845 x8844)))))
                                            (begin
                                              (write '(funapp 3028 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7477
                                               k7478
                                               x8843)))))
                                         g8842))))
                                    g8841))
                                 xj7473
                                 xk7474
                                 block=?))))
                            g8840)))
                         (x8832
                          (letrec*
                           ((x8833
                             (letrec*
                              ((x8838 (input))
                               (x8834
                                (letrec*
                                 ((x8837 (input))
                                  (x8835
                                   (letrec*
                                    ((x8836 (input)))
                                    (begin
                                      (write '(funapp 3044 59))
                                      (display "\n")
                                      (cons
                                       x8836
                                       (begin
                                         (write '(funapp 3044 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 3045 30))
                                   (display "\n")
                                   (cons x8837 x8835)))))
                              (begin
                                (write '(funapp 3046 27))
                                (display "\n")
                                (cons x8838 x8834)))))
                           (begin
                             (write '(funapp 3047 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3047 29))
                                (display "\n")
                                'block)
                              x8833))))
                         (x8825
                          (letrec*
                           ((x8826
                             (letrec*
                              ((x8831 (input))
                               (x8827
                                (letrec*
                                 ((x8830 (input))
                                  (x8828
                                   (letrec*
                                    ((x8829 (input)))
                                    (begin
                                      (write '(funapp 3057 59))
                                      (display "\n")
                                      (cons
                                       x8829
                                       (begin
                                         (write '(funapp 3057 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 3058 30))
                                   (display "\n")
                                   (cons x8830 x8828)))))
                              (begin
                                (write '(funapp 3059 27))
                                (display "\n")
                                (cons x8831 x8827)))))
                           (begin
                             (write '(funapp 3060 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3060 29))
                                (display "\n")
                                'block)
                              x8826)))))
                        (begin
                          (write '(funapp 3061 21))
                          (display "\n")
                          (x8839 x8832 x8825)))
                       (letrec*
                        ((x8855
                          (letrec*
                           ((xj7480
                             (begin
                               (write '(funapp 3065 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3065 37))
                                  (display "\n")
                                  'module))))
                            (xk7481
                             (begin
                               (write '(funapp 3065 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3065 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8856
                              (begin
                                (write '(funapp 3068 27))
                                (display "\n")
                                ((lambda (j7485 k7486 f7487)
                                   (letrec*
                                    ((g8857
                                      (lambda (g7482 g7483 g7484)
                                        (letrec*
                                         ((g8858
                                           (letrec*
                                            ((x8859
                                              (letrec*
                                               ((x8862
                                                 (begin
                                                   (write '(funapp 3077 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7485
                                                    k7486
                                                    g7482)))
                                                (x8861
                                                 (begin
                                                   (write '(funapp 3078 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7485
                                                    k7486
                                                    g7483)))
                                                (x8860
                                                 (begin
                                                   (write '(funapp 3079 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7485
                                                    k7486
                                                    g7484))))
                                               (begin
                                                 (write '(funapp 3080 42))
                                                 (display "\n")
                                                 (f7487 x8862 x8861 x8860)))))
                                            (begin
                                              (write '(funapp 3081 39))
                                              (display "\n")
                                              (BLOCK/C j7485 k7486 x8859)))))
                                         g8858))))
                                    g8857))
                                 xj7480
                                 xk7481
                                 block-move))))
                            g8856)))
                         (x8854 (input))
                         (x8853 (input))
                         (x8846
                          (letrec*
                           ((x8847
                             (letrec*
                              ((x8852 (input))
                               (x8848
                                (letrec*
                                 ((x8851 (input))
                                  (x8849
                                   (letrec*
                                    ((x8850 (input)))
                                    (begin
                                      (write '(funapp 3099 59))
                                      (display "\n")
                                      (cons
                                       x8850
                                       (begin
                                         (write '(funapp 3099 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 3100 30))
                                   (display "\n")
                                   (cons x8851 x8849)))))
                              (begin
                                (write '(funapp 3101 27))
                                (display "\n")
                                (cons x8852 x8848)))))
                           (begin
                             (write '(funapp 3102 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3102 29))
                                (display "\n")
                                'block)
                              x8847)))))
                        (begin
                          (write '(funapp 3103 21))
                          (display "\n")
                          (x8855 x8854 x8853 x8846)))
                       (letrec*
                        ((x8871
                          (letrec*
                           ((xj7488
                             (begin
                               (write '(funapp 3107 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3107 37))
                                  (display "\n")
                                  'module))))
                            (xk7489
                             (begin
                               (write '(funapp 3107 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3107 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8872
                              (begin
                                (write '(funapp 3110 27))
                                (display "\n")
                                ((lambda (j7492 k7493 f7494)
                                   (letrec*
                                    ((g8873
                                      (lambda (g7490 g7491)
                                        (letrec*
                                         ((g8874
                                           (letrec*
                                            ((x8875
                                              (letrec*
                                               ((x8877
                                                 (begin
                                                   (write '(funapp 3119 50))
                                                   (display "\n")
                                                   (BSET/C j7492 k7493 g7490)))
                                                (x8876
                                                 (begin
                                                   (write '(funapp 3120 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7492
                                                    k7493
                                                    g7491))))
                                               (begin
                                                 (write '(funapp 3121 42))
                                                 (display "\n")
                                                 (f7494 x8877 x8876)))))
                                            (begin
                                              (write '(funapp 3122 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7492
                                               k7493
                                               x8875)))))
                                         g8874))))
                                    g8873))
                                 xj7488
                                 xk7489
                                 blocks-contains?))))
                            g8872)))
                         (x8870 (input))
                         (x8863
                          (letrec*
                           ((x8864
                             (letrec*
                              ((x8869 (input))
                               (x8865
                                (letrec*
                                 ((x8868 (input))
                                  (x8866
                                   (letrec*
                                    ((x8867 (input)))
                                    (begin
                                      (write '(funapp 3139 59))
                                      (display "\n")
                                      (cons
                                       x8867
                                       (begin
                                         (write '(funapp 3139 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 3140 30))
                                   (display "\n")
                                   (cons x8868 x8866)))))
                              (begin
                                (write '(funapp 3141 27))
                                (display "\n")
                                (cons x8869 x8865)))))
                           (begin
                             (write '(funapp 3142 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3142 29))
                                (display "\n")
                                'block)
                              x8864)))))
                        (begin
                          (write '(funapp 3143 21))
                          (display "\n")
                          (x8871 x8870 x8863)))
                       (letrec*
                        ((x8880
                          (letrec*
                           ((xj7495
                             (begin
                               (write '(funapp 3147 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3147 37))
                                  (display "\n")
                                  'module))))
                            (xk7496
                             (begin
                               (write '(funapp 3147 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3147 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8881
                              (begin
                                (write '(funapp 3150 27))
                                (display "\n")
                                ((lambda (j7499 k7500 f7501)
                                   (letrec*
                                    ((g8882
                                      (lambda (g7497 g7498)
                                        (letrec*
                                         ((g8883
                                           (letrec*
                                            ((x8884
                                              (letrec*
                                               ((x8886
                                                 (begin
                                                   (write '(funapp 3159 50))
                                                   (display "\n")
                                                   (BSET/C j7499 k7500 g7497)))
                                                (x8885
                                                 (begin
                                                   (write '(funapp 3160 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7499
                                                    k7500
                                                    g7498))))
                                               (begin
                                                 (write '(funapp 3161 42))
                                                 (display "\n")
                                                 (f7501 x8886 x8885)))))
                                            (begin
                                              (write '(funapp 3162 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7499
                                               k7500
                                               x8884)))))
                                         g8883))))
                                    g8882))
                                 xj7495
                                 xk7496
                                 blocks=?))))
                            g8881)))
                         (x8879 (input))
                         (x8878 (input)))
                        (begin
                          (write '(funapp 3171 21))
                          (display "\n")
                          (x8880 x8879 x8878)))
                       (letrec*
                        ((x8889
                          (letrec*
                           ((xj7502
                             (begin
                               (write '(funapp 3175 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3175 37))
                                  (display "\n")
                                  'module))))
                            (xk7503
                             (begin
                               (write '(funapp 3175 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3175 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8890
                              (begin
                                (write '(funapp 3178 27))
                                (display "\n")
                                ((lambda (j7506 k7507 f7508)
                                   (letrec*
                                    ((g8891
                                      (lambda (g7504 g7505)
                                        (letrec*
                                         ((g8892
                                           (letrec*
                                            ((x8893
                                              (letrec*
                                               ((x8895
                                                 (begin
                                                   (write '(funapp 3187 50))
                                                   (display "\n")
                                                   (BSET/C j7506 k7507 g7504)))
                                                (x8894
                                                 (begin
                                                   (write '(funapp 3188 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7506
                                                    k7507
                                                    g7505))))
                                               (begin
                                                 (write '(funapp 3189 42))
                                                 (display "\n")
                                                 (f7508 x8895 x8894)))))
                                            (begin
                                              (write '(funapp 3190 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7506
                                               k7507
                                               x8893)))))
                                         g8892))))
                                    g8891))
                                 xj7502
                                 xk7503
                                 blocks-subset?))))
                            g8890)))
                         (x8888 (input))
                         (x8887 (input)))
                        (begin
                          (write '(funapp 3199 21))
                          (display "\n")
                          (x8889 x8888 x8887)))
                       (letrec*
                        ((x8898
                          (letrec*
                           ((xj7509
                             (begin
                               (write '(funapp 3203 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3203 37))
                                  (display "\n")
                                  'module))))
                            (xk7510
                             (begin
                               (write '(funapp 3203 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3203 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8899
                              (begin
                                (write '(funapp 3206 27))
                                (display "\n")
                                ((lambda (j7513 k7514 f7515)
                                   (letrec*
                                    ((g8900
                                      (lambda (g7511 g7512)
                                        (letrec*
                                         ((g8901
                                           (letrec*
                                            ((x8902
                                              (letrec*
                                               ((x8904
                                                 (begin
                                                   (write '(funapp 3215 50))
                                                   (display "\n")
                                                   (BSET/C j7513 k7514 g7511)))
                                                (x8903
                                                 (begin
                                                   (write '(funapp 3216 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7513
                                                    k7514
                                                    g7512))))
                                               (begin
                                                 (write '(funapp 3217 42))
                                                 (display "\n")
                                                 (f7515 x8904 x8903)))))
                                            (begin
                                              (write '(funapp 3218 39))
                                              (display "\n")
                                              (BSET/C j7513 k7514 x8902)))))
                                         g8901))))
                                    g8900))
                                 xj7509
                                 xk7510
                                 blocks-intersect))))
                            g8899)))
                         (x8897 (input))
                         (x8896 (input)))
                        (begin
                          (write '(funapp 3227 21))
                          (display "\n")
                          (x8898 x8897 x8896)))
                       (letrec*
                        ((x8906
                          (letrec*
                           ((xj7516
                             (begin
                               (write '(funapp 3231 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3231 37))
                                  (display "\n")
                                  'module))))
                            (xk7517
                             (begin
                               (write '(funapp 3231 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3231 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8907
                              (begin
                                (write '(funapp 3234 27))
                                (display "\n")
                                ((lambda (j7519 k7520 f7521)
                                   (letrec*
                                    ((g8908
                                      (lambda (g7518)
                                        (letrec*
                                         ((g8909
                                           (letrec*
                                            ((x8910
                                              (letrec*
                                               ((x8911
                                                 (begin
                                                   (write '(funapp 3243 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7519
                                                    k7520
                                                    g7518))))
                                               (begin
                                                 (write '(funapp 3244 42))
                                                 (display "\n")
                                                 (f7521 x8911)))))
                                            (begin
                                              (write '(funapp 3245 39))
                                              (display "\n")
                                              (real?/c j7519 k7520 x8910)))))
                                         g8909))))
                                    g8908))
                                 xj7516
                                 xk7517
                                 blocks-count))))
                            g8907)))
                         (x8905 (input)))
                        (begin
                          (write '(funapp 3253 21))
                          (display "\n")
                          (x8906 x8905)))
                       (letrec*
                        ((x8913
                          (letrec*
                           ((xj7522
                             (begin
                               (write '(funapp 3257 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3257 37))
                                  (display "\n")
                                  'module))))
                            (xk7523
                             (begin
                               (write '(funapp 3257 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3257 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8914
                              (begin
                                (write '(funapp 3260 27))
                                (display "\n")
                                ((lambda (j7525 k7526 f7527)
                                   (letrec*
                                    ((g8915
                                      (lambda (g7524)
                                        (letrec*
                                         ((g8916
                                           (letrec*
                                            ((x8917
                                              (letrec*
                                               ((x8918
                                                 (begin
                                                   (write '(funapp 3269 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7525
                                                    k7526
                                                    g7524))))
                                               (begin
                                                 (write '(funapp 3270 42))
                                                 (display "\n")
                                                 (f7527 x8918)))))
                                            (begin
                                              (write '(funapp 3271 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7525
                                               k7526
                                               x8917)))))
                                         g8916))))
                                    g8915))
                                 xj7522
                                 xk7523
                                 blocks-overflow?))))
                            g8914)))
                         (x8912 (input)))
                        (begin
                          (write '(funapp 3279 21))
                          (display "\n")
                          (x8913 x8912)))
                       (letrec*
                        ((x8922
                          (letrec*
                           ((xj7528
                             (begin
                               (write '(funapp 3283 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3283 37))
                                  (display "\n")
                                  'module))))
                            (xk7529
                             (begin
                               (write '(funapp 3283 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3283 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8923
                              (begin
                                (write '(funapp 3286 27))
                                (display "\n")
                                ((lambda (j7533 k7534 f7535)
                                   (letrec*
                                    ((g8924
                                      (lambda (g7530 g7531 g7532)
                                        (letrec*
                                         ((g8925
                                           (letrec*
                                            ((x8926
                                              (letrec*
                                               ((x8929
                                                 (begin
                                                   (write '(funapp 3295 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7533
                                                    k7534
                                                    g7530)))
                                                (x8928
                                                 (begin
                                                   (write '(funapp 3296 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7533
                                                    k7534
                                                    g7531)))
                                                (x8927
                                                 (begin
                                                   (write '(funapp 3297 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7533
                                                    k7534
                                                    g7532))))
                                               (begin
                                                 (write '(funapp 3298 42))
                                                 (display "\n")
                                                 (f7535 x8929 x8928 x8927)))))
                                            (begin
                                              (write '(funapp 3299 39))
                                              (display "\n")
                                              (BSET/C j7533 k7534 x8926)))))
                                         g8925))))
                                    g8924))
                                 xj7528
                                 xk7529
                                 blocks-move))))
                            g8923)))
                         (x8921 (input))
                         (x8920 (input))
                         (x8919 (input)))
                        (begin
                          (write '(funapp 3309 21))
                          (display "\n")
                          (x8922 x8921 x8920 x8919)))
                       (letrec*
                        ((x8936
                          (letrec*
                           ((xj7536
                             (begin
                               (write '(funapp 3313 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3313 37))
                                  (display "\n")
                                  'module))))
                            (xk7537
                             (begin
                               (write '(funapp 3313 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3313 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8937
                              (begin
                                (write '(funapp 3316 27))
                                (display "\n")
                                ((lambda (j7540 k7541 f7542)
                                   (letrec*
                                    ((g8938
                                      (lambda (g7538 g7539)
                                        (letrec*
                                         ((g8939
                                           (letrec*
                                            ((x8940
                                              (letrec*
                                               ((x8942
                                                 (begin
                                                   (write '(funapp 3325 50))
                                                   (display "\n")
                                                   (POSN/C j7540 k7541 g7538)))
                                                (x8941
                                                 (begin
                                                   (write '(funapp 3326 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7540
                                                    k7541
                                                    g7539))))
                                               (begin
                                                 (write '(funapp 3327 42))
                                                 (display "\n")
                                                 (f7542 x8942 x8941)))))
                                            (begin
                                              (write '(funapp 3328 39))
                                              (display "\n")
                                              (BSET/C j7540 k7541 x8940)))))
                                         g8939))))
                                    g8938))
                                 xj7536
                                 xk7537
                                 blocks-rotate-cw))))
                            g8937)))
                         (x8931
                          (letrec*
                           ((x8932
                             (letrec*
                              ((x8935 (input))
                               (x8933
                                (letrec*
                                 ((x8934 (input)))
                                 (begin
                                   (write '(funapp 3341 56))
                                   (display "\n")
                                   (cons
                                    x8934
                                    (begin
                                      (write '(funapp 3341 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3342 27))
                                (display "\n")
                                (cons x8935 x8933)))))
                           (begin
                             (write '(funapp 3343 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3343 29))
                                (display "\n")
                                'posn)
                              x8932))))
                         (x8930 (input)))
                        (begin
                          (write '(funapp 3345 21))
                          (display "\n")
                          (x8936 x8931 x8930)))
                       (letrec*
                        ((x8949
                          (letrec*
                           ((xj7543
                             (begin
                               (write '(funapp 3349 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3349 37))
                                  (display "\n")
                                  'module))))
                            (xk7544
                             (begin
                               (write '(funapp 3349 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3349 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8950
                              (begin
                                (write '(funapp 3352 27))
                                (display "\n")
                                ((lambda (j7547 k7548 f7549)
                                   (letrec*
                                    ((g8951
                                      (lambda (g7545 g7546)
                                        (letrec*
                                         ((g8952
                                           (letrec*
                                            ((x8953
                                              (letrec*
                                               ((x8955
                                                 (begin
                                                   (write '(funapp 3361 50))
                                                   (display "\n")
                                                   (POSN/C j7547 k7548 g7545)))
                                                (x8954
                                                 (begin
                                                   (write '(funapp 3362 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7547
                                                    k7548
                                                    g7546))))
                                               (begin
                                                 (write '(funapp 3363 42))
                                                 (display "\n")
                                                 (f7549 x8955 x8954)))))
                                            (begin
                                              (write '(funapp 3364 39))
                                              (display "\n")
                                              (BSET/C j7547 k7548 x8953)))))
                                         g8952))))
                                    g8951))
                                 xj7543
                                 xk7544
                                 blocks-rotate-ccw))))
                            g8950)))
                         (x8944
                          (letrec*
                           ((x8945
                             (letrec*
                              ((x8948 (input))
                               (x8946
                                (letrec*
                                 ((x8947 (input)))
                                 (begin
                                   (write '(funapp 3377 56))
                                   (display "\n")
                                   (cons
                                    x8947
                                    (begin
                                      (write '(funapp 3377 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3378 27))
                                (display "\n")
                                (cons x8948 x8946)))))
                           (begin
                             (write '(funapp 3379 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3379 29))
                                (display "\n")
                                'posn)
                              x8945))))
                         (x8943 (input)))
                        (begin
                          (write '(funapp 3381 21))
                          (display "\n")
                          (x8949 x8944 x8943)))
                       (letrec*
                        ((x8958
                          (letrec*
                           ((xj7550
                             (begin
                               (write '(funapp 3385 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3385 37))
                                  (display "\n")
                                  'module))))
                            (xk7551
                             (begin
                               (write '(funapp 3385 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3385 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8959
                              (begin
                                (write '(funapp 3388 27))
                                (display "\n")
                                ((lambda (j7554 k7555 f7556)
                                   (letrec*
                                    ((g8960
                                      (lambda (g7552 g7553)
                                        (letrec*
                                         ((g8961
                                           (letrec*
                                            ((x8962
                                              (letrec*
                                               ((x8964
                                                 (begin
                                                   (write '(funapp 3397 50))
                                                   (display "\n")
                                                   (BSET/C j7554 k7555 g7552)))
                                                (x8963
                                                 (begin
                                                   (write '(funapp 3398 50))
                                                   (display "\n")
                                                   (COLOR/C
                                                    j7554
                                                    k7555
                                                    g7553))))
                                               (begin
                                                 (write '(funapp 3399 42))
                                                 (display "\n")
                                                 (f7556 x8964 x8963)))))
                                            (begin
                                              (write '(funapp 3400 39))
                                              (display "\n")
                                              (BSET/C j7554 k7555 x8962)))))
                                         g8961))))
                                    g8960))
                                 xj7550
                                 xk7551
                                 blocks-change-color))))
                            g8959)))
                         (x8957 (input))
                         (x8956 (input)))
                        (begin
                          (write '(funapp 3409 21))
                          (display "\n")
                          (x8958 x8957 x8956)))
                       (letrec*
                        ((x8967
                          (letrec*
                           ((xj7557
                             (begin
                               (write '(funapp 3413 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3413 37))
                                  (display "\n")
                                  'module))))
                            (xk7558
                             (begin
                               (write '(funapp 3413 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3413 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8968
                              (begin
                                (write '(funapp 3416 27))
                                (display "\n")
                                ((lambda (j7561 k7562 f7563)
                                   (letrec*
                                    ((g8969
                                      (lambda (g7559 g7560)
                                        (letrec*
                                         ((g8970
                                           (letrec*
                                            ((x8971
                                              (letrec*
                                               ((x8973
                                                 (begin
                                                   (write '(funapp 3425 50))
                                                   (display "\n")
                                                   (BSET/C j7561 k7562 g7559)))
                                                (x8972
                                                 (begin
                                                   (write '(funapp 3426 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7561
                                                    k7562
                                                    g7560))))
                                               (begin
                                                 (write '(funapp 3427 42))
                                                 (display "\n")
                                                 (f7563 x8973 x8972)))))
                                            (begin
                                              (write '(funapp 3428 39))
                                              (display "\n")
                                              (BSET/C j7561 k7562 x8971)))))
                                         g8970))))
                                    g8969))
                                 xj7557
                                 xk7558
                                 blocks-row))))
                            g8968)))
                         (x8966 (input))
                         (x8965 (input)))
                        (begin
                          (write '(funapp 3437 21))
                          (display "\n")
                          (x8967 x8966 x8965)))
                       (letrec*
                        ((x8976
                          (letrec*
                           ((xj7564
                             (begin
                               (write '(funapp 3441 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3441 37))
                                  (display "\n")
                                  'module))))
                            (xk7565
                             (begin
                               (write '(funapp 3441 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3441 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8977
                              (begin
                                (write '(funapp 3444 27))
                                (display "\n")
                                ((lambda (j7568 k7569 f7570)
                                   (letrec*
                                    ((g8978
                                      (lambda (g7566 g7567)
                                        (letrec*
                                         ((g8979
                                           (letrec*
                                            ((x8980
                                              (letrec*
                                               ((x8982
                                                 (begin
                                                   (write '(funapp 3453 50))
                                                   (display "\n")
                                                   (BSET/C j7568 k7569 g7566)))
                                                (x8981
                                                 (begin
                                                   (write '(funapp 3454 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7568
                                                    k7569
                                                    g7567))))
                                               (begin
                                                 (write '(funapp 3455 42))
                                                 (display "\n")
                                                 (f7570 x8982 x8981)))))
                                            (begin
                                              (write '(funapp 3456 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7568
                                               k7569
                                               x8980)))))
                                         g8979))))
                                    g8978))
                                 xj7564
                                 xk7565
                                 full-row?))))
                            g8977)))
                         (x8975 (input))
                         (x8974 (input)))
                        (begin
                          (write '(funapp 3465 21))
                          (display "\n")
                          (x8976 x8975 x8974)))
                       (letrec*
                        ((x8985
                          (letrec*
                           ((xj7571
                             (begin
                               (write '(funapp 3469 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3469 37))
                                  (display "\n")
                                  'module))))
                            (xk7572
                             (begin
                               (write '(funapp 3469 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3469 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8986
                              (begin
                                (write '(funapp 3472 27))
                                (display "\n")
                                ((lambda (j7575 k7576 f7577)
                                   (letrec*
                                    ((g8987
                                      (lambda (g7573 g7574)
                                        (letrec*
                                         ((g8988
                                           (letrec*
                                            ((x8989
                                              (letrec*
                                               ((x8991
                                                 (begin
                                                   (write '(funapp 3481 50))
                                                   (display "\n")
                                                   (BSET/C j7575 k7576 g7573)))
                                                (x8990
                                                 (begin
                                                   (write '(funapp 3482 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7575
                                                    k7576
                                                    g7574))))
                                               (begin
                                                 (write '(funapp 3483 42))
                                                 (display "\n")
                                                 (f7577 x8991 x8990)))))
                                            (begin
                                              (write '(funapp 3484 39))
                                              (display "\n")
                                              (BSET/C j7575 k7576 x8989)))))
                                         g8988))))
                                    g8987))
                                 xj7571
                                 xk7572
                                 blocks-union))))
                            g8986)))
                         (x8984 (input))
                         (x8983 (input)))
                        (begin
                          (write '(funapp 3493 21))
                          (display "\n")
                          (x8985 x8984 x8983)))
                       (letrec*
                        ((x8993
                          (letrec*
                           ((xj7578
                             (begin
                               (write '(funapp 3497 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3497 37))
                                  (display "\n")
                                  'module))))
                            (xk7579
                             (begin
                               (write '(funapp 3497 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3497 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8994
                              (begin
                                (write '(funapp 3500 27))
                                (display "\n")
                                ((lambda (j7581 k7582 f7583)
                                   (letrec*
                                    ((g8995
                                      (lambda (g7580)
                                        (letrec*
                                         ((g8996
                                           (letrec*
                                            ((x8997
                                              (letrec*
                                               ((x8998
                                                 (begin
                                                   (write '(funapp 3509 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7581
                                                    k7582
                                                    g7580))))
                                               (begin
                                                 (write '(funapp 3510 42))
                                                 (display "\n")
                                                 (f7583 x8998)))))
                                            (begin
                                              (write '(funapp 3511 39))
                                              (display "\n")
                                              (real?/c j7581 k7582 x8997)))))
                                         g8996))))
                                    g8995))
                                 xj7578
                                 xk7579
                                 blocks-max-x))))
                            g8994)))
                         (x8992 (input)))
                        (begin
                          (write '(funapp 3519 21))
                          (display "\n")
                          (x8993 x8992)))
                       (letrec*
                        ((x9000
                          (letrec*
                           ((xj7584
                             (begin
                               (write '(funapp 3523 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3523 37))
                                  (display "\n")
                                  'module))))
                            (xk7585
                             (begin
                               (write '(funapp 3523 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3523 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9001
                              (begin
                                (write '(funapp 3526 27))
                                (display "\n")
                                ((lambda (j7587 k7588 f7589)
                                   (letrec*
                                    ((g9002
                                      (lambda (g7586)
                                        (letrec*
                                         ((g9003
                                           (letrec*
                                            ((x9004
                                              (letrec*
                                               ((x9005
                                                 (begin
                                                   (write '(funapp 3535 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7587
                                                    k7588
                                                    g7586))))
                                               (begin
                                                 (write '(funapp 3536 42))
                                                 (display "\n")
                                                 (f7589 x9005)))))
                                            (begin
                                              (write '(funapp 3537 39))
                                              (display "\n")
                                              (real?/c j7587 k7588 x9004)))))
                                         g9003))))
                                    g9002))
                                 xj7584
                                 xk7585
                                 blocks-min-x))))
                            g9001)))
                         (x8999 (input)))
                        (begin
                          (write '(funapp 3545 21))
                          (display "\n")
                          (x9000 x8999)))
                       (letrec*
                        ((x9007
                          (letrec*
                           ((xj7590
                             (begin
                               (write '(funapp 3549 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3549 37))
                                  (display "\n")
                                  'module))))
                            (xk7591
                             (begin
                               (write '(funapp 3549 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3549 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9008
                              (begin
                                (write '(funapp 3552 27))
                                (display "\n")
                                ((lambda (j7593 k7594 f7595)
                                   (letrec*
                                    ((g9009
                                      (lambda (g7592)
                                        (letrec*
                                         ((g9010
                                           (letrec*
                                            ((x9011
                                              (letrec*
                                               ((x9012
                                                 (begin
                                                   (write '(funapp 3561 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7593
                                                    k7594
                                                    g7592))))
                                               (begin
                                                 (write '(funapp 3562 42))
                                                 (display "\n")
                                                 (f7595 x9012)))))
                                            (begin
                                              (write '(funapp 3563 39))
                                              (display "\n")
                                              (real?/c j7593 k7594 x9011)))))
                                         g9010))))
                                    g9009))
                                 xj7590
                                 xk7591
                                 blocks-max-y))))
                            g9008)))
                         (x9006 (input)))
                        (begin
                          (write '(funapp 3571 21))
                          (display "\n")
                          (x9007 x9006)))
                       (letrec*
                        ((x9014
                          (letrec*
                           ((xj7596
                             (begin
                               (write '(funapp 3575 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3575 37))
                                  (display "\n")
                                  'module))))
                            (xk7597
                             (begin
                               (write '(funapp 3575 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3575 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9015
                              (begin
                                (write '(funapp 3578 27))
                                (display "\n")
                                ((lambda (j7599 k7600 f7601)
                                   (letrec*
                                    ((g9016
                                      (lambda (g7598)
                                        (letrec*
                                         ((g9017
                                           (letrec*
                                            ((x9018
                                              (letrec*
                                               ((x9019
                                                 (begin
                                                   (write '(funapp 3587 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7599
                                                    k7600
                                                    g7598))))
                                               (begin
                                                 (write '(funapp 3588 42))
                                                 (display "\n")
                                                 (f7601 x9019)))))
                                            (begin
                                              (write '(funapp 3589 39))
                                              (display "\n")
                                              (BSET/C j7599 k7600 x9018)))))
                                         g9017))))
                                    g9016))
                                 xj7596
                                 xk7597
                                 eliminate-full-rows))))
                            g9015)))
                         (x9013 (input)))
                        (begin
                          (write '(funapp 3597 21))
                          (display "\n")
                          (x9014 x9013)))
                       (letrec*
                        ((x9031
                          (letrec*
                           ((xj7602
                             (begin
                               (write '(funapp 3601 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3601 37))
                                  (display "\n")
                                  'module))))
                            (xk7603
                             (begin
                               (write '(funapp 3601 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3601 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9032
                              (begin
                                (write '(funapp 3604 27))
                                (display "\n")
                                ((lambda (j7607 k7608 f7609)
                                   (letrec*
                                    ((g9033
                                      (lambda (g7604 g7605 g7606)
                                        (letrec*
                                         ((g9034
                                           (letrec*
                                            ((x9035
                                              (letrec*
                                               ((x9038
                                                 (begin
                                                   (write '(funapp 3614 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7607
                                                    k7608
                                                    g7604)))
                                                (x9037
                                                 (begin
                                                   (write '(funapp 3616 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7607
                                                    k7608
                                                    g7605)))
                                                (x9036
                                                 (begin
                                                   (write '(funapp 3617 50))
                                                   (display "\n")
                                                   (TETRA/C
                                                    j7607
                                                    k7608
                                                    g7606))))
                                               (begin
                                                 (write '(funapp 3618 42))
                                                 (display "\n")
                                                 (f7609 x9038 x9037 x9036)))))
                                            (begin
                                              (write '(funapp 3619 39))
                                              (display "\n")
                                              (TETRA/C j7607 k7608 x9035)))))
                                         g9034))))
                                    g9033))
                                 xj7602
                                 xk7603
                                 tetra-move))))
                            g9032)))
                         (x9030 (input))
                         (x9029 (input))
                         (x9020
                          (letrec*
                           ((x9021
                             (letrec*
                              ((x9024
                                (letrec*
                                 ((x9025
                                   (letrec*
                                    ((x9028 (input))
                                     (x9026
                                      (letrec*
                                       ((x9027 (input)))
                                       (begin
                                         (write '(funapp 3640 36))
                                         (display "\n")
                                         (cons
                                          x9027
                                          (begin
                                            (write '(funapp 3640 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3641 33))
                                      (display "\n")
                                      (cons x9028 x9026)))))
                                 (begin
                                   (write '(funapp 3642 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3642 35))
                                      (display "\n")
                                      'posn)
                                    x9025))))
                               (x9022
                                (letrec*
                                 ((x9023 (input)))
                                 (begin
                                   (write '(funapp 3644 56))
                                   (display "\n")
                                   (cons
                                    x9023
                                    (begin
                                      (write '(funapp 3644 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3645 27))
                                (display "\n")
                                (cons x9024 x9022)))))
                           (begin
                             (write '(funapp 3646 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3646 29))
                                (display "\n")
                                'tetra)
                              x9021)))))
                        (begin
                          (write '(funapp 3647 21))
                          (display "\n")
                          (x9031 x9030 x9029 x9020)))
                       (letrec*
                        ((x9048
                          (letrec*
                           ((xj7610
                             (begin
                               (write '(funapp 3651 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3651 37))
                                  (display "\n")
                                  'module))))
                            (xk7611
                             (begin
                               (write '(funapp 3651 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3651 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9049
                              (begin
                                (write '(funapp 3654 27))
                                (display "\n")
                                ((lambda (j7613 k7614 f7615)
                                   (letrec*
                                    ((g9050
                                      (lambda (g7612)
                                        (letrec*
                                         ((g9051
                                           (letrec*
                                            ((x9052
                                              (letrec*
                                               ((x9053
                                                 (begin
                                                   (write '(funapp 3663 50))
                                                   (display "\n")
                                                   (TETRA/C
                                                    j7613
                                                    k7614
                                                    g7612))))
                                               (begin
                                                 (write '(funapp 3664 42))
                                                 (display "\n")
                                                 (f7615 x9053)))))
                                            (begin
                                              (write '(funapp 3665 39))
                                              (display "\n")
                                              (TETRA/C j7613 k7614 x9052)))))
                                         g9051))))
                                    g9050))
                                 xj7610
                                 xk7611
                                 tetra-rotate-ccw))))
                            g9049)))
                         (x9039
                          (letrec*
                           ((x9040
                             (letrec*
                              ((x9043
                                (letrec*
                                 ((x9044
                                   (letrec*
                                    ((x9047 (input))
                                     (x9045
                                      (letrec*
                                       ((x9046 (input)))
                                       (begin
                                         (write '(funapp 3684 36))
                                         (display "\n")
                                         (cons
                                          x9046
                                          (begin
                                            (write '(funapp 3684 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3685 33))
                                      (display "\n")
                                      (cons x9047 x9045)))))
                                 (begin
                                   (write '(funapp 3686 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3686 35))
                                      (display "\n")
                                      'posn)
                                    x9044))))
                               (x9041
                                (letrec*
                                 ((x9042 (input)))
                                 (begin
                                   (write '(funapp 3688 56))
                                   (display "\n")
                                   (cons
                                    x9042
                                    (begin
                                      (write '(funapp 3688 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3689 27))
                                (display "\n")
                                (cons x9043 x9041)))))
                           (begin
                             (write '(funapp 3690 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3690 29))
                                (display "\n")
                                'tetra)
                              x9040)))))
                        (begin
                          (write '(funapp 3691 21))
                          (display "\n")
                          (x9048 x9039)))
                       (letrec*
                        ((x9063
                          (letrec*
                           ((xj7616
                             (begin
                               (write '(funapp 3695 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3695 37))
                                  (display "\n")
                                  'module))))
                            (xk7617
                             (begin
                               (write '(funapp 3695 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3695 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9064
                              (begin
                                (write '(funapp 3698 27))
                                (display "\n")
                                ((lambda (j7619 k7620 f7621)
                                   (letrec*
                                    ((g9065
                                      (lambda (g7618)
                                        (letrec*
                                         ((g9066
                                           (letrec*
                                            ((x9067
                                              (letrec*
                                               ((x9068
                                                 (begin
                                                   (write '(funapp 3707 50))
                                                   (display "\n")
                                                   (TETRA/C
                                                    j7619
                                                    k7620
                                                    g7618))))
                                               (begin
                                                 (write '(funapp 3708 42))
                                                 (display "\n")
                                                 (f7621 x9068)))))
                                            (begin
                                              (write '(funapp 3709 39))
                                              (display "\n")
                                              (TETRA/C j7619 k7620 x9067)))))
                                         g9066))))
                                    g9065))
                                 xj7616
                                 xk7617
                                 tetra-rotate-cw))))
                            g9064)))
                         (x9054
                          (letrec*
                           ((x9055
                             (letrec*
                              ((x9058
                                (letrec*
                                 ((x9059
                                   (letrec*
                                    ((x9062 (input))
                                     (x9060
                                      (letrec*
                                       ((x9061 (input)))
                                       (begin
                                         (write '(funapp 3728 36))
                                         (display "\n")
                                         (cons
                                          x9061
                                          (begin
                                            (write '(funapp 3728 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3729 33))
                                      (display "\n")
                                      (cons x9062 x9060)))))
                                 (begin
                                   (write '(funapp 3730 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3730 35))
                                      (display "\n")
                                      'posn)
                                    x9059))))
                               (x9056
                                (letrec*
                                 ((x9057 (input)))
                                 (begin
                                   (write '(funapp 3732 56))
                                   (display "\n")
                                   (cons
                                    x9057
                                    (begin
                                      (write '(funapp 3732 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3733 27))
                                (display "\n")
                                (cons x9058 x9056)))))
                           (begin
                             (write '(funapp 3734 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3734 29))
                                (display "\n")
                                'tetra)
                              x9055)))))
                        (begin
                          (write '(funapp 3735 21))
                          (display "\n")
                          (x9063 x9054)))
                       (letrec*
                        ((x9079
                          (letrec*
                           ((xj7622
                             (begin
                               (write '(funapp 3739 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3739 37))
                                  (display "\n")
                                  'module))))
                            (xk7623
                             (begin
                               (write '(funapp 3739 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3739 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9080
                              (begin
                                (write '(funapp 3742 27))
                                (display "\n")
                                ((lambda (j7626 k7627 f7628)
                                   (letrec*
                                    ((g9081
                                      (lambda (g7624 g7625)
                                        (letrec*
                                         ((g9082
                                           (letrec*
                                            ((x9083
                                              (letrec*
                                               ((x9085
                                                 (begin
                                                   (write '(funapp 3751 50))
                                                   (display "\n")
                                                   (TETRA/C
                                                    j7626
                                                    k7627
                                                    g7624)))
                                                (x9084
                                                 (begin
                                                   (write '(funapp 3752 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7626
                                                    k7627
                                                    g7625))))
                                               (begin
                                                 (write '(funapp 3753 42))
                                                 (display "\n")
                                                 (f7628 x9085 x9084)))))
                                            (begin
                                              (write '(funapp 3754 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7626
                                               k7627
                                               x9083)))))
                                         g9082))))
                                    g9081))
                                 xj7622
                                 xk7623
                                 tetra-overlaps-blocks?))))
                            g9080)))
                         (x9070
                          (letrec*
                           ((x9071
                             (letrec*
                              ((x9074
                                (letrec*
                                 ((x9075
                                   (letrec*
                                    ((x9078 (input))
                                     (x9076
                                      (letrec*
                                       ((x9077 (input)))
                                       (begin
                                         (write '(funapp 3773 36))
                                         (display "\n")
                                         (cons
                                          x9077
                                          (begin
                                            (write '(funapp 3773 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3774 33))
                                      (display "\n")
                                      (cons x9078 x9076)))))
                                 (begin
                                   (write '(funapp 3775 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3775 35))
                                      (display "\n")
                                      'posn)
                                    x9075))))
                               (x9072
                                (letrec*
                                 ((x9073 (input)))
                                 (begin
                                   (write '(funapp 3777 56))
                                   (display "\n")
                                   (cons
                                    x9073
                                    (begin
                                      (write '(funapp 3777 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3778 27))
                                (display "\n")
                                (cons x9074 x9072)))))
                           (begin
                             (write '(funapp 3779 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3779 29))
                                (display "\n")
                                'tetra)
                              x9071))))
                         (x9069 (input)))
                        (begin
                          (write '(funapp 3781 21))
                          (display "\n")
                          (x9079 x9070 x9069)))
                       (letrec*
                        ((x9097
                          (letrec*
                           ((xj7629
                             (begin
                               (write '(funapp 3785 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3785 37))
                                  (display "\n")
                                  'module))))
                            (xk7630
                             (begin
                               (write '(funapp 3785 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3785 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9098
                              (begin
                                (write '(funapp 3788 27))
                                (display "\n")
                                ((lambda (j7642 k7643 f7644)
                                   (letrec*
                                    ((g9099
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
                                         ((g9100
                                           (letrec*
                                            ((x9101
                                              (letrec*
                                               ((x9112
                                                 (begin
                                                   (write '(funapp 3807 50))
                                                   (display "\n")
                                                   (COLOR/C
                                                    j7642
                                                    k7643
                                                    g7631)))
                                                (x9111
                                                 (begin
                                                   (write '(funapp 3808 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7642
                                                    k7643
                                                    g7632)))
                                                (x9110
                                                 (begin
                                                   (write '(funapp 3809 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7642
                                                    k7643
                                                    g7633)))
                                                (x9109
                                                 (begin
                                                   (write '(funapp 3811 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7642
                                                    k7643
                                                    g7634)))
                                                (x9108
                                                 (begin
                                                   (write '(funapp 3813 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7642
                                                    k7643
                                                    g7635)))
                                                (x9107
                                                 (begin
                                                   (write '(funapp 3815 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7642
                                                    k7643
                                                    g7636)))
                                                (x9106
                                                 (begin
                                                   (write '(funapp 3817 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7642
                                                    k7643
                                                    g7637)))
                                                (x9105
                                                 (begin
                                                   (write '(funapp 3819 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7642
                                                    k7643
                                                    g7638)))
                                                (x9104
                                                 (begin
                                                   (write '(funapp 3821 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7642
                                                    k7643
                                                    g7639)))
                                                (x9103
                                                 (begin
                                                   (write '(funapp 3823 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7642
                                                    k7643
                                                    g7640)))
                                                (x9102
                                                 (begin
                                                   (write '(funapp 3825 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7642
                                                    k7643
                                                    g7641))))
                                               (begin
                                                 (write '(funapp 3826 42))
                                                 (display "\n")
                                                 (f7644
                                                  x9112
                                                  x9111
                                                  x9110
                                                  x9109
                                                  x9108
                                                  x9107
                                                  x9106
                                                  x9105
                                                  x9104
                                                  x9103
                                                  x9102)))))
                                            (begin
                                              (write '(funapp 3838 39))
                                              (display "\n")
                                              (TETRA/C j7642 k7643 x9101)))))
                                         g9100))))
                                    g9099))
                                 xj7629
                                 xk7630
                                 build-tetra-blocks))))
                            g9098)))
                         (x9096 (input))
                         (x9095 (input))
                         (x9094 (input))
                         (x9093 (input))
                         (x9092 (input))
                         (x9091 (input))
                         (x9090 (input))
                         (x9089 (input))
                         (x9088 (input))
                         (x9087 (input))
                         (x9086 (input)))
                        (begin
                          (write '(funapp 3856 21))
                          (display "\n")
                          (x9097
                           x9096
                           x9095
                           x9094
                           x9093
                           x9092
                           x9091
                           x9090
                           x9089
                           x9088
                           x9087
                           x9086)))
                       (letrec*
                        ((x9123
                          (letrec*
                           ((xj7645
                             (begin
                               (write '(funapp 3871 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3871 37))
                                  (display "\n")
                                  'module))))
                            (xk7646
                             (begin
                               (write '(funapp 3871 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3871 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9124
                              (begin
                                (write '(funapp 3874 27))
                                (display "\n")
                                ((lambda (j7649 k7650 f7651)
                                   (letrec*
                                    ((g9125
                                      (lambda (g7647 g7648)
                                        (letrec*
                                         ((g9126
                                           (letrec*
                                            ((x9127
                                              (letrec*
                                               ((x9129
                                                 (begin
                                                   (write '(funapp 3883 50))
                                                   (display "\n")
                                                   (TETRA/C
                                                    j7649
                                                    k7650
                                                    g7647)))
                                                (x9128
                                                 (begin
                                                   (write '(funapp 3884 50))
                                                   (display "\n")
                                                   (COLOR/C
                                                    j7649
                                                    k7650
                                                    g7648))))
                                               (begin
                                                 (write '(funapp 3885 42))
                                                 (display "\n")
                                                 (f7651 x9129 x9128)))))
                                            (begin
                                              (write '(funapp 3886 39))
                                              (display "\n")
                                              (TETRA/C j7649 k7650 x9127)))))
                                         g9126))))
                                    g9125))
                                 xj7645
                                 xk7646
                                 tetra-change-color))))
                            g9124)))
                         (x9114
                          (letrec*
                           ((x9115
                             (letrec*
                              ((x9118
                                (letrec*
                                 ((x9119
                                   (letrec*
                                    ((x9122 (input))
                                     (x9120
                                      (letrec*
                                       ((x9121 (input)))
                                       (begin
                                         (write '(funapp 3905 36))
                                         (display "\n")
                                         (cons
                                          x9121
                                          (begin
                                            (write '(funapp 3905 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3906 33))
                                      (display "\n")
                                      (cons x9122 x9120)))))
                                 (begin
                                   (write '(funapp 3907 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3907 35))
                                      (display "\n")
                                      'posn)
                                    x9119))))
                               (x9116
                                (letrec*
                                 ((x9117 (input)))
                                 (begin
                                   (write '(funapp 3909 56))
                                   (display "\n")
                                   (cons
                                    x9117
                                    (begin
                                      (write '(funapp 3909 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3910 27))
                                (display "\n")
                                (cons x9118 x9116)))))
                           (begin
                             (write '(funapp 3911 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3911 29))
                                (display "\n")
                                'tetra)
                              x9115))))
                         (x9113 (input)))
                        (begin
                          (write '(funapp 3913 21))
                          (display "\n")
                          (x9123 x9114 x9113)))
                       (letrec*
                        ((x9144
                          (letrec*
                           ((xj7652
                             (begin
                               (write '(funapp 3917 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3917 37))
                                  (display "\n")
                                  'module))))
                            (xk7653
                             (begin
                               (write '(funapp 3917 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3917 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9145
                              (begin
                                (write '(funapp 3920 27))
                                (display "\n")
                                ((lambda (j7656 k7657 f7658)
                                   (letrec*
                                    ((g9146
                                      (lambda (g7654 g7655)
                                        (letrec*
                                         ((g9147
                                           (letrec*
                                            ((x9148
                                              (letrec*
                                               ((x9150
                                                 (begin
                                                   (write '(funapp 3929 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7656
                                                    k7657
                                                    g7654)))
                                                (x9149
                                                 (begin
                                                   (write '(funapp 3931 44))
                                                   (display "\n")
                                                   (string?/c
                                                    j7656
                                                    k7657
                                                    g7655))))
                                               (begin
                                                 (write '(funapp 3932 42))
                                                 (display "\n")
                                                 (f7658 x9150 x9149)))))
                                            (begin
                                              (write '(funapp 3933 39))
                                              (display "\n")
                                              (WORLD/C j7656 k7657 x9148)))))
                                         g9147))))
                                    g9146))
                                 xj7652
                                 xk7653
                                 world-key-move))))
                            g9145)))
                         (x9131
                          (letrec*
                           ((x9132
                             (letrec*
                              ((x9135
                                (letrec*
                                 ((x9136
                                   (letrec*
                                    ((x9139
                                      (letrec*
                                       ((x9140
                                         (letrec*
                                          ((x9143 (input))
                                           (x9141
                                            (letrec*
                                             ((x9142 (input)))
                                             (begin
                                               (write '(funapp 3956 42))
                                               (display "\n")
                                               (cons
                                                x9142
                                                (begin
                                                  (write '(funapp 3956 53))
                                                  (display "\n")
                                                  '()))))))
                                          (begin
                                            (write '(funapp 3957 39))
                                            (display "\n")
                                            (cons x9143 x9141)))))
                                       (begin
                                         (write '(funapp 3958 36))
                                         (display "\n")
                                         (cons
                                          (begin
                                            (write '(funapp 3958 41))
                                            (display "\n")
                                            'posn)
                                          x9140))))
                                     (x9137
                                      (letrec*
                                       ((x9138 (input)))
                                       (begin
                                         (write '(funapp 3962 36))
                                         (display "\n")
                                         (cons
                                          x9138
                                          (begin
                                            (write '(funapp 3962 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3963 33))
                                      (display "\n")
                                      (cons x9139 x9137)))))
                                 (begin
                                   (write '(funapp 3964 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3964 35))
                                      (display "\n")
                                      'tetra)
                                    x9136))))
                               (x9133
                                (letrec*
                                 ((x9134 (input)))
                                 (begin
                                   (write '(funapp 3966 56))
                                   (display "\n")
                                   (cons
                                    x9134
                                    (begin
                                      (write '(funapp 3966 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3967 27))
                                (display "\n")
                                (cons x9135 x9133)))))
                           (begin
                             (write '(funapp 3968 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3968 29))
                                (display "\n")
                                'world)
                              x9132))))
                         (x9130 (input)))
                        (begin
                          (write '(funapp 3970 21))
                          (display "\n")
                          (x9144 x9131 x9130)))
                       (letrec*
                        ((x9165
                          (letrec*
                           ((xj7659
                             (begin
                               (write '(funapp 3974 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3974 37))
                                  (display "\n")
                                  'module))))
                            (xk7660
                             (begin
                               (write '(funapp 3974 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3974 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9166
                              (begin
                                (write '(funapp 3977 27))
                                (display "\n")
                                ((lambda (j7663 k7664 f7665)
                                   (letrec*
                                    ((g9167
                                      (lambda (g7661 g7662)
                                        (letrec*
                                         ((g9168
                                           (letrec*
                                            ((x9169
                                              (letrec*
                                               ((x9173
                                                 (begin
                                                   (write '(funapp 3986 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7663
                                                    k7664
                                                    g7661)))
                                                (x9170
                                                 (letrec*
                                                  ((x9171
                                                    (letrec*
                                                     ((x9172
                                                       (begin
                                                         (write
                                                          '(funapp 3991 56))
                                                         (display "\n")
                                                         (listof TETRA/C))))
                                                     (begin
                                                       (write
                                                        '(funapp 3992 48))
                                                       (display "\n")
                                                       (and/c
                                                        cons?/c
                                                        x9172)))))
                                                  (begin
                                                    (write '(funapp 3993 45))
                                                    (display "\n")
                                                    (x9171
                                                     j7663
                                                     k7664
                                                     g7662)))))
                                               (begin
                                                 (write '(funapp 3994 42))
                                                 (display "\n")
                                                 (f7665 x9173 x9170)))))
                                            (begin
                                              (write '(funapp 3995 39))
                                              (display "\n")
                                              (WORLD/C j7663 k7664 x9169)))))
                                         g9168))))
                                    g9167))
                                 xj7659
                                 xk7660
                                 next-world))))
                            g9166)))
                         (x9152
                          (letrec*
                           ((x9153
                             (letrec*
                              ((x9156
                                (letrec*
                                 ((x9157
                                   (letrec*
                                    ((x9160
                                      (letrec*
                                       ((x9161
                                         (letrec*
                                          ((x9164 (input))
                                           (x9162
                                            (letrec*
                                             ((x9163 (input)))
                                             (begin
                                               (write '(funapp 4018 42))
                                               (display "\n")
                                               (cons
                                                x9163
                                                (begin
                                                  (write '(funapp 4018 53))
                                                  (display "\n")
                                                  '()))))))
                                          (begin
                                            (write '(funapp 4019 39))
                                            (display "\n")
                                            (cons x9164 x9162)))))
                                       (begin
                                         (write '(funapp 4020 36))
                                         (display "\n")
                                         (cons
                                          (begin
                                            (write '(funapp 4020 41))
                                            (display "\n")
                                            'posn)
                                          x9161))))
                                     (x9158
                                      (letrec*
                                       ((x9159 (input)))
                                       (begin
                                         (write '(funapp 4024 36))
                                         (display "\n")
                                         (cons
                                          x9159
                                          (begin
                                            (write '(funapp 4024 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 4025 33))
                                      (display "\n")
                                      (cons x9160 x9158)))))
                                 (begin
                                   (write '(funapp 4026 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 4026 35))
                                      (display "\n")
                                      'tetra)
                                    x9157))))
                               (x9154
                                (letrec*
                                 ((x9155 (input)))
                                 (begin
                                   (write '(funapp 4028 56))
                                   (display "\n")
                                   (cons
                                    x9155
                                    (begin
                                      (write '(funapp 4028 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 4029 27))
                                (display "\n")
                                (cons x9156 x9154)))))
                           (begin
                             (write '(funapp 4030 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 4030 29))
                                (display "\n")
                                'world)
                              x9153))))
                         (x9151 (input)))
                        (begin
                          (write '(funapp 4032 21))
                          (display "\n")
                          (x9165 x9152 x9151)))
                       (letrec*
                        ((x9187
                          (letrec*
                           ((xj7666
                             (begin
                               (write '(funapp 4036 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4036 37))
                                  (display "\n")
                                  'module))))
                            (xk7667
                             (begin
                               (write '(funapp 4036 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4036 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9188
                              (begin
                                (write '(funapp 4039 27))
                                (display "\n")
                                ((lambda (j7669 k7670 f7671)
                                   (letrec*
                                    ((g9189
                                      (lambda (g7668)
                                        (letrec*
                                         ((g9190
                                           (letrec*
                                            ((x9191
                                              (letrec*
                                               ((x9192
                                                 (begin
                                                   (write '(funapp 4048 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7669
                                                    k7670
                                                    g7668))))
                                               (begin
                                                 (write '(funapp 4049 42))
                                                 (display "\n")
                                                 (f7671 x9192)))))
                                            (begin
                                              (write '(funapp 4050 39))
                                              (display "\n")
                                              (BSET/C j7669 k7670 x9191)))))
                                         g9190))))
                                    g9189))
                                 xj7666
                                 xk7667
                                 ghost-blocks))))
                            g9188)))
                         (x9174
                          (letrec*
                           ((x9175
                             (letrec*
                              ((x9178
                                (letrec*
                                 ((x9179
                                   (letrec*
                                    ((x9182
                                      (letrec*
                                       ((x9183
                                         (letrec*
                                          ((x9186 (input))
                                           (x9184
                                            (letrec*
                                             ((x9185 (input)))
                                             (begin
                                               (write '(funapp 4073 42))
                                               (display "\n")
                                               (cons
                                                x9185
                                                (begin
                                                  (write '(funapp 4073 53))
                                                  (display "\n")
                                                  '()))))))
                                          (begin
                                            (write '(funapp 4074 39))
                                            (display "\n")
                                            (cons x9186 x9184)))))
                                       (begin
                                         (write '(funapp 4075 36))
                                         (display "\n")
                                         (cons
                                          (begin
                                            (write '(funapp 4075 41))
                                            (display "\n")
                                            'posn)
                                          x9183))))
                                     (x9180
                                      (letrec*
                                       ((x9181 (input)))
                                       (begin
                                         (write '(funapp 4079 36))
                                         (display "\n")
                                         (cons
                                          x9181
                                          (begin
                                            (write '(funapp 4079 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 4080 33))
                                      (display "\n")
                                      (cons x9182 x9180)))))
                                 (begin
                                   (write '(funapp 4081 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 4081 35))
                                      (display "\n")
                                      'tetra)
                                    x9179))))
                               (x9176
                                (letrec*
                                 ((x9177 (input)))
                                 (begin
                                   (write '(funapp 4083 56))
                                   (display "\n")
                                   (cons
                                    x9177
                                    (begin
                                      (write '(funapp 4083 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 4084 27))
                                (display "\n")
                                (cons x9178 x9176)))))
                           (begin
                             (write '(funapp 4085 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 4085 29))
                                (display "\n")
                                'world)
                              x9175)))))
                        (begin
                          (write '(funapp 4086 21))
                          (display "\n")
                          (x9187 x9174)))
                       (letrec*
                        ((x9194
                          (letrec*
                           ((xj7672
                             (begin
                               (write '(funapp 4090 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4090 37))
                                  (display "\n")
                                  'module))))
                            (xk7673
                             (begin
                               (write '(funapp 4090 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4090 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9195
                              (begin
                                (write '(funapp 4093 27))
                                (display "\n")
                                ((lambda (j7675 k7676 f7677)
                                   (letrec*
                                    ((g9196
                                      (lambda (g7674)
                                        (letrec*
                                         ((g9197
                                           (letrec*
                                            ((x9198
                                              (letrec*
                                               ((x9199
                                                 (begin
                                                   (write '(funapp 4102 50))
                                                   (display "\n")
                                                   (any/c j7675 k7676 g7674))))
                                               (begin
                                                 (write '(funapp 4103 42))
                                                 (display "\n")
                                                 (f7677 x9199)))))
                                            (begin
                                              (write '(funapp 4104 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7675
                                               k7676
                                               x9198)))))
                                         g9197))))
                                    g9196))
                                 xj7672
                                 xk7673
                                 image?))))
                            g9195)))
                         (x9193 (input)))
                        (begin
                          (write '(funapp 4112 21))
                          (display "\n")
                          (x9194 x9193)))
                       (letrec*
                        ((x9202
                          (letrec*
                           ((xj7678
                             (begin
                               (write '(funapp 4116 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4116 37))
                                  (display "\n")
                                  'module))))
                            (xk7679
                             (begin
                               (write '(funapp 4116 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4116 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9203
                              (begin
                                (write '(funapp 4119 27))
                                (display "\n")
                                ((lambda (j7682 k7683 f7684)
                                   (letrec*
                                    ((g9204
                                      (lambda (g7680 g7681)
                                        (letrec*
                                         ((g9205
                                           (letrec*
                                            ((x9206
                                              (letrec*
                                               ((x9208
                                                 (begin
                                                   (write '(funapp 4128 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7682
                                                    k7683
                                                    g7680)))
                                                (x9207
                                                 (begin
                                                   (write '(funapp 4129 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7682
                                                    k7683
                                                    g7681))))
                                               (begin
                                                 (write '(funapp 4130 42))
                                                 (display "\n")
                                                 (f7684 x9208 x9207)))))
                                            (begin
                                              (write '(funapp 4131 39))
                                              (display "\n")
                                              (image/c j7682 k7683 x9206)))))
                                         g9205))))
                                    g9204))
                                 xj7678
                                 xk7679
                                 overlay))))
                            g9203)))
                         (x9201
                          (begin
                            (write '(funapp 4138 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 4138 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 4138 41))
                               (display "\n")
                               '()))))
                         (x9200
                          (begin
                            (write '(funapp 4139 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 4139 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 4139 41))
                               (display "\n")
                               '())))))
                        (begin
                          (write '(funapp 4140 21))
                          (display "\n")
                          (x9202 x9201 x9200)))
                       (letrec*
                        ((x9212
                          (letrec*
                           ((xj7685
                             (begin
                               (write '(funapp 4144 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4144 37))
                                  (display "\n")
                                  'module))))
                            (xk7686
                             (begin
                               (write '(funapp 4144 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4144 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9213
                              (begin
                                (write '(funapp 4147 27))
                                (display "\n")
                                ((lambda (j7690 k7691 f7692)
                                   (letrec*
                                    ((g9214
                                      (lambda (g7687 g7688 g7689)
                                        (letrec*
                                         ((g9215
                                           (letrec*
                                            ((x9216
                                              (letrec*
                                               ((x9219
                                                 (begin
                                                   (write '(funapp 4156 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7690
                                                    k7691
                                                    g7687)))
                                                (x9218
                                                 (begin
                                                   (write '(funapp 4157 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7690
                                                    k7691
                                                    g7688)))
                                                (x9217
                                                 (begin
                                                   (write '(funapp 4159 44))
                                                   (display "\n")
                                                   (string?/c
                                                    j7690
                                                    k7691
                                                    g7689))))
                                               (begin
                                                 (write '(funapp 4160 42))
                                                 (display "\n")
                                                 (f7692 x9219 x9218 x9217)))))
                                            (begin
                                              (write '(funapp 4161 39))
                                              (display "\n")
                                              (image/c j7690 k7691 x9216)))))
                                         g9215))))
                                    g9214))
                                 xj7685
                                 xk7686
                                 circle))))
                            g9213)))
                         (x9211 (input))
                         (x9210 (input))
                         (x9209 (input)))
                        (begin
                          (write '(funapp 4171 21))
                          (display "\n")
                          (x9212 x9211 x9210 x9209)))
                       (letrec*
                        ((x9224
                          (letrec*
                           ((xj7693
                             (begin
                               (write '(funapp 4175 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4175 37))
                                  (display "\n")
                                  'module))))
                            (xk7694
                             (begin
                               (write '(funapp 4175 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4175 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9225
                              (begin
                                (write '(funapp 4178 27))
                                (display "\n")
                                ((lambda (j7699 k7700 f7701)
                                   (letrec*
                                    ((g9226
                                      (lambda (g7695 g7696 g7697 g7698)
                                        (letrec*
                                         ((g9227
                                           (letrec*
                                            ((x9228
                                              (letrec*
                                               ((x9232
                                                 (begin
                                                   (write '(funapp 4187 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7699
                                                    k7700
                                                    g7695)))
                                                (x9231
                                                 (begin
                                                   (write '(funapp 4188 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7699
                                                    k7700
                                                    g7696)))
                                                (x9230
                                                 (begin
                                                   (write '(funapp 4189 50))
                                                   (display "\n")
                                                   (COLOR/C
                                                    j7699
                                                    k7700
                                                    g7697)))
                                                (x9229
                                                 (begin
                                                   (write '(funapp 4190 50))
                                                   (display "\n")
                                                   (COLOR/C
                                                    j7699
                                                    k7700
                                                    g7698))))
                                               (begin
                                                 (write '(funapp 4191 42))
                                                 (display "\n")
                                                 (f7701
                                                  x9232
                                                  x9231
                                                  x9230
                                                  x9229)))))
                                            (begin
                                              (write '(funapp 4192 39))
                                              (display "\n")
                                              (image/c j7699 k7700 x9228)))))
                                         g9227))))
                                    g9226))
                                 xj7693
                                 xk7694
                                 rectangle))))
                            g9225)))
                         (x9223 (input))
                         (x9222 (input))
                         (x9221 (input))
                         (x9220 (input)))
                        (begin
                          (write '(funapp 4203 21))
                          (display "\n")
                          (x9224 x9223 x9222 x9221 x9220)))
                       (letrec*
                        ((x9237
                          (letrec*
                           ((xj7702
                             (begin
                               (write '(funapp 4207 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4207 37))
                                  (display "\n")
                                  'module))))
                            (xk7703
                             (begin
                               (write '(funapp 4207 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4207 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9238
                              (begin
                                (write '(funapp 4210 27))
                                (display "\n")
                                ((lambda (j7708 k7709 f7710)
                                   (letrec*
                                    ((g9239
                                      (lambda (g7704 g7705 g7706 g7707)
                                        (letrec*
                                         ((g9240
                                           (letrec*
                                            ((x9241
                                              (letrec*
                                               ((x9245
                                                 (begin
                                                   (write '(funapp 4219 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7708
                                                    k7709
                                                    g7704)))
                                                (x9244
                                                 (begin
                                                   (write '(funapp 4220 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7708
                                                    k7709
                                                    g7705)))
                                                (x9243
                                                 (begin
                                                   (write '(funapp 4221 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7708
                                                    k7709
                                                    g7706)))
                                                (x9242
                                                 (begin
                                                   (write '(funapp 4222 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7708
                                                    k7709
                                                    g7707))))
                                               (begin
                                                 (write '(funapp 4223 42))
                                                 (display "\n")
                                                 (f7710
                                                  x9245
                                                  x9244
                                                  x9243
                                                  x9242)))))
                                            (begin
                                              (write '(funapp 4224 39))
                                              (display "\n")
                                              (image/c j7708 k7709 x9241)))))
                                         g9240))))
                                    g9239))
                                 xj7702
                                 xk7703
                                 place-image))))
                            g9238)))
                         (x9236
                          (begin
                            (write '(funapp 4231 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 4231 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 4231 41))
                               (display "\n")
                               '()))))
                         (x9235 (input))
                         (x9234 (input))
                         (x9233
                          (begin
                            (write '(funapp 4234 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 4234 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 4234 41))
                               (display "\n")
                               '())))))
                        (begin
                          (write '(funapp 4235 21))
                          (display "\n")
                          (x9237 x9236 x9235 x9234 x9233)))
                       (letrec*
                        ((x9248
                          (letrec*
                           ((xj7711
                             (begin
                               (write '(funapp 4239 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4239 37))
                                  (display "\n")
                                  'module))))
                            (xk7712
                             (begin
                               (write '(funapp 4239 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4239 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9249
                              (begin
                                (write '(funapp 4242 27))
                                (display "\n")
                                ((lambda (j7715 k7716 f7717)
                                   (letrec*
                                    ((g9250
                                      (lambda (g7713 g7714)
                                        (letrec*
                                         ((g9251
                                           (letrec*
                                            ((x9252
                                              (letrec*
                                               ((x9254
                                                 (begin
                                                   (write '(funapp 4251 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7715
                                                    k7716
                                                    g7713)))
                                                (x9253
                                                 (begin
                                                   (write '(funapp 4252 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7715
                                                    k7716
                                                    g7714))))
                                               (begin
                                                 (write '(funapp 4253 42))
                                                 (display "\n")
                                                 (f7717 x9254 x9253)))))
                                            (begin
                                              (write '(funapp 4254 39))
                                              (display "\n")
                                              (image/c j7715 k7716 x9252)))))
                                         g9251))))
                                    g9250))
                                 xj7711
                                 xk7712
                                 empty-scene))))
                            g9249)))
                         (x9247 (input))
                         (x9246 (input)))
                        (begin
                          (write '(funapp 4263 21))
                          (display "\n")
                          (x9248 x9247 x9246)))
                       (letrec*
                        ((x9256
                          (letrec*
                           ((xj7718
                             (begin
                               (write '(funapp 4267 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4267 37))
                                  (display "\n")
                                  'module))))
                            (xk7719
                             (begin
                               (write '(funapp 4267 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4267 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9257
                              (begin
                                (write '(funapp 4270 27))
                                (display "\n")
                                ((lambda (j7721 k7722 f7723)
                                   (letrec*
                                    ((g9258
                                      (lambda (g7720)
                                        (letrec*
                                         ((g9259
                                           (letrec*
                                            ((x9260
                                              (letrec*
                                               ((x9261
                                                 (letrec*
                                                  ((x9262
                                                    (letrec*
                                                     ((x9263
                                                       (begin
                                                         (write
                                                          '(funapp 4283 56))
                                                         (display "\n")
                                                         (listof TETRA/C))))
                                                     (begin
                                                       (write
                                                        '(funapp 4284 48))
                                                       (display "\n")
                                                       (and/c
                                                        cons?/c
                                                        x9263)))))
                                                  (begin
                                                    (write '(funapp 4285 45))
                                                    (display "\n")
                                                    (x9262
                                                     j7721
                                                     k7722
                                                     g7720)))))
                                               (begin
                                                 (write '(funapp 4286 42))
                                                 (display "\n")
                                                 (f7723 x9261)))))
                                            (begin
                                              (write '(funapp 4287 39))
                                              (display "\n")
                                              (TETRA/C j7721 k7722 x9260)))))
                                         g9259))))
                                    g9258))
                                 xj7718
                                 xk7719
                                 list-pick-random))))
                            g9257)))
                         (x9255 (input)))
                        (begin
                          (write '(funapp 4295 21))
                          (display "\n")
                          (x9256 x9255)))
                       (letrec*
                        ((xj7724
                          (begin
                            (write '(funapp 4297 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 4297 34))
                               (display "\n")
                               'module))))
                         (xk7725
                          (begin
                            (write '(funapp 4297 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 4297 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g9264
                           (begin
                             (write '(funapp 4298 38))
                             (display "\n")
                             (integer?/c xj7724 xk7725 neg-1))))
                         g9264))
                       (letrec*
                        ((x9278
                          (letrec*
                           ((xj7726
                             (begin
                               (write '(funapp 4302 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4302 37))
                                  (display "\n")
                                  'module))))
                            (xk7727
                             (begin
                               (write '(funapp 4302 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4302 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9279
                              (begin
                                (write '(funapp 4305 27))
                                (display "\n")
                                ((lambda (j7729 k7730 f7731)
                                   (letrec*
                                    ((g9280
                                      (lambda (g7728)
                                        (letrec*
                                         ((g9281
                                           (letrec*
                                            ((x9282
                                              (letrec*
                                               ((x9283
                                                 (begin
                                                   (write '(funapp 4314 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7729
                                                    k7730
                                                    g7728))))
                                               (begin
                                                 (write '(funapp 4315 42))
                                                 (display "\n")
                                                 (f7731 x9283)))))
                                            (begin
                                              (write '(funapp 4316 39))
                                              (display "\n")
                                              (image/c j7729 k7730 x9282)))))
                                         g9281))))
                                    g9280))
                                 xj7726
                                 xk7727
                                 world->image))))
                            g9279)))
                         (x9265
                          (letrec*
                           ((x9266
                             (letrec*
                              ((x9269
                                (letrec*
                                 ((x9270
                                   (letrec*
                                    ((x9273
                                      (letrec*
                                       ((x9274
                                         (letrec*
                                          ((x9277 (input))
                                           (x9275
                                            (letrec*
                                             ((x9276 (input)))
                                             (begin
                                               (write '(funapp 4339 42))
                                               (display "\n")
                                               (cons
                                                x9276
                                                (begin
                                                  (write '(funapp 4339 53))
                                                  (display "\n")
                                                  '()))))))
                                          (begin
                                            (write '(funapp 4340 39))
                                            (display "\n")
                                            (cons x9277 x9275)))))
                                       (begin
                                         (write '(funapp 4341 36))
                                         (display "\n")
                                         (cons
                                          (begin
                                            (write '(funapp 4341 41))
                                            (display "\n")
                                            'posn)
                                          x9274))))
                                     (x9271
                                      (letrec*
                                       ((x9272 (input)))
                                       (begin
                                         (write '(funapp 4345 36))
                                         (display "\n")
                                         (cons
                                          x9272
                                          (begin
                                            (write '(funapp 4345 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 4346 33))
                                      (display "\n")
                                      (cons x9273 x9271)))))
                                 (begin
                                   (write '(funapp 4347 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 4347 35))
                                      (display "\n")
                                      'tetra)
                                    x9270))))
                               (x9267
                                (letrec*
                                 ((x9268 (input)))
                                 (begin
                                   (write '(funapp 4349 56))
                                   (display "\n")
                                   (cons
                                    x9268
                                    (begin
                                      (write '(funapp 4349 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 4350 27))
                                (display "\n")
                                (cons x9269 x9267)))))
                           (begin
                             (write '(funapp 4351 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 4351 29))
                                (display "\n")
                                'world)
                              x9266)))))
                        (begin
                          (write '(funapp 4352 21))
                          (display "\n")
                          (x9278 x9265)))
                       (letrec*
                        ((x9285
                          (letrec*
                           ((xj7732
                             (begin
                               (write '(funapp 4356 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4356 37))
                                  (display "\n")
                                  'module))))
                            (xk7733
                             (begin
                               (write '(funapp 4356 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4356 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9286
                              (begin
                                (write '(funapp 4359 27))
                                (display "\n")
                                ((lambda (j7735 k7736 f7737)
                                   (letrec*
                                    ((g9287
                                      (lambda (g7734)
                                        (letrec*
                                         ((g9288
                                           (letrec*
                                            ((x9289
                                              (letrec*
                                               ((x9290
                                                 (begin
                                                   (write '(funapp 4368 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7735
                                                    k7736
                                                    g7734))))
                                               (begin
                                                 (write '(funapp 4369 42))
                                                 (display "\n")
                                                 (f7737 x9290)))))
                                            (begin
                                              (write '(funapp 4370 39))
                                              (display "\n")
                                              (image/c j7735 k7736 x9289)))))
                                         g9288))))
                                    g9287))
                                 xj7732
                                 xk7733
                                 blocks->image))))
                            g9286)))
                         (x9284 (input)))
                        (begin
                          (write '(funapp 4378 21))
                          (display "\n")
                          (x9285 x9284)))
                       (letrec*
                        ((x9298
                          (letrec*
                           ((xj7738
                             (begin
                               (write '(funapp 4382 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4382 37))
                                  (display "\n")
                                  'module))))
                            (xk7739
                             (begin
                               (write '(funapp 4382 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4382 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9299
                              (begin
                                (write '(funapp 4385 27))
                                (display "\n")
                                ((lambda (j7741 k7742 f7743)
                                   (letrec*
                                    ((g9300
                                      (lambda (g7740)
                                        (letrec*
                                         ((g9301
                                           (letrec*
                                            ((x9302
                                              (letrec*
                                               ((x9303
                                                 (begin
                                                   (write '(funapp 4394 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7741
                                                    k7742
                                                    g7740))))
                                               (begin
                                                 (write '(funapp 4395 42))
                                                 (display "\n")
                                                 (f7743 x9303)))))
                                            (begin
                                              (write '(funapp 4396 39))
                                              (display "\n")
                                              (image/c j7741 k7742 x9302)))))
                                         g9301))))
                                    g9300))
                                 xj7738
                                 xk7739
                                 block->image))))
                            g9299)))
                         (x9291
                          (letrec*
                           ((x9292
                             (letrec*
                              ((x9297 (input))
                               (x9293
                                (letrec*
                                 ((x9296 (input))
                                  (x9294
                                   (letrec*
                                    ((x9295 (input)))
                                    (begin
                                      (write '(funapp 4412 59))
                                      (display "\n")
                                      (cons
                                       x9295
                                       (begin
                                         (write '(funapp 4412 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 4413 30))
                                   (display "\n")
                                   (cons x9296 x9294)))))
                              (begin
                                (write '(funapp 4414 27))
                                (display "\n")
                                (cons x9297 x9293)))))
                           (begin
                             (write '(funapp 4415 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 4415 29))
                                (display "\n")
                                'block)
                              x9292)))))
                        (begin
                          (write '(funapp 4416 21))
                          (display "\n")
                          (x9298 x9291)))
                       (letrec*
                        ((x9312
                          (letrec*
                           ((xj7744
                             (begin
                               (write '(funapp 4420 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4420 37))
                                  (display "\n")
                                  'module))))
                            (xk7745
                             (begin
                               (write '(funapp 4420 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4420 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9313
                              (begin
                                (write '(funapp 4423 27))
                                (display "\n")
                                ((lambda (j7748 k7749 f7750)
                                   (letrec*
                                    ((g9314
                                      (lambda (g7746 g7747)
                                        (letrec*
                                         ((g9315
                                           (letrec*
                                            ((x9316
                                              (letrec*
                                               ((x9318
                                                 (begin
                                                   (write '(funapp 4432 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7748
                                                    k7749
                                                    g7746)))
                                                (x9317
                                                 (begin
                                                   (write '(funapp 4433 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7748
                                                    k7749
                                                    g7747))))
                                               (begin
                                                 (write '(funapp 4434 42))
                                                 (display "\n")
                                                 (f7750 x9318 x9317)))))
                                            (begin
                                              (write '(funapp 4435 39))
                                              (display "\n")
                                              (image/c j7748 k7749 x9316)))))
                                         g9315))))
                                    g9314))
                                 xj7744
                                 xk7745
                                 place-block))))
                            g9313)))
                         (x9305
                          (letrec*
                           ((x9306
                             (letrec*
                              ((x9311 (input))
                               (x9307
                                (letrec*
                                 ((x9310 (input))
                                  (x9308
                                   (letrec*
                                    ((x9309 (input)))
                                    (begin
                                      (write '(funapp 4451 59))
                                      (display "\n")
                                      (cons
                                       x9309
                                       (begin
                                         (write '(funapp 4451 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 4452 30))
                                   (display "\n")
                                   (cons x9310 x9308)))))
                              (begin
                                (write '(funapp 4453 27))
                                (display "\n")
                                (cons x9311 x9307)))))
                           (begin
                             (write '(funapp 4454 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 4454 29))
                                (display "\n")
                                'block)
                              x9306))))
                         (x9304
                          (begin
                            (write '(funapp 4455 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 4455 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 4455 41))
                               (display "\n")
                               '())))))
                        (begin
                          (write '(funapp 4456 21))
                          (display "\n")
                          (x9312 x9305 x9304)))
                       (letrec*
                        ((x9320
                          (letrec*
                           ((xj7751
                             (begin
                               (write '(funapp 4460 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4460 37))
                                  (display "\n")
                                  'module))))
                            (xk7752
                             (begin
                               (write '(funapp 4460 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4460 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9321
                              (begin
                                (write '(funapp 4463 27))
                                (display "\n")
                                ((lambda (j7754 k7755 f7756)
                                   (letrec*
                                    ((g9322
                                      (lambda (g7753)
                                        (letrec*
                                         ((g9323
                                           (letrec*
                                            ((x9324
                                              (letrec*
                                               ((x9325
                                                 (letrec*
                                                  ((x9326
                                                    (letrec*
                                                     ((x9327
                                                       (begin
                                                         (write
                                                          '(funapp 4476 56))
                                                         (display "\n")
                                                         (listof TETRA/C))))
                                                     (begin
                                                       (write
                                                        '(funapp 4477 48))
                                                       (display "\n")
                                                       (and/c
                                                        cons?/c
                                                        x9327)))))
                                                  (begin
                                                    (write '(funapp 4478 45))
                                                    (display "\n")
                                                    (x9326
                                                     j7754
                                                     k7755
                                                     g7753)))))
                                               (begin
                                                 (write '(funapp 4479 42))
                                                 (display "\n")
                                                 (f7756 x9325)))))
                                            (begin
                                              (write '(funapp 4480 39))
                                              (display "\n")
                                              (WORLD/C j7754 k7755 x9324)))))
                                         g9323))))
                                    g9322))
                                 xj7751
                                 xk7752
                                 world0))))
                            g9321)))
                         (x9319 (input)))
                        (begin
                          (write '(funapp 4488 21))
                          (display "\n")
                          (x9320 x9319)))))))))
               g8760))))
           g7808))))
       g7791)))
    g7790)))
