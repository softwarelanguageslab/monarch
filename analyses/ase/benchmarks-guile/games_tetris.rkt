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
               (/
                (letrec*
                 ((xj7366
                   (begin (write '(funapp 548 26)) (display "\n") 'server))
                  (xk7367
                   (begin (write '(funapp 548 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7934
                    (begin
                      (write '(funapp 551 21))
                      (display "\n")
                      ((lambda (j7370 k7371 f7372)
                         (letrec*
                          ((g7936
                            (lambda (g7368 g7369)
                              (letrec*
                               ((g7937
                                 (letrec*
                                  ((x7938
                                    (letrec*
                                     ((x7940
                                       (begin
                                         (write '(funapp 560 44))
                                         (display "\n")
                                         (number?/c j7370 k7371 g7368)))
                                      (x7939
                                       (begin
                                         (write '(funapp 561 44))
                                         (display "\n")
                                         (number?/c j7370 k7371 g7369))))
                                     (begin
                                       (write '(funapp 562 36))
                                       (display "\n")
                                       (f7372 x7940 x7939)))))
                                  (begin
                                    (write '(funapp 563 33))
                                    (display "\n")
                                    (number?/c j7370 k7371 x7938)))))
                               g7937))))
                          g7936))
                       xj7366
                       xk7367
                       (lambda (a b)
                         (letrec*
                          ((g7935
                            (begin
                              (write '(funapp 568 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7935))))))
                  g7934)))
               (car
                (letrec*
                 ((xj7373
                   (begin (write '(funapp 572 26)) (display "\n") 'server))
                  (xk7374
                   (begin (write '(funapp 572 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7941
                    (begin
                      (write '(funapp 575 21))
                      (display "\n")
                      ((lambda (j7376 k7377 f7378)
                         (letrec*
                          ((g7943
                            (lambda (g7375)
                              (letrec*
                               ((g7944
                                 (letrec*
                                  ((x7945
                                    (letrec*
                                     ((x7946
                                       (begin
                                         (write '(funapp 584 44))
                                         (display "\n")
                                         (pair?/c j7376 k7377 g7375))))
                                     (begin
                                       (write '(funapp 585 36))
                                       (display "\n")
                                       (f7378 x7946)))))
                                  (begin
                                    (write '(funapp 586 33))
                                    (display "\n")
                                    (any/c j7376 k7377 x7945)))))
                               g7944))))
                          g7943))
                       xj7373
                       xk7374
                       (lambda (p)
                         (letrec*
                          ((g7942
                            (begin
                              (write '(funapp 591 51))
                              (display "\n")
                              (orig-car p))))
                          g7942))))))
                  g7941)))
               (cdr
                (letrec*
                 ((xj7379
                   (begin (write '(funapp 595 26)) (display "\n") 'server))
                  (xk7380
                   (begin (write '(funapp 595 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7947
                    (begin
                      (write '(funapp 598 21))
                      (display "\n")
                      ((lambda (j7382 k7383 f7384)
                         (letrec*
                          ((g7949
                            (lambda (g7381)
                              (letrec*
                               ((g7950
                                 (letrec*
                                  ((x7951
                                    (letrec*
                                     ((x7952
                                       (begin
                                         (write '(funapp 607 44))
                                         (display "\n")
                                         (pair?/c j7382 k7383 g7381))))
                                     (begin
                                       (write '(funapp 608 36))
                                       (display "\n")
                                       (f7384 x7952)))))
                                  (begin
                                    (write '(funapp 609 33))
                                    (display "\n")
                                    (any/c j7382 k7383 x7951)))))
                               g7950))))
                          g7949))
                       xj7379
                       xk7380
                       (lambda (p)
                         (letrec*
                          ((g7948
                            (begin
                              (write '(funapp 614 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7948))))))
                  g7947)))
               (cons
                (letrec*
                 ((xj7385
                   (begin (write '(funapp 618 26)) (display "\n") 'server))
                  (xk7386
                   (begin (write '(funapp 618 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7953
                    (begin
                      (write '(funapp 621 21))
                      (display "\n")
                      ((lambda (j7389 k7390 f7391)
                         (letrec*
                          ((g7955
                            (lambda (g7387 g7388)
                              (letrec*
                               ((g7956
                                 (letrec*
                                  ((x7957
                                    (letrec*
                                     ((x7959
                                       (begin
                                         (write '(funapp 630 44))
                                         (display "\n")
                                         (any/c j7389 k7390 g7387)))
                                      (x7958
                                       (begin
                                         (write '(funapp 631 44))
                                         (display "\n")
                                         (any/c j7389 k7390 g7388))))
                                     (begin
                                       (write '(funapp 632 36))
                                       (display "\n")
                                       (f7391 x7959 x7958)))))
                                  (begin
                                    (write '(funapp 633 33))
                                    (display "\n")
                                    (pair?/c j7389 k7390 x7957)))))
                               g7956))))
                          g7955))
                       xj7385
                       xk7386
                       (lambda (a b)
                         (letrec*
                          ((g7954
                            (begin
                              (write '(funapp 639 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7954))))))
                  g7953)))
               (vector-ref
                (letrec*
                 ((xj7392
                   (begin (write '(funapp 643 26)) (display "\n") 'server))
                  (xk7393
                   (begin (write '(funapp 643 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7960
                    (begin
                      (write '(funapp 646 21))
                      (display "\n")
                      ((lambda (j7395 k7396 f7397)
                         (letrec*
                          ((g7962
                            (lambda (g7394)
                              (letrec*
                               ((g7963
                                 (letrec*
                                  ((x7964
                                    (letrec*
                                     ((x7965
                                       (begin
                                         (write '(funapp 655 44))
                                         (display "\n")
                                         (vector?/c j7395 k7396 g7394))))
                                     (begin
                                       (write '(funapp 656 36))
                                       (display "\n")
                                       (f7397 x7965)))))
                                  (begin
                                    (write '(funapp 657 33))
                                    (display "\n")
                                    (integer?/c j7395 k7396 x7964)))))
                               g7963))))
                          g7962))
                       xj7392
                       xk7393
                       (lambda (v i)
                         (letrec*
                          ((g7961
                            (begin
                              (write '(funapp 663 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7961))))))
                  g7960)))
               (vector-set!
                (letrec*
                 ((xj7398
                   (begin (write '(funapp 667 26)) (display "\n") 'server))
                  (xk7399
                   (begin (write '(funapp 667 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7966
                    (begin
                      (write '(funapp 670 21))
                      (display "\n")
                      ((lambda (j7402 k7403 f7404)
                         (letrec*
                          ((g7968
                            (lambda (g7400 g7401)
                              (letrec*
                               ((g7969
                                 (letrec*
                                  ((x7970
                                    (letrec*
                                     ((x7972
                                       (begin
                                         (write '(funapp 679 44))
                                         (display "\n")
                                         (vector?/c j7402 k7403 g7400)))
                                      (x7971
                                       (begin
                                         (write '(funapp 680 44))
                                         (display "\n")
                                         (integer?/c j7402 k7403 g7401))))
                                     (begin
                                       (write '(funapp 681 36))
                                       (display "\n")
                                       (f7404 x7972 x7971)))))
                                  (begin
                                    (write '(funapp 682 33))
                                    (display "\n")
                                    (any/c j7402 k7403 x7970)))))
                               g7969))))
                          g7968))
                       xj7398
                       xk7399
                       (lambda (vec i v)
                         (letrec*
                          ((g7967
                            (begin
                              (write '(funapp 688 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7967))))))
                  g7966)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7973
                     (letrec*
                      ((x7974
                        (letrec*
                         ((x7975
                           (begin
                             (write '(funapp 695 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 695 58))
                           (display "\n")
                           (cdr x7975)))))
                      (begin
                        (write '(funapp 696 23))
                        (display "\n")
                        (cdr x7974)))))
                   g7973)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7976
                     (letrec*
                      ((x7979
                        (begin
                          (write '(funapp 702 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 702 62))
                        (display "\n")
                        (assert x7979))))
                    (g7977
                     (letrec*
                      ((x7980
                        (begin
                          (write '(funapp 703 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 703 57))
                        (display "\n")
                        (assert x7980))))
                    (g7978
                     (letrec*
                      ((x-cnd7981
                        (begin
                          (write '(funapp 706 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7981
                        (begin (write '(funapp 708 24)) (display "\n") '())
                        (letrec*
                         ((x7984
                           (letrec*
                            ((x7985
                              (begin
                                (write '(funapp 710 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 710 61))
                              (display "\n")
                              (f x7985))))
                          (x7982
                           (letrec*
                            ((x7983
                              (begin
                                (write '(funapp 711 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 711 61))
                              (display "\n")
                              (map f x7983)))))
                         (begin
                           (write '(funapp 712 26))
                           (display "\n")
                           (cons x7984 x7982)))))))
                   g7978)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7986
                     (letrec*
                      ((x7987
                        (begin
                          (write '(funapp 717 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 717 55))
                        (display "\n")
                        (cdr x7987)))))
                   g7986)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7988
                     (letrec*
                      ((x7989
                        (letrec*
                         ((x7990
                           (letrec*
                            ((x7991
                              (begin
                                (write '(funapp 726 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 726 61))
                              (display "\n")
                              (car x7991)))))
                         (begin
                           (write '(funapp 727 26))
                           (display "\n")
                           (cdr x7990)))))
                      (begin
                        (write '(funapp 728 23))
                        (display "\n")
                        (car x7989)))))
                   g7988)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7992
                     (letrec*
                      ((x7993
                        (letrec*
                         ((x7994
                           (letrec*
                            ((x7995
                              (begin
                                (write '(funapp 737 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 737 61))
                              (display "\n")
                              (cdr x7995)))))
                         (begin
                           (write '(funapp 738 26))
                           (display "\n")
                           (car x7994)))))
                      (begin
                        (write '(funapp 739 23))
                        (display "\n")
                        (cdr x7993)))))
                   g7992)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7996
                     (letrec*
                      ((x7999
                        (begin
                          (write '(funapp 745 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 745 60))
                        (display "\n")
                        (assert x7999))))
                    (g7997
                     (letrec*
                      ((x8000
                        (begin
                          (write '(funapp 747 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 747 59))
                        (display "\n")
                        (assert x8000))))
                    (g7998
                     (letrec*
                      ((output-port
                        (begin
                          (write '(funapp 750 37))
                          (display "\n")
                          (open-output-file filename)))
                       (res
                        (begin
                          (write '(funapp 751 29))
                          (display "\n")
                          (proc output-port))))
                      (letrec*
                       ((g8001
                         (begin
                           (write '(funapp 753 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g8002 res))
                       g8002))))
                   g7998)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g8003
                     (letrec*
                      ((x8004
                        (letrec*
                         ((x8005
                           (begin
                             (write '(funapp 761 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 761 58))
                           (display "\n")
                           (cdr x8005)))))
                      (begin
                        (write '(funapp 762 23))
                        (display "\n")
                        (car x8004)))))
                   g8003)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g8006
                     (letrec*
                      ((x8007
                        (letrec*
                         ((x8008
                           (letrec*
                            ((x8009
                              (begin
                                (write '(funapp 771 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 771 61))
                              (display "\n")
                              (car x8009)))))
                         (begin
                           (write '(funapp 772 26))
                           (display "\n")
                           (car x8008)))))
                      (begin
                        (write '(funapp 773 23))
                        (display "\n")
                        (cdr x8007)))))
                   g8006)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g8010
                     (letrec*
                      ((x8012
                        (begin
                          (write '(funapp 778 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 778 57))
                        (display "\n")
                        (assert x8012))))
                    (g8011
                     (letrec*
                      ((x-cnd8013
                        (begin
                          (write '(funapp 781 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8013
                        #f
                        (letrec*
                         ((x-cnd8014
                           (letrec*
                            ((x8015
                              (begin
                                (write '(funapp 786 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 786 56))
                              (display "\n")
                              (eq? x8015 k)))))
                         (if x-cnd8014
                           (begin
                             (write '(funapp 788 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8016
                              (begin
                                (write '(funapp 789 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 789 55))
                              (display "\n")
                              (assq k x8016)))))))))
                   g8011)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g8017
                     (letrec*
                      ((x8018
                        (begin
                          (write '(funapp 794 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 794 60))
                        (display "\n")
                        (= 0 x8018)))))
                   g8017)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g8019
                     (letrec*
                      ((x8021
                        (begin
                          (write '(funapp 799 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 799 57))
                        (display "\n")
                        (assert x8021))))
                    (g8020
                     (letrec*
                      ((x-cnd8022
                        (begin
                          (write '(funapp 802 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8022
                        ""
                        (letrec*
                         ((x8025
                           (letrec*
                            ((x8026
                              (begin
                                (write '(funapp 807 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 807 55))
                              (display "\n")
                              (char->string x8026))))
                          (x8023
                           (letrec*
                            ((x8024
                              (begin
                                (write '(funapp 809 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 809 55))
                              (display "\n")
                              (list->string x8024)))))
                         (begin
                           (write '(funapp 810 26))
                           (display "\n")
                           (string-append x8025 x8023)))))))
                   g8020)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8027
                     (letrec*
                      ((x8030
                        (begin
                          (write '(funapp 815 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 815 58))
                        (display "\n")
                        (assert x8030))))
                    (g8028
                     (letrec*
                      ((x8031
                        (begin
                          (write '(funapp 816 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 816 58))
                        (display "\n")
                        (assert x8031))))
                    (g8029
                     (letrec*
                      ((val7249
                        (begin
                          (write '(funapp 819 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g8032
                         (if val7249
                           val7249
                           (begin
                             (write '(funapp 821 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g8032))))
                   g8029)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g8033
                     (letrec*
                      ((x8034
                        (letrec*
                         ((x8035
                           (letrec*
                            ((x8036
                              (begin
                                (write '(funapp 831 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 831 61))
                              (display "\n")
                              (cdr x8036)))))
                         (begin
                           (write '(funapp 832 26))
                           (display "\n")
                           (cdr x8035)))))
                      (begin
                        (write '(funapp 833 23))
                        (display "\n")
                        (cdr x8034)))))
                   g8033)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g8037
                     (letrec*
                      ((x8040
                        (begin
                          (write '(funapp 838 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 838 57))
                        (display "\n")
                        (assert x8040))))
                    (g8038
                     (letrec*
                      ((x8041
                        (begin
                          (write '(funapp 839 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 839 57))
                        (display "\n")
                        (assert x8041))))
                    (g8039
                     (letrec*
                      ((x-cnd8042
                        (begin
                          (write '(funapp 842 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd8042
                        x
                        (letrec*
                         ((x8044
                           (begin
                             (write '(funapp 846 34))
                             (display "\n")
                             (cdr x)))
                          (x8043
                           (begin
                             (write '(funapp 846 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 847 26))
                           (display "\n")
                           (list-tail x8044 x8043)))))))
                   g8039)))
               (halt
                (lambda ()
                  (letrec*
                   ((g8045
                     (begin (write '(funapp 849 49)) (display "\n") '())))
                   g8045)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g8046
                     (letrec*
                      ((x-cnd8047
                        (letrec*
                         ((x8048 #\a))
                         (begin
                           (write '(funapp 856 48))
                           (display "\n")
                           (char-ci>=? c x8048)))))
                      (if x-cnd8047
                        (letrec*
                         ((x8049 #\z))
                         (begin
                           (write '(funapp 858 48))
                           (display "\n")
                           (char-ci<=? c x8049)))
                        #f))))
                   g8046)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g8050
                     (letrec*
                      ((val7250
                        (letrec*
                         ((x8051
                           (begin
                             (write '(funapp 867 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 867 62))
                           (display "\n")
                           (= x8051 9)))))
                      (letrec*
                       ((g8052
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x8053
                                 (begin
                                   (write '(funapp 875 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 876 32))
                                 (display "\n")
                                 (= x8053 10)))))
                            (letrec*
                             ((g8054
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((x8055
                                    (begin
                                      (write '(funapp 882 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 883 35))
                                    (display "\n")
                                    (= x8055 32))))))
                             g8054)))))
                       g8052))))
                   g8050)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g8056
                     (letrec*
                      ((x8057
                        (letrec*
                         ((x8058
                           (begin
                             (write '(funapp 892 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 892 58))
                           (display "\n")
                           (cdr x8058)))))
                      (begin
                        (write '(funapp 893 23))
                        (display "\n")
                        (cdr x8057)))))
                   g8056)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g8059
                     (letrec*
                      ((x8061
                        (begin
                          (write '(funapp 898 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 898 59))
                        (display "\n")
                        (assert x8061))))
                    (g8060
                     (begin (write '(funapp 899 28)) (display "\n") (> x 0))))
                   g8060)))
               (string=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8062
                     (begin
                       (write '(funapp 901 59))
                       (display "\n")
                       (bool-top))))
                   g8062)))
               ($pc (begin (write '(funapp 902 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g8063 #f)) g8063)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g8064
                     (letrec*
                      ((x8065
                        (begin
                          (write '(funapp 908 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 908 55))
                        (display "\n")
                        (cdr x8065)))))
                   g8064)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g8066
                     (letrec*
                      ((x8068
                        (begin
                          (write '(funapp 913 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 913 59))
                        (display "\n")
                        (assert x8068))))
                    (g8067
                     (letrec*
                      ((x-cnd8069
                        (begin
                          (write '(funapp 916 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd8069
                        (begin
                          (write '(funapp 917 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 917 49))
                          (display "\n")
                          (floor x))))))
                   g8067)))
               ($cmp (begin (write '(funapp 919 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g8070
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 925 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g8071
                         (if val7252
                           val7252
                           (letrec*
                            ((val7253
                              (letrec*
                               ((x-cnd8072
                                 (begin
                                   (write '(funapp 933 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd8072
                                 (begin
                                   (write '(funapp 934 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g8073
                               (if val7253
                                 val7253
                                 (letrec*
                                  ((val7254
                                    (letrec*
                                     ((x-cnd8074
                                       (begin
                                         (write '(funapp 942 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd8074
                                       (letrec*
                                        ((x-cnd8075
                                          (begin
                                            (write '(funapp 945 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd8075
                                          (begin
                                            (write '(funapp 946 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g8076
                                     (if val7254
                                       val7254
                                       (letrec*
                                        ((val7255
                                          (letrec*
                                           ((x-cnd8077
                                             (begin
                                               (write '(funapp 955 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd8077
                                             (letrec*
                                              ((x-cnd8078
                                                (begin
                                                  (write '(funapp 958 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd8078
                                                (letrec*
                                                 ((x-cnd8079
                                                   (letrec*
                                                    ((x8081
                                                      (begin
                                                        (write
                                                         '(funapp 963 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x8080
                                                      (begin
                                                        (write
                                                         '(funapp 964 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 965 53))
                                                      (display "\n")
                                                      (equal? x8081 x8080)))))
                                                 (if x-cnd8079
                                                   (letrec*
                                                    ((x8083
                                                      (begin
                                                        (write
                                                         '(funapp 968 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x8082
                                                      (begin
                                                        (write
                                                         '(funapp 969 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 970 53))
                                                      (display "\n")
                                                      (equal? x8083 x8082)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g8084
                                           (if val7255
                                             val7255
                                             (letrec*
                                              ((x-cnd8085
                                                (begin
                                                  (write '(funapp 979 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd8085
                                                (letrec*
                                                 ((x-cnd8086
                                                   (begin
                                                     (write '(funapp 982 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd8086
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 985 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g8087
                                                       (letrec*
                                                        ((x-cnd8088
                                                          (letrec*
                                                           ((x8089
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  992
                                                                  62))
                                                               (display "\n")
                                                               (vector-length
                                                                b))))
                                                           (begin
                                                             (write
                                                              '(funapp 994 60))
                                                             (display "\n")
                                                             (= x8089 n)))))
                                                        (if x-cnd8088
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g8090
                                                                  (letrec*
                                                                   ((val7256
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          1003
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (=
                                                                        i
                                                                        n))))
                                                                   (letrec*
                                                                    ((g8091
                                                                      (if val7256
                                                                        val7256
                                                                        (letrec*
                                                                         ((x-cnd8092
                                                                           (letrec*
                                                                            ((x8094
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1012
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 a
                                                                                 i)))
                                                                             (x8093
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1016
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 b
                                                                                 i))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 1019
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (equal?
                                                                               x8094
                                                                               x8093)))))
                                                                         (if x-cnd8092
                                                                           (letrec*
                                                                            ((x8095
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1025
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (+
                                                                                 i
                                                                                 1))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 1028
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (loop
                                                                               x8095)))
                                                                           #f)))))
                                                                    g8091))))
                                                                g8090))))
                                                           (letrec*
                                                            ((g8096
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1034
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g8096))
                                                          #f))))
                                                     g8087))
                                                   #f))
                                                #f)))))
                                         g8084)))))
                                   g8076)))))
                             g8073)))))
                       g8071))))
                   g8070)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g8097
                     (letrec*
                      ((x8098
                        (letrec*
                         ((x8099
                           (letrec*
                            ((x8100
                              (begin
                                (write '(funapp 1052 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1052 61))
                              (display "\n")
                              (car x8100)))))
                         (begin
                           (write '(funapp 1053 26))
                           (display "\n")
                           (car x8099)))))
                      (begin
                        (write '(funapp 1054 23))
                        (display "\n")
                        (cdr x8098)))))
                   g8097)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g8101
                     (letrec*
                      ((x8102
                        (letrec*
                         ((x8103
                           (letrec*
                            ((x8104
                              (begin
                                (write '(funapp 1063 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1063 61))
                              (display "\n")
                              (cdr x8104)))))
                         (begin
                           (write '(funapp 1064 26))
                           (display "\n")
                           (car x8103)))))
                      (begin
                        (write '(funapp 1065 23))
                        (display "\n")
                        (car x8102)))))
                   g8101)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g8105
                     (begin
                       (write '(funapp 1067 53))
                       (display "\n")
                       (eq? x y))))
                   g8105)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g8106
                     (letrec*
                      ((x8109
                        (begin
                          (write '(funapp 1072 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1072 60))
                        (display "\n")
                        (assert x8109))))
                    (g8107
                     (letrec*
                      ((x8110
                        (begin
                          (write '(funapp 1074 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1074 59))
                        (display "\n")
                        (assert x8110))))
                    (g8108
                     (letrec*
                      ((input-port
                        (begin
                          (write '(funapp 1077 36))
                          (display "\n")
                          (open-input-file filename)))
                       (res
                        (begin
                          (write '(funapp 1078 29))
                          (display "\n")
                          (proc input-port))))
                      (letrec*
                       ((g8111
                         (begin
                           (write '(funapp 1080 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g8112 res))
                       g8112))))
                   g8108)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g8113
                     (begin
                       (write '(funapp 1083 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1083 57))
                          (display "\n")
                          '())))))
                   g8113)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8114
                     (letrec*
                      ((x8117
                        (begin
                          (write '(funapp 1087 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1087 58))
                        (display "\n")
                        (assert x8117))))
                    (g8115
                     (letrec*
                      ((x8118
                        (begin
                          (write '(funapp 1088 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1088 58))
                        (display "\n")
                        (assert x8118))))
                    (g8116
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1091 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g8119
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1093 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g8119))))
                   g8116)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g8120
                     (letrec*
                      ((x8121
                        (letrec*
                         ((x8122
                           (begin
                             (write '(funapp 1101 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1101 58))
                           (display "\n")
                           (car x8122)))))
                      (begin
                        (write '(funapp 1102 23))
                        (display "\n")
                        (cdr x8121)))))
                   g8120)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g8123
                     (letrec*
                      ((x8124
                        (letrec*
                         ((x8125
                           (letrec*
                            ((x8126
                              (begin
                                (write '(funapp 1111 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (cdr x8126)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (car x8125)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (cdr x8124)))))
                   g8123)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g8127
                     (letrec*
                      ((x8128
                        (letrec*
                         ((x8129
                           (begin
                             (write '(funapp 1121 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1121 58))
                           (display "\n")
                           (cdr x8129)))))
                      (begin
                        (write '(funapp 1122 23))
                        (display "\n")
                        (car x8128)))))
                   g8127)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g8130
                     (letrec*
                      ((x8131
                        (letrec*
                         ((x8132
                           (begin
                             (write '(funapp 1129 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1129 58))
                           (display "\n")
                           (car x8132)))))
                      (begin
                        (write '(funapp 1130 23))
                        (display "\n")
                        (car x8131)))))
                   g8130)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g8133
                     (letrec*
                      ((x8136
                        (begin
                          (write '(funapp 1135 45))
                          (display "\n")
                          (char? c1))))
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
                          (char? c2))))
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
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1137 66))
                        (display "\n")
                        (not x8138)))))
                   g8135)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
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
                                (write '(funapp 1147 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1147 61))
                              (display "\n")
                              (car x8142)))))
                         (begin
                           (write '(funapp 1148 26))
                           (display "\n")
                           (car x8141)))))
                      (begin
                        (write '(funapp 1149 23))
                        (display "\n")
                        (car x8140)))))
                   g8139)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g8143
                     (letrec*
                      ((x8145
                        (begin
                          (write '(funapp 1154 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1154 59))
                        (display "\n")
                        (assert x8145))))
                    (g8144
                     (begin (write '(funapp 1155 28)) (display "\n") (< x 0))))
                   g8144)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g8146
                     (begin
                       (write '(funapp 1157 53))
                       (display "\n")
                       (memq e l))))
                   g8146)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g8147
                     (letrec*
                      ((x8148
                        (letrec*
                         ((x8149
                           (begin
                             (write '(funapp 1163 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1163 58))
                           (display "\n")
                           (car x8149)))))
                      (begin
                        (write '(funapp 1164 23))
                        (display "\n")
                        (car x8148)))))
                   g8147)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g8150
                     (begin (write '(funapp 1166 51)) (display "\n") '())))
                   g8150)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g8151
                     (letrec*
                      ((x8153
                        (begin
                          (write '(funapp 1170 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1170 57))
                        (display "\n")
                        (assert x8153))))
                    (g8152
                     (letrec*
                      ((x-cnd8154
                        (begin
                          (write '(funapp 1173 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8154
                        (begin (write '(funapp 1175 24)) (display "\n") '())
                        (letrec*
                         ((x8157
                           (letrec*
                            ((x8158
                              (begin
                                (write '(funapp 1177 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1177 61))
                              (display "\n")
                              (reverse x8158))))
                          (x8155
                           (letrec*
                            ((x8156
                              (begin
                                (write '(funapp 1178 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1178 61))
                              (display "\n")
                              (list x8156)))))
                         (begin
                           (write '(funapp 1179 26))
                           (display "\n")
                           (append x8157 x8155)))))))
                   g8152)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g8159
                     (letrec*
                      ((x8160
                        (letrec*
                         ((x8161
                           (letrec*
                            ((x8162
                              (begin
                                (write '(funapp 1188 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1188 61))
                              (display "\n")
                              (car x8162)))))
                         (begin
                           (write '(funapp 1189 26))
                           (display "\n")
                           (car x8161)))))
                      (begin
                        (write '(funapp 1190 23))
                        (display "\n")
                        (car x8160)))))
                   g8159)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g8163
                     (letrec*
                      ((x8164
                        (letrec*
                         ((x8165
                           (letrec*
                            ((x8166
                              (begin
                                (write '(funapp 1199 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1199 61))
                              (display "\n")
                              (car x8166)))))
                         (begin
                           (write '(funapp 1200 26))
                           (display "\n")
                           (cdr x8165)))))
                      (begin
                        (write '(funapp 1201 23))
                        (display "\n")
                        (cdr x8164)))))
                   g8163)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g8167
                     (letrec*
                      ((x8169
                        (begin
                          (write '(funapp 1206 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1206 59))
                        (display "\n")
                        (assert x8169))))
                    (g8168
                     (letrec*
                      ((x8170
                        (begin
                          (write '(funapp 1207 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1207 60))
                        (display "\n")
                        (= 1 x8170)))))
                   g8168)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g8171
                     (letrec*
                      ((x8172
                        (letrec*
                         ((x8173
                           (letrec*
                            ((x8174
                              (begin
                                (write '(funapp 1216 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1216 61))
                              (display "\n")
                              (cdr x8174)))))
                         (begin
                           (write '(funapp 1217 26))
                           (display "\n")
                           (car x8173)))))
                      (begin
                        (write '(funapp 1218 23))
                        (display "\n")
                        (car x8172)))))
                   g8171)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g8175
                     (letrec*
                      ((x8178
                        (begin
                          (write '(funapp 1224 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1224 59))
                        (display "\n")
                        (assert x8178))))
                    (g8176
                     (letrec*
                      ((x8179
                        (begin
                          (write '(funapp 1225 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1225 60))
                        (display "\n")
                        (assert x8179))))
                    (g8177
                     (letrec*
                      ((x-cnd8180
                        (begin
                          (write '(funapp 1228 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd8180
                        (letrec*
                         ((g8181
                           (begin
                             (write '(funapp 1230 42))
                             (display "\n")
                             (proc))))
                         g8181)
                        (letrec*
                         ((x-cnd8182
                           (letrec*
                            ((x8183
                              (begin
                                (write '(funapp 1233 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1233 58))
                              (display "\n")
                              (null? x8183)))))
                         (if x-cnd8182
                           (letrec*
                            ((g8184
                              (letrec*
                               ((x8185
                                 (begin
                                   (write '(funapp 1237 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1237 61))
                                 (display "\n")
                                 (proc x8185)))))
                            g8184)
                           (letrec*
                            ((x-cnd8186
                              (letrec*
                               ((x8187
                                 (begin
                                   (write '(funapp 1241 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1241 62))
                                 (display "\n")
                                 (null? x8187)))))
                            (if x-cnd8186
                              (letrec*
                               ((g8188
                                 (letrec*
                                  ((x8190
                                    (begin
                                      (write '(funapp 1246 43))
                                      (display "\n")
                                      (car args)))
                                   (x8189
                                    (begin
                                      (write '(funapp 1246 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1247 35))
                                    (display "\n")
                                    (proc x8190 x8189)))))
                               g8188)
                              (letrec*
                               ((x-cnd8191
                                 (letrec*
                                  ((x8192
                                    (begin
                                      (write '(funapp 1252 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1253 35))
                                    (display "\n")
                                    (null? x8192)))))
                               (if x-cnd8191
                                 (letrec*
                                  ((g8193
                                    (letrec*
                                     ((x8196
                                       (begin
                                         (write '(funapp 1258 46))
                                         (display "\n")
                                         (car args)))
                                      (x8195
                                       (begin
                                         (write '(funapp 1259 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x8194
                                       (begin
                                         (write '(funapp 1260 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1261 38))
                                       (display "\n")
                                       (proc x8196 x8195 x8194)))))
                                  g8193)
                                 (letrec*
                                  ((x-cnd8197
                                    (letrec*
                                     ((x8198
                                       (begin
                                         (write '(funapp 1266 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1267 38))
                                       (display "\n")
                                       (null? x8198)))))
                                  (if x-cnd8197
                                    (letrec*
                                     ((g8199
                                       (letrec*
                                        ((x8203
                                          (begin
                                            (write '(funapp 1272 49))
                                            (display "\n")
                                            (car args)))
                                         (x8202
                                          (begin
                                            (write '(funapp 1273 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x8201
                                          (begin
                                            (write '(funapp 1274 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x8200
                                          (begin
                                            (write '(funapp 1275 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1276 41))
                                          (display "\n")
                                          (proc x8203 x8202 x8201 x8200)))))
                                     g8199)
                                    (letrec*
                                     ((x-cnd8204
                                       (letrec*
                                        ((x8205
                                          (letrec*
                                           ((x8206
                                             (begin
                                               (write '(funapp 1283 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1284 44))
                                             (display "\n")
                                             (cdr x8206)))))
                                        (begin
                                          (write '(funapp 1285 41))
                                          (display "\n")
                                          (null? x8205)))))
                                     (if x-cnd8204
                                       (letrec*
                                        ((g8207
                                          (letrec*
                                           ((x8213
                                             (begin
                                               (write '(funapp 1290 52))
                                               (display "\n")
                                               (car args)))
                                            (x8212
                                             (begin
                                               (write '(funapp 1291 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x8211
                                             (begin
                                               (write '(funapp 1292 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x8210
                                             (begin
                                               (write '(funapp 1293 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x8208
                                             (letrec*
                                              ((x8209
                                                (begin
                                                  (write '(funapp 1296 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1297 47))
                                                (display "\n")
                                                (car x8209)))))
                                           (begin
                                             (write '(funapp 1298 44))
                                             (display "\n")
                                             (proc
                                              x8213
                                              x8212
                                              x8211
                                              x8210
                                              x8208)))))
                                        g8207)
                                       (letrec*
                                        ((x-cnd8214
                                          (letrec*
                                           ((x8215
                                             (letrec*
                                              ((x8216
                                                (begin
                                                  (write '(funapp 1310 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1311 47))
                                                (display "\n")
                                                (cddr x8216)))))
                                           (begin
                                             (write '(funapp 1312 44))
                                             (display "\n")
                                             (null? x8215)))))
                                        (if x-cnd8214
                                          (letrec*
                                           ((g8217
                                             (letrec*
                                              ((x8225
                                                (begin
                                                  (write '(funapp 1317 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x8224
                                                (begin
                                                  (write '(funapp 1318 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x8223
                                                (begin
                                                  (write '(funapp 1319 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x8222
                                                (begin
                                                  (write '(funapp 1320 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x8220
                                                (letrec*
                                                 ((x8221
                                                   (begin
                                                     (write '(funapp 1323 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1324 50))
                                                   (display "\n")
                                                   (car x8221))))
                                               (x8218
                                                (letrec*
                                                 ((x8219
                                                   (begin
                                                     (write '(funapp 1327 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1328 50))
                                                   (display "\n")
                                                   (cadr x8219)))))
                                              (begin
                                                (write '(funapp 1329 47))
                                                (display "\n")
                                                (proc
                                                 x8225
                                                 x8224
                                                 x8223
                                                 x8222
                                                 x8220
                                                 x8218)))))
                                           g8217)
                                          (letrec*
                                           ((x-cnd8226
                                             (letrec*
                                              ((x8227
                                                (letrec*
                                                 ((x8228
                                                   (begin
                                                     (write '(funapp 1342 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1343 50))
                                                   (display "\n")
                                                   (cdddr x8228)))))
                                              (begin
                                                (write '(funapp 1344 47))
                                                (display "\n")
                                                (null? x8227)))))
                                           (if x-cnd8226
                                             (letrec*
                                              ((g8229
                                                (letrec*
                                                 ((x8239
                                                   (begin
                                                     (write '(funapp 1349 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x8238
                                                   (begin
                                                     (write '(funapp 1350 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x8237
                                                   (begin
                                                     (write '(funapp 1351 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x8236
                                                   (begin
                                                     (write '(funapp 1352 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x8234
                                                   (letrec*
                                                    ((x8235
                                                      (begin
                                                        (write
                                                         '(funapp 1355 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1356 53))
                                                      (display "\n")
                                                      (car x8235))))
                                                  (x8232
                                                   (letrec*
                                                    ((x8233
                                                      (begin
                                                        (write
                                                         '(funapp 1359 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1360 53))
                                                      (display "\n")
                                                      (cadr x8233))))
                                                  (x8230
                                                   (letrec*
                                                    ((x8231
                                                      (begin
                                                        (write
                                                         '(funapp 1363 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1364 53))
                                                      (display "\n")
                                                      (caddr x8231)))))
                                                 (begin
                                                   (write '(funapp 1365 50))
                                                   (display "\n")
                                                   (proc
                                                    x8239
                                                    x8238
                                                    x8237
                                                    x8236
                                                    x8234
                                                    x8232
                                                    x8230)))))
                                              g8229)
                                             (letrec*
                                              ((g8240
                                                (begin
                                                  (write '(funapp 1376 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g8240)))))))))))))))))))
                   g8177)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g8241
                     (letrec*
                      ((x8243
                        (begin
                          (write '(funapp 1382 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1382 57))
                        (display "\n")
                        (assert x8243))))
                    (g8242
                     (letrec*
                      ((x-cnd8244
                        (begin
                          (write '(funapp 1385 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8244
                        #f
                        (letrec*
                         ((x-cnd8245
                           (letrec*
                            ((x8246
                              (begin
                                (write '(funapp 1390 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1390 55))
                              (display "\n")
                              (equal? x8246 e)))))
                         (if x-cnd8245
                           l
                           (letrec*
                            ((x8247
                              (begin
                                (write '(funapp 1393 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1393 55))
                              (display "\n")
                              (member e x8247)))))))))
                   g8242)))
               (cddddr
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
                                (write '(funapp 1402 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1402 61))
                              (display "\n")
                              (cdr x8251)))))
                         (begin
                           (write '(funapp 1403 26))
                           (display "\n")
                           (cdr x8250)))))
                      (begin
                        (write '(funapp 1404 23))
                        (display "\n")
                        (cdr x8249)))))
                   g8248)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g8252
                     (letrec*
                      ((x8253
                        (letrec*
                         ((x8254
                           (letrec*
                            ((x8255
                              (begin
                                (write '(funapp 1413 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1413 61))
                              (display "\n")
                              (cdr x8255)))))
                         (begin
                           (write '(funapp 1414 26))
                           (display "\n")
                           (cdr x8254)))))
                      (begin
                        (write '(funapp 1415 23))
                        (display "\n")
                        (car x8253)))))
                   g8252)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g8256
                     (begin
                       (write '(funapp 1417 53))
                       (display "\n")
                       (random 42))))
                   g8256)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g8257
                     (letrec*
                      ((x8259
                        (begin
                          (write '(funapp 1421 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1421 59))
                        (display "\n")
                        (assert x8259))))
                    (g8258
                     (begin (write '(funapp 1422 28)) (display "\n") (= x 0))))
                   g8258)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8260
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1429 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g8261
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1431 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8261))))
                   g8260)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g8262
                     (letrec*
                      ((x8263
                        (begin
                          (write '(funapp 1437 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1437 55))
                        (display "\n")
                        (car x8263)))))
                   g8262)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g8264
                     (letrec*
                      ((val7259
                        (letrec*
                         ((x-cnd8265
                           (begin
                             (write '(funapp 1447 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8265
                           (letrec*
                            ((x8266
                              (begin
                                (write '(funapp 1449 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1449 55))
                              (display "\n")
                              (list? x8266)))
                           #f))))
                      (letrec*
                       ((g8267
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1452 52))
                             (display "\n")
                             (null? l)))))
                       g8267))))
                   g8264)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g8268
                     (letrec*
                      ((x8269
                        (letrec*
                         ((x8270
                           (letrec*
                            ((x8271
                              (begin
                                (write '(funapp 1462 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1462 61))
                              (display "\n")
                              (car x8271)))))
                         (begin
                           (write '(funapp 1463 26))
                           (display "\n")
                           (cdr x8270)))))
                      (begin
                        (write '(funapp 1464 23))
                        (display "\n")
                        (cdr x8269)))))
                   g8268)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g8272
                     (letrec*
                      ((x-cnd8273
                        (letrec*
                         ((x8274 #\0))
                         (begin
                           (write '(funapp 1471 58))
                           (display "\n")
                           (char<=? x8274 c)))))
                      (if x-cnd8273
                        (letrec*
                         ((x8275 #\9))
                         (begin
                           (write '(funapp 1473 48))
                           (display "\n")
                           (char<=? c x8275)))
                        #f))))
                   g8272)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g8276
                     (letrec*
                      ((x8278
                        (begin
                          (write '(funapp 1480 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1480 57))
                        (display "\n")
                        (assert x8278))))
                    (g8277
                     (letrec*
                      ((x-cnd8279
                        (begin
                          (write '(funapp 1483 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8279
                        #f
                        (letrec*
                         ((x-cnd8280
                           (letrec*
                            ((x8281
                              (begin
                                (write '(funapp 1488 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1488 56))
                              (display "\n")
                              (eqv? x8281 k)))))
                         (if x-cnd8280
                           (begin
                             (write '(funapp 1490 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8282
                              (begin
                                (write '(funapp 1491 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1491 55))
                              (display "\n")
                              (assq k x8282)))))))))
                   g8277)))
               (not (lambda (x) (letrec* ((g8283 (if x #f #t))) g8283)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g8284
                     (begin
                       (write '(funapp 1495 50))
                       (display "\n")
                       (append l1 l2))))
                   g8284)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g8285
                     (letrec*
                      ((x8287
                        (begin
                          (write '(funapp 1499 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1499 57))
                        (display "\n")
                        (assert x8287))))
                    (g8286
                     (letrec*
                      ((x-cnd8288
                        (begin
                          (write '(funapp 1502 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8288
                        #f
                        (letrec*
                         ((x-cnd8289
                           (letrec*
                            ((x8290
                              (begin
                                (write '(funapp 1507 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1507 55))
                              (display "\n")
                              (eq? x8290 e)))))
                         (if x-cnd8289
                           l
                           (letrec*
                            ((x8291
                              (begin
                                (write '(funapp 1510 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1510 55))
                              (display "\n")
                              (memq e x8291)))))))))
                   g8286)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g8292
                     (letrec*
                      ((x8293
                        (letrec*
                         ((x8294
                           (letrec*
                            ((x8295
                              (begin
                                (write '(funapp 1519 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1519 61))
                              (display "\n")
                              (car x8295)))))
                         (begin
                           (write '(funapp 1520 26))
                           (display "\n")
                           (cdr x8294)))))
                      (begin
                        (write '(funapp 1521 23))
                        (display "\n")
                        (car x8293)))))
                   g8292)))
               (length
                (lambda (l)
                  (letrec*
                   ((g8296
                     (letrec*
                      ((x8298
                        (begin
                          (write '(funapp 1526 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1526 57))
                        (display "\n")
                        (assert x8298))))
                    (g8297
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g8299
                             (letrec*
                              ((x-cnd8300
                                (begin
                                  (write '(funapp 1534 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd8300
                                0
                                (letrec*
                                 ((x8301
                                   (letrec*
                                    ((x8302
                                      (begin
                                        (write '(funapp 1539 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1539 63))
                                      (display "\n")
                                      (rec x8302)))))
                                 (begin
                                   (write '(funapp 1540 34))
                                   (display "\n")
                                   (+ 1 x8301)))))))
                           g8299))))
                      (letrec*
                       ((g8303
                         (begin
                           (write '(funapp 1542 40))
                           (display "\n")
                           (rec l))))
                       g8303))))
                   g8297)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8304
                     (letrec*
                      ((x8307
                        (begin
                          (write '(funapp 1547 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1547 58))
                        (display "\n")
                        (assert x8307))))
                    (g8305
                     (letrec*
                      ((x8308
                        (begin
                          (write '(funapp 1548 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1548 58))
                        (display "\n")
                        (assert x8308))))
                    (g8306
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1551 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g8309
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1553 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8309))))
                   g8306)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g8310
                     (letrec*
                      ((x8311
                        (begin
                          (write '(funapp 1559 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1559 65))
                        (display "\n")
                        (not x8311)))))
                   g8310)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g8312
                     (letrec*
                      ((x8313
                        (letrec*
                         ((x8314
                           (begin
                             (write '(funapp 1566 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1566 58))
                           (display "\n")
                           (car x8314)))))
                      (begin
                        (write '(funapp 1567 23))
                        (display "\n")
                        (cdr x8313)))))
                   g8312)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g8315
                     (letrec*
                      ((x8317
                        (begin
                          (write '(funapp 1572 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1572 57))
                        (display "\n")
                        (assert x8317))))
                    (g8316
                     (letrec*
                      ((x-cnd8318
                        (begin
                          (write '(funapp 1575 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8318
                        #f
                        (letrec*
                         ((x-cnd8319
                           (letrec*
                            ((x8320
                              (begin
                                (write '(funapp 1580 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1580 56))
                              (display "\n")
                              (equal? x8320 k)))))
                         (if x-cnd8319
                           (begin
                             (write '(funapp 1582 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8321
                              (begin
                                (write '(funapp 1583 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1583 55))
                              (display "\n")
                              (assoc k x8321)))))))))
                   g8316)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g8322
                     (letrec*
                      ((x8323
                        (begin
                          (write '(funapp 1588 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1588 55))
                        (display "\n")
                        (car x8323)))))
                   g8322)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g8324
                     (letrec*
                      ((x8327
                        (begin
                          (write '(funapp 1593 45))
                          (display "\n")
                          (char? c1))))
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
                          (char? c2))))
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
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1595 63))
                        (display "\n")
                        (not x8329)))))
                   g8326)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8330
                     (letrec*
                      ((val7261
                        (begin
                          (write '(funapp 1602 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g8331
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1604 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8331))))
                   g8330)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g8332
                     (letrec*
                      ((x8335
                        (begin
                          (write '(funapp 1610 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1610 62))
                        (display "\n")
                        (assert x8335))))
                    (g8333
                     (letrec*
                      ((x8336
                        (begin
                          (write '(funapp 1611 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1611 57))
                        (display "\n")
                        (assert x8336))))
                    (g8334
                     (letrec*
                      ((x-cnd8337
                        (begin
                          (write '(funapp 1614 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8337
                        #t
                        (letrec*
                         ((x-cnd8338
                           (begin
                             (write '(funapp 1618 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8338
                           (letrec*
                            ((g8339
                              (letrec*
                               ((x8341
                                 (begin
                                   (write '(funapp 1621 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1621 64))
                                 (display "\n")
                                 (f x8341))))
                             (g8340
                              (letrec*
                               ((x8342
                                 (begin
                                   (write '(funapp 1623 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1623 58))
                                 (display "\n")
                                 (for-each f x8342)))))
                            g8340)
                           (begin
                             (write '(funapp 1625 27))
                             (display "\n")
                             '())))))))
                   g8334)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g8343
                     (letrec*
                      ((x8345
                        (begin
                          (write '(funapp 1630 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1630 59))
                        (display "\n")
                        (assert x8345))))
                    (g8344
                     (letrec*
                      ((x-cnd8346
                        (begin
                          (write '(funapp 1632 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd8346
                        (begin
                          (write '(funapp 1632 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g8344)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8347
                     (letrec*
                      ((x8350
                        (begin
                          (write '(funapp 1637 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1637 58))
                        (display "\n")
                        (assert x8350))))
                    (g8348
                     (letrec*
                      ((x8351
                        (begin
                          (write '(funapp 1638 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1638 58))
                        (display "\n")
                        (assert x8351))))
                    (g8349
                     (letrec*
                      ((val7262
                        (begin
                          (write '(funapp 1641 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g8352
                         (if val7262
                           val7262
                           (begin
                             (write '(funapp 1643 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8352))))
                   g8349)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g8353
                     (letrec*
                      ((x8354
                        (letrec*
                         ((x8355
                           (letrec*
                            ((x8356
                              (begin
                                (write '(funapp 1653 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1653 61))
                              (display "\n")
                              (cdr x8356)))))
                         (begin
                           (write '(funapp 1654 26))
                           (display "\n")
                           (cdr x8355)))))
                      (begin
                        (write '(funapp 1655 23))
                        (display "\n")
                        (car x8354)))))
                   g8353)))
               (newline (lambda () (letrec* ((g8357 #f)) g8357)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g8358
                     (letrec*
                      ((x8360
                        (letrec*
                         ((x8361
                           (begin
                             (write '(funapp 1663 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1663 58))
                           (display "\n")
                           (abs x8361))))
                       (x8359
                        (begin
                          (write '(funapp 1664 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1665 23))
                        (display "\n")
                        (/ x8360 x8359)))))
                   g8358)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g8362
                     (letrec*
                      ((x8366
                        (begin
                          (write '(funapp 1671 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1671 57))
                        (display "\n")
                        (assert x8366))))
                    (g8363
                     (letrec*
                      ((x8367
                        (begin
                          (write '(funapp 1672 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1672 63))
                        (display "\n")
                        (assert x8367))))
                    (g8364
                     (letrec*
                      ((x8368
                        (letrec*
                         ((x8369
                           (begin
                             (write '(funapp 1675 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1675 61))
                           (display "\n")
                           (< index x8369)))))
                      (begin
                        (write '(funapp 1676 23))
                        (display "\n")
                        (assert x8368))))
                    (g8365
                     (letrec*
                      ((x-cnd8370
                        (begin
                          (write '(funapp 1679 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8370
                        (begin
                          (write '(funapp 1681 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8372
                           (begin
                             (write '(funapp 1683 34))
                             (display "\n")
                             (cdr l)))
                          (x8371
                           (begin
                             (write '(funapp 1683 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1684 26))
                           (display "\n")
                           (list-ref x8372 x8371)))))))
                   g8365)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8373
                     (letrec*
                      ((x-cnd8374
                        (begin
                          (write '(funapp 1691 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8374
                        a
                        (letrec*
                         ((x8375
                           (begin
                             (write '(funapp 1694 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1694 57))
                           (display "\n")
                           (gcd b x8375)))))))
                   g8373)))
               (block
                (lambda (x7758 y7759 color7760)
                  (letrec*
                   ((g8376
                     (letrec*
                      ((x8377
                        (letrec*
                         ((x8378
                           (letrec*
                            ((x8379
                              (begin
                                (write '(funapp 1705 37))
                                (display "\n")
                                (orig-cons
                                 color7760
                                 (begin
                                   (write '(funapp 1705 57))
                                   (display "\n")
                                   '())))))
                            (begin
                              (write '(funapp 1706 29))
                              (display "\n")
                              (orig-cons y7759 x8379)))))
                         (begin
                           (write '(funapp 1707 26))
                           (display "\n")
                           (orig-cons x7758 x8378)))))
                      (begin
                        (write '(funapp 1708 23))
                        (display "\n")
                        (orig-cons
                         (begin
                           (write '(funapp 1708 33))
                           (display "\n")
                           'block)
                         x8377)))))
                   g8376)))
               (block?
                (lambda (block7757)
                  (letrec*
                   ((g8380
                     (letrec*
                      ((x8381
                        (begin
                          (write '(funapp 1714 39))
                          (display "\n")
                          (car block7757))))
                      (begin
                        (write '(funapp 1714 57))
                        (display "\n")
                        (eq?
                         x8381
                         (begin
                           (write '(funapp 1714 67))
                           (display "\n")
                           'block))))))
                   g8380)))
               (block-x
                (lambda (block)
                  (letrec*
                   ((g8382
                     (letrec*
                      ((x8383
                        (begin
                          (write '(funapp 1720 39))
                          (display "\n")
                          (orig-cdr block))))
                      (begin
                        (write '(funapp 1720 58))
                        (display "\n")
                        (orig-car x8383)))))
                   g8382)))
               (block-y
                (lambda (block)
                  (letrec*
                   ((g8384
                     (letrec*
                      ((x8385
                        (letrec*
                         ((x8386
                           (begin
                             (write '(funapp 1728 42))
                             (display "\n")
                             (orig-cdr block))))
                         (begin
                           (write '(funapp 1728 61))
                           (display "\n")
                           (orig-cdr x8386)))))
                      (begin
                        (write '(funapp 1729 23))
                        (display "\n")
                        (orig-car x8385)))))
                   g8384)))
               (block-color
                (lambda (block)
                  (letrec*
                   ((g8387
                     (letrec*
                      ((x8388
                        (letrec*
                         ((x8389
                           (letrec*
                            ((x8390
                              (begin
                                (write '(funapp 1740 37))
                                (display "\n")
                                (orig-cdr block))))
                            (begin
                              (write '(funapp 1741 29))
                              (display "\n")
                              (orig-cdr x8390)))))
                         (begin
                           (write '(funapp 1742 26))
                           (display "\n")
                           (orig-cdr x8389)))))
                      (begin
                        (write '(funapp 1743 23))
                        (display "\n")
                        (orig-car x8388)))))
                   g8387)))
               (tetra
                (lambda (center7765 blocks7766)
                  (letrec*
                   ((g8391
                     (letrec*
                      ((x8392
                        (letrec*
                         ((x8393
                           (begin
                             (write '(funapp 1752 34))
                             (display "\n")
                             (orig-cons
                              blocks7766
                              (begin
                                (write '(funapp 1752 55))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1753 26))
                           (display "\n")
                           (orig-cons center7765 x8393)))))
                      (begin
                        (write '(funapp 1754 23))
                        (display "\n")
                        (orig-cons
                         (begin
                           (write '(funapp 1754 33))
                           (display "\n")
                           'tetra)
                         x8392)))))
                   g8391)))
               (tetra?
                (lambda (tetra7764)
                  (letrec*
                   ((g8394
                     (letrec*
                      ((x8395
                        (begin
                          (write '(funapp 1760 39))
                          (display "\n")
                          (car tetra7764))))
                      (begin
                        (write '(funapp 1760 57))
                        (display "\n")
                        (eq?
                         x8395
                         (begin
                           (write '(funapp 1760 67))
                           (display "\n")
                           'tetra))))))
                   g8394)))
               (tetra-center
                (lambda (tetra)
                  (letrec*
                   ((g8396
                     (letrec*
                      ((x8397
                        (begin
                          (write '(funapp 1766 39))
                          (display "\n")
                          (orig-cdr tetra))))
                      (begin
                        (write '(funapp 1766 58))
                        (display "\n")
                        (orig-car x8397)))))
                   g8396)))
               (tetra-blocks
                (lambda (tetra)
                  (letrec*
                   ((g8398
                     (letrec*
                      ((x8399
                        (letrec*
                         ((x8400
                           (begin
                             (write '(funapp 1774 42))
                             (display "\n")
                             (orig-cdr tetra))))
                         (begin
                           (write '(funapp 1774 61))
                           (display "\n")
                           (orig-cdr x8400)))))
                      (begin
                        (write '(funapp 1775 23))
                        (display "\n")
                        (orig-car x8399)))))
                   g8398)))
               (world
                (lambda (tetra7770 blocks7771)
                  (letrec*
                   ((g8401
                     (letrec*
                      ((x8402
                        (letrec*
                         ((x8403
                           (begin
                             (write '(funapp 1784 34))
                             (display "\n")
                             (orig-cons
                              blocks7771
                              (begin
                                (write '(funapp 1784 55))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1785 26))
                           (display "\n")
                           (orig-cons tetra7770 x8403)))))
                      (begin
                        (write '(funapp 1786 23))
                        (display "\n")
                        (orig-cons
                         (begin
                           (write '(funapp 1786 33))
                           (display "\n")
                           'world)
                         x8402)))))
                   g8401)))
               (world?
                (lambda (world7769)
                  (letrec*
                   ((g8404
                     (letrec*
                      ((x8405
                        (begin
                          (write '(funapp 1792 39))
                          (display "\n")
                          (car world7769))))
                      (begin
                        (write '(funapp 1792 57))
                        (display "\n")
                        (eq?
                         x8405
                         (begin
                           (write '(funapp 1792 67))
                           (display "\n")
                           'world))))))
                   g8404)))
               (world-tetra
                (lambda (world)
                  (letrec*
                   ((g8406
                     (letrec*
                      ((x8407
                        (begin
                          (write '(funapp 1798 39))
                          (display "\n")
                          (orig-cdr world))))
                      (begin
                        (write '(funapp 1798 58))
                        (display "\n")
                        (orig-car x8407)))))
                   g8406)))
               (world-blocks
                (lambda (world)
                  (letrec*
                   ((g8408
                     (letrec*
                      ((x8409
                        (letrec*
                         ((x8410
                           (begin
                             (write '(funapp 1806 42))
                             (display "\n")
                             (orig-cdr world))))
                         (begin
                           (write '(funapp 1806 61))
                           (display "\n")
                           (orig-cdr x8410)))))
                      (begin
                        (write '(funapp 1807 23))
                        (display "\n")
                        (orig-car x8409)))))
                   g8408)))
               (posn
                (lambda (x7775 y7776)
                  (letrec*
                   ((g8411
                     (letrec*
                      ((x8412
                        (letrec*
                         ((x8413
                           (begin
                             (write '(funapp 1816 34))
                             (display "\n")
                             (orig-cons
                              y7776
                              (begin
                                (write '(funapp 1816 50))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1817 26))
                           (display "\n")
                           (orig-cons x7775 x8413)))))
                      (begin
                        (write '(funapp 1818 23))
                        (display "\n")
                        (orig-cons
                         (begin (write '(funapp 1818 33)) (display "\n") 'posn)
                         x8412)))))
                   g8411)))
               (posn?
                (lambda (posn7774)
                  (letrec*
                   ((g8414
                     (letrec*
                      ((x8415
                        (begin
                          (write '(funapp 1824 39))
                          (display "\n")
                          (car posn7774))))
                      (begin
                        (write '(funapp 1824 56))
                        (display "\n")
                        (eq?
                         x8415
                         (begin
                           (write '(funapp 1824 66))
                           (display "\n")
                           'posn))))))
                   g8414)))
               (posn-x
                (lambda (posn)
                  (letrec*
                   ((g8416
                     (letrec*
                      ((x8417
                        (begin
                          (write '(funapp 1830 39))
                          (display "\n")
                          (orig-cdr posn))))
                      (begin
                        (write '(funapp 1830 57))
                        (display "\n")
                        (orig-car x8417)))))
                   g8416)))
               (posn-y
                (lambda (posn)
                  (letrec*
                   ((g8418
                     (letrec*
                      ((x8419
                        (letrec*
                         ((x8420
                           (begin
                             (write '(funapp 1838 42))
                             (display "\n")
                             (orig-cdr posn))))
                         (begin
                           (write '(funapp 1838 60))
                           (display "\n")
                           (orig-cdr x8420)))))
                      (begin
                        (write '(funapp 1839 23))
                        (display "\n")
                        (orig-car x8419)))))
                   g8418)))
               (COLOR/C symbol?/c)
               (POSN/C
                (lambda (j7406 k7407 v7405)
                  (letrec*
                   ((g8421
                     (letrec*
                      ((checked7408
                        (letrec*
                         ((x8422
                           (letrec*
                            ((x8423
                              (begin
                                (write '(funapp 1851 37))
                                (display "\n")
                                (orig-cdr v7405))))
                            (begin
                              (write '(funapp 1852 29))
                              (display "\n")
                              (orig-car x8423)))))
                         (begin
                           (write '(funapp 1853 26))
                           (display "\n")
                           (real?/c j7406 k7407 x8422)))))
                      (letrec*
                       ((g8424
                         (letrec*
                          ((checked7409
                            (letrec*
                             ((x8425
                               (letrec*
                                ((x8426
                                  (letrec*
                                   ((x8427
                                     (begin
                                       (write '(funapp 1863 44))
                                       (display "\n")
                                       (orig-cdr v7405))))
                                   (begin
                                     (write '(funapp 1864 36))
                                     (display "\n")
                                     (orig-cdr x8427)))))
                                (begin
                                  (write '(funapp 1865 33))
                                  (display "\n")
                                  (orig-car x8426)))))
                             (begin
                               (write '(funapp 1866 30))
                               (display "\n")
                               (real?/c j7406 k7407 x8425)))))
                          (letrec*
                           ((g8428
                             (letrec*
                              ((x8429
                                (letrec*
                                 ((x8430
                                   (begin
                                     (write '(funapp 1872 42))
                                     (display "\n")
                                     (cons
                                      checked7409
                                      (begin
                                        (write '(funapp 1872 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1873 34))
                                   (display "\n")
                                   (cons checked7408 x8430)))))
                              (begin
                                (write '(funapp 1874 31))
                                (display "\n")
                                (cons posn x8429)))))
                           g8428))))
                       g8424))))
                   g8421)))
               (BLOCK/C
                (lambda (j7412 k7413 v7411)
                  (letrec*
                   ((g8431
                     (letrec*
                      ((checked7414
                        (letrec*
                         ((x8432
                           (letrec*
                            ((x8433
                              (begin
                                (write '(funapp 1887 37))
                                (display "\n")
                                (orig-cdr v7411))))
                            (begin
                              (write '(funapp 1888 29))
                              (display "\n")
                              (orig-car x8433)))))
                         (begin
                           (write '(funapp 1889 26))
                           (display "\n")
                           (real?/c j7412 k7413 x8432)))))
                      (letrec*
                       ((g8434
                         (letrec*
                          ((checked7415
                            (letrec*
                             ((x8435
                               (letrec*
                                ((x8436
                                  (letrec*
                                   ((x8437
                                     (begin
                                       (write '(funapp 1899 44))
                                       (display "\n")
                                       (orig-cdr v7411))))
                                   (begin
                                     (write '(funapp 1900 36))
                                     (display "\n")
                                     (orig-cdr x8437)))))
                                (begin
                                  (write '(funapp 1901 33))
                                  (display "\n")
                                  (orig-car x8436)))))
                             (begin
                               (write '(funapp 1902 30))
                               (display "\n")
                               (real?/c j7412 k7413 x8435)))))
                          (letrec*
                           ((g8438
                             (letrec*
                              ((checked7416
                                (letrec*
                                 ((x8439
                                   (letrec*
                                    ((x8440
                                      (letrec*
                                       ((x8441
                                         (letrec*
                                          ((x8442
                                            (begin
                                              (write '(funapp 1914 51))
                                              (display "\n")
                                              (orig-cdr v7411))))
                                          (begin
                                            (write '(funapp 1915 43))
                                            (display "\n")
                                            (orig-cdr x8442)))))
                                       (begin
                                         (write '(funapp 1916 40))
                                         (display "\n")
                                         (orig-cdr x8441)))))
                                    (begin
                                      (write '(funapp 1917 37))
                                      (display "\n")
                                      (orig-car x8440)))))
                                 (begin
                                   (write '(funapp 1918 34))
                                   (display "\n")
                                   (COLOR/C j7412 k7413 x8439)))))
                              (letrec*
                               ((g8443
                                 (letrec*
                                  ((x8444
                                    (letrec*
                                     ((x8445
                                       (letrec*
                                        ((x8446
                                          (begin
                                            (write '(funapp 1926 49))
                                            (display "\n")
                                            (cons
                                             checked7416
                                             (begin
                                               (write '(funapp 1926 66))
                                               (display "\n")
                                               '())))))
                                        (begin
                                          (write '(funapp 1927 41))
                                          (display "\n")
                                          (cons checked7415 x8446)))))
                                     (begin
                                       (write '(funapp 1928 38))
                                       (display "\n")
                                       (cons checked7414 x8445)))))
                                  (begin
                                    (write '(funapp 1929 35))
                                    (display "\n")
                                    (cons block x8444)))))
                               g8443))))
                           g8438))))
                       g8434))))
                   g8431)))
               (BSET/C
                (begin
                  (write '(funapp 1934 24))
                  (display "\n")
                  (listof BLOCK/C)))
               (TETRA/C
                (lambda (j7419 k7420 v7418)
                  (letrec*
                   ((g8447
                     (letrec*
                      ((checked7421
                        (letrec*
                         ((x8448
                           (letrec*
                            ((x8449
                              (begin
                                (write '(funapp 1944 37))
                                (display "\n")
                                (orig-cdr v7418))))
                            (begin
                              (write '(funapp 1945 29))
                              (display "\n")
                              (orig-car x8449)))))
                         (begin
                           (write '(funapp 1946 26))
                           (display "\n")
                           (POSN/C j7419 k7420 x8448)))))
                      (letrec*
                       ((g8450
                         (letrec*
                          ((checked7422
                            (letrec*
                             ((x8451
                               (letrec*
                                ((x8452
                                  (letrec*
                                   ((x8453
                                     (begin
                                       (write '(funapp 1956 44))
                                       (display "\n")
                                       (orig-cdr v7418))))
                                   (begin
                                     (write '(funapp 1957 36))
                                     (display "\n")
                                     (orig-cdr x8453)))))
                                (begin
                                  (write '(funapp 1958 33))
                                  (display "\n")
                                  (orig-car x8452)))))
                             (begin
                               (write '(funapp 1959 30))
                               (display "\n")
                               (BSET/C j7419 k7420 x8451)))))
                          (letrec*
                           ((g8454
                             (letrec*
                              ((x8455
                                (letrec*
                                 ((x8456
                                   (begin
                                     (write '(funapp 1965 42))
                                     (display "\n")
                                     (cons
                                      checked7422
                                      (begin
                                        (write '(funapp 1965 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1966 34))
                                   (display "\n")
                                   (cons checked7421 x8456)))))
                              (begin
                                (write '(funapp 1967 31))
                                (display "\n")
                                (cons tetra x8455)))))
                           g8454))))
                       g8450))))
                   g8447)))
               (WORLD/C
                (lambda (j7425 k7426 v7424)
                  (letrec*
                   ((g8457
                     (letrec*
                      ((checked7427
                        (letrec*
                         ((x8458
                           (letrec*
                            ((x8459
                              (begin
                                (write '(funapp 1980 37))
                                (display "\n")
                                (orig-cdr v7424))))
                            (begin
                              (write '(funapp 1981 29))
                              (display "\n")
                              (orig-car x8459)))))
                         (begin
                           (write '(funapp 1982 26))
                           (display "\n")
                           (TETRA/C j7425 k7426 x8458)))))
                      (letrec*
                       ((g8460
                         (letrec*
                          ((checked7428
                            (letrec*
                             ((x8461
                               (letrec*
                                ((x8462
                                  (letrec*
                                   ((x8463
                                     (begin
                                       (write '(funapp 1992 44))
                                       (display "\n")
                                       (orig-cdr v7424))))
                                   (begin
                                     (write '(funapp 1993 36))
                                     (display "\n")
                                     (orig-cdr x8463)))))
                                (begin
                                  (write '(funapp 1994 33))
                                  (display "\n")
                                  (orig-car x8462)))))
                             (begin
                               (write '(funapp 1995 30))
                               (display "\n")
                               (BSET/C j7425 k7426 x8461)))))
                          (letrec*
                           ((g8464
                             (letrec*
                              ((x8465
                                (letrec*
                                 ((x8466
                                   (begin
                                     (write '(funapp 2001 42))
                                     (display "\n")
                                     (cons
                                      checked7428
                                      (begin
                                        (write '(funapp 2001 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 2002 34))
                                   (display "\n")
                                   (cons checked7427 x8466)))))
                              (begin
                                (write '(funapp 2003 31))
                                (display "\n")
                                (cons world x8465)))))
                           g8464))))
                       g8460))))
                   g8457)))
               (posn=?
                (lambda (p1 p2)
                  (letrec*
                   ((g8467
                     (letrec*
                      ((x-cnd8468
                        (letrec*
                         ((x8470
                           (begin
                             (write '(funapp 2014 34))
                             (display "\n")
                             (posn-x p1)))
                          (x8469
                           (begin
                             (write '(funapp 2014 54))
                             (display "\n")
                             (posn-x p2))))
                         (begin
                           (write '(funapp 2015 26))
                           (display "\n")
                           (= x8470 x8469)))))
                      (if x-cnd8468
                        (letrec*
                         ((x8472
                           (begin
                             (write '(funapp 2018 34))
                             (display "\n")
                             (posn-y p1)))
                          (x8471
                           (begin
                             (write '(funapp 2018 54))
                             (display "\n")
                             (posn-y p2))))
                         (begin
                           (write '(funapp 2019 26))
                           (display "\n")
                           (= x8472 x8471)))
                        #f))))
                   g8467)))
               (block-size 20)
               (board-height 20)
               (board-width 10)
               (block=?
                (lambda (b1 b2)
                  (letrec*
                   ((g8473
                     (letrec*
                      ((x-cnd8474
                        (letrec*
                         ((x8476
                           (begin
                             (write '(funapp 2032 34))
                             (display "\n")
                             (block-x b1)))
                          (x8475
                           (begin
                             (write '(funapp 2032 55))
                             (display "\n")
                             (block-x b2))))
                         (begin
                           (write '(funapp 2033 26))
                           (display "\n")
                           (= x8476 x8475)))))
                      (if x-cnd8474
                        (letrec*
                         ((x8478
                           (begin
                             (write '(funapp 2036 34))
                             (display "\n")
                             (block-y b1)))
                          (x8477
                           (begin
                             (write '(funapp 2036 55))
                             (display "\n")
                             (block-y b2))))
                         (begin
                           (write '(funapp 2037 26))
                           (display "\n")
                           (= x8478 x8477)))
                        #f))))
                   g8473)))
               (block-move
                (lambda (dx dy b)
                  (letrec*
                   ((g8479
                     (letrec*
                      ((x8483
                        (letrec*
                         ((x8484
                           (begin
                             (write '(funapp 2045 48))
                             (display "\n")
                             (block-x b))))
                         (begin
                           (write '(funapp 2045 62))
                           (display "\n")
                           (+ dx x8484))))
                       (x8481
                        (letrec*
                         ((x8482
                           (begin
                             (write '(funapp 2046 48))
                             (display "\n")
                             (block-y b))))
                         (begin
                           (write '(funapp 2046 62))
                           (display "\n")
                           (+ dy x8482))))
                       (x8480
                        (begin
                          (write '(funapp 2047 31))
                          (display "\n")
                          (block-color b))))
                      (begin
                        (write '(funapp 2048 23))
                        (display "\n")
                        (block x8483 x8481 x8480)))))
                   g8479)))
               (block-rotate-ccw
                (lambda (c b)
                  (letrec*
                   ((g8485
                     (letrec*
                      ((x8492
                        (letrec*
                         ((x8496
                           (begin
                             (write '(funapp 2057 34))
                             (display "\n")
                             (posn-x c)))
                          (x8493
                           (letrec*
                            ((x8495
                              (begin
                                (write '(funapp 2060 37))
                                (display "\n")
                                (posn-y c)))
                             (x8494
                              (begin
                                (write '(funapp 2060 56))
                                (display "\n")
                                (block-y b))))
                            (begin
                              (write '(funapp 2061 29))
                              (display "\n")
                              (- x8495 x8494)))))
                         (begin
                           (write '(funapp 2062 26))
                           (display "\n")
                           (+ x8496 x8493))))
                       (x8487
                        (letrec*
                         ((x8491
                           (begin
                             (write '(funapp 2065 34))
                             (display "\n")
                             (posn-y c)))
                          (x8488
                           (letrec*
                            ((x8490
                              (begin
                                (write '(funapp 2068 37))
                                (display "\n")
                                (block-x b)))
                             (x8489
                              (begin
                                (write '(funapp 2068 57))
                                (display "\n")
                                (posn-x c))))
                            (begin
                              (write '(funapp 2069 29))
                              (display "\n")
                              (- x8490 x8489)))))
                         (begin
                           (write '(funapp 2070 26))
                           (display "\n")
                           (+ x8491 x8488))))
                       (x8486
                        (begin
                          (write '(funapp 2071 31))
                          (display "\n")
                          (block-color b))))
                      (begin
                        (write '(funapp 2072 23))
                        (display "\n")
                        (block x8492 x8487 x8486)))))
                   g8485)))
               (block-rotate-cw
                (lambda (c b)
                  (letrec*
                   ((g8497
                     (letrec*
                      ((x8498
                        (letrec*
                         ((x8499
                           (begin
                             (write '(funapp 2081 34))
                             (display "\n")
                             (block-rotate-ccw c b))))
                         (begin
                           (write '(funapp 2082 26))
                           (display "\n")
                           (block-rotate-ccw c x8499)))))
                      (begin
                        (write '(funapp 2083 23))
                        (display "\n")
                        (block-rotate-ccw c x8498)))))
                   g8497)))
               (ormap
                (lambda (p? xs)
                  (letrec*
                   ((g8500
                     (letrec*
                      ((x-cnd8501
                        (begin
                          (write '(funapp 2090 35))
                          (display "\n")
                          (null? xs))))
                      (if x-cnd8501
                        (letrec* ((g8502 #f)) g8502)
                        (letrec*
                         ((g8503
                           (letrec*
                            ((x8506
                              (letrec*
                               ((x8507
                                 (begin
                                   (write '(funapp 2096 54))
                                   (display "\n")
                                   (car xs))))
                               (begin
                                 (write '(funapp 2096 65))
                                 (display "\n")
                                 (p? x8507))))
                             (x8504
                              (letrec*
                               ((x8505
                                 (begin
                                   (write '(funapp 2098 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 2098 59))
                                 (display "\n")
                                 (ormap p? x8505)))))
                            (begin
                              (write '(funapp 2099 29))
                              (display "\n")
                              (or x8506 x8504)))))
                         g8503)))))
                   g8500)))
               (andmap
                (lambda (p? xs)
                  (letrec*
                   ((g8508
                     (letrec*
                      ((x-cnd8509
                        (begin
                          (write '(funapp 2107 35))
                          (display "\n")
                          (null? xs))))
                      (if x-cnd8509
                        (letrec* ((g8510 #t)) g8510)
                        (letrec*
                         ((g8511
                           (letrec*
                            ((x8514
                              (letrec*
                               ((x8515
                                 (begin
                                   (write '(funapp 2113 54))
                                   (display "\n")
                                   (car xs))))
                               (begin
                                 (write '(funapp 2113 65))
                                 (display "\n")
                                 (p? x8515))))
                             (x8512
                              (letrec*
                               ((x8513
                                 (begin
                                   (write '(funapp 2115 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 2115 59))
                                 (display "\n")
                                 (andmap p? x8513)))))
                            (begin
                              (write '(funapp 2116 29))
                              (display "\n")
                              (and x8514 x8512)))))
                         g8511)))))
                   g8508)))
               (filter
                (lambda (p? xs)
                  (letrec*
                   ((g8516
                     (letrec*
                      ((x-cnd8517
                        (begin
                          (write '(funapp 2124 35))
                          (display "\n")
                          (null? xs))))
                      (if x-cnd8517
                        (letrec* ((g8518 null)) g8518)
                        (letrec*
                         ((x-cnd8519
                           (letrec*
                            ((x8520
                              (begin
                                (write '(funapp 2128 55))
                                (display "\n")
                                (car xs))))
                            (begin
                              (write '(funapp 2128 66))
                              (display "\n")
                              (p? x8520)))))
                         (if x-cnd8519
                           (letrec*
                            ((g8521
                              (letrec*
                               ((x8524
                                 (begin
                                   (write '(funapp 2133 40))
                                   (display "\n")
                                   (car xs)))
                                (x8522
                                 (letrec*
                                  ((x8523
                                    (begin
                                      (write '(funapp 2136 43))
                                      (display "\n")
                                      (cdr xs))))
                                  (begin
                                    (write '(funapp 2137 35))
                                    (display "\n")
                                    (filter p? x8523)))))
                               (begin
                                 (write '(funapp 2138 32))
                                 (display "\n")
                                 (cons x8524 x8522)))))
                            g8521)
                           (letrec*
                            ((g8525
                              (letrec*
                               ((x8526
                                 (begin
                                   (write '(funapp 2142 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 2142 59))
                                 (display "\n")
                                 (filter p? x8526)))))
                            g8525)))))))
                   g8516)))
               (append
                (lambda (l r)
                  (letrec*
                   ((g8527
                     (letrec*
                      ((x-cnd8528
                        (begin
                          (write '(funapp 2150 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8528
                        (letrec* ((g8529 r)) g8529)
                        (letrec*
                         ((g8530
                           (letrec*
                            ((x8533
                              (begin
                                (write '(funapp 2156 37))
                                (display "\n")
                                (car l)))
                             (x8531
                              (letrec*
                               ((x8532
                                 (begin
                                   (write '(funapp 2158 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 2158 58))
                                 (display "\n")
                                 (append x8532 r)))))
                            (begin
                              (write '(funapp 2159 29))
                              (display "\n")
                              (cons x8533 x8531)))))
                         g8530)))))
                   g8527)))
               (foldr
                (lambda (f a xs)
                  (letrec*
                   ((g8534
                     (letrec*
                      ((x-cnd8535
                        (begin
                          (write '(funapp 2167 35))
                          (display "\n")
                          (null? xs))))
                      (if x-cnd8535
                        (letrec* ((g8536 a)) g8536)
                        (letrec*
                         ((g8537
                           (letrec*
                            ((x8540
                              (begin
                                (write '(funapp 2173 37))
                                (display "\n")
                                (car xs)))
                             (x8538
                              (letrec*
                               ((x8539
                                 (begin
                                   (write '(funapp 2175 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 2175 59))
                                 (display "\n")
                                 (foldr f a x8539)))))
                            (begin
                              (write '(funapp 2176 29))
                              (display "\n")
                              (f x8540 x8538)))))
                         g8537)))))
                   g8534)))
               (blocks-contains?
                (lambda (bs b)
                  (letrec*
                   ((g8541
                     (begin
                       (write '(funapp 2183 22))
                       (display "\n")
                       (ormap
                        (lambda (c)
                          (letrec*
                           ((g8542
                             (begin
                               (write '(funapp 2184 52))
                               (display "\n")
                               (block=? b c))))
                           g8542))
                        bs))))
                   g8541)))
               (blocks-subset?
                (lambda (bs1 bs2)
                  (letrec*
                   ((g8543
                     (begin
                       (write '(funapp 2191 22))
                       (display "\n")
                       (andmap
                        (lambda (b)
                          (letrec*
                           ((g8544
                             (begin
                               (write '(funapp 2193 42))
                               (display "\n")
                               (blocks-contains? bs2 b))))
                           g8544))
                        bs1))))
                   g8543)))
               (blocks=?
                (lambda (bs1 bs2)
                  (letrec*
                   ((g8545
                     (letrec*
                      ((x-cnd8546
                        (begin
                          (write '(funapp 2201 35))
                          (display "\n")
                          (blocks-subset? bs1 bs2))))
                      (if x-cnd8546
                        (begin
                          (write '(funapp 2202 37))
                          (display "\n")
                          (blocks-subset? bs2 bs1))
                        #f))))
                   g8545)))
               (blocks-intersect
                (lambda (bs1 bs2)
                  (letrec*
                   ((g8547
                     (begin
                       (write '(funapp 2208 22))
                       (display "\n")
                       (filter
                        (lambda (b)
                          (letrec*
                           ((g8548
                             (begin
                               (write '(funapp 2210 42))
                               (display "\n")
                               (blocks-contains? bs2 b))))
                           g8548))
                        bs1))))
                   g8547)))
               (blocks-count
                (lambda (bs)
                  (letrec*
                   ((g8549
                     (begin
                       (write '(funapp 2214 47))
                       (display "\n")
                       (length bs))))
                   g8549)))
               (blocks-move
                (lambda (dx dy bs)
                  (letrec*
                   ((g8550
                     (begin
                       (write '(funapp 2219 22))
                       (display "\n")
                       (map
                        (lambda (b)
                          (letrec*
                           ((g8551
                             (begin
                               (write '(funapp 2221 42))
                               (display "\n")
                               (block-move dx dy b))))
                           g8551))
                        bs))))
                   g8550)))
               (blocks-rotate-ccw
                (lambda (c bs)
                  (letrec*
                   ((g8552
                     (begin
                       (write '(funapp 2228 22))
                       (display "\n")
                       (map
                        (lambda (b)
                          (letrec*
                           ((g8553
                             (begin
                               (write '(funapp 2230 42))
                               (display "\n")
                               (block-rotate-ccw c b))))
                           g8553))
                        bs))))
                   g8552)))
               (blocks-rotate-cw
                (lambda (c bs)
                  (letrec*
                   ((g8554
                     (begin
                       (write '(funapp 2237 22))
                       (display "\n")
                       (map
                        (lambda (b)
                          (letrec*
                           ((g8555
                             (begin
                               (write '(funapp 2239 42))
                               (display "\n")
                               (block-rotate-cw c b))))
                           g8555))
                        bs))))
                   g8554)))
               (blocks-change-color
                (lambda (bs c)
                  (letrec*
                   ((g8556
                     (begin
                       (write '(funapp 2246 22))
                       (display "\n")
                       (map
                        (lambda (b)
                          (letrec*
                           ((g8557
                             (letrec*
                              ((x8559
                                (begin
                                  (write '(funapp 2251 37))
                                  (display "\n")
                                  (block-x b)))
                               (x8558
                                (begin
                                  (write '(funapp 2251 57))
                                  (display "\n")
                                  (block-y b))))
                              (begin
                                (write '(funapp 2252 29))
                                (display "\n")
                                (block x8559 x8558 c)))))
                           g8557))
                        bs))))
                   g8556)))
               (blocks-row
                (lambda (bs i)
                  (letrec*
                   ((g8560
                     (begin
                       (write '(funapp 2260 22))
                       (display "\n")
                       (filter
                        (lambda (b)
                          (letrec*
                           ((g8561
                             (letrec*
                              ((x8562
                                (begin
                                  (write '(funapp 2263 51))
                                  (display "\n")
                                  (block-y b))))
                              (begin
                                (write '(funapp 2263 65))
                                (display "\n")
                                (= i x8562)))))
                           g8561))
                        bs))))
                   g8560)))
               (full-row?
                (lambda (bs i)
                  (letrec*
                   ((g8563
                     (letrec*
                      ((x8564
                        (letrec*
                         ((x8565
                           (begin
                             (write '(funapp 2274 34))
                             (display "\n")
                             (blocks-row bs i))))
                         (begin
                           (write '(funapp 2275 26))
                           (display "\n")
                           (blocks-count x8565)))))
                      (begin
                        (write '(funapp 2276 23))
                        (display "\n")
                        (= board-width x8564)))))
                   g8563)))
               (blocks-overflow?
                (lambda (bs)
                  (letrec*
                   ((g8566
                     (begin
                       (write '(funapp 2282 22))
                       (display "\n")
                       (ormap
                        (lambda (b)
                          (letrec*
                           ((g8567
                             (letrec*
                              ((x8568
                                (begin
                                  (write '(funapp 2285 51))
                                  (display "\n")
                                  (block-y b))))
                              (begin
                                (write '(funapp 2285 65))
                                (display "\n")
                                (<= x8568 0)))))
                           g8567))
                        bs))))
                   g8566)))
               (blocks-union
                (lambda (bs1 bs2)
                  (letrec*
                   ((g8569
                     (begin
                       (write '(funapp 2293 22))
                       (display "\n")
                       (foldr
                        (lambda (b bs)
                          (letrec*
                           ((g8570
                             (letrec*
                              ((x-cnd8571
                                (begin
                                  (write '(funapp 2298 41))
                                  (display "\n")
                                  (blocks-contains? bs b))))
                              (if x-cnd8571
                                (letrec* ((g8572 bs)) g8572)
                                (letrec*
                                 ((g8573
                                   (begin
                                     (write '(funapp 2301 48))
                                     (display "\n")
                                     (cons b bs))))
                                 g8573)))))
                           g8570))
                        bs2
                        bs1))))
                   g8569)))
               (blocks-max-y
                (lambda (bs)
                  (letrec*
                   ((g8574
                     (begin
                       (write '(funapp 2310 22))
                       (display "\n")
                       (foldr
                        (lambda (b n)
                          (letrec*
                           ((g8575
                             (letrec*
                              ((x8576
                                (begin
                                  (write '(funapp 2314 45))
                                  (display "\n")
                                  (block-y b))))
                              (begin
                                (write '(funapp 2314 59))
                                (display "\n")
                                (max x8576 n)))))
                           g8575))
                        0
                        bs))))
                   g8574)))
               (blocks-min-x
                (lambda (bs)
                  (letrec*
                   ((g8577
                     (begin
                       (write '(funapp 2323 22))
                       (display "\n")
                       (foldr
                        (lambda (b n)
                          (letrec*
                           ((g8578
                             (letrec*
                              ((x8579
                                (begin
                                  (write '(funapp 2327 45))
                                  (display "\n")
                                  (block-x b))))
                              (begin
                                (write '(funapp 2327 59))
                                (display "\n")
                                (min x8579 n)))))
                           g8578))
                        board-width
                        bs))))
                   g8577)))
               (blocks-max-x
                (lambda (bs)
                  (letrec*
                   ((g8580
                     (begin
                       (write '(funapp 2336 22))
                       (display "\n")
                       (foldr
                        (lambda (b n)
                          (letrec*
                           ((g8581
                             (letrec*
                              ((x8582
                                (begin
                                  (write '(funapp 2340 45))
                                  (display "\n")
                                  (block-x b))))
                              (begin
                                (write '(funapp 2340 59))
                                (display "\n")
                                (max x8582 n)))))
                           g8581))
                        0
                        bs))))
                   g8580)))
               (eliminate-full-rows
                (lambda (bs)
                  (letrec*
                   ((g8583
                     (begin
                       (write '(funapp 2347 36))
                       (display "\n")
                       (elim-row bs board-height 0))))
                   g8583)))
               (elim-row
                (lambda (bs i offset)
                  (letrec*
                   ((g8584
                     (letrec*
                      ((x-cnd8585
                        (begin
                          (write '(funapp 2353 35))
                          (display "\n")
                          (< i 0))))
                      (if x-cnd8585
                        (letrec* ((g8586 empty)) g8586)
                        (letrec*
                         ((x-cnd8587
                           (begin
                             (write '(funapp 2357 38))
                             (display "\n")
                             (full-row? bs i))))
                         (if x-cnd8587
                           (letrec*
                            ((g8588
                              (letrec*
                               ((x8590
                                 (begin
                                   (write '(funapp 2362 40))
                                   (display "\n")
                                   (sub1 i)))
                                (x8589
                                 (begin
                                   (write '(funapp 2362 57))
                                   (display "\n")
                                   (add1 offset))))
                               (begin
                                 (write '(funapp 2363 32))
                                 (display "\n")
                                 (elim-row bs x8590 x8589)))))
                            g8588)
                           (letrec*
                            ((g8591
                              (letrec*
                               ((x8594
                                 (letrec*
                                  ((x8595
                                    (begin
                                      (write '(funapp 2370 43))
                                      (display "\n")
                                      (sub1 i))))
                                  (begin
                                    (write '(funapp 2371 35))
                                    (display "\n")
                                    (elim-row bs x8595 offset))))
                                (x8592
                                 (letrec*
                                  ((x8593
                                    (begin
                                      (write '(funapp 2374 43))
                                      (display "\n")
                                      (blocks-row bs i))))
                                  (begin
                                    (write '(funapp 2375 35))
                                    (display "\n")
                                    (blocks-move 0 offset x8593)))))
                               (begin
                                 (write '(funapp 2376 32))
                                 (display "\n")
                                 (blocks-union x8594 x8592)))))
                            g8591)))))))
                   g8584)))
               (tetra-move
                (lambda (dx dy t)
                  (letrec*
                   ((g8596
                     (letrec*
                      ((x8599
                        (letrec*
                         ((x8603
                           (letrec*
                            ((x8604
                              (letrec*
                               ((x8605
                                 (begin
                                   (write '(funapp 2390 40))
                                   (display "\n")
                                   (tetra-center t))))
                               (begin
                                 (write '(funapp 2391 32))
                                 (display "\n")
                                 (posn-x x8605)))))
                            (begin
                              (write '(funapp 2392 29))
                              (display "\n")
                              (+ dx x8604))))
                          (x8600
                           (letrec*
                            ((x8601
                              (letrec*
                               ((x8602
                                 (begin
                                   (write '(funapp 2397 40))
                                   (display "\n")
                                   (tetra-center t))))
                               (begin
                                 (write '(funapp 2398 32))
                                 (display "\n")
                                 (posn-y x8602)))))
                            (begin
                              (write '(funapp 2399 29))
                              (display "\n")
                              (+ dy x8601)))))
                         (begin
                           (write '(funapp 2400 26))
                           (display "\n")
                           (posn x8603 x8600))))
                       (x8597
                        (letrec*
                         ((x8598
                           (begin
                             (write '(funapp 2403 34))
                             (display "\n")
                             (tetra-blocks t))))
                         (begin
                           (write '(funapp 2404 26))
                           (display "\n")
                           (blocks-move dx dy x8598)))))
                      (begin
                        (write '(funapp 2405 23))
                        (display "\n")
                        (tetra x8599 x8597)))))
                   g8596)))
               (tetra-rotate-ccw
                (lambda (t)
                  (letrec*
                   ((g8606
                     (letrec*
                      ((x8610
                        (begin
                          (write '(funapp 2412 31))
                          (display "\n")
                          (tetra-center t)))
                       (x8607
                        (letrec*
                         ((x8609
                           (begin
                             (write '(funapp 2415 34))
                             (display "\n")
                             (tetra-center t)))
                          (x8608
                           (begin
                             (write '(funapp 2415 59))
                             (display "\n")
                             (tetra-blocks t))))
                         (begin
                           (write '(funapp 2416 26))
                           (display "\n")
                           (blocks-rotate-ccw x8609 x8608)))))
                      (begin
                        (write '(funapp 2417 23))
                        (display "\n")
                        (tetra x8610 x8607)))))
                   g8606)))
               (tetra-rotate-cw
                (lambda (t)
                  (letrec*
                   ((g8611
                     (letrec*
                      ((x8615
                        (begin
                          (write '(funapp 2424 31))
                          (display "\n")
                          (tetra-center t)))
                       (x8612
                        (letrec*
                         ((x8614
                           (begin
                             (write '(funapp 2427 34))
                             (display "\n")
                             (tetra-center t)))
                          (x8613
                           (begin
                             (write '(funapp 2427 59))
                             (display "\n")
                             (tetra-blocks t))))
                         (begin
                           (write '(funapp 2428 26))
                           (display "\n")
                           (blocks-rotate-cw x8614 x8613)))))
                      (begin
                        (write '(funapp 2429 23))
                        (display "\n")
                        (tetra x8615 x8612)))))
                   g8611)))
               (tetra-overlaps-blocks?
                (lambda (t bs)
                  (letrec*
                   ((g8616
                     (letrec*
                      ((x8617
                        (letrec*
                         ((x8618
                           (letrec*
                            ((x8619
                              (begin
                                (write '(funapp 2440 37))
                                (display "\n")
                                (tetra-blocks t))))
                            (begin
                              (write '(funapp 2441 29))
                              (display "\n")
                              (blocks-intersect x8619 bs)))))
                         (begin
                           (write '(funapp 2442 26))
                           (display "\n")
                           (false? x8618)))))
                      (begin
                        (write '(funapp 2443 23))
                        (display "\n")
                        (false? x8617)))))
                   g8616)))
               (tetra-change-color
                (lambda (t c)
                  (letrec*
                   ((g8620
                     (letrec*
                      ((x8623
                        (begin
                          (write '(funapp 2450 31))
                          (display "\n")
                          (tetra-center t)))
                       (x8621
                        (letrec*
                         ((x8622
                           (begin
                             (write '(funapp 2453 34))
                             (display "\n")
                             (tetra-blocks t))))
                         (begin
                           (write '(funapp 2454 26))
                           (display "\n")
                           (blocks-change-color x8622 c)))))
                      (begin
                        (write '(funapp 2455 23))
                        (display "\n")
                        (tetra x8623 x8621)))))
                   g8620)))
               (build-tetra-blocks
                (lambda (color xc yc x1 y1 x2 y2 x3 y3 x4 y4)
                  (letrec*
                   ((g8624
                     (letrec*
                      ((x8625
                        (letrec*
                         ((x8631
                           (begin
                             (write '(funapp 2464 34))
                             (display "\n")
                             (posn xc yc)))
                          (x8626
                           (letrec*
                            ((x8630
                              (begin
                                (write '(funapp 2467 37))
                                (display "\n")
                                (block x1 y1 color)))
                             (x8629
                              (begin
                                (write '(funapp 2468 37))
                                (display "\n")
                                (block x2 y2 color)))
                             (x8628
                              (begin
                                (write '(funapp 2469 37))
                                (display "\n")
                                (block x3 y3 color)))
                             (x8627
                              (begin
                                (write '(funapp 2470 37))
                                (display "\n")
                                (block x4 y4 color))))
                            (begin
                              (write '(funapp 2471 29))
                              (display "\n")
                              (list x8630 x8629 x8628 x8627)))))
                         (begin
                           (write '(funapp 2472 26))
                           (display "\n")
                           (tetra x8631 x8626)))))
                      (begin
                        (write '(funapp 2473 23))
                        (display "\n")
                        (tetra-move 3 0 x8625)))))
                   g8624)))
               (touchdown
                (lambda (w tetras)
                  (letrec*
                   ((g8632
                     (letrec*
                      ((x8638
                        (begin
                          (write '(funapp 2480 31))
                          (display "\n")
                          (list-pick-random tetras)))
                       (x8633
                        (letrec*
                         ((x8634
                           (letrec*
                            ((x8636
                              (letrec*
                               ((x8637
                                 (begin
                                   (write '(funapp 2487 40))
                                   (display "\n")
                                   (world-tetra w))))
                               (begin
                                 (write '(funapp 2488 32))
                                 (display "\n")
                                 (tetra-blocks x8637))))
                             (x8635
                              (begin
                                (write '(funapp 2489 37))
                                (display "\n")
                                (world-blocks w))))
                            (begin
                              (write '(funapp 2490 29))
                              (display "\n")
                              (blocks-union x8636 x8635)))))
                         (begin
                           (write '(funapp 2491 26))
                           (display "\n")
                           (eliminate-full-rows x8634)))))
                      (begin
                        (write '(funapp 2492 23))
                        (display "\n")
                        (world x8638 x8633)))))
                   g8632)))
               (world-jump-down
                (lambda (w)
                  (letrec*
                   ((g8639
                     (letrec*
                      ((x-cnd8640
                        (begin
                          (write '(funapp 2499 35))
                          (display "\n")
                          (landed? w))))
                      (if x-cnd8640
                        (letrec* ((g8641 w)) g8641)
                        (letrec*
                         ((g8642
                           (letrec*
                            ((x8643
                              (letrec*
                               ((x8645
                                 (letrec*
                                  ((x8646
                                    (begin
                                      (write '(funapp 2509 43))
                                      (display "\n")
                                      (world-tetra w))))
                                  (begin
                                    (write '(funapp 2510 35))
                                    (display "\n")
                                    (tetra-move 0 1 x8646))))
                                (x8644
                                 (begin
                                   (write '(funapp 2511 40))
                                   (display "\n")
                                   (world-blocks w))))
                               (begin
                                 (write '(funapp 2512 32))
                                 (display "\n")
                                 (world x8645 x8644)))))
                            (begin
                              (write '(funapp 2513 29))
                              (display "\n")
                              (world-jump-down x8643)))))
                         g8642)))))
                   g8639)))
               (landed-on-blocks?
                (lambda (w)
                  (letrec*
                   ((g8647
                     (letrec*
                      ((x8649
                        (letrec*
                         ((x8650
                           (begin
                             (write '(funapp 2523 34))
                             (display "\n")
                             (world-tetra w))))
                         (begin
                           (write '(funapp 2524 26))
                           (display "\n")
                           (tetra-move 0 1 x8650))))
                       (x8648
                        (begin
                          (write '(funapp 2525 31))
                          (display "\n")
                          (world-blocks w))))
                      (begin
                        (write '(funapp 2526 23))
                        (display "\n")
                        (tetra-overlaps-blocks? x8649 x8648)))))
                   g8647)))
               (landed-on-floor?
                (lambda (w)
                  (letrec*
                   ((g8651
                     (letrec*
                      ((x8653
                        (letrec*
                         ((x8654
                           (letrec*
                            ((x8655
                              (begin
                                (write '(funapp 2537 37))
                                (display "\n")
                                (world-tetra w))))
                            (begin
                              (write '(funapp 2538 29))
                              (display "\n")
                              (tetra-blocks x8655)))))
                         (begin
                           (write '(funapp 2539 26))
                           (display "\n")
                           (blocks-max-y x8654))))
                       (x8652
                        (begin
                          (write '(funapp 2540 31))
                          (display "\n")
                          (sub1 board-height))))
                      (begin
                        (write '(funapp 2541 23))
                        (display "\n")
                        (= x8653 x8652)))))
                   g8651)))
               (landed?
                (lambda (w)
                  (letrec*
                   ((g8656
                     (letrec*
                      ((val7263
                        (begin
                          (write '(funapp 2548 33))
                          (display "\n")
                          (landed-on-blocks? w))))
                      (letrec*
                       ((g8657
                         (if val7263
                           val7263
                           (begin
                             (write '(funapp 2550 52))
                             (display "\n")
                             (landed-on-floor? w)))))
                       g8657))))
                   g8656)))
               (next-world
                (lambda (w tetras)
                  (letrec*
                   ((g8658
                     (letrec*
                      ((x-cnd8659
                        (begin
                          (write '(funapp 2558 35))
                          (display "\n")
                          (landed? w))))
                      (if x-cnd8659
                        (letrec*
                         ((g8660
                           (begin
                             (write '(funapp 2560 42))
                             (display "\n")
                             (touchdown w tetras))))
                         g8660)
                        (letrec*
                         ((g8661
                           (letrec*
                            ((x8663
                              (letrec*
                               ((x8664
                                 (begin
                                   (write '(funapp 2566 40))
                                   (display "\n")
                                   (world-tetra w))))
                               (begin
                                 (write '(funapp 2567 32))
                                 (display "\n")
                                 (tetra-move 0 1 x8664))))
                             (x8662
                              (begin
                                (write '(funapp 2568 37))
                                (display "\n")
                                (world-blocks w))))
                            (begin
                              (write '(funapp 2569 29))
                              (display "\n")
                              (world x8663 x8662)))))
                         g8661)))))
                   g8658)))
               (try-new-tetra
                (lambda (w new-tetra)
                  (letrec*
                   ((g8665
                     (letrec*
                      ((x-cnd8666
                        (letrec*
                         ((val7264
                           (letrec*
                            ((x8667
                              (letrec*
                               ((x8668
                                 (begin
                                   (write '(funapp 2583 40))
                                   (display "\n")
                                   (tetra-blocks new-tetra))))
                               (begin
                                 (write '(funapp 2584 32))
                                 (display "\n")
                                 (blocks-min-x x8668)))))
                            (begin
                              (write '(funapp 2585 29))
                              (display "\n")
                              (< x8667 0)))))
                         (letrec*
                          ((g8669
                            (if val7264
                              val7264
                              (letrec*
                               ((val7265
                                 (letrec*
                                  ((x8670
                                    (letrec*
                                     ((x8671
                                       (begin
                                         (write '(funapp 2595 46))
                                         (display "\n")
                                         (tetra-blocks new-tetra))))
                                     (begin
                                       (write '(funapp 2596 38))
                                       (display "\n")
                                       (blocks-max-x x8671)))))
                                  (begin
                                    (write '(funapp 2597 35))
                                    (display "\n")
                                    (>= x8670 board-width)))))
                               (letrec*
                                ((g8672
                                  (if val7265
                                    val7265
                                    (letrec*
                                     ((x8673
                                       (begin
                                         (write '(funapp 2603 46))
                                         (display "\n")
                                         (world-blocks w))))
                                     (begin
                                       (write '(funapp 2604 38))
                                       (display "\n")
                                       (tetra-overlaps-blocks?
                                        new-tetra
                                        x8673))))))
                                g8672)))))
                          g8669))))
                      (if x-cnd8666
                        (letrec* ((g8674 w)) g8674)
                        (letrec*
                         ((g8675
                           (letrec*
                            ((x8676
                              (begin
                                (write '(funapp 2614 37))
                                (display "\n")
                                (world-blocks w))))
                            (begin
                              (write '(funapp 2615 29))
                              (display "\n")
                              (world new-tetra x8676)))))
                         g8675)))))
                   g8665)))
               (world-move
                (lambda (dx dy w)
                  (letrec*
                   ((g8677
                     (letrec*
                      ((x8678
                        (letrec*
                         ((x8679
                           (begin
                             (write '(funapp 2625 34))
                             (display "\n")
                             (world-tetra w))))
                         (begin
                           (write '(funapp 2626 26))
                           (display "\n")
                           (tetra-move dx dy x8679)))))
                      (begin
                        (write '(funapp 2627 23))
                        (display "\n")
                        (try-new-tetra w x8678)))))
                   g8677)))
               (world-rotate-ccw
                (lambda (w)
                  (letrec*
                   ((g8680
                     (letrec*
                      ((x8681
                        (letrec*
                         ((x8682
                           (begin
                             (write '(funapp 2636 34))
                             (display "\n")
                             (world-tetra w))))
                         (begin
                           (write '(funapp 2637 26))
                           (display "\n")
                           (tetra-rotate-ccw x8682)))))
                      (begin
                        (write '(funapp 2638 23))
                        (display "\n")
                        (try-new-tetra w x8681)))))
                   g8680)))
               (world-rotate-cw
                (lambda (w)
                  (letrec*
                   ((g8683
                     (letrec*
                      ((x8684
                        (letrec*
                         ((x8685
                           (begin
                             (write '(funapp 2647 34))
                             (display "\n")
                             (world-tetra w))))
                         (begin
                           (write '(funapp 2648 26))
                           (display "\n")
                           (tetra-rotate-cw x8685)))))
                      (begin
                        (write '(funapp 2649 23))
                        (display "\n")
                        (try-new-tetra w x8684)))))
                   g8683)))
               (ghost-blocks
                (lambda (w)
                  (letrec*
                   ((g8686
                     (letrec*
                      ((x8687
                        (letrec*
                         ((x8688
                           (letrec*
                            ((x8689
                              (begin
                                (write '(funapp 2660 37))
                                (display "\n")
                                (world-jump-down w))))
                            (begin
                              (write '(funapp 2661 29))
                              (display "\n")
                              (world-tetra x8689)))))
                         (begin
                           (write '(funapp 2662 26))
                           (display "\n")
                           (tetra-change-color
                            x8688
                            (begin
                              (write '(funapp 2662 51))
                              (display "\n")
                              'gray))))))
                      (begin
                        (write '(funapp 2663 23))
                        (display "\n")
                        (tetra-blocks x8687)))))
                   g8686)))
               (world-key-move
                (lambda (w k)
                  (letrec*
                   ((g8690
                     (letrec*
                      ((x-cnd8691
                        (begin
                          (write '(funapp 2670 35))
                          (display "\n")
                          (equal? k "left"))))
                      (if x-cnd8691
                        (letrec*
                         ((g8692
                           (begin
                             (write '(funapp 2672 42))
                             (display "\n")
                             (world-move neg-1 0 w))))
                         g8692)
                        (letrec*
                         ((x-cnd8693
                           (begin
                             (write '(funapp 2674 38))
                             (display "\n")
                             (equal? k "right"))))
                         (if x-cnd8693
                           (letrec*
                            ((g8694
                              (begin
                                (write '(funapp 2676 45))
                                (display "\n")
                                (world-move 1 0 w))))
                            g8694)
                           (letrec*
                            ((x-cnd8695
                              (begin
                                (write '(funapp 2678 41))
                                (display "\n")
                                (equal? k "down"))))
                            (if x-cnd8695
                              (letrec*
                               ((g8696
                                 (begin
                                   (write '(funapp 2680 48))
                                   (display "\n")
                                   (world-jump-down w))))
                               g8696)
                              (letrec*
                               ((x-cnd8697
                                 (begin
                                   (write '(funapp 2682 44))
                                   (display "\n")
                                   (equal? k "a"))))
                               (if x-cnd8697
                                 (letrec*
                                  ((g8698
                                    (begin
                                      (write '(funapp 2684 51))
                                      (display "\n")
                                      (world-rotate-ccw w))))
                                  g8698)
                                 (letrec*
                                  ((x-cnd8699
                                    (begin
                                      (write '(funapp 2686 47))
                                      (display "\n")
                                      (equal? k "s"))))
                                  (if x-cnd8699
                                    (letrec*
                                     ((g8700
                                       (begin
                                         (write '(funapp 2689 46))
                                         (display "\n")
                                         (world-rotate-cw w))))
                                     g8700)
                                    (letrec* ((g8701 w)) g8701)))))))))))))
                   g8690)))
               (image
                (lambda ()
                  (letrec*
                   ((g8702
                     (begin
                       (write '(funapp 2694 45))
                       (display "\n")
                       (orig-cons
                        (begin (write '(funapp 2694 55)) (display "\n") 'image)
                        (begin
                          (write '(funapp 2694 62))
                          (display "\n")
                          '())))))
                   g8702)))
               (image?
                (lambda (image7779)
                  (letrec*
                   ((g8703
                     (letrec*
                      ((x8704
                        (begin
                          (write '(funapp 2699 39))
                          (display "\n")
                          (car image7779))))
                      (begin
                        (write '(funapp 2699 57))
                        (display "\n")
                        (eq?
                         x8704
                         (begin
                           (write '(funapp 2699 67))
                           (display "\n")
                           'image))))))
                   g8703)))
               (image/c
                (lambda (j7431 k7432 v7430)
                  (letrec*
                   ((g8705
                     (begin
                       (write '(funapp 2703 36))
                       (display "\n")
                       (cons
                        image
                        (begin
                          (write '(funapp 2703 47))
                          (display "\n")
                          '())))))
                   g8705)))
               (overlay
                (lambda (i₁ i₂)
                  (letrec*
                   ((g8706
                     (begin (write '(funapp 2704 58)) (display "\n") (image))))
                   g8706)))
               (circle
                (lambda (r m c)
                  (letrec*
                   ((g8707
                     (begin (write '(funapp 2705 57)) (display "\n") (image))))
                   g8707)))
               (rectangle
                (lambda (w h m c)
                  (letrec*
                   ((g8708
                     (begin (write '(funapp 2706 62)) (display "\n") (image))))
                   g8708)))
               (place-image
                (lambda (i₁ r c i₂)
                  (letrec*
                   ((g8709
                     (begin (write '(funapp 2708 54)) (display "\n") (image))))
                   g8709)))
               (empty-scene
                (lambda (w h)
                  (letrec*
                   ((g8710
                     (begin (write '(funapp 2709 60)) (display "\n") (image))))
                   g8710)))
               (list-pick-random
                (lambda (xs)
                  (letrec*
                   ((g8711
                     (letrec*
                      ((x-cnd8712
                        (letrec*
                         ((x8713
                           (begin
                             (write '(funapp 2715 52))
                             (display "\n")
                             (cdr xs))))
                         (begin
                           (write '(funapp 2715 63))
                           (display "\n")
                           (null? x8713)))))
                      (if x-cnd8712
                        (letrec*
                         ((g8714
                           (begin
                             (write '(funapp 2717 42))
                             (display "\n")
                             (car xs))))
                         g8714)
                        (letrec*
                         ((g8715
                           (letrec*
                            ((x8716
                              (begin
                                (write '(funapp 2721 37))
                                (display "\n")
                                (cdr xs))))
                            (begin
                              (write '(funapp 2722 29))
                              (display "\n")
                              (list-pick-random x8716)))))
                         g8715)))))
                   g8711)))
               (neg-1
                (begin (write '(funapp 2725 23)) (display "\n") (random 10)))
               (world->image
                (lambda (w)
                  (letrec*
                   ((g8717
                     (letrec*
                      ((x8721
                        (letrec*
                         ((x8722
                           (letrec*
                            ((x8726
                              (letrec*
                               ((x8727
                                 (begin
                                   (write '(funapp 2737 40))
                                   (display "\n")
                                   (world-tetra w))))
                               (begin
                                 (write '(funapp 2738 32))
                                 (display "\n")
                                 (tetra-blocks x8727))))
                             (x8723
                              (letrec*
                               ((x8725
                                 (begin
                                   (write '(funapp 2741 40))
                                   (display "\n")
                                   (ghost-blocks w)))
                                (x8724
                                 (begin
                                   (write '(funapp 2742 40))
                                   (display "\n")
                                   (world-blocks w))))
                               (begin
                                 (write '(funapp 2743 32))
                                 (display "\n")
                                 (append x8725 x8724)))))
                            (begin
                              (write '(funapp 2744 29))
                              (display "\n")
                              (append x8726 x8723)))))
                         (begin
                           (write '(funapp 2745 26))
                           (display "\n")
                           (blocks->image x8722))))
                       (x8718
                        (letrec*
                         ((x8720
                           (begin
                             (write '(funapp 2748 34))
                             (display "\n")
                             (* board-width block-size)))
                          (x8719
                           (begin
                             (write '(funapp 2749 34))
                             (display "\n")
                             (* board-height block-size))))
                         (begin
                           (write '(funapp 2750 26))
                           (display "\n")
                           (empty-scene x8720 x8719)))))
                      (begin
                        (write '(funapp 2751 23))
                        (display "\n")
                        (place-image x8721 0 0 x8718)))))
                   g8717)))
               (blocks->image
                (lambda (bs)
                  (letrec*
                   ((g8728
                     (letrec*
                      ((x8729
                        (letrec*
                         ((x8732
                           (letrec*
                            ((x8733
                              (begin
                                (write '(funapp 2762 37))
                                (display "\n")
                                (* board-width block-size))))
                            (begin
                              (write '(funapp 2763 29))
                              (display "\n")
                              (add1 x8733))))
                          (x8730
                           (letrec*
                            ((x8731
                              (begin
                                (write '(funapp 2766 37))
                                (display "\n")
                                (* board-height block-size))))
                            (begin
                              (write '(funapp 2767 29))
                              (display "\n")
                              (add1 x8731)))))
                         (begin
                           (write '(funapp 2768 26))
                           (display "\n")
                           (empty-scene x8732 x8730)))))
                      (begin
                        (write '(funapp 2769 23))
                        (display "\n")
                        (foldr
                         (lambda (b img)
                           (letrec*
                            ((g8734
                              (letrec*
                               ((x-cnd8735
                                 (letrec*
                                  ((x8736
                                    (begin
                                      (write '(funapp 2775 49))
                                      (display "\n")
                                      (block-y b))))
                                  (begin
                                    (write '(funapp 2775 63))
                                    (display "\n")
                                    (<= 0 x8736)))))
                               (if x-cnd8735
                                 (letrec*
                                  ((g8737
                                    (begin
                                      (write '(funapp 2777 49))
                                      (display "\n")
                                      (place-block b img))))
                                  g8737)
                                 (letrec* ((g8738 img)) g8738)))))
                            g8734))
                         x8729
                         bs)))))
                   g8728)))
               (block->image
                (lambda (b)
                  (letrec*
                   ((g8739
                     (letrec*
                      ((x8743
                        (letrec*
                         ((x8746
                           (begin
                             (write '(funapp 2790 34))
                             (display "\n")
                             (add1 block-size)))
                          (x8745
                           (begin
                             (write '(funapp 2791 34))
                             (display "\n")
                             (add1 block-size)))
                          (x8744
                           (begin
                             (write '(funapp 2792 34))
                             (display "\n")
                             (block-color b))))
                         (begin
                           (write '(funapp 2793 26))
                           (display "\n")
                           (rectangle
                            x8746
                            x8745
                            (begin
                              (write '(funapp 2793 48))
                              (display "\n")
                              'solid)
                            x8744))))
                       (x8740
                        (letrec*
                         ((x8742
                           (begin
                             (write '(funapp 2796 34))
                             (display "\n")
                             (add1 block-size)))
                          (x8741
                           (begin
                             (write '(funapp 2796 60))
                             (display "\n")
                             (add1 block-size))))
                         (begin
                           (write '(funapp 2797 26))
                           (display "\n")
                           (rectangle
                            x8742
                            x8741
                            (begin
                              (write '(funapp 2797 48))
                              (display "\n")
                              'outline)
                            (begin
                              (write '(funapp 2797 57))
                              (display "\n")
                              'black))))))
                      (begin
                        (write '(funapp 2798 23))
                        (display "\n")
                        (overlay x8743 x8740)))))
                   g8739)))
               (place-block
                (lambda (b scene)
                  (letrec*
                   ((g8747
                     (letrec*
                      ((x8756
                        (begin
                          (write '(funapp 2805 31))
                          (display "\n")
                          (block->image b)))
                       (x8752
                        (letrec*
                         ((x8754
                           (letrec*
                            ((x8755
                              (begin
                                (write '(funapp 2810 37))
                                (display "\n")
                                (block-x b))))
                            (begin
                              (write '(funapp 2811 29))
                              (display "\n")
                              (* x8755 block-size))))
                          (x8753
                           (begin
                             (write '(funapp 2812 34))
                             (display "\n")
                             (/ block-size 2))))
                         (begin
                           (write '(funapp 2813 26))
                           (display "\n")
                           (+ x8754 x8753))))
                       (x8748
                        (letrec*
                         ((x8750
                           (letrec*
                            ((x8751
                              (begin
                                (write '(funapp 2818 37))
                                (display "\n")
                                (block-y b))))
                            (begin
                              (write '(funapp 2819 29))
                              (display "\n")
                              (* x8751 block-size))))
                          (x8749
                           (begin
                             (write '(funapp 2820 34))
                             (display "\n")
                             (/ block-size 2))))
                         (begin
                           (write '(funapp 2821 26))
                           (display "\n")
                           (+ x8750 x8749)))))
                      (begin
                        (write '(funapp 2822 23))
                        (display "\n")
                        (place-image x8756 x8752 x8748 scene)))))
                   g8747)))
               (world0
                (lambda (tetras)
                  (letrec*
                   ((g8757
                     (letrec*
                      ((x8758
                        (begin
                          (write '(funapp 2829 31))
                          (display "\n")
                          (list-pick-random tetras))))
                      (begin
                        (write '(funapp 2830 23))
                        (display "\n")
                        (world x8758 null)))))
                   g8757))))
              (letrec*
               ((g8759
                 (begin
                   (write '(funapp 2834 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 2835 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8770
                          (letrec*
                           ((xj7434
                             (begin
                               (write '(funapp 2839 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2839 37))
                                  (display "\n")
                                  'module))))
                            (xk7435
                             (begin
                               (write '(funapp 2839 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2839 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8771
                              (begin
                                (write '(funapp 2842 27))
                                (display "\n")
                                ((lambda (j7438 k7439 f7440)
                                   (letrec*
                                    ((g8772
                                      (lambda (g7436 g7437)
                                        (letrec*
                                         ((g8773
                                           (letrec*
                                            ((x8774
                                              (letrec*
                                               ((x8776
                                                 (begin
                                                   (write '(funapp 2851 50))
                                                   (display "\n")
                                                   (POSN/C j7438 k7439 g7436)))
                                                (x8775
                                                 (begin
                                                   (write '(funapp 2852 50))
                                                   (display "\n")
                                                   (POSN/C
                                                    j7438
                                                    k7439
                                                    g7437))))
                                               (begin
                                                 (write '(funapp 2853 42))
                                                 (display "\n")
                                                 (f7440 x8776 x8775)))))
                                            (begin
                                              (write '(funapp 2854 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7438
                                               k7439
                                               x8774)))))
                                         g8773))))
                                    g8772))
                                 xj7434
                                 xk7435
                                 posn=?))))
                            g8771)))
                         (x8765
                          (letrec*
                           ((x8766
                             (letrec*
                              ((x8769 (input))
                               (x8767
                                (letrec*
                                 ((x8768 (input)))
                                 (begin
                                   (write '(funapp 2867 56))
                                   (display "\n")
                                   (cons
                                    x8768
                                    (begin
                                      (write '(funapp 2867 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2868 27))
                                (display "\n")
                                (cons x8769 x8767)))))
                           (begin
                             (write '(funapp 2869 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2869 29))
                                (display "\n")
                                'posn)
                              x8766))))
                         (x8760
                          (letrec*
                           ((x8761
                             (letrec*
                              ((x8764 (input))
                               (x8762
                                (letrec*
                                 ((x8763 (input)))
                                 (begin
                                   (write '(funapp 2876 56))
                                   (display "\n")
                                   (cons
                                    x8763
                                    (begin
                                      (write '(funapp 2876 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2877 27))
                                (display "\n")
                                (cons x8764 x8762)))))
                           (begin
                             (write '(funapp 2878 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2878 29))
                                (display "\n")
                                'posn)
                              x8761)))))
                        (begin
                          (write '(funapp 2879 21))
                          (display "\n")
                          (x8770 x8765 x8760)))
                       (letrec*
                        ((xj7441
                          (begin
                            (write '(funapp 2881 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2881 34))
                               (display "\n")
                               'module))))
                         (xk7442
                          (begin
                            (write '(funapp 2881 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2881 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8777
                           (begin
                             (write '(funapp 2882 38))
                             (display "\n")
                             (any/c xj7441 xk7442 COLOR/C))))
                         g8777))
                       (letrec*
                        ((xj7443
                          (begin
                            (write '(funapp 2884 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2884 34))
                               (display "\n")
                               'module))))
                         (xk7444
                          (begin
                            (write '(funapp 2884 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2884 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8778
                           (begin
                             (write '(funapp 2885 38))
                             (display "\n")
                             (any/c xj7443 xk7444 POSN/C))))
                         g8778))
                       (letrec*
                        ((xj7445
                          (begin
                            (write '(funapp 2887 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2887 34))
                               (display "\n")
                               'module))))
                         (xk7446
                          (begin
                            (write '(funapp 2887 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2887 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8779
                           (begin
                             (write '(funapp 2888 38))
                             (display "\n")
                             (any/c xj7445 xk7446 BLOCK/C))))
                         g8779))
                       (letrec*
                        ((xj7447
                          (begin
                            (write '(funapp 2890 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2890 34))
                               (display "\n")
                               'module))))
                         (xk7448
                          (begin
                            (write '(funapp 2890 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2890 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8780
                           (begin
                             (write '(funapp 2891 38))
                             (display "\n")
                             (any/c xj7447 xk7448 TETRA/C))))
                         g8780))
                       (letrec*
                        ((xj7449
                          (begin
                            (write '(funapp 2893 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2893 34))
                               (display "\n")
                               'module))))
                         (xk7450
                          (begin
                            (write '(funapp 2893 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2893 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8781
                           (begin
                             (write '(funapp 2894 38))
                             (display "\n")
                             (any/c xj7449 xk7450 WORLD/C))))
                         g8781))
                       (letrec*
                        ((xj7451
                          (begin
                            (write '(funapp 2896 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2896 34))
                               (display "\n")
                               'module))))
                         (xk7452
                          (begin
                            (write '(funapp 2896 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2896 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8782
                           (begin
                             (write '(funapp 2897 38))
                             (display "\n")
                             (any/c xj7451 xk7452 BSET/C))))
                         g8782))
                       (letrec*
                        ((xj7453
                          (begin
                            (write '(funapp 2899 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2899 34))
                               (display "\n")
                               'module))))
                         (xk7454
                          (begin
                            (write '(funapp 2899 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2899 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8783
                           (begin
                             (write '(funapp 2901 30))
                             (display "\n")
                             (integer?/c xj7453 xk7454 block-size))))
                         g8783))
                       (letrec*
                        ((xj7455
                          (begin
                            (write '(funapp 2904 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2904 34))
                               (display "\n")
                               'module))))
                         (xk7456
                          (begin
                            (write '(funapp 2904 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2904 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8784
                           (begin
                             (write '(funapp 2906 30))
                             (display "\n")
                             (integer?/c xj7455 xk7456 board-width))))
                         g8784))
                       (letrec*
                        ((xj7457
                          (begin
                            (write '(funapp 2909 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2909 34))
                               (display "\n")
                               'module))))
                         (xk7458
                          (begin
                            (write '(funapp 2909 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2909 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8785
                           (begin
                             (write '(funapp 2911 30))
                             (display "\n")
                             (integer?/c xj7457 xk7458 board-height))))
                         g8785))
                       (letrec*
                        ((x8798
                          (letrec*
                           ((xj7459
                             (begin
                               (write '(funapp 2916 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2916 37))
                                  (display "\n")
                                  'module))))
                            (xk7460
                             (begin
                               (write '(funapp 2916 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2916 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8799
                              (begin
                                (write '(funapp 2919 27))
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
                                                   (write '(funapp 2928 50))
                                                   (display "\n")
                                                   (POSN/C j7463 k7464 g7461)))
                                                (x8803
                                                 (begin
                                                   (write '(funapp 2929 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7463
                                                    k7464
                                                    g7462))))
                                               (begin
                                                 (write '(funapp 2930 42))
                                                 (display "\n")
                                                 (f7465 x8804 x8803)))))
                                            (begin
                                              (write '(funapp 2931 39))
                                              (display "\n")
                                              (BLOCK/C j7463 k7464 x8802)))))
                                         g8801))))
                                    g8800))
                                 xj7459
                                 xk7460
                                 block-rotate-ccw))))
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
                                   (write '(funapp 2944 56))
                                   (display "\n")
                                   (cons
                                    x8796
                                    (begin
                                      (write '(funapp 2944 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2945 27))
                                (display "\n")
                                (cons x8797 x8795)))))
                           (begin
                             (write '(funapp 2946 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2946 29))
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
                                      (write '(funapp 2956 59))
                                      (display "\n")
                                      (cons
                                       x8790
                                       (begin
                                         (write '(funapp 2956 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 2957 30))
                                   (display "\n")
                                   (cons x8791 x8789)))))
                              (begin
                                (write '(funapp 2958 27))
                                (display "\n")
                                (cons x8792 x8788)))))
                           (begin
                             (write '(funapp 2959 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2959 29))
                                (display "\n")
                                'block)
                              x8787)))))
                        (begin
                          (write '(funapp 2960 21))
                          (display "\n")
                          (x8798 x8793 x8786)))
                       (letrec*
                        ((x8817
                          (letrec*
                           ((xj7466
                             (begin
                               (write '(funapp 2964 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2964 37))
                                  (display "\n")
                                  'module))))
                            (xk7467
                             (begin
                               (write '(funapp 2964 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2964 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8818
                              (begin
                                (write '(funapp 2967 27))
                                (display "\n")
                                ((lambda (j7470 k7471 f7472)
                                   (letrec*
                                    ((g8819
                                      (lambda (g7468 g7469)
                                        (letrec*
                                         ((g8820
                                           (letrec*
                                            ((x8821
                                              (letrec*
                                               ((x8823
                                                 (begin
                                                   (write '(funapp 2976 50))
                                                   (display "\n")
                                                   (POSN/C j7470 k7471 g7468)))
                                                (x8822
                                                 (begin
                                                   (write '(funapp 2977 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7470
                                                    k7471
                                                    g7469))))
                                               (begin
                                                 (write '(funapp 2978 42))
                                                 (display "\n")
                                                 (f7472 x8823 x8822)))))
                                            (begin
                                              (write '(funapp 2979 39))
                                              (display "\n")
                                              (BLOCK/C j7470 k7471 x8821)))))
                                         g8820))))
                                    g8819))
                                 xj7466
                                 xk7467
                                 block-rotate-cw))))
                            g8818)))
                         (x8812
                          (letrec*
                           ((x8813
                             (letrec*
                              ((x8816 (input))
                               (x8814
                                (letrec*
                                 ((x8815 (input)))
                                 (begin
                                   (write '(funapp 2992 56))
                                   (display "\n")
                                   (cons
                                    x8815
                                    (begin
                                      (write '(funapp 2992 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2993 27))
                                (display "\n")
                                (cons x8816 x8814)))))
                           (begin
                             (write '(funapp 2994 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2994 29))
                                (display "\n")
                                'posn)
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
                                      (write '(funapp 3004 59))
                                      (display "\n")
                                      (cons
                                       x8809
                                       (begin
                                         (write '(funapp 3004 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 3005 30))
                                   (display "\n")
                                   (cons x8810 x8808)))))
                              (begin
                                (write '(funapp 3006 27))
                                (display "\n")
                                (cons x8811 x8807)))))
                           (begin
                             (write '(funapp 3007 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3007 29))
                                (display "\n")
                                'block)
                              x8806)))))
                        (begin
                          (write '(funapp 3008 21))
                          (display "\n")
                          (x8817 x8812 x8805)))
                       (letrec*
                        ((x8838
                          (letrec*
                           ((xj7473
                             (begin
                               (write '(funapp 3012 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3012 37))
                                  (display "\n")
                                  'module))))
                            (xk7474
                             (begin
                               (write '(funapp 3012 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3012 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8839
                              (begin
                                (write '(funapp 3015 27))
                                (display "\n")
                                ((lambda (j7477 k7478 f7479)
                                   (letrec*
                                    ((g8840
                                      (lambda (g7475 g7476)
                                        (letrec*
                                         ((g8841
                                           (letrec*
                                            ((x8842
                                              (letrec*
                                               ((x8844
                                                 (begin
                                                   (write '(funapp 3024 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7477
                                                    k7478
                                                    g7475)))
                                                (x8843
                                                 (begin
                                                   (write '(funapp 3025 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7477
                                                    k7478
                                                    g7476))))
                                               (begin
                                                 (write '(funapp 3026 42))
                                                 (display "\n")
                                                 (f7479 x8844 x8843)))))
                                            (begin
                                              (write '(funapp 3027 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7477
                                               k7478
                                               x8842)))))
                                         g8841))))
                                    g8840))
                                 xj7473
                                 xk7474
                                 block=?))))
                            g8839)))
                         (x8831
                          (letrec*
                           ((x8832
                             (letrec*
                              ((x8837 (input))
                               (x8833
                                (letrec*
                                 ((x8836 (input))
                                  (x8834
                                   (letrec*
                                    ((x8835 (input)))
                                    (begin
                                      (write '(funapp 3043 59))
                                      (display "\n")
                                      (cons
                                       x8835
                                       (begin
                                         (write '(funapp 3043 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 3044 30))
                                   (display "\n")
                                   (cons x8836 x8834)))))
                              (begin
                                (write '(funapp 3045 27))
                                (display "\n")
                                (cons x8837 x8833)))))
                           (begin
                             (write '(funapp 3046 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3046 29))
                                (display "\n")
                                'block)
                              x8832))))
                         (x8824
                          (letrec*
                           ((x8825
                             (letrec*
                              ((x8830 (input))
                               (x8826
                                (letrec*
                                 ((x8829 (input))
                                  (x8827
                                   (letrec*
                                    ((x8828 (input)))
                                    (begin
                                      (write '(funapp 3056 59))
                                      (display "\n")
                                      (cons
                                       x8828
                                       (begin
                                         (write '(funapp 3056 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 3057 30))
                                   (display "\n")
                                   (cons x8829 x8827)))))
                              (begin
                                (write '(funapp 3058 27))
                                (display "\n")
                                (cons x8830 x8826)))))
                           (begin
                             (write '(funapp 3059 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3059 29))
                                (display "\n")
                                'block)
                              x8825)))))
                        (begin
                          (write '(funapp 3060 21))
                          (display "\n")
                          (x8838 x8831 x8824)))
                       (letrec*
                        ((x8854
                          (letrec*
                           ((xj7480
                             (begin
                               (write '(funapp 3064 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3064 37))
                                  (display "\n")
                                  'module))))
                            (xk7481
                             (begin
                               (write '(funapp 3064 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3064 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8855
                              (begin
                                (write '(funapp 3067 27))
                                (display "\n")
                                ((lambda (j7485 k7486 f7487)
                                   (letrec*
                                    ((g8856
                                      (lambda (g7482 g7483 g7484)
                                        (letrec*
                                         ((g8857
                                           (letrec*
                                            ((x8858
                                              (letrec*
                                               ((x8861
                                                 (begin
                                                   (write '(funapp 3076 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7485
                                                    k7486
                                                    g7482)))
                                                (x8860
                                                 (begin
                                                   (write '(funapp 3077 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7485
                                                    k7486
                                                    g7483)))
                                                (x8859
                                                 (begin
                                                   (write '(funapp 3078 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7485
                                                    k7486
                                                    g7484))))
                                               (begin
                                                 (write '(funapp 3079 42))
                                                 (display "\n")
                                                 (f7487 x8861 x8860 x8859)))))
                                            (begin
                                              (write '(funapp 3080 39))
                                              (display "\n")
                                              (BLOCK/C j7485 k7486 x8858)))))
                                         g8857))))
                                    g8856))
                                 xj7480
                                 xk7481
                                 block-move))))
                            g8855)))
                         (x8853 (input))
                         (x8852 (input))
                         (x8845
                          (letrec*
                           ((x8846
                             (letrec*
                              ((x8851 (input))
                               (x8847
                                (letrec*
                                 ((x8850 (input))
                                  (x8848
                                   (letrec*
                                    ((x8849 (input)))
                                    (begin
                                      (write '(funapp 3098 59))
                                      (display "\n")
                                      (cons
                                       x8849
                                       (begin
                                         (write '(funapp 3098 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 3099 30))
                                   (display "\n")
                                   (cons x8850 x8848)))))
                              (begin
                                (write '(funapp 3100 27))
                                (display "\n")
                                (cons x8851 x8847)))))
                           (begin
                             (write '(funapp 3101 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3101 29))
                                (display "\n")
                                'block)
                              x8846)))))
                        (begin
                          (write '(funapp 3102 21))
                          (display "\n")
                          (x8854 x8853 x8852 x8845)))
                       (letrec*
                        ((x8870
                          (letrec*
                           ((xj7488
                             (begin
                               (write '(funapp 3106 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3106 37))
                                  (display "\n")
                                  'module))))
                            (xk7489
                             (begin
                               (write '(funapp 3106 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3106 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8871
                              (begin
                                (write '(funapp 3109 27))
                                (display "\n")
                                ((lambda (j7492 k7493 f7494)
                                   (letrec*
                                    ((g8872
                                      (lambda (g7490 g7491)
                                        (letrec*
                                         ((g8873
                                           (letrec*
                                            ((x8874
                                              (letrec*
                                               ((x8876
                                                 (begin
                                                   (write '(funapp 3118 50))
                                                   (display "\n")
                                                   (BSET/C j7492 k7493 g7490)))
                                                (x8875
                                                 (begin
                                                   (write '(funapp 3119 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7492
                                                    k7493
                                                    g7491))))
                                               (begin
                                                 (write '(funapp 3120 42))
                                                 (display "\n")
                                                 (f7494 x8876 x8875)))))
                                            (begin
                                              (write '(funapp 3121 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7492
                                               k7493
                                               x8874)))))
                                         g8873))))
                                    g8872))
                                 xj7488
                                 xk7489
                                 blocks-contains?))))
                            g8871)))
                         (x8869 (input))
                         (x8862
                          (letrec*
                           ((x8863
                             (letrec*
                              ((x8868 (input))
                               (x8864
                                (letrec*
                                 ((x8867 (input))
                                  (x8865
                                   (letrec*
                                    ((x8866 (input)))
                                    (begin
                                      (write '(funapp 3138 59))
                                      (display "\n")
                                      (cons
                                       x8866
                                       (begin
                                         (write '(funapp 3138 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 3139 30))
                                   (display "\n")
                                   (cons x8867 x8865)))))
                              (begin
                                (write '(funapp 3140 27))
                                (display "\n")
                                (cons x8868 x8864)))))
                           (begin
                             (write '(funapp 3141 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3141 29))
                                (display "\n")
                                'block)
                              x8863)))))
                        (begin
                          (write '(funapp 3142 21))
                          (display "\n")
                          (x8870 x8869 x8862)))
                       (letrec*
                        ((x8879
                          (letrec*
                           ((xj7495
                             (begin
                               (write '(funapp 3146 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3146 37))
                                  (display "\n")
                                  'module))))
                            (xk7496
                             (begin
                               (write '(funapp 3146 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3146 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8880
                              (begin
                                (write '(funapp 3149 27))
                                (display "\n")
                                ((lambda (j7499 k7500 f7501)
                                   (letrec*
                                    ((g8881
                                      (lambda (g7497 g7498)
                                        (letrec*
                                         ((g8882
                                           (letrec*
                                            ((x8883
                                              (letrec*
                                               ((x8885
                                                 (begin
                                                   (write '(funapp 3158 50))
                                                   (display "\n")
                                                   (BSET/C j7499 k7500 g7497)))
                                                (x8884
                                                 (begin
                                                   (write '(funapp 3159 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7499
                                                    k7500
                                                    g7498))))
                                               (begin
                                                 (write '(funapp 3160 42))
                                                 (display "\n")
                                                 (f7501 x8885 x8884)))))
                                            (begin
                                              (write '(funapp 3161 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7499
                                               k7500
                                               x8883)))))
                                         g8882))))
                                    g8881))
                                 xj7495
                                 xk7496
                                 blocks=?))))
                            g8880)))
                         (x8878 (input))
                         (x8877 (input)))
                        (begin
                          (write '(funapp 3170 21))
                          (display "\n")
                          (x8879 x8878 x8877)))
                       (letrec*
                        ((x8888
                          (letrec*
                           ((xj7502
                             (begin
                               (write '(funapp 3174 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3174 37))
                                  (display "\n")
                                  'module))))
                            (xk7503
                             (begin
                               (write '(funapp 3174 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3174 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8889
                              (begin
                                (write '(funapp 3177 27))
                                (display "\n")
                                ((lambda (j7506 k7507 f7508)
                                   (letrec*
                                    ((g8890
                                      (lambda (g7504 g7505)
                                        (letrec*
                                         ((g8891
                                           (letrec*
                                            ((x8892
                                              (letrec*
                                               ((x8894
                                                 (begin
                                                   (write '(funapp 3186 50))
                                                   (display "\n")
                                                   (BSET/C j7506 k7507 g7504)))
                                                (x8893
                                                 (begin
                                                   (write '(funapp 3187 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7506
                                                    k7507
                                                    g7505))))
                                               (begin
                                                 (write '(funapp 3188 42))
                                                 (display "\n")
                                                 (f7508 x8894 x8893)))))
                                            (begin
                                              (write '(funapp 3189 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7506
                                               k7507
                                               x8892)))))
                                         g8891))))
                                    g8890))
                                 xj7502
                                 xk7503
                                 blocks-subset?))))
                            g8889)))
                         (x8887 (input))
                         (x8886 (input)))
                        (begin
                          (write '(funapp 3198 21))
                          (display "\n")
                          (x8888 x8887 x8886)))
                       (letrec*
                        ((x8897
                          (letrec*
                           ((xj7509
                             (begin
                               (write '(funapp 3202 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3202 37))
                                  (display "\n")
                                  'module))))
                            (xk7510
                             (begin
                               (write '(funapp 3202 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3202 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8898
                              (begin
                                (write '(funapp 3205 27))
                                (display "\n")
                                ((lambda (j7513 k7514 f7515)
                                   (letrec*
                                    ((g8899
                                      (lambda (g7511 g7512)
                                        (letrec*
                                         ((g8900
                                           (letrec*
                                            ((x8901
                                              (letrec*
                                               ((x8903
                                                 (begin
                                                   (write '(funapp 3214 50))
                                                   (display "\n")
                                                   (BSET/C j7513 k7514 g7511)))
                                                (x8902
                                                 (begin
                                                   (write '(funapp 3215 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7513
                                                    k7514
                                                    g7512))))
                                               (begin
                                                 (write '(funapp 3216 42))
                                                 (display "\n")
                                                 (f7515 x8903 x8902)))))
                                            (begin
                                              (write '(funapp 3217 39))
                                              (display "\n")
                                              (BSET/C j7513 k7514 x8901)))))
                                         g8900))))
                                    g8899))
                                 xj7509
                                 xk7510
                                 blocks-intersect))))
                            g8898)))
                         (x8896 (input))
                         (x8895 (input)))
                        (begin
                          (write '(funapp 3226 21))
                          (display "\n")
                          (x8897 x8896 x8895)))
                       (letrec*
                        ((x8905
                          (letrec*
                           ((xj7516
                             (begin
                               (write '(funapp 3230 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3230 37))
                                  (display "\n")
                                  'module))))
                            (xk7517
                             (begin
                               (write '(funapp 3230 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3230 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8906
                              (begin
                                (write '(funapp 3233 27))
                                (display "\n")
                                ((lambda (j7519 k7520 f7521)
                                   (letrec*
                                    ((g8907
                                      (lambda (g7518)
                                        (letrec*
                                         ((g8908
                                           (letrec*
                                            ((x8909
                                              (letrec*
                                               ((x8910
                                                 (begin
                                                   (write '(funapp 3242 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7519
                                                    k7520
                                                    g7518))))
                                               (begin
                                                 (write '(funapp 3243 42))
                                                 (display "\n")
                                                 (f7521 x8910)))))
                                            (begin
                                              (write '(funapp 3244 39))
                                              (display "\n")
                                              (real?/c j7519 k7520 x8909)))))
                                         g8908))))
                                    g8907))
                                 xj7516
                                 xk7517
                                 blocks-count))))
                            g8906)))
                         (x8904 (input)))
                        (begin
                          (write '(funapp 3252 21))
                          (display "\n")
                          (x8905 x8904)))
                       (letrec*
                        ((x8912
                          (letrec*
                           ((xj7522
                             (begin
                               (write '(funapp 3256 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3256 37))
                                  (display "\n")
                                  'module))))
                            (xk7523
                             (begin
                               (write '(funapp 3256 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3256 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8913
                              (begin
                                (write '(funapp 3259 27))
                                (display "\n")
                                ((lambda (j7525 k7526 f7527)
                                   (letrec*
                                    ((g8914
                                      (lambda (g7524)
                                        (letrec*
                                         ((g8915
                                           (letrec*
                                            ((x8916
                                              (letrec*
                                               ((x8917
                                                 (begin
                                                   (write '(funapp 3268 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7525
                                                    k7526
                                                    g7524))))
                                               (begin
                                                 (write '(funapp 3269 42))
                                                 (display "\n")
                                                 (f7527 x8917)))))
                                            (begin
                                              (write '(funapp 3270 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7525
                                               k7526
                                               x8916)))))
                                         g8915))))
                                    g8914))
                                 xj7522
                                 xk7523
                                 blocks-overflow?))))
                            g8913)))
                         (x8911 (input)))
                        (begin
                          (write '(funapp 3278 21))
                          (display "\n")
                          (x8912 x8911)))
                       (letrec*
                        ((x8921
                          (letrec*
                           ((xj7528
                             (begin
                               (write '(funapp 3282 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3282 37))
                                  (display "\n")
                                  'module))))
                            (xk7529
                             (begin
                               (write '(funapp 3282 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3282 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8922
                              (begin
                                (write '(funapp 3285 27))
                                (display "\n")
                                ((lambda (j7533 k7534 f7535)
                                   (letrec*
                                    ((g8923
                                      (lambda (g7530 g7531 g7532)
                                        (letrec*
                                         ((g8924
                                           (letrec*
                                            ((x8925
                                              (letrec*
                                               ((x8928
                                                 (begin
                                                   (write '(funapp 3294 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7533
                                                    k7534
                                                    g7530)))
                                                (x8927
                                                 (begin
                                                   (write '(funapp 3295 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7533
                                                    k7534
                                                    g7531)))
                                                (x8926
                                                 (begin
                                                   (write '(funapp 3296 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7533
                                                    k7534
                                                    g7532))))
                                               (begin
                                                 (write '(funapp 3297 42))
                                                 (display "\n")
                                                 (f7535 x8928 x8927 x8926)))))
                                            (begin
                                              (write '(funapp 3298 39))
                                              (display "\n")
                                              (BSET/C j7533 k7534 x8925)))))
                                         g8924))))
                                    g8923))
                                 xj7528
                                 xk7529
                                 blocks-move))))
                            g8922)))
                         (x8920 (input))
                         (x8919 (input))
                         (x8918 (input)))
                        (begin
                          (write '(funapp 3308 21))
                          (display "\n")
                          (x8921 x8920 x8919 x8918)))
                       (letrec*
                        ((x8935
                          (letrec*
                           ((xj7536
                             (begin
                               (write '(funapp 3312 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3312 37))
                                  (display "\n")
                                  'module))))
                            (xk7537
                             (begin
                               (write '(funapp 3312 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3312 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8936
                              (begin
                                (write '(funapp 3315 27))
                                (display "\n")
                                ((lambda (j7540 k7541 f7542)
                                   (letrec*
                                    ((g8937
                                      (lambda (g7538 g7539)
                                        (letrec*
                                         ((g8938
                                           (letrec*
                                            ((x8939
                                              (letrec*
                                               ((x8941
                                                 (begin
                                                   (write '(funapp 3324 50))
                                                   (display "\n")
                                                   (POSN/C j7540 k7541 g7538)))
                                                (x8940
                                                 (begin
                                                   (write '(funapp 3325 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7540
                                                    k7541
                                                    g7539))))
                                               (begin
                                                 (write '(funapp 3326 42))
                                                 (display "\n")
                                                 (f7542 x8941 x8940)))))
                                            (begin
                                              (write '(funapp 3327 39))
                                              (display "\n")
                                              (BSET/C j7540 k7541 x8939)))))
                                         g8938))))
                                    g8937))
                                 xj7536
                                 xk7537
                                 blocks-rotate-cw))))
                            g8936)))
                         (x8930
                          (letrec*
                           ((x8931
                             (letrec*
                              ((x8934 (input))
                               (x8932
                                (letrec*
                                 ((x8933 (input)))
                                 (begin
                                   (write '(funapp 3340 56))
                                   (display "\n")
                                   (cons
                                    x8933
                                    (begin
                                      (write '(funapp 3340 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3341 27))
                                (display "\n")
                                (cons x8934 x8932)))))
                           (begin
                             (write '(funapp 3342 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3342 29))
                                (display "\n")
                                'posn)
                              x8931))))
                         (x8929 (input)))
                        (begin
                          (write '(funapp 3344 21))
                          (display "\n")
                          (x8935 x8930 x8929)))
                       (letrec*
                        ((x8948
                          (letrec*
                           ((xj7543
                             (begin
                               (write '(funapp 3348 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3348 37))
                                  (display "\n")
                                  'module))))
                            (xk7544
                             (begin
                               (write '(funapp 3348 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3348 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8949
                              (begin
                                (write '(funapp 3351 27))
                                (display "\n")
                                ((lambda (j7547 k7548 f7549)
                                   (letrec*
                                    ((g8950
                                      (lambda (g7545 g7546)
                                        (letrec*
                                         ((g8951
                                           (letrec*
                                            ((x8952
                                              (letrec*
                                               ((x8954
                                                 (begin
                                                   (write '(funapp 3360 50))
                                                   (display "\n")
                                                   (POSN/C j7547 k7548 g7545)))
                                                (x8953
                                                 (begin
                                                   (write '(funapp 3361 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7547
                                                    k7548
                                                    g7546))))
                                               (begin
                                                 (write '(funapp 3362 42))
                                                 (display "\n")
                                                 (f7549 x8954 x8953)))))
                                            (begin
                                              (write '(funapp 3363 39))
                                              (display "\n")
                                              (BSET/C j7547 k7548 x8952)))))
                                         g8951))))
                                    g8950))
                                 xj7543
                                 xk7544
                                 blocks-rotate-ccw))))
                            g8949)))
                         (x8943
                          (letrec*
                           ((x8944
                             (letrec*
                              ((x8947 (input))
                               (x8945
                                (letrec*
                                 ((x8946 (input)))
                                 (begin
                                   (write '(funapp 3376 56))
                                   (display "\n")
                                   (cons
                                    x8946
                                    (begin
                                      (write '(funapp 3376 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3377 27))
                                (display "\n")
                                (cons x8947 x8945)))))
                           (begin
                             (write '(funapp 3378 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3378 29))
                                (display "\n")
                                'posn)
                              x8944))))
                         (x8942 (input)))
                        (begin
                          (write '(funapp 3380 21))
                          (display "\n")
                          (x8948 x8943 x8942)))
                       (letrec*
                        ((x8957
                          (letrec*
                           ((xj7550
                             (begin
                               (write '(funapp 3384 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3384 37))
                                  (display "\n")
                                  'module))))
                            (xk7551
                             (begin
                               (write '(funapp 3384 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3384 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8958
                              (begin
                                (write '(funapp 3387 27))
                                (display "\n")
                                ((lambda (j7554 k7555 f7556)
                                   (letrec*
                                    ((g8959
                                      (lambda (g7552 g7553)
                                        (letrec*
                                         ((g8960
                                           (letrec*
                                            ((x8961
                                              (letrec*
                                               ((x8963
                                                 (begin
                                                   (write '(funapp 3396 50))
                                                   (display "\n")
                                                   (BSET/C j7554 k7555 g7552)))
                                                (x8962
                                                 (begin
                                                   (write '(funapp 3397 50))
                                                   (display "\n")
                                                   (COLOR/C
                                                    j7554
                                                    k7555
                                                    g7553))))
                                               (begin
                                                 (write '(funapp 3398 42))
                                                 (display "\n")
                                                 (f7556 x8963 x8962)))))
                                            (begin
                                              (write '(funapp 3399 39))
                                              (display "\n")
                                              (BSET/C j7554 k7555 x8961)))))
                                         g8960))))
                                    g8959))
                                 xj7550
                                 xk7551
                                 blocks-change-color))))
                            g8958)))
                         (x8956 (input))
                         (x8955 (input)))
                        (begin
                          (write '(funapp 3408 21))
                          (display "\n")
                          (x8957 x8956 x8955)))
                       (letrec*
                        ((x8966
                          (letrec*
                           ((xj7557
                             (begin
                               (write '(funapp 3412 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3412 37))
                                  (display "\n")
                                  'module))))
                            (xk7558
                             (begin
                               (write '(funapp 3412 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3412 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8967
                              (begin
                                (write '(funapp 3415 27))
                                (display "\n")
                                ((lambda (j7561 k7562 f7563)
                                   (letrec*
                                    ((g8968
                                      (lambda (g7559 g7560)
                                        (letrec*
                                         ((g8969
                                           (letrec*
                                            ((x8970
                                              (letrec*
                                               ((x8972
                                                 (begin
                                                   (write '(funapp 3424 50))
                                                   (display "\n")
                                                   (BSET/C j7561 k7562 g7559)))
                                                (x8971
                                                 (begin
                                                   (write '(funapp 3425 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7561
                                                    k7562
                                                    g7560))))
                                               (begin
                                                 (write '(funapp 3426 42))
                                                 (display "\n")
                                                 (f7563 x8972 x8971)))))
                                            (begin
                                              (write '(funapp 3427 39))
                                              (display "\n")
                                              (BSET/C j7561 k7562 x8970)))))
                                         g8969))))
                                    g8968))
                                 xj7557
                                 xk7558
                                 blocks-row))))
                            g8967)))
                         (x8965 (input))
                         (x8964 (input)))
                        (begin
                          (write '(funapp 3436 21))
                          (display "\n")
                          (x8966 x8965 x8964)))
                       (letrec*
                        ((x8975
                          (letrec*
                           ((xj7564
                             (begin
                               (write '(funapp 3440 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3440 37))
                                  (display "\n")
                                  'module))))
                            (xk7565
                             (begin
                               (write '(funapp 3440 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3440 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8976
                              (begin
                                (write '(funapp 3443 27))
                                (display "\n")
                                ((lambda (j7568 k7569 f7570)
                                   (letrec*
                                    ((g8977
                                      (lambda (g7566 g7567)
                                        (letrec*
                                         ((g8978
                                           (letrec*
                                            ((x8979
                                              (letrec*
                                               ((x8981
                                                 (begin
                                                   (write '(funapp 3452 50))
                                                   (display "\n")
                                                   (BSET/C j7568 k7569 g7566)))
                                                (x8980
                                                 (begin
                                                   (write '(funapp 3453 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7568
                                                    k7569
                                                    g7567))))
                                               (begin
                                                 (write '(funapp 3454 42))
                                                 (display "\n")
                                                 (f7570 x8981 x8980)))))
                                            (begin
                                              (write '(funapp 3455 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7568
                                               k7569
                                               x8979)))))
                                         g8978))))
                                    g8977))
                                 xj7564
                                 xk7565
                                 full-row?))))
                            g8976)))
                         (x8974 (input))
                         (x8973 (input)))
                        (begin
                          (write '(funapp 3464 21))
                          (display "\n")
                          (x8975 x8974 x8973)))
                       (letrec*
                        ((x8984
                          (letrec*
                           ((xj7571
                             (begin
                               (write '(funapp 3468 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3468 37))
                                  (display "\n")
                                  'module))))
                            (xk7572
                             (begin
                               (write '(funapp 3468 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3468 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8985
                              (begin
                                (write '(funapp 3471 27))
                                (display "\n")
                                ((lambda (j7575 k7576 f7577)
                                   (letrec*
                                    ((g8986
                                      (lambda (g7573 g7574)
                                        (letrec*
                                         ((g8987
                                           (letrec*
                                            ((x8988
                                              (letrec*
                                               ((x8990
                                                 (begin
                                                   (write '(funapp 3480 50))
                                                   (display "\n")
                                                   (BSET/C j7575 k7576 g7573)))
                                                (x8989
                                                 (begin
                                                   (write '(funapp 3481 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7575
                                                    k7576
                                                    g7574))))
                                               (begin
                                                 (write '(funapp 3482 42))
                                                 (display "\n")
                                                 (f7577 x8990 x8989)))))
                                            (begin
                                              (write '(funapp 3483 39))
                                              (display "\n")
                                              (BSET/C j7575 k7576 x8988)))))
                                         g8987))))
                                    g8986))
                                 xj7571
                                 xk7572
                                 blocks-union))))
                            g8985)))
                         (x8983 (input))
                         (x8982 (input)))
                        (begin
                          (write '(funapp 3492 21))
                          (display "\n")
                          (x8984 x8983 x8982)))
                       (letrec*
                        ((x8992
                          (letrec*
                           ((xj7578
                             (begin
                               (write '(funapp 3496 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3496 37))
                                  (display "\n")
                                  'module))))
                            (xk7579
                             (begin
                               (write '(funapp 3496 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3496 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8993
                              (begin
                                (write '(funapp 3499 27))
                                (display "\n")
                                ((lambda (j7581 k7582 f7583)
                                   (letrec*
                                    ((g8994
                                      (lambda (g7580)
                                        (letrec*
                                         ((g8995
                                           (letrec*
                                            ((x8996
                                              (letrec*
                                               ((x8997
                                                 (begin
                                                   (write '(funapp 3508 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7581
                                                    k7582
                                                    g7580))))
                                               (begin
                                                 (write '(funapp 3509 42))
                                                 (display "\n")
                                                 (f7583 x8997)))))
                                            (begin
                                              (write '(funapp 3510 39))
                                              (display "\n")
                                              (real?/c j7581 k7582 x8996)))))
                                         g8995))))
                                    g8994))
                                 xj7578
                                 xk7579
                                 blocks-max-x))))
                            g8993)))
                         (x8991 (input)))
                        (begin
                          (write '(funapp 3518 21))
                          (display "\n")
                          (x8992 x8991)))
                       (letrec*
                        ((x8999
                          (letrec*
                           ((xj7584
                             (begin
                               (write '(funapp 3522 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3522 37))
                                  (display "\n")
                                  'module))))
                            (xk7585
                             (begin
                               (write '(funapp 3522 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3522 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9000
                              (begin
                                (write '(funapp 3525 27))
                                (display "\n")
                                ((lambda (j7587 k7588 f7589)
                                   (letrec*
                                    ((g9001
                                      (lambda (g7586)
                                        (letrec*
                                         ((g9002
                                           (letrec*
                                            ((x9003
                                              (letrec*
                                               ((x9004
                                                 (begin
                                                   (write '(funapp 3534 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7587
                                                    k7588
                                                    g7586))))
                                               (begin
                                                 (write '(funapp 3535 42))
                                                 (display "\n")
                                                 (f7589 x9004)))))
                                            (begin
                                              (write '(funapp 3536 39))
                                              (display "\n")
                                              (real?/c j7587 k7588 x9003)))))
                                         g9002))))
                                    g9001))
                                 xj7584
                                 xk7585
                                 blocks-min-x))))
                            g9000)))
                         (x8998 (input)))
                        (begin
                          (write '(funapp 3544 21))
                          (display "\n")
                          (x8999 x8998)))
                       (letrec*
                        ((x9006
                          (letrec*
                           ((xj7590
                             (begin
                               (write '(funapp 3548 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3548 37))
                                  (display "\n")
                                  'module))))
                            (xk7591
                             (begin
                               (write '(funapp 3548 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3548 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9007
                              (begin
                                (write '(funapp 3551 27))
                                (display "\n")
                                ((lambda (j7593 k7594 f7595)
                                   (letrec*
                                    ((g9008
                                      (lambda (g7592)
                                        (letrec*
                                         ((g9009
                                           (letrec*
                                            ((x9010
                                              (letrec*
                                               ((x9011
                                                 (begin
                                                   (write '(funapp 3560 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7593
                                                    k7594
                                                    g7592))))
                                               (begin
                                                 (write '(funapp 3561 42))
                                                 (display "\n")
                                                 (f7595 x9011)))))
                                            (begin
                                              (write '(funapp 3562 39))
                                              (display "\n")
                                              (real?/c j7593 k7594 x9010)))))
                                         g9009))))
                                    g9008))
                                 xj7590
                                 xk7591
                                 blocks-max-y))))
                            g9007)))
                         (x9005 (input)))
                        (begin
                          (write '(funapp 3570 21))
                          (display "\n")
                          (x9006 x9005)))
                       (letrec*
                        ((x9013
                          (letrec*
                           ((xj7596
                             (begin
                               (write '(funapp 3574 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3574 37))
                                  (display "\n")
                                  'module))))
                            (xk7597
                             (begin
                               (write '(funapp 3574 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3574 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9014
                              (begin
                                (write '(funapp 3577 27))
                                (display "\n")
                                ((lambda (j7599 k7600 f7601)
                                   (letrec*
                                    ((g9015
                                      (lambda (g7598)
                                        (letrec*
                                         ((g9016
                                           (letrec*
                                            ((x9017
                                              (letrec*
                                               ((x9018
                                                 (begin
                                                   (write '(funapp 3586 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7599
                                                    k7600
                                                    g7598))))
                                               (begin
                                                 (write '(funapp 3587 42))
                                                 (display "\n")
                                                 (f7601 x9018)))))
                                            (begin
                                              (write '(funapp 3588 39))
                                              (display "\n")
                                              (BSET/C j7599 k7600 x9017)))))
                                         g9016))))
                                    g9015))
                                 xj7596
                                 xk7597
                                 eliminate-full-rows))))
                            g9014)))
                         (x9012 (input)))
                        (begin
                          (write '(funapp 3596 21))
                          (display "\n")
                          (x9013 x9012)))
                       (letrec*
                        ((x9030
                          (letrec*
                           ((xj7602
                             (begin
                               (write '(funapp 3600 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3600 37))
                                  (display "\n")
                                  'module))))
                            (xk7603
                             (begin
                               (write '(funapp 3600 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3600 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9031
                              (begin
                                (write '(funapp 3603 27))
                                (display "\n")
                                ((lambda (j7607 k7608 f7609)
                                   (letrec*
                                    ((g9032
                                      (lambda (g7604 g7605 g7606)
                                        (letrec*
                                         ((g9033
                                           (letrec*
                                            ((x9034
                                              (letrec*
                                               ((x9037
                                                 (begin
                                                   (write '(funapp 3613 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7607
                                                    k7608
                                                    g7604)))
                                                (x9036
                                                 (begin
                                                   (write '(funapp 3615 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7607
                                                    k7608
                                                    g7605)))
                                                (x9035
                                                 (begin
                                                   (write '(funapp 3616 50))
                                                   (display "\n")
                                                   (TETRA/C
                                                    j7607
                                                    k7608
                                                    g7606))))
                                               (begin
                                                 (write '(funapp 3617 42))
                                                 (display "\n")
                                                 (f7609 x9037 x9036 x9035)))))
                                            (begin
                                              (write '(funapp 3618 39))
                                              (display "\n")
                                              (TETRA/C j7607 k7608 x9034)))))
                                         g9033))))
                                    g9032))
                                 xj7602
                                 xk7603
                                 tetra-move))))
                            g9031)))
                         (x9029 (input))
                         (x9028 (input))
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
                                         (write '(funapp 3639 36))
                                         (display "\n")
                                         (cons
                                          x9026
                                          (begin
                                            (write '(funapp 3639 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3640 33))
                                      (display "\n")
                                      (cons x9027 x9025)))))
                                 (begin
                                   (write '(funapp 3641 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3641 35))
                                      (display "\n")
                                      'posn)
                                    x9024))))
                               (x9021
                                (letrec*
                                 ((x9022 (input)))
                                 (begin
                                   (write '(funapp 3643 56))
                                   (display "\n")
                                   (cons
                                    x9022
                                    (begin
                                      (write '(funapp 3643 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3644 27))
                                (display "\n")
                                (cons x9023 x9021)))))
                           (begin
                             (write '(funapp 3645 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3645 29))
                                (display "\n")
                                'tetra)
                              x9020)))))
                        (begin
                          (write '(funapp 3646 21))
                          (display "\n")
                          (x9030 x9029 x9028 x9019)))
                       (letrec*
                        ((x9047
                          (letrec*
                           ((xj7610
                             (begin
                               (write '(funapp 3650 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3650 37))
                                  (display "\n")
                                  'module))))
                            (xk7611
                             (begin
                               (write '(funapp 3650 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3650 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9048
                              (begin
                                (write '(funapp 3653 27))
                                (display "\n")
                                ((lambda (j7613 k7614 f7615)
                                   (letrec*
                                    ((g9049
                                      (lambda (g7612)
                                        (letrec*
                                         ((g9050
                                           (letrec*
                                            ((x9051
                                              (letrec*
                                               ((x9052
                                                 (begin
                                                   (write '(funapp 3662 50))
                                                   (display "\n")
                                                   (TETRA/C
                                                    j7613
                                                    k7614
                                                    g7612))))
                                               (begin
                                                 (write '(funapp 3663 42))
                                                 (display "\n")
                                                 (f7615 x9052)))))
                                            (begin
                                              (write '(funapp 3664 39))
                                              (display "\n")
                                              (TETRA/C j7613 k7614 x9051)))))
                                         g9050))))
                                    g9049))
                                 xj7610
                                 xk7611
                                 tetra-rotate-ccw))))
                            g9048)))
                         (x9038
                          (letrec*
                           ((x9039
                             (letrec*
                              ((x9042
                                (letrec*
                                 ((x9043
                                   (letrec*
                                    ((x9046 (input))
                                     (x9044
                                      (letrec*
                                       ((x9045 (input)))
                                       (begin
                                         (write '(funapp 3683 36))
                                         (display "\n")
                                         (cons
                                          x9045
                                          (begin
                                            (write '(funapp 3683 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3684 33))
                                      (display "\n")
                                      (cons x9046 x9044)))))
                                 (begin
                                   (write '(funapp 3685 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3685 35))
                                      (display "\n")
                                      'posn)
                                    x9043))))
                               (x9040
                                (letrec*
                                 ((x9041 (input)))
                                 (begin
                                   (write '(funapp 3687 56))
                                   (display "\n")
                                   (cons
                                    x9041
                                    (begin
                                      (write '(funapp 3687 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3688 27))
                                (display "\n")
                                (cons x9042 x9040)))))
                           (begin
                             (write '(funapp 3689 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3689 29))
                                (display "\n")
                                'tetra)
                              x9039)))))
                        (begin
                          (write '(funapp 3690 21))
                          (display "\n")
                          (x9047 x9038)))
                       (letrec*
                        ((x9062
                          (letrec*
                           ((xj7616
                             (begin
                               (write '(funapp 3694 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3694 37))
                                  (display "\n")
                                  'module))))
                            (xk7617
                             (begin
                               (write '(funapp 3694 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3694 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9063
                              (begin
                                (write '(funapp 3697 27))
                                (display "\n")
                                ((lambda (j7619 k7620 f7621)
                                   (letrec*
                                    ((g9064
                                      (lambda (g7618)
                                        (letrec*
                                         ((g9065
                                           (letrec*
                                            ((x9066
                                              (letrec*
                                               ((x9067
                                                 (begin
                                                   (write '(funapp 3706 50))
                                                   (display "\n")
                                                   (TETRA/C
                                                    j7619
                                                    k7620
                                                    g7618))))
                                               (begin
                                                 (write '(funapp 3707 42))
                                                 (display "\n")
                                                 (f7621 x9067)))))
                                            (begin
                                              (write '(funapp 3708 39))
                                              (display "\n")
                                              (TETRA/C j7619 k7620 x9066)))))
                                         g9065))))
                                    g9064))
                                 xj7616
                                 xk7617
                                 tetra-rotate-cw))))
                            g9063)))
                         (x9053
                          (letrec*
                           ((x9054
                             (letrec*
                              ((x9057
                                (letrec*
                                 ((x9058
                                   (letrec*
                                    ((x9061 (input))
                                     (x9059
                                      (letrec*
                                       ((x9060 (input)))
                                       (begin
                                         (write '(funapp 3727 36))
                                         (display "\n")
                                         (cons
                                          x9060
                                          (begin
                                            (write '(funapp 3727 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3728 33))
                                      (display "\n")
                                      (cons x9061 x9059)))))
                                 (begin
                                   (write '(funapp 3729 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3729 35))
                                      (display "\n")
                                      'posn)
                                    x9058))))
                               (x9055
                                (letrec*
                                 ((x9056 (input)))
                                 (begin
                                   (write '(funapp 3731 56))
                                   (display "\n")
                                   (cons
                                    x9056
                                    (begin
                                      (write '(funapp 3731 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3732 27))
                                (display "\n")
                                (cons x9057 x9055)))))
                           (begin
                             (write '(funapp 3733 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3733 29))
                                (display "\n")
                                'tetra)
                              x9054)))))
                        (begin
                          (write '(funapp 3734 21))
                          (display "\n")
                          (x9062 x9053)))
                       (letrec*
                        ((x9078
                          (letrec*
                           ((xj7622
                             (begin
                               (write '(funapp 3738 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3738 37))
                                  (display "\n")
                                  'module))))
                            (xk7623
                             (begin
                               (write '(funapp 3738 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3738 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9079
                              (begin
                                (write '(funapp 3741 27))
                                (display "\n")
                                ((lambda (j7626 k7627 f7628)
                                   (letrec*
                                    ((g9080
                                      (lambda (g7624 g7625)
                                        (letrec*
                                         ((g9081
                                           (letrec*
                                            ((x9082
                                              (letrec*
                                               ((x9084
                                                 (begin
                                                   (write '(funapp 3750 50))
                                                   (display "\n")
                                                   (TETRA/C
                                                    j7626
                                                    k7627
                                                    g7624)))
                                                (x9083
                                                 (begin
                                                   (write '(funapp 3751 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7626
                                                    k7627
                                                    g7625))))
                                               (begin
                                                 (write '(funapp 3752 42))
                                                 (display "\n")
                                                 (f7628 x9084 x9083)))))
                                            (begin
                                              (write '(funapp 3753 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7626
                                               k7627
                                               x9082)))))
                                         g9081))))
                                    g9080))
                                 xj7622
                                 xk7623
                                 tetra-overlaps-blocks?))))
                            g9079)))
                         (x9069
                          (letrec*
                           ((x9070
                             (letrec*
                              ((x9073
                                (letrec*
                                 ((x9074
                                   (letrec*
                                    ((x9077 (input))
                                     (x9075
                                      (letrec*
                                       ((x9076 (input)))
                                       (begin
                                         (write '(funapp 3772 36))
                                         (display "\n")
                                         (cons
                                          x9076
                                          (begin
                                            (write '(funapp 3772 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3773 33))
                                      (display "\n")
                                      (cons x9077 x9075)))))
                                 (begin
                                   (write '(funapp 3774 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3774 35))
                                      (display "\n")
                                      'posn)
                                    x9074))))
                               (x9071
                                (letrec*
                                 ((x9072 (input)))
                                 (begin
                                   (write '(funapp 3776 56))
                                   (display "\n")
                                   (cons
                                    x9072
                                    (begin
                                      (write '(funapp 3776 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3777 27))
                                (display "\n")
                                (cons x9073 x9071)))))
                           (begin
                             (write '(funapp 3778 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3778 29))
                                (display "\n")
                                'tetra)
                              x9070))))
                         (x9068 (input)))
                        (begin
                          (write '(funapp 3780 21))
                          (display "\n")
                          (x9078 x9069 x9068)))
                       (letrec*
                        ((x9096
                          (letrec*
                           ((xj7629
                             (begin
                               (write '(funapp 3784 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3784 37))
                                  (display "\n")
                                  'module))))
                            (xk7630
                             (begin
                               (write '(funapp 3784 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3784 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9097
                              (begin
                                (write '(funapp 3787 27))
                                (display "\n")
                                ((lambda (j7642 k7643 f7644)
                                   (letrec*
                                    ((g9098
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
                                         ((g9099
                                           (letrec*
                                            ((x9100
                                              (letrec*
                                               ((x9111
                                                 (begin
                                                   (write '(funapp 3806 50))
                                                   (display "\n")
                                                   (COLOR/C
                                                    j7642
                                                    k7643
                                                    g7631)))
                                                (x9110
                                                 (begin
                                                   (write '(funapp 3807 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7642
                                                    k7643
                                                    g7632)))
                                                (x9109
                                                 (begin
                                                   (write '(funapp 3808 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7642
                                                    k7643
                                                    g7633)))
                                                (x9108
                                                 (begin
                                                   (write '(funapp 3810 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7642
                                                    k7643
                                                    g7634)))
                                                (x9107
                                                 (begin
                                                   (write '(funapp 3812 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7642
                                                    k7643
                                                    g7635)))
                                                (x9106
                                                 (begin
                                                   (write '(funapp 3814 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7642
                                                    k7643
                                                    g7636)))
                                                (x9105
                                                 (begin
                                                   (write '(funapp 3816 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7642
                                                    k7643
                                                    g7637)))
                                                (x9104
                                                 (begin
                                                   (write '(funapp 3818 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7642
                                                    k7643
                                                    g7638)))
                                                (x9103
                                                 (begin
                                                   (write '(funapp 3820 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7642
                                                    k7643
                                                    g7639)))
                                                (x9102
                                                 (begin
                                                   (write '(funapp 3822 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7642
                                                    k7643
                                                    g7640)))
                                                (x9101
                                                 (begin
                                                   (write '(funapp 3824 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7642
                                                    k7643
                                                    g7641))))
                                               (begin
                                                 (write '(funapp 3825 42))
                                                 (display "\n")
                                                 (f7644
                                                  x9111
                                                  x9110
                                                  x9109
                                                  x9108
                                                  x9107
                                                  x9106
                                                  x9105
                                                  x9104
                                                  x9103
                                                  x9102
                                                  x9101)))))
                                            (begin
                                              (write '(funapp 3837 39))
                                              (display "\n")
                                              (TETRA/C j7642 k7643 x9100)))))
                                         g9099))))
                                    g9098))
                                 xj7629
                                 xk7630
                                 build-tetra-blocks))))
                            g9097)))
                         (x9095 (input))
                         (x9094 (input))
                         (x9093 (input))
                         (x9092 (input))
                         (x9091 (input))
                         (x9090 (input))
                         (x9089 (input))
                         (x9088 (input))
                         (x9087 (input))
                         (x9086 (input))
                         (x9085 (input)))
                        (begin
                          (write '(funapp 3855 21))
                          (display "\n")
                          (x9096
                           x9095
                           x9094
                           x9093
                           x9092
                           x9091
                           x9090
                           x9089
                           x9088
                           x9087
                           x9086
                           x9085)))
                       (letrec*
                        ((x9122
                          (letrec*
                           ((xj7645
                             (begin
                               (write '(funapp 3870 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3870 37))
                                  (display "\n")
                                  'module))))
                            (xk7646
                             (begin
                               (write '(funapp 3870 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3870 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9123
                              (begin
                                (write '(funapp 3873 27))
                                (display "\n")
                                ((lambda (j7649 k7650 f7651)
                                   (letrec*
                                    ((g9124
                                      (lambda (g7647 g7648)
                                        (letrec*
                                         ((g9125
                                           (letrec*
                                            ((x9126
                                              (letrec*
                                               ((x9128
                                                 (begin
                                                   (write '(funapp 3882 50))
                                                   (display "\n")
                                                   (TETRA/C
                                                    j7649
                                                    k7650
                                                    g7647)))
                                                (x9127
                                                 (begin
                                                   (write '(funapp 3883 50))
                                                   (display "\n")
                                                   (COLOR/C
                                                    j7649
                                                    k7650
                                                    g7648))))
                                               (begin
                                                 (write '(funapp 3884 42))
                                                 (display "\n")
                                                 (f7651 x9128 x9127)))))
                                            (begin
                                              (write '(funapp 3885 39))
                                              (display "\n")
                                              (TETRA/C j7649 k7650 x9126)))))
                                         g9125))))
                                    g9124))
                                 xj7645
                                 xk7646
                                 tetra-change-color))))
                            g9123)))
                         (x9113
                          (letrec*
                           ((x9114
                             (letrec*
                              ((x9117
                                (letrec*
                                 ((x9118
                                   (letrec*
                                    ((x9121 (input))
                                     (x9119
                                      (letrec*
                                       ((x9120 (input)))
                                       (begin
                                         (write '(funapp 3904 36))
                                         (display "\n")
                                         (cons
                                          x9120
                                          (begin
                                            (write '(funapp 3904 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3905 33))
                                      (display "\n")
                                      (cons x9121 x9119)))))
                                 (begin
                                   (write '(funapp 3906 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3906 35))
                                      (display "\n")
                                      'posn)
                                    x9118))))
                               (x9115
                                (letrec*
                                 ((x9116 (input)))
                                 (begin
                                   (write '(funapp 3908 56))
                                   (display "\n")
                                   (cons
                                    x9116
                                    (begin
                                      (write '(funapp 3908 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3909 27))
                                (display "\n")
                                (cons x9117 x9115)))))
                           (begin
                             (write '(funapp 3910 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3910 29))
                                (display "\n")
                                'tetra)
                              x9114))))
                         (x9112 (input)))
                        (begin
                          (write '(funapp 3912 21))
                          (display "\n")
                          (x9122 x9113 x9112)))
                       (letrec*
                        ((x9143
                          (letrec*
                           ((xj7652
                             (begin
                               (write '(funapp 3916 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3916 37))
                                  (display "\n")
                                  'module))))
                            (xk7653
                             (begin
                               (write '(funapp 3916 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3916 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9144
                              (begin
                                (write '(funapp 3919 27))
                                (display "\n")
                                ((lambda (j7656 k7657 f7658)
                                   (letrec*
                                    ((g9145
                                      (lambda (g7654 g7655)
                                        (letrec*
                                         ((g9146
                                           (letrec*
                                            ((x9147
                                              (letrec*
                                               ((x9149
                                                 (begin
                                                   (write '(funapp 3928 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7656
                                                    k7657
                                                    g7654)))
                                                (x9148
                                                 (begin
                                                   (write '(funapp 3930 44))
                                                   (display "\n")
                                                   (string?/c
                                                    j7656
                                                    k7657
                                                    g7655))))
                                               (begin
                                                 (write '(funapp 3931 42))
                                                 (display "\n")
                                                 (f7658 x9149 x9148)))))
                                            (begin
                                              (write '(funapp 3932 39))
                                              (display "\n")
                                              (WORLD/C j7656 k7657 x9147)))))
                                         g9146))))
                                    g9145))
                                 xj7652
                                 xk7653
                                 world-key-move))))
                            g9144)))
                         (x9130
                          (letrec*
                           ((x9131
                             (letrec*
                              ((x9134
                                (letrec*
                                 ((x9135
                                   (letrec*
                                    ((x9138
                                      (letrec*
                                       ((x9139
                                         (letrec*
                                          ((x9142 (input))
                                           (x9140
                                            (letrec*
                                             ((x9141 (input)))
                                             (begin
                                               (write '(funapp 3955 42))
                                               (display "\n")
                                               (cons
                                                x9141
                                                (begin
                                                  (write '(funapp 3955 53))
                                                  (display "\n")
                                                  '()))))))
                                          (begin
                                            (write '(funapp 3956 39))
                                            (display "\n")
                                            (cons x9142 x9140)))))
                                       (begin
                                         (write '(funapp 3957 36))
                                         (display "\n")
                                         (cons
                                          (begin
                                            (write '(funapp 3957 41))
                                            (display "\n")
                                            'posn)
                                          x9139))))
                                     (x9136
                                      (letrec*
                                       ((x9137 (input)))
                                       (begin
                                         (write '(funapp 3961 36))
                                         (display "\n")
                                         (cons
                                          x9137
                                          (begin
                                            (write '(funapp 3961 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3962 33))
                                      (display "\n")
                                      (cons x9138 x9136)))))
                                 (begin
                                   (write '(funapp 3963 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3963 35))
                                      (display "\n")
                                      'tetra)
                                    x9135))))
                               (x9132
                                (letrec*
                                 ((x9133 (input)))
                                 (begin
                                   (write '(funapp 3965 56))
                                   (display "\n")
                                   (cons
                                    x9133
                                    (begin
                                      (write '(funapp 3965 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3966 27))
                                (display "\n")
                                (cons x9134 x9132)))))
                           (begin
                             (write '(funapp 3967 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3967 29))
                                (display "\n")
                                'world)
                              x9131))))
                         (x9129 (input)))
                        (begin
                          (write '(funapp 3969 21))
                          (display "\n")
                          (x9143 x9130 x9129)))
                       (letrec*
                        ((x9164
                          (letrec*
                           ((xj7659
                             (begin
                               (write '(funapp 3973 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3973 37))
                                  (display "\n")
                                  'module))))
                            (xk7660
                             (begin
                               (write '(funapp 3973 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3973 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9165
                              (begin
                                (write '(funapp 3976 27))
                                (display "\n")
                                ((lambda (j7663 k7664 f7665)
                                   (letrec*
                                    ((g9166
                                      (lambda (g7661 g7662)
                                        (letrec*
                                         ((g9167
                                           (letrec*
                                            ((x9168
                                              (letrec*
                                               ((x9172
                                                 (begin
                                                   (write '(funapp 3985 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7663
                                                    k7664
                                                    g7661)))
                                                (x9169
                                                 (letrec*
                                                  ((x9170
                                                    (letrec*
                                                     ((x9171
                                                       (begin
                                                         (write
                                                          '(funapp 3990 56))
                                                         (display "\n")
                                                         (listof TETRA/C))))
                                                     (begin
                                                       (write
                                                        '(funapp 3991 48))
                                                       (display "\n")
                                                       (and/c
                                                        cons?/c
                                                        x9171)))))
                                                  (begin
                                                    (write '(funapp 3992 45))
                                                    (display "\n")
                                                    (x9170
                                                     j7663
                                                     k7664
                                                     g7662)))))
                                               (begin
                                                 (write '(funapp 3993 42))
                                                 (display "\n")
                                                 (f7665 x9172 x9169)))))
                                            (begin
                                              (write '(funapp 3994 39))
                                              (display "\n")
                                              (WORLD/C j7663 k7664 x9168)))))
                                         g9167))))
                                    g9166))
                                 xj7659
                                 xk7660
                                 next-world))))
                            g9165)))
                         (x9151
                          (letrec*
                           ((x9152
                             (letrec*
                              ((x9155
                                (letrec*
                                 ((x9156
                                   (letrec*
                                    ((x9159
                                      (letrec*
                                       ((x9160
                                         (letrec*
                                          ((x9163 (input))
                                           (x9161
                                            (letrec*
                                             ((x9162 (input)))
                                             (begin
                                               (write '(funapp 4017 42))
                                               (display "\n")
                                               (cons
                                                x9162
                                                (begin
                                                  (write '(funapp 4017 53))
                                                  (display "\n")
                                                  '()))))))
                                          (begin
                                            (write '(funapp 4018 39))
                                            (display "\n")
                                            (cons x9163 x9161)))))
                                       (begin
                                         (write '(funapp 4019 36))
                                         (display "\n")
                                         (cons
                                          (begin
                                            (write '(funapp 4019 41))
                                            (display "\n")
                                            'posn)
                                          x9160))))
                                     (x9157
                                      (letrec*
                                       ((x9158 (input)))
                                       (begin
                                         (write '(funapp 4023 36))
                                         (display "\n")
                                         (cons
                                          x9158
                                          (begin
                                            (write '(funapp 4023 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 4024 33))
                                      (display "\n")
                                      (cons x9159 x9157)))))
                                 (begin
                                   (write '(funapp 4025 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 4025 35))
                                      (display "\n")
                                      'tetra)
                                    x9156))))
                               (x9153
                                (letrec*
                                 ((x9154 (input)))
                                 (begin
                                   (write '(funapp 4027 56))
                                   (display "\n")
                                   (cons
                                    x9154
                                    (begin
                                      (write '(funapp 4027 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 4028 27))
                                (display "\n")
                                (cons x9155 x9153)))))
                           (begin
                             (write '(funapp 4029 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 4029 29))
                                (display "\n")
                                'world)
                              x9152))))
                         (x9150 (input)))
                        (begin
                          (write '(funapp 4031 21))
                          (display "\n")
                          (x9164 x9151 x9150)))
                       (letrec*
                        ((x9186
                          (letrec*
                           ((xj7666
                             (begin
                               (write '(funapp 4035 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4035 37))
                                  (display "\n")
                                  'module))))
                            (xk7667
                             (begin
                               (write '(funapp 4035 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4035 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9187
                              (begin
                                (write '(funapp 4038 27))
                                (display "\n")
                                ((lambda (j7669 k7670 f7671)
                                   (letrec*
                                    ((g9188
                                      (lambda (g7668)
                                        (letrec*
                                         ((g9189
                                           (letrec*
                                            ((x9190
                                              (letrec*
                                               ((x9191
                                                 (begin
                                                   (write '(funapp 4047 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7669
                                                    k7670
                                                    g7668))))
                                               (begin
                                                 (write '(funapp 4048 42))
                                                 (display "\n")
                                                 (f7671 x9191)))))
                                            (begin
                                              (write '(funapp 4049 39))
                                              (display "\n")
                                              (BSET/C j7669 k7670 x9190)))))
                                         g9189))))
                                    g9188))
                                 xj7666
                                 xk7667
                                 ghost-blocks))))
                            g9187)))
                         (x9173
                          (letrec*
                           ((x9174
                             (letrec*
                              ((x9177
                                (letrec*
                                 ((x9178
                                   (letrec*
                                    ((x9181
                                      (letrec*
                                       ((x9182
                                         (letrec*
                                          ((x9185 (input))
                                           (x9183
                                            (letrec*
                                             ((x9184 (input)))
                                             (begin
                                               (write '(funapp 4072 42))
                                               (display "\n")
                                               (cons
                                                x9184
                                                (begin
                                                  (write '(funapp 4072 53))
                                                  (display "\n")
                                                  '()))))))
                                          (begin
                                            (write '(funapp 4073 39))
                                            (display "\n")
                                            (cons x9185 x9183)))))
                                       (begin
                                         (write '(funapp 4074 36))
                                         (display "\n")
                                         (cons
                                          (begin
                                            (write '(funapp 4074 41))
                                            (display "\n")
                                            'posn)
                                          x9182))))
                                     (x9179
                                      (letrec*
                                       ((x9180 (input)))
                                       (begin
                                         (write '(funapp 4078 36))
                                         (display "\n")
                                         (cons
                                          x9180
                                          (begin
                                            (write '(funapp 4078 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 4079 33))
                                      (display "\n")
                                      (cons x9181 x9179)))))
                                 (begin
                                   (write '(funapp 4080 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 4080 35))
                                      (display "\n")
                                      'tetra)
                                    x9178))))
                               (x9175
                                (letrec*
                                 ((x9176 (input)))
                                 (begin
                                   (write '(funapp 4082 56))
                                   (display "\n")
                                   (cons
                                    x9176
                                    (begin
                                      (write '(funapp 4082 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 4083 27))
                                (display "\n")
                                (cons x9177 x9175)))))
                           (begin
                             (write '(funapp 4084 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 4084 29))
                                (display "\n")
                                'world)
                              x9174)))))
                        (begin
                          (write '(funapp 4085 21))
                          (display "\n")
                          (x9186 x9173)))
                       (letrec*
                        ((x9193
                          (letrec*
                           ((xj7672
                             (begin
                               (write '(funapp 4089 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4089 37))
                                  (display "\n")
                                  'module))))
                            (xk7673
                             (begin
                               (write '(funapp 4089 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4089 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9194
                              (begin
                                (write '(funapp 4092 27))
                                (display "\n")
                                ((lambda (j7675 k7676 f7677)
                                   (letrec*
                                    ((g9195
                                      (lambda (g7674)
                                        (letrec*
                                         ((g9196
                                           (letrec*
                                            ((x9197
                                              (letrec*
                                               ((x9198
                                                 (begin
                                                   (write '(funapp 4101 50))
                                                   (display "\n")
                                                   (any/c j7675 k7676 g7674))))
                                               (begin
                                                 (write '(funapp 4102 42))
                                                 (display "\n")
                                                 (f7677 x9198)))))
                                            (begin
                                              (write '(funapp 4103 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7675
                                               k7676
                                               x9197)))))
                                         g9196))))
                                    g9195))
                                 xj7672
                                 xk7673
                                 image?))))
                            g9194)))
                         (x9192 (input)))
                        (begin
                          (write '(funapp 4111 21))
                          (display "\n")
                          (x9193 x9192)))
                       (letrec*
                        ((x9201
                          (letrec*
                           ((xj7678
                             (begin
                               (write '(funapp 4115 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4115 37))
                                  (display "\n")
                                  'module))))
                            (xk7679
                             (begin
                               (write '(funapp 4115 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4115 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9202
                              (begin
                                (write '(funapp 4118 27))
                                (display "\n")
                                ((lambda (j7682 k7683 f7684)
                                   (letrec*
                                    ((g9203
                                      (lambda (g7680 g7681)
                                        (letrec*
                                         ((g9204
                                           (letrec*
                                            ((x9205
                                              (letrec*
                                               ((x9207
                                                 (begin
                                                   (write '(funapp 4127 50))
                                                   (display "\n")
                                                   (image? j7682 k7683 g7680)))
                                                (x9206
                                                 (begin
                                                   (write '(funapp 4128 50))
                                                   (display "\n")
                                                   (image?
                                                    j7682
                                                    k7683
                                                    g7681))))
                                               (begin
                                                 (write '(funapp 4129 42))
                                                 (display "\n")
                                                 (f7684 x9207 x9206)))))
                                            (begin
                                              (write '(funapp 4130 39))
                                              (display "\n")
                                              (image? j7682 k7683 x9205)))))
                                         g9204))))
                                    g9203))
                                 xj7678
                                 xk7679
                                 overlay))))
                            g9202)))
                         (x9200 (input))
                         (x9199 (input)))
                        (begin
                          (write '(funapp 4139 21))
                          (display "\n")
                          (x9201 x9200 x9199)))
                       (letrec*
                        ((x9211
                          (letrec*
                           ((xj7685
                             (begin
                               (write '(funapp 4143 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4143 37))
                                  (display "\n")
                                  'module))))
                            (xk7686
                             (begin
                               (write '(funapp 4143 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4143 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9212
                              (begin
                                (write '(funapp 4146 27))
                                (display "\n")
                                ((lambda (j7690 k7691 f7692)
                                   (letrec*
                                    ((g9213
                                      (lambda (g7687 g7688 g7689)
                                        (letrec*
                                         ((g9214
                                           (letrec*
                                            ((x9215
                                              (letrec*
                                               ((x9218
                                                 (begin
                                                   (write '(funapp 4155 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7690
                                                    k7691
                                                    g7687)))
                                                (x9217
                                                 (begin
                                                   (write '(funapp 4156 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7690
                                                    k7691
                                                    g7688)))
                                                (x9216
                                                 (begin
                                                   (write '(funapp 4158 44))
                                                   (display "\n")
                                                   (string?/c
                                                    j7690
                                                    k7691
                                                    g7689))))
                                               (begin
                                                 (write '(funapp 4159 42))
                                                 (display "\n")
                                                 (f7692 x9218 x9217 x9216)))))
                                            (begin
                                              (write '(funapp 4160 39))
                                              (display "\n")
                                              (image? j7690 k7691 x9215)))))
                                         g9214))))
                                    g9213))
                                 xj7685
                                 xk7686
                                 circle))))
                            g9212)))
                         (x9210 (input))
                         (x9209 (input))
                         (x9208 (input)))
                        (begin
                          (write '(funapp 4170 21))
                          (display "\n")
                          (x9211 x9210 x9209 x9208)))
                       (letrec*
                        ((x9223
                          (letrec*
                           ((xj7693
                             (begin
                               (write '(funapp 4174 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4174 37))
                                  (display "\n")
                                  'module))))
                            (xk7694
                             (begin
                               (write '(funapp 4174 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4174 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9224
                              (begin
                                (write '(funapp 4177 27))
                                (display "\n")
                                ((lambda (j7699 k7700 f7701)
                                   (letrec*
                                    ((g9225
                                      (lambda (g7695 g7696 g7697 g7698)
                                        (letrec*
                                         ((g9226
                                           (letrec*
                                            ((x9227
                                              (letrec*
                                               ((x9231
                                                 (begin
                                                   (write '(funapp 4186 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7699
                                                    k7700
                                                    g7695)))
                                                (x9230
                                                 (begin
                                                   (write '(funapp 4187 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7699
                                                    k7700
                                                    g7696)))
                                                (x9229
                                                 (begin
                                                   (write '(funapp 4188 50))
                                                   (display "\n")
                                                   (COLOR/C
                                                    j7699
                                                    k7700
                                                    g7697)))
                                                (x9228
                                                 (begin
                                                   (write '(funapp 4189 50))
                                                   (display "\n")
                                                   (COLOR/C
                                                    j7699
                                                    k7700
                                                    g7698))))
                                               (begin
                                                 (write '(funapp 4190 42))
                                                 (display "\n")
                                                 (f7701
                                                  x9231
                                                  x9230
                                                  x9229
                                                  x9228)))))
                                            (begin
                                              (write '(funapp 4191 39))
                                              (display "\n")
                                              (image? j7699 k7700 x9227)))))
                                         g9226))))
                                    g9225))
                                 xj7693
                                 xk7694
                                 rectangle))))
                            g9224)))
                         (x9222 (input))
                         (x9221 (input))
                         (x9220 (input))
                         (x9219 (input)))
                        (begin
                          (write '(funapp 4202 21))
                          (display "\n")
                          (x9223 x9222 x9221 x9220 x9219)))
                       (letrec*
                        ((x9236
                          (letrec*
                           ((xj7702
                             (begin
                               (write '(funapp 4206 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4206 37))
                                  (display "\n")
                                  'module))))
                            (xk7703
                             (begin
                               (write '(funapp 4206 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4206 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9237
                              (begin
                                (write '(funapp 4209 27))
                                (display "\n")
                                ((lambda (j7708 k7709 f7710)
                                   (letrec*
                                    ((g9238
                                      (lambda (g7704 g7705 g7706 g7707)
                                        (letrec*
                                         ((g9239
                                           (letrec*
                                            ((x9240
                                              (letrec*
                                               ((x9244
                                                 (begin
                                                   (write '(funapp 4218 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7708
                                                    k7709
                                                    g7704)))
                                                (x9243
                                                 (begin
                                                   (write '(funapp 4219 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7708
                                                    k7709
                                                    g7705)))
                                                (x9242
                                                 (begin
                                                   (write '(funapp 4220 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7708
                                                    k7709
                                                    g7706)))
                                                (x9241
                                                 (begin
                                                   (write '(funapp 4221 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7708
                                                    k7709
                                                    g7707))))
                                               (begin
                                                 (write '(funapp 4222 42))
                                                 (display "\n")
                                                 (f7710
                                                  x9244
                                                  x9243
                                                  x9242
                                                  x9241)))))
                                            (begin
                                              (write '(funapp 4223 39))
                                              (display "\n")
                                              (image/c j7708 k7709 x9240)))))
                                         g9239))))
                                    g9238))
                                 xj7702
                                 xk7703
                                 place-image))))
                            g9237)))
                         (x9235
                          (begin
                            (write '(funapp 4230 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 4230 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 4230 41))
                               (display "\n")
                               '()))))
                         (x9234 (input))
                         (x9233 (input))
                         (x9232
                          (begin
                            (write '(funapp 4233 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 4233 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 4233 41))
                               (display "\n")
                               '())))))
                        (begin
                          (write '(funapp 4234 21))
                          (display "\n")
                          (x9236 x9235 x9234 x9233 x9232)))
                       (letrec*
                        ((x9247
                          (letrec*
                           ((xj7711
                             (begin
                               (write '(funapp 4238 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4238 37))
                                  (display "\n")
                                  'module))))
                            (xk7712
                             (begin
                               (write '(funapp 4238 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4238 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9248
                              (begin
                                (write '(funapp 4241 27))
                                (display "\n")
                                ((lambda (j7715 k7716 f7717)
                                   (letrec*
                                    ((g9249
                                      (lambda (g7713 g7714)
                                        (letrec*
                                         ((g9250
                                           (letrec*
                                            ((x9251
                                              (letrec*
                                               ((x9253
                                                 (begin
                                                   (write '(funapp 4250 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7715
                                                    k7716
                                                    g7713)))
                                                (x9252
                                                 (begin
                                                   (write '(funapp 4251 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7715
                                                    k7716
                                                    g7714))))
                                               (begin
                                                 (write '(funapp 4252 42))
                                                 (display "\n")
                                                 (f7717 x9253 x9252)))))
                                            (begin
                                              (write '(funapp 4253 39))
                                              (display "\n")
                                              (image? j7715 k7716 x9251)))))
                                         g9250))))
                                    g9249))
                                 xj7711
                                 xk7712
                                 empty-scene))))
                            g9248)))
                         (x9246 (input))
                         (x9245 (input)))
                        (begin
                          (write '(funapp 4262 21))
                          (display "\n")
                          (x9247 x9246 x9245)))
                       (letrec*
                        ((x9255
                          (letrec*
                           ((xj7718
                             (begin
                               (write '(funapp 4266 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4266 37))
                                  (display "\n")
                                  'module))))
                            (xk7719
                             (begin
                               (write '(funapp 4266 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4266 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9256
                              (begin
                                (write '(funapp 4269 27))
                                (display "\n")
                                ((lambda (j7721 k7722 f7723)
                                   (letrec*
                                    ((g9257
                                      (lambda (g7720)
                                        (letrec*
                                         ((g9258
                                           (letrec*
                                            ((x9259
                                              (letrec*
                                               ((x9260
                                                 (letrec*
                                                  ((x9261
                                                    (letrec*
                                                     ((x9262
                                                       (begin
                                                         (write
                                                          '(funapp 4282 56))
                                                         (display "\n")
                                                         (listof TETRA/C))))
                                                     (begin
                                                       (write
                                                        '(funapp 4283 48))
                                                       (display "\n")
                                                       (and/c
                                                        cons?/c
                                                        x9262)))))
                                                  (begin
                                                    (write '(funapp 4284 45))
                                                    (display "\n")
                                                    (x9261
                                                     j7721
                                                     k7722
                                                     g7720)))))
                                               (begin
                                                 (write '(funapp 4285 42))
                                                 (display "\n")
                                                 (f7723 x9260)))))
                                            (begin
                                              (write '(funapp 4286 39))
                                              (display "\n")
                                              (TETRA/C j7721 k7722 x9259)))))
                                         g9258))))
                                    g9257))
                                 xj7718
                                 xk7719
                                 list-pick-random))))
                            g9256)))
                         (x9254 (input)))
                        (begin
                          (write '(funapp 4294 21))
                          (display "\n")
                          (x9255 x9254)))
                       (letrec*
                        ((xj7724
                          (begin
                            (write '(funapp 4296 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 4296 34))
                               (display "\n")
                               'module))))
                         (xk7725
                          (begin
                            (write '(funapp 4296 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 4296 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g9263
                           (begin
                             (write '(funapp 4297 38))
                             (display "\n")
                             (integer?/c xj7724 xk7725 neg-1))))
                         g9263))
                       (letrec*
                        ((x9277
                          (letrec*
                           ((xj7726
                             (begin
                               (write '(funapp 4301 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4301 37))
                                  (display "\n")
                                  'module))))
                            (xk7727
                             (begin
                               (write '(funapp 4301 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4301 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9278
                              (begin
                                (write '(funapp 4304 27))
                                (display "\n")
                                ((lambda (j7729 k7730 f7731)
                                   (letrec*
                                    ((g9279
                                      (lambda (g7728)
                                        (letrec*
                                         ((g9280
                                           (letrec*
                                            ((x9281
                                              (letrec*
                                               ((x9282
                                                 (begin
                                                   (write '(funapp 4313 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7729
                                                    k7730
                                                    g7728))))
                                               (begin
                                                 (write '(funapp 4314 42))
                                                 (display "\n")
                                                 (f7731 x9282)))))
                                            (begin
                                              (write '(funapp 4315 39))
                                              (display "\n")
                                              (image/c j7729 k7730 x9281)))))
                                         g9280))))
                                    g9279))
                                 xj7726
                                 xk7727
                                 world->image))))
                            g9278)))
                         (x9264
                          (letrec*
                           ((x9265
                             (letrec*
                              ((x9268
                                (letrec*
                                 ((x9269
                                   (letrec*
                                    ((x9272
                                      (letrec*
                                       ((x9273
                                         (letrec*
                                          ((x9276 (input))
                                           (x9274
                                            (letrec*
                                             ((x9275 (input)))
                                             (begin
                                               (write '(funapp 4338 42))
                                               (display "\n")
                                               (cons
                                                x9275
                                                (begin
                                                  (write '(funapp 4338 53))
                                                  (display "\n")
                                                  '()))))))
                                          (begin
                                            (write '(funapp 4339 39))
                                            (display "\n")
                                            (cons x9276 x9274)))))
                                       (begin
                                         (write '(funapp 4340 36))
                                         (display "\n")
                                         (cons
                                          (begin
                                            (write '(funapp 4340 41))
                                            (display "\n")
                                            'posn)
                                          x9273))))
                                     (x9270
                                      (letrec*
                                       ((x9271 (input)))
                                       (begin
                                         (write '(funapp 4344 36))
                                         (display "\n")
                                         (cons
                                          x9271
                                          (begin
                                            (write '(funapp 4344 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 4345 33))
                                      (display "\n")
                                      (cons x9272 x9270)))))
                                 (begin
                                   (write '(funapp 4346 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 4346 35))
                                      (display "\n")
                                      'tetra)
                                    x9269))))
                               (x9266
                                (letrec*
                                 ((x9267 (input)))
                                 (begin
                                   (write '(funapp 4348 56))
                                   (display "\n")
                                   (cons
                                    x9267
                                    (begin
                                      (write '(funapp 4348 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 4349 27))
                                (display "\n")
                                (cons x9268 x9266)))))
                           (begin
                             (write '(funapp 4350 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 4350 29))
                                (display "\n")
                                'world)
                              x9265)))))
                        (begin
                          (write '(funapp 4351 21))
                          (display "\n")
                          (x9277 x9264)))
                       (letrec*
                        ((x9284
                          (letrec*
                           ((xj7732
                             (begin
                               (write '(funapp 4355 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4355 37))
                                  (display "\n")
                                  'module))))
                            (xk7733
                             (begin
                               (write '(funapp 4355 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4355 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9285
                              (begin
                                (write '(funapp 4358 27))
                                (display "\n")
                                ((lambda (j7735 k7736 f7737)
                                   (letrec*
                                    ((g9286
                                      (lambda (g7734)
                                        (letrec*
                                         ((g9287
                                           (letrec*
                                            ((x9288
                                              (letrec*
                                               ((x9289
                                                 (begin
                                                   (write '(funapp 4367 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7735
                                                    k7736
                                                    g7734))))
                                               (begin
                                                 (write '(funapp 4368 42))
                                                 (display "\n")
                                                 (f7737 x9289)))))
                                            (begin
                                              (write '(funapp 4369 39))
                                              (display "\n")
                                              (image/c j7735 k7736 x9288)))))
                                         g9287))))
                                    g9286))
                                 xj7732
                                 xk7733
                                 blocks->image))))
                            g9285)))
                         (x9283 (input)))
                        (begin
                          (write '(funapp 4377 21))
                          (display "\n")
                          (x9284 x9283)))
                       (letrec*
                        ((x9297
                          (letrec*
                           ((xj7738
                             (begin
                               (write '(funapp 4381 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4381 37))
                                  (display "\n")
                                  'module))))
                            (xk7739
                             (begin
                               (write '(funapp 4381 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4381 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9298
                              (begin
                                (write '(funapp 4384 27))
                                (display "\n")
                                ((lambda (j7741 k7742 f7743)
                                   (letrec*
                                    ((g9299
                                      (lambda (g7740)
                                        (letrec*
                                         ((g9300
                                           (letrec*
                                            ((x9301
                                              (letrec*
                                               ((x9302
                                                 (begin
                                                   (write '(funapp 4393 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7741
                                                    k7742
                                                    g7740))))
                                               (begin
                                                 (write '(funapp 4394 42))
                                                 (display "\n")
                                                 (f7743 x9302)))))
                                            (begin
                                              (write '(funapp 4395 39))
                                              (display "\n")
                                              (image/c j7741 k7742 x9301)))))
                                         g9300))))
                                    g9299))
                                 xj7738
                                 xk7739
                                 block->image))))
                            g9298)))
                         (x9290
                          (letrec*
                           ((x9291
                             (letrec*
                              ((x9296 (input))
                               (x9292
                                (letrec*
                                 ((x9295 (input))
                                  (x9293
                                   (letrec*
                                    ((x9294 (input)))
                                    (begin
                                      (write '(funapp 4411 59))
                                      (display "\n")
                                      (cons
                                       x9294
                                       (begin
                                         (write '(funapp 4411 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 4412 30))
                                   (display "\n")
                                   (cons x9295 x9293)))))
                              (begin
                                (write '(funapp 4413 27))
                                (display "\n")
                                (cons x9296 x9292)))))
                           (begin
                             (write '(funapp 4414 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 4414 29))
                                (display "\n")
                                'block)
                              x9291)))))
                        (begin
                          (write '(funapp 4415 21))
                          (display "\n")
                          (x9297 x9290)))
                       (letrec*
                        ((x9311
                          (letrec*
                           ((xj7744
                             (begin
                               (write '(funapp 4419 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4419 37))
                                  (display "\n")
                                  'module))))
                            (xk7745
                             (begin
                               (write '(funapp 4419 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4419 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9312
                              (begin
                                (write '(funapp 4422 27))
                                (display "\n")
                                ((lambda (j7748 k7749 f7750)
                                   (letrec*
                                    ((g9313
                                      (lambda (g7746 g7747)
                                        (letrec*
                                         ((g9314
                                           (letrec*
                                            ((x9315
                                              (letrec*
                                               ((x9317
                                                 (begin
                                                   (write '(funapp 4431 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7748
                                                    k7749
                                                    g7746)))
                                                (x9316
                                                 (begin
                                                   (write '(funapp 4432 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7748
                                                    k7749
                                                    g7747))))
                                               (begin
                                                 (write '(funapp 4433 42))
                                                 (display "\n")
                                                 (f7750 x9317 x9316)))))
                                            (begin
                                              (write '(funapp 4434 39))
                                              (display "\n")
                                              (image/c j7748 k7749 x9315)))))
                                         g9314))))
                                    g9313))
                                 xj7744
                                 xk7745
                                 place-block))))
                            g9312)))
                         (x9304
                          (letrec*
                           ((x9305
                             (letrec*
                              ((x9310 (input))
                               (x9306
                                (letrec*
                                 ((x9309 (input))
                                  (x9307
                                   (letrec*
                                    ((x9308 (input)))
                                    (begin
                                      (write '(funapp 4450 59))
                                      (display "\n")
                                      (cons
                                       x9308
                                       (begin
                                         (write '(funapp 4450 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 4451 30))
                                   (display "\n")
                                   (cons x9309 x9307)))))
                              (begin
                                (write '(funapp 4452 27))
                                (display "\n")
                                (cons x9310 x9306)))))
                           (begin
                             (write '(funapp 4453 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 4453 29))
                                (display "\n")
                                'block)
                              x9305))))
                         (x9303
                          (begin
                            (write '(funapp 4454 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 4454 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 4454 41))
                               (display "\n")
                               '())))))
                        (begin
                          (write '(funapp 4455 21))
                          (display "\n")
                          (x9311 x9304 x9303)))
                       (letrec*
                        ((x9319
                          (letrec*
                           ((xj7751
                             (begin
                               (write '(funapp 4459 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4459 37))
                                  (display "\n")
                                  'module))))
                            (xk7752
                             (begin
                               (write '(funapp 4459 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4459 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9320
                              (begin
                                (write '(funapp 4462 27))
                                (display "\n")
                                ((lambda (j7754 k7755 f7756)
                                   (letrec*
                                    ((g9321
                                      (lambda (g7753)
                                        (letrec*
                                         ((g9322
                                           (letrec*
                                            ((x9323
                                              (letrec*
                                               ((x9324
                                                 (letrec*
                                                  ((x9325
                                                    (letrec*
                                                     ((x9326
                                                       (begin
                                                         (write
                                                          '(funapp 4475 56))
                                                         (display "\n")
                                                         (listof TETRA/C))))
                                                     (begin
                                                       (write
                                                        '(funapp 4476 48))
                                                       (display "\n")
                                                       (and/c
                                                        cons?/c
                                                        x9326)))))
                                                  (begin
                                                    (write '(funapp 4477 45))
                                                    (display "\n")
                                                    (x9325
                                                     j7754
                                                     k7755
                                                     g7753)))))
                                               (begin
                                                 (write '(funapp 4478 42))
                                                 (display "\n")
                                                 (f7756 x9324)))))
                                            (begin
                                              (write '(funapp 4479 39))
                                              (display "\n")
                                              (WORLD/C j7754 k7755 x9323)))))
                                         g9322))))
                                    g9321))
                                 xj7751
                                 xk7752
                                 world0))))
                            g9320)))
                         (x9318 (input)))
                        (begin
                          (write '(funapp 4487 21))
                          (display "\n")
                          (x9319 x9318)))))))))
               g8759))))
           g7808))))
       g7791)))
    g7790)))
