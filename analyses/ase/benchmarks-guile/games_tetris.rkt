(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7776 #t)) g7776)))
    (meta (lambda (v) (letrec* ((g7777 v)) g7777)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7778
          (letrec*
           ((g7779
             (letrec*
              ((x-e7780 lst))
              (letrec*
               ((v1742 x-e7780))
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
                   ((x-cnd7781
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7781
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
           g7779)))
        g7778)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7782 (lambda (v) (letrec* ((g7783 v)) g7783)))) g7782)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7784
          (letrec*
           ((x7785 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7785)))))
        g7784))))
   (letrec*
    ((g7786
      (letrec*
       ((g7787
         (letrec*
          ((assert
            (lambda (cnd)
              (letrec*
               ((g7788
                 (if cnd
                   (begin (write '(funapp 47 31)) (display "\n") '())
                   (begin
                     (write '(funapp 47 36))
                     (display "\n")
                     (error "assertion failed")))))
               g7788)))
           (>=
            (lambda (x y)
              (letrec*
               ((g7789
                 (letrec*
                  ((x7791
                    (begin
                      (write '(funapp 52 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 52 55))
                    (display "\n")
                    (assert x7791))))
                (g7790
                 (letrec*
                  ((val7244
                    (begin (write '(funapp 55 29)) (display "\n") (> x y))))
                  (letrec*
                   ((g7792
                     (if val7244
                       val7244
                       (letrec*
                        ((val7245
                          (begin
                            (write '(funapp 61 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7793 (if val7245 val7245 #f))) g7793)))))
                   g7792))))
               g7790)))
           (<=
            (lambda (x y)
              (letrec*
               ((g7794
                 (letrec*
                  ((x7796
                    (begin
                      (write '(funapp 68 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 68 55))
                    (display "\n")
                    (assert x7796))))
                (g7795
                 (letrec*
                  ((val7246
                    (begin (write '(funapp 71 29)) (display "\n") (< x y))))
                  (letrec*
                   ((g7797
                     (if val7246
                       val7246
                       (letrec*
                        ((val7247
                          (begin
                            (write '(funapp 77 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7798 (if val7247 val7247 #f))) g7798)))))
                   g7797))))
               g7795)))
           (>
            (lambda (x y)
              (letrec*
               ((g7799
                 (letrec*
                  ((x7801
                    (begin
                      (write '(funapp 84 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 84 55))
                    (display "\n")
                    (assert x7801))))
                (g7800
                 (letrec*
                  ((x7802
                    (begin (write '(funapp 85 41)) (display "\n") (<= x y))))
                  (begin (write '(funapp 85 52)) (display "\n") (not x7802)))))
               g7800)))
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
           ((g7803 (begin (write '(funapp 101 19)) (display "\n") '()))
            (g7804
             (letrec*
              ((empty (begin (write '(funapp 104 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7805
                     (lambda (k j lst)
                       (letrec*
                        ((g7806
                          (begin
                            (write '(funapp 112 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7807
                                  (begin
                                    (write '(funapp 114 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7807))
                             lst))))
                        g7806))))
                   g7805)))
               (real?/c
                (lambda (g7265 g7266 g7267)
                  (letrec*
                   ((g7808
                     (letrec*
                      ((x-cnd7809
                        (begin
                          (write '(funapp 123 35))
                          (display "\n")
                          (real? g7267))))
                      (if x-cnd7809
                        g7267
                        (begin
                          (write '(blame g7265 124 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7265)))))))
                   g7808)))
               (boolean?/c
                (lambda (g7268 g7269 g7270)
                  (letrec*
                   ((g7810
                     (letrec*
                      ((x-cnd7811
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (boolean? g7270))))
                      (if x-cnd7811
                        g7270
                        (begin
                          (write '(blame g7268 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7268)))))))
                   g7810)))
               (number?/c
                (lambda (g7271 g7272 g7273)
                  (letrec*
                   ((g7812
                     (letrec*
                      ((x-cnd7813
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (number? g7273))))
                      (if x-cnd7813
                        g7273
                        (begin
                          (write '(blame g7271 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7271)))))))
                   g7812)))
               (any/c
                (lambda (g7274 g7275 g7276)
                  (letrec*
                   ((g7814
                     (letrec*
                      ((x-cnd7815
                        (begin
                          (write '(funapp 148 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7816 #t)) g7816)) g7276))))
                      (if x-cnd7815
                        g7276
                        (begin
                          (write '(blame g7274 149 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7274)))))))
                   g7814)))
               (any?/c
                (lambda (g7277 g7278 g7279)
                  (letrec*
                   ((g7817
                     (letrec*
                      ((x-cnd7818
                        (begin
                          (write '(funapp 157 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7819 #t)) g7819)) g7279))))
                      (if x-cnd7818
                        g7279
                        (begin
                          (write '(blame g7277 158 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7277)))))))
                   g7817)))
               (cons?/c
                (lambda (g7280 g7281 g7282)
                  (letrec*
                   ((g7820
                     (letrec*
                      ((x-cnd7821
                        (begin
                          (write '(funapp 165 35))
                          (display "\n")
                          (pair? g7282))))
                      (if x-cnd7821
                        g7282
                        (begin
                          (write '(blame g7280 166 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7280)))))))
                   g7820)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7283 g7284 g7285)
                  (letrec*
                   ((g7822
                     (letrec*
                      ((x-cnd7823
                        (begin
                          (write '(funapp 174 35))
                          (display "\n")
                          (pair? g7285))))
                      (if x-cnd7823
                        g7285
                        (begin
                          (write '(blame g7283 175 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7283)))))))
                   g7822)))
               (integer?/c
                (lambda (g7286 g7287 g7288)
                  (letrec*
                   ((g7824
                     (letrec*
                      ((x-cnd7825
                        (begin
                          (write '(funapp 182 35))
                          (display "\n")
                          (integer? g7288))))
                      (if x-cnd7825
                        g7288
                        (begin
                          (write '(blame g7286 183 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7286)))))))
                   g7824)))
               (symbol?/c
                (lambda (g7289 g7290 g7291)
                  (letrec*
                   ((g7826
                     (letrec*
                      ((x-cnd7827
                        (begin
                          (write '(funapp 190 35))
                          (display "\n")
                          (symbol? g7291))))
                      (if x-cnd7827
                        g7291
                        (begin
                          (write '(blame g7289 191 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7289)))))))
                   g7826)))
               (string?/c
                (lambda (g7292 g7293 g7294)
                  (letrec*
                   ((g7828
                     (letrec*
                      ((x-cnd7829
                        (begin
                          (write '(funapp 198 35))
                          (display "\n")
                          (string? g7294))))
                      (if x-cnd7829
                        g7294
                        (begin
                          (write '(blame g7292 199 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7292)))))))
                   g7828)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7830
                     (lambda (k j v)
                       (letrec*
                        ((g7831
                          (letrec*
                           ((x-cnd7832
                             (begin
                               (write '(funapp 209 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7832
                             (begin
                               (write '(funapp 210 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7831))))
                   g7830)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7833
                     (lambda (k j v)
                       (letrec*
                        ((g7834
                          (letrec*
                           ((x-cnd7835
                             (begin
                               (write '(funapp 221 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7835
                             (begin
                               (write '(funapp 223 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7839
                                (letrec*
                                 ((x7840
                                   (begin
                                     (write '(funapp 227 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 228 34))
                                   (display "\n")
                                   (contract k j x7840))))
                               (x7836
                                (letrec*
                                 ((x7838
                                   (begin
                                     (write '(funapp 231 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7837
                                   (begin
                                     (write '(funapp 231 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 232 34))
                                   (display "\n")
                                   (x7838 k j x7837)))))
                              (begin
                                (write '(funapp 233 31))
                                (display "\n")
                                (orig-cons x7839 x7836)))))))
                        g7834))))
                   g7833)))
               (any? (lambda (v) (letrec* ((g7841 #t)) g7841)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7842
                     (letrec*
                      ((x7843
                        (begin
                          (write '(funapp 240 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 240 55))
                        (display "\n")
                        (not x7843)))))
                   g7842)))
               (nonzero?/c
                (lambda (g7295 g7296 g7297)
                  (letrec*
                   ((g7844
                     (letrec*
                      ((x-cnd7845
                        (begin
                          (write '(funapp 248 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7846
                                (letrec*
                                 ((x7847
                                   (begin
                                     (write '(funapp 250 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 250 64))
                                   (display "\n")
                                   (not x7847)))))
                              g7846))
                           g7297))))
                      (if x-cnd7845
                        g7297
                        (begin
                          (write '(blame g7295 255 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7295)))))))
                   g7844)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7848
                     (lambda (g7298 g7299 g7300)
                       (letrec*
                        ((g7849
                          (letrec*
                           ((x-cnd7850
                             (begin
                               (write '(funapp 266 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7851
                                     (begin
                                       (write '(funapp 267 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7851))
                                g7300))))
                           (if x-cnd7850
                             g7300
                             (begin
                               (write '(blame g7298 271 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7298)))))))
                        g7849))))
                   g7848)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7852
                     (lambda (g7301 g7302 g7303)
                       (letrec*
                        ((g7853
                          (letrec*
                           ((x-cnd7854
                             (begin
                               (write '(funapp 283 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7855
                                     (begin
                                       (write '(funapp 284 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7855))
                                g7303))))
                           (if x-cnd7854
                             g7303
                             (begin
                               (write '(blame g7301 288 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7301)))))))
                        g7853))))
                   g7852)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7856
                     (lambda (g7304 g7305 g7306)
                       (letrec*
                        ((g7857
                          (letrec*
                           ((x-cnd7858
                             (begin
                               (write '(funapp 300 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7859
                                     (begin
                                       (write '(funapp 301 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7859))
                                g7306))))
                           (if x-cnd7858
                             g7306
                             (begin
                               (write '(blame g7304 305 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7304)))))))
                        g7857))))
                   g7856)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7860
                     (lambda (g7307 g7308 g7309)
                       (letrec*
                        ((g7861
                          (letrec*
                           ((x-cnd7862
                             (begin
                               (write '(funapp 317 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7863
                                     (begin
                                       (write '(funapp 318 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7863))
                                g7309))))
                           (if x-cnd7862
                             g7309
                             (begin
                               (write '(blame g7307 322 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7307)))))))
                        g7861))))
                   g7860)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7864
                     (lambda (g7310 g7311 g7312)
                       (letrec*
                        ((g7865
                          (letrec*
                           ((x-cnd7866
                             (begin
                               (write '(funapp 334 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7867
                                     (begin
                                       (write '(funapp 335 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7867))
                                g7312))))
                           (if x-cnd7866
                             g7312
                             (begin
                               (write '(blame g7310 339 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7310)))))))
                        g7865))))
                   g7864)))
               (meta (lambda (v) (letrec* ((g7868 v)) g7868)))
               (+
                (letrec*
                 ((xj7313
                   (begin (write '(funapp 345 26)) (display "\n") 'server))
                  (xk7314
                   (begin (write '(funapp 345 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7869
                    (begin
                      (write '(funapp 348 21))
                      (display "\n")
                      ((lambda (j7317 k7318 f7319)
                         (letrec*
                          ((g7871
                            (lambda (g7315 g7316)
                              (letrec*
                               ((g7872
                                 (letrec*
                                  ((x7873
                                    (letrec*
                                     ((x7875
                                       (begin
                                         (write '(funapp 357 44))
                                         (display "\n")
                                         (number?/c j7317 k7318 g7315)))
                                      (x7874
                                       (begin
                                         (write '(funapp 358 44))
                                         (display "\n")
                                         (number?/c j7317 k7318 g7316))))
                                     (begin
                                       (write '(funapp 359 36))
                                       (display "\n")
                                       (f7319 x7875 x7874)))))
                                  (begin
                                    (write '(funapp 360 33))
                                    (display "\n")
                                    (number?/c j7317 k7318 x7873)))))
                               g7872))))
                          g7871))
                       xj7313
                       xk7314
                       (lambda (a b)
                         (letrec*
                          ((g7870
                            (begin
                              (write '(funapp 365 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7870))))))
                  g7869)))
               (-
                (letrec*
                 ((xj7320
                   (begin (write '(funapp 369 26)) (display "\n") 'server))
                  (xk7321
                   (begin (write '(funapp 369 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7876
                    (begin
                      (write '(funapp 372 21))
                      (display "\n")
                      ((lambda (j7324 k7325 f7326)
                         (letrec*
                          ((g7878
                            (lambda (g7322 g7323)
                              (letrec*
                               ((g7879
                                 (letrec*
                                  ((x7880
                                    (letrec*
                                     ((x7882
                                       (begin
                                         (write '(funapp 381 44))
                                         (display "\n")
                                         (number?/c j7324 k7325 g7322)))
                                      (x7881
                                       (begin
                                         (write '(funapp 382 44))
                                         (display "\n")
                                         (number?/c j7324 k7325 g7323))))
                                     (begin
                                       (write '(funapp 383 36))
                                       (display "\n")
                                       (f7326 x7882 x7881)))))
                                  (begin
                                    (write '(funapp 384 33))
                                    (display "\n")
                                    (number?/c j7324 k7325 x7880)))))
                               g7879))))
                          g7878))
                       xj7320
                       xk7321
                       (lambda (a b)
                         (letrec*
                          ((g7877
                            (begin
                              (write '(funapp 389 53))
                              (display "\n")
                              (orig-- a b))))
                          g7877))))))
                  g7876)))
               (*
                (letrec*
                 ((xj7327
                   (begin (write '(funapp 393 26)) (display "\n") 'server))
                  (xk7328
                   (begin (write '(funapp 393 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7883
                    (begin
                      (write '(funapp 396 21))
                      (display "\n")
                      ((lambda (j7331 k7332 f7333)
                         (letrec*
                          ((g7885
                            (lambda (g7329 g7330)
                              (letrec*
                               ((g7886
                                 (letrec*
                                  ((x7887
                                    (letrec*
                                     ((x7889
                                       (begin
                                         (write '(funapp 405 44))
                                         (display "\n")
                                         (number?/c j7331 k7332 g7329)))
                                      (x7888
                                       (begin
                                         (write '(funapp 406 44))
                                         (display "\n")
                                         (number?/c j7331 k7332 g7330))))
                                     (begin
                                       (write '(funapp 407 36))
                                       (display "\n")
                                       (f7333 x7889 x7888)))))
                                  (begin
                                    (write '(funapp 408 33))
                                    (display "\n")
                                    (number?/c j7331 k7332 x7887)))))
                               g7886))))
                          g7885))
                       xj7327
                       xk7328
                       (lambda (a b)
                         (letrec*
                          ((g7884
                            (begin
                              (write '(funapp 413 53))
                              (display "\n")
                              (orig-* a b))))
                          g7884))))))
                  g7883)))
               (<
                (letrec*
                 ((xj7334
                   (begin (write '(funapp 417 26)) (display "\n") 'server))
                  (xk7335
                   (begin (write '(funapp 417 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7890
                    (begin
                      (write '(funapp 420 21))
                      (display "\n")
                      ((lambda (j7338 k7339 f7340)
                         (letrec*
                          ((g7892
                            (lambda (g7336 g7337)
                              (letrec*
                               ((g7893
                                 (letrec*
                                  ((x7894
                                    (letrec*
                                     ((x7896
                                       (begin
                                         (write '(funapp 429 44))
                                         (display "\n")
                                         (number?/c j7338 k7339 g7336)))
                                      (x7895
                                       (begin
                                         (write '(funapp 430 44))
                                         (display "\n")
                                         (number?/c j7338 k7339 g7337))))
                                     (begin
                                       (write '(funapp 431 36))
                                       (display "\n")
                                       (f7340 x7896 x7895)))))
                                  (begin
                                    (write '(funapp 432 33))
                                    (display "\n")
                                    (boolean?/c j7338 k7339 x7894)))))
                               g7893))))
                          g7892))
                       xj7334
                       xk7335
                       (lambda (a b)
                         (letrec*
                          ((g7891
                            (begin
                              (write '(funapp 437 53))
                              (display "\n")
                              (orig-< a b))))
                          g7891))))))
                  g7890)))
               (>
                (letrec*
                 ((xj7341
                   (begin (write '(funapp 441 26)) (display "\n") 'server))
                  (xk7342
                   (begin (write '(funapp 441 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7897
                    (begin
                      (write '(funapp 444 21))
                      (display "\n")
                      ((lambda (j7345 k7346 f7347)
                         (letrec*
                          ((g7899
                            (lambda (g7343 g7344)
                              (letrec*
                               ((g7900
                                 (letrec*
                                  ((x7901
                                    (letrec*
                                     ((x7903
                                       (begin
                                         (write '(funapp 453 44))
                                         (display "\n")
                                         (number?/c j7345 k7346 g7343)))
                                      (x7902
                                       (begin
                                         (write '(funapp 454 44))
                                         (display "\n")
                                         (number?/c j7345 k7346 g7344))))
                                     (begin
                                       (write '(funapp 455 36))
                                       (display "\n")
                                       (f7347 x7903 x7902)))))
                                  (begin
                                    (write '(funapp 456 33))
                                    (display "\n")
                                    (boolean?/c j7345 k7346 x7901)))))
                               g7900))))
                          g7899))
                       xj7341
                       xk7342
                       (lambda (a b)
                         (letrec*
                          ((g7898
                            (begin
                              (write '(funapp 461 53))
                              (display "\n")
                              (orig-> a b))))
                          g7898))))))
                  g7897)))
               (<=
                (letrec*
                 ((xj7348
                   (begin (write '(funapp 465 26)) (display "\n") 'server))
                  (xk7349
                   (begin (write '(funapp 465 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7904
                    (begin
                      (write '(funapp 468 21))
                      (display "\n")
                      ((lambda (j7352 k7353 f7354)
                         (letrec*
                          ((g7906
                            (lambda (g7350 g7351)
                              (letrec*
                               ((g7907
                                 (letrec*
                                  ((x7908
                                    (letrec*
                                     ((x7910
                                       (begin
                                         (write '(funapp 477 44))
                                         (display "\n")
                                         (number?/c j7352 k7353 g7350)))
                                      (x7909
                                       (begin
                                         (write '(funapp 478 44))
                                         (display "\n")
                                         (number?/c j7352 k7353 g7351))))
                                     (begin
                                       (write '(funapp 479 36))
                                       (display "\n")
                                       (f7354 x7910 x7909)))))
                                  (begin
                                    (write '(funapp 480 33))
                                    (display "\n")
                                    (boolean?/c j7352 k7353 x7908)))))
                               g7907))))
                          g7906))
                       xj7348
                       xk7349
                       (lambda (a b)
                         (letrec*
                          ((g7905
                            (begin
                              (write '(funapp 485 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7905))))))
                  g7904)))
               (>=
                (letrec*
                 ((xj7355
                   (begin (write '(funapp 489 26)) (display "\n") 'server))
                  (xk7356
                   (begin (write '(funapp 489 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7911
                    (begin
                      (write '(funapp 492 21))
                      (display "\n")
                      ((lambda (j7359 k7360 f7361)
                         (letrec*
                          ((g7913
                            (lambda (g7357 g7358)
                              (letrec*
                               ((g7914
                                 (letrec*
                                  ((x7915
                                    (letrec*
                                     ((x7917
                                       (begin
                                         (write '(funapp 501 44))
                                         (display "\n")
                                         (number?/c j7359 k7360 g7357)))
                                      (x7916
                                       (begin
                                         (write '(funapp 502 44))
                                         (display "\n")
                                         (number?/c j7359 k7360 g7358))))
                                     (begin
                                       (write '(funapp 503 36))
                                       (display "\n")
                                       (f7361 x7917 x7916)))))
                                  (begin
                                    (write '(funapp 504 33))
                                    (display "\n")
                                    (boolean?/c j7359 k7360 x7915)))))
                               g7914))))
                          g7913))
                       xj7355
                       xk7356
                       (lambda (a b)
                         (letrec*
                          ((g7912
                            (begin
                              (write '(funapp 509 53))
                              (display "\n")
                              (orig->= a b))))
                          g7912))))))
                  g7911)))
               (/
                (letrec*
                 ((xj7362
                   (begin (write '(funapp 513 26)) (display "\n") 'server))
                  (xk7363
                   (begin (write '(funapp 513 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7918
                    (begin
                      (write '(funapp 516 21))
                      (display "\n")
                      ((lambda (j7366 k7367 f7368)
                         (letrec*
                          ((g7920
                            (lambda (g7364 g7365)
                              (letrec*
                               ((g7921
                                 (letrec*
                                  ((x7922
                                    (letrec*
                                     ((x7924
                                       (begin
                                         (write '(funapp 525 44))
                                         (display "\n")
                                         (number?/c j7366 k7367 g7364)))
                                      (x7923
                                       (begin
                                         (write '(funapp 526 44))
                                         (display "\n")
                                         (number?/c j7366 k7367 g7365))))
                                     (begin
                                       (write '(funapp 527 36))
                                       (display "\n")
                                       (f7368 x7924 x7923)))))
                                  (begin
                                    (write '(funapp 528 33))
                                    (display "\n")
                                    (number?/c j7366 k7367 x7922)))))
                               g7921))))
                          g7920))
                       xj7362
                       xk7363
                       (lambda (a b)
                         (letrec*
                          ((g7919
                            (begin
                              (write '(funapp 533 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7919))))))
                  g7918)))
               (car
                (letrec*
                 ((xj7369
                   (begin (write '(funapp 537 26)) (display "\n") 'server))
                  (xk7370
                   (begin (write '(funapp 537 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7925
                    (begin
                      (write '(funapp 540 21))
                      (display "\n")
                      ((lambda (j7372 k7373 f7374)
                         (letrec*
                          ((g7927
                            (lambda (g7371)
                              (letrec*
                               ((g7928
                                 (letrec*
                                  ((x7929
                                    (letrec*
                                     ((x7930
                                       (begin
                                         (write '(funapp 549 44))
                                         (display "\n")
                                         (pair?/c j7372 k7373 g7371))))
                                     (begin
                                       (write '(funapp 550 36))
                                       (display "\n")
                                       (f7374 x7930)))))
                                  (begin
                                    (write '(funapp 551 33))
                                    (display "\n")
                                    (any/c j7372 k7373 x7929)))))
                               g7928))))
                          g7927))
                       xj7369
                       xk7370
                       (lambda (p)
                         (letrec*
                          ((g7926
                            (begin
                              (write '(funapp 556 51))
                              (display "\n")
                              (orig-car p))))
                          g7926))))))
                  g7925)))
               (cdr
                (letrec*
                 ((xj7375
                   (begin (write '(funapp 560 26)) (display "\n") 'server))
                  (xk7376
                   (begin (write '(funapp 560 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7931
                    (begin
                      (write '(funapp 563 21))
                      (display "\n")
                      ((lambda (j7378 k7379 f7380)
                         (letrec*
                          ((g7933
                            (lambda (g7377)
                              (letrec*
                               ((g7934
                                 (letrec*
                                  ((x7935
                                    (letrec*
                                     ((x7936
                                       (begin
                                         (write '(funapp 572 44))
                                         (display "\n")
                                         (pair?/c j7378 k7379 g7377))))
                                     (begin
                                       (write '(funapp 573 36))
                                       (display "\n")
                                       (f7380 x7936)))))
                                  (begin
                                    (write '(funapp 574 33))
                                    (display "\n")
                                    (any/c j7378 k7379 x7935)))))
                               g7934))))
                          g7933))
                       xj7375
                       xk7376
                       (lambda (p)
                         (letrec*
                          ((g7932
                            (begin
                              (write '(funapp 579 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7932))))))
                  g7931)))
               (cons
                (letrec*
                 ((xj7381
                   (begin (write '(funapp 583 26)) (display "\n") 'server))
                  (xk7382
                   (begin (write '(funapp 583 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7937
                    (begin
                      (write '(funapp 586 21))
                      (display "\n")
                      ((lambda (j7385 k7386 f7387)
                         (letrec*
                          ((g7939
                            (lambda (g7383 g7384)
                              (letrec*
                               ((g7940
                                 (letrec*
                                  ((x7941
                                    (letrec*
                                     ((x7943
                                       (begin
                                         (write '(funapp 595 44))
                                         (display "\n")
                                         (any/c j7385 k7386 g7383)))
                                      (x7942
                                       (begin
                                         (write '(funapp 596 44))
                                         (display "\n")
                                         (any/c j7385 k7386 g7384))))
                                     (begin
                                       (write '(funapp 597 36))
                                       (display "\n")
                                       (f7387 x7943 x7942)))))
                                  (begin
                                    (write '(funapp 598 33))
                                    (display "\n")
                                    (pair?/c j7385 k7386 x7941)))))
                               g7940))))
                          g7939))
                       xj7381
                       xk7382
                       (lambda (a b)
                         (letrec*
                          ((g7938
                            (begin
                              (write '(funapp 604 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7938))))))
                  g7937)))
               (vector-ref
                (letrec*
                 ((xj7388
                   (begin (write '(funapp 608 26)) (display "\n") 'server))
                  (xk7389
                   (begin (write '(funapp 608 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7944
                    (begin
                      (write '(funapp 611 21))
                      (display "\n")
                      ((lambda (j7391 k7392 f7393)
                         (letrec*
                          ((g7946
                            (lambda (g7390)
                              (letrec*
                               ((g7947
                                 (letrec*
                                  ((x7948
                                    (letrec*
                                     ((x7949
                                       (begin
                                         (write '(funapp 620 44))
                                         (display "\n")
                                         (vector?/c j7391 k7392 g7390))))
                                     (begin
                                       (write '(funapp 621 36))
                                       (display "\n")
                                       (f7393 x7949)))))
                                  (begin
                                    (write '(funapp 622 33))
                                    (display "\n")
                                    (integer?/c j7391 k7392 x7948)))))
                               g7947))))
                          g7946))
                       xj7388
                       xk7389
                       (lambda (v i)
                         (letrec*
                          ((g7945
                            (begin
                              (write '(funapp 628 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7945))))))
                  g7944)))
               (vector-set!
                (letrec*
                 ((xj7394
                   (begin (write '(funapp 632 26)) (display "\n") 'server))
                  (xk7395
                   (begin (write '(funapp 632 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7950
                    (begin
                      (write '(funapp 635 21))
                      (display "\n")
                      ((lambda (j7398 k7399 f7400)
                         (letrec*
                          ((g7952
                            (lambda (g7396 g7397)
                              (letrec*
                               ((g7953
                                 (letrec*
                                  ((x7954
                                    (letrec*
                                     ((x7956
                                       (begin
                                         (write '(funapp 644 44))
                                         (display "\n")
                                         (vector?/c j7398 k7399 g7396)))
                                      (x7955
                                       (begin
                                         (write '(funapp 645 44))
                                         (display "\n")
                                         (integer?/c j7398 k7399 g7397))))
                                     (begin
                                       (write '(funapp 646 36))
                                       (display "\n")
                                       (f7400 x7956 x7955)))))
                                  (begin
                                    (write '(funapp 647 33))
                                    (display "\n")
                                    (any/c j7398 k7399 x7954)))))
                               g7953))))
                          g7952))
                       xj7394
                       xk7395
                       (lambda (vec i v)
                         (letrec*
                          ((g7951
                            (begin
                              (write '(funapp 653 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7951))))))
                  g7950)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7957
                     (letrec*
                      ((x7958
                        (letrec*
                         ((x7959
                           (begin
                             (write '(funapp 660 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 660 58))
                           (display "\n")
                           (cdr x7959)))))
                      (begin
                        (write '(funapp 661 23))
                        (display "\n")
                        (cdr x7958)))))
                   g7957)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7960
                     (letrec*
                      ((x7963
                        (begin
                          (write '(funapp 667 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 667 62))
                        (display "\n")
                        (assert x7963))))
                    (g7961
                     (letrec*
                      ((x7964
                        (begin
                          (write '(funapp 668 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 668 57))
                        (display "\n")
                        (assert x7964))))
                    (g7962
                     (letrec*
                      ((x-cnd7965
                        (begin
                          (write '(funapp 671 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7965
                        (begin (write '(funapp 673 24)) (display "\n") '())
                        (letrec*
                         ((x7968
                           (letrec*
                            ((x7969
                              (begin
                                (write '(funapp 675 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 675 61))
                              (display "\n")
                              (f x7969))))
                          (x7966
                           (letrec*
                            ((x7967
                              (begin
                                (write '(funapp 676 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 676 61))
                              (display "\n")
                              (map f x7967)))))
                         (begin
                           (write '(funapp 677 26))
                           (display "\n")
                           (cons x7968 x7966)))))))
                   g7962)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7970
                     (letrec*
                      ((x7971
                        (begin
                          (write '(funapp 682 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 682 55))
                        (display "\n")
                        (cdr x7971)))))
                   g7970)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7972
                     (letrec*
                      ((x7973
                        (letrec*
                         ((x7974
                           (letrec*
                            ((x7975
                              (begin
                                (write '(funapp 691 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 691 61))
                              (display "\n")
                              (car x7975)))))
                         (begin
                           (write '(funapp 692 26))
                           (display "\n")
                           (cdr x7974)))))
                      (begin
                        (write '(funapp 693 23))
                        (display "\n")
                        (car x7973)))))
                   g7972)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7976
                     (letrec*
                      ((x7977
                        (letrec*
                         ((x7978
                           (letrec*
                            ((x7979
                              (begin
                                (write '(funapp 702 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 702 61))
                              (display "\n")
                              (cdr x7979)))))
                         (begin
                           (write '(funapp 703 26))
                           (display "\n")
                           (car x7978)))))
                      (begin
                        (write '(funapp 704 23))
                        (display "\n")
                        (cdr x7977)))))
                   g7976)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7980
                     (letrec*
                      ((x7983
                        (begin
                          (write '(funapp 710 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 710 60))
                        (display "\n")
                        (assert x7983))))
                    (g7981
                     (letrec*
                      ((x7984
                        (begin
                          (write '(funapp 712 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 712 59))
                        (display "\n")
                        (assert x7984))))
                    (g7982
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
                       ((g7985
                         (begin
                           (write '(funapp 718 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7986 res))
                       g7986))))
                   g7982)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7987
                     (letrec*
                      ((x7988
                        (letrec*
                         ((x7989
                           (begin
                             (write '(funapp 726 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 726 58))
                           (display "\n")
                           (cdr x7989)))))
                      (begin
                        (write '(funapp 727 23))
                        (display "\n")
                        (car x7988)))))
                   g7987)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7990
                     (letrec*
                      ((x7991
                        (letrec*
                         ((x7992
                           (letrec*
                            ((x7993
                              (begin
                                (write '(funapp 736 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 736 61))
                              (display "\n")
                              (car x7993)))))
                         (begin
                           (write '(funapp 737 26))
                           (display "\n")
                           (car x7992)))))
                      (begin
                        (write '(funapp 738 23))
                        (display "\n")
                        (cdr x7991)))))
                   g7990)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7994
                     (letrec*
                      ((x7996
                        (begin
                          (write '(funapp 743 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 743 57))
                        (display "\n")
                        (assert x7996))))
                    (g7995
                     (letrec*
                      ((x-cnd7997
                        (begin
                          (write '(funapp 746 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7997
                        #f
                        (letrec*
                         ((x-cnd7998
                           (letrec*
                            ((x7999
                              (begin
                                (write '(funapp 751 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 751 56))
                              (display "\n")
                              (eq? x7999 k)))))
                         (if x-cnd7998
                           (begin
                             (write '(funapp 753 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8000
                              (begin
                                (write '(funapp 754 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 754 55))
                              (display "\n")
                              (assq k x8000)))))))))
                   g7995)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g8001
                     (letrec*
                      ((x8002
                        (begin
                          (write '(funapp 759 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 759 60))
                        (display "\n")
                        (= 0 x8002)))))
                   g8001)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g8003
                     (letrec*
                      ((x8005
                        (begin
                          (write '(funapp 764 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 764 57))
                        (display "\n")
                        (assert x8005))))
                    (g8004
                     (letrec*
                      ((x-cnd8006
                        (begin
                          (write '(funapp 767 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8006
                        ""
                        (letrec*
                         ((x8009
                           (letrec*
                            ((x8010
                              (begin
                                (write '(funapp 772 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 772 55))
                              (display "\n")
                              (char->string x8010))))
                          (x8007
                           (letrec*
                            ((x8008
                              (begin
                                (write '(funapp 774 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 774 55))
                              (display "\n")
                              (list->string x8008)))))
                         (begin
                           (write '(funapp 775 26))
                           (display "\n")
                           (string-append x8009 x8007)))))))
                   g8004)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8011
                     (letrec*
                      ((x8014
                        (begin
                          (write '(funapp 780 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 780 58))
                        (display "\n")
                        (assert x8014))))
                    (g8012
                     (letrec*
                      ((x8015
                        (begin
                          (write '(funapp 781 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 781 58))
                        (display "\n")
                        (assert x8015))))
                    (g8013
                     (letrec*
                      ((val7248
                        (begin
                          (write '(funapp 784 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g8016
                         (if val7248
                           val7248
                           (begin
                             (write '(funapp 786 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g8016))))
                   g8013)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g8017
                     (letrec*
                      ((x8018
                        (letrec*
                         ((x8019
                           (letrec*
                            ((x8020
                              (begin
                                (write '(funapp 796 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 796 61))
                              (display "\n")
                              (cdr x8020)))))
                         (begin
                           (write '(funapp 797 26))
                           (display "\n")
                           (cdr x8019)))))
                      (begin
                        (write '(funapp 798 23))
                        (display "\n")
                        (cdr x8018)))))
                   g8017)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g8021
                     (letrec*
                      ((x8024
                        (begin
                          (write '(funapp 803 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 803 57))
                        (display "\n")
                        (assert x8024))))
                    (g8022
                     (letrec*
                      ((x8025
                        (begin
                          (write '(funapp 804 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 804 57))
                        (display "\n")
                        (assert x8025))))
                    (g8023
                     (letrec*
                      ((x-cnd8026
                        (begin
                          (write '(funapp 807 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd8026
                        x
                        (letrec*
                         ((x8028
                           (begin
                             (write '(funapp 811 34))
                             (display "\n")
                             (cdr x)))
                          (x8027
                           (begin
                             (write '(funapp 811 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 812 26))
                           (display "\n")
                           (list-tail x8028 x8027)))))))
                   g8023)))
               (halt
                (lambda ()
                  (letrec*
                   ((g8029
                     (begin (write '(funapp 814 49)) (display "\n") '())))
                   g8029)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g8030
                     (letrec*
                      ((x-cnd8031
                        (letrec*
                         ((x8032 #\a))
                         (begin
                           (write '(funapp 821 48))
                           (display "\n")
                           (char-ci>=? c x8032)))))
                      (if x-cnd8031
                        (letrec*
                         ((x8033 #\z))
                         (begin
                           (write '(funapp 823 48))
                           (display "\n")
                           (char-ci<=? c x8033)))
                        #f))))
                   g8030)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g8034
                     (letrec*
                      ((val7249
                        (letrec*
                         ((x8035
                           (begin
                             (write '(funapp 832 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 832 62))
                           (display "\n")
                           (= x8035 9)))))
                      (letrec*
                       ((g8036
                         (if val7249
                           val7249
                           (letrec*
                            ((val7250
                              (letrec*
                               ((x8037
                                 (begin
                                   (write '(funapp 840 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 841 32))
                                 (display "\n")
                                 (= x8037 10)))))
                            (letrec*
                             ((g8038
                               (if val7250
                                 val7250
                                 (letrec*
                                  ((x8039
                                    (begin
                                      (write '(funapp 847 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 848 35))
                                    (display "\n")
                                    (= x8039 32))))))
                             g8038)))))
                       g8036))))
                   g8034)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g8040
                     (letrec*
                      ((x8041
                        (letrec*
                         ((x8042
                           (begin
                             (write '(funapp 857 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 857 58))
                           (display "\n")
                           (cdr x8042)))))
                      (begin
                        (write '(funapp 858 23))
                        (display "\n")
                        (cdr x8041)))))
                   g8040)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g8043
                     (letrec*
                      ((x8045
                        (begin
                          (write '(funapp 863 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 863 59))
                        (display "\n")
                        (assert x8045))))
                    (g8044
                     (begin (write '(funapp 864 28)) (display "\n") (> x 0))))
                   g8044)))
               ($pc (begin (write '(funapp 866 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g8046 #f)) g8046)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g8047
                     (letrec*
                      ((x8048
                        (begin
                          (write '(funapp 872 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 872 55))
                        (display "\n")
                        (cdr x8048)))))
                   g8047)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g8049
                     (letrec*
                      ((x8051
                        (begin
                          (write '(funapp 877 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 877 59))
                        (display "\n")
                        (assert x8051))))
                    (g8050
                     (letrec*
                      ((x-cnd8052
                        (begin
                          (write '(funapp 880 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd8052
                        (begin
                          (write '(funapp 881 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 881 49))
                          (display "\n")
                          (floor x))))))
                   g8050)))
               ($cmp (begin (write '(funapp 883 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g8053
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 889 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g8054
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (letrec*
                               ((x-cnd8055
                                 (begin
                                   (write '(funapp 897 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd8055
                                 (begin
                                   (write '(funapp 898 46))
                                   (display "\n")
                                   (null? b))
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
                                         (write '(funapp 906 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd8057
                                       (letrec*
                                        ((x-cnd8058
                                          (begin
                                            (write '(funapp 909 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd8058
                                          (begin
                                            (write '(funapp 910 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g8059
                                     (if val7253
                                       val7253
                                       (letrec*
                                        ((val7254
                                          (letrec*
                                           ((x-cnd8060
                                             (begin
                                               (write '(funapp 919 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd8060
                                             (letrec*
                                              ((x-cnd8061
                                                (begin
                                                  (write '(funapp 922 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd8061
                                                (letrec*
                                                 ((x-cnd8062
                                                   (letrec*
                                                    ((x8064
                                                      (begin
                                                        (write
                                                         '(funapp 927 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x8063
                                                      (begin
                                                        (write
                                                         '(funapp 928 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 929 53))
                                                      (display "\n")
                                                      (equal? x8064 x8063)))))
                                                 (if x-cnd8062
                                                   (letrec*
                                                    ((x8066
                                                      (begin
                                                        (write
                                                         '(funapp 932 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x8065
                                                      (begin
                                                        (write
                                                         '(funapp 933 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 934 53))
                                                      (display "\n")
                                                      (equal? x8066 x8065)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g8067
                                           (if val7254
                                             val7254
                                             (letrec*
                                              ((x-cnd8068
                                                (begin
                                                  (write '(funapp 943 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd8068
                                                (letrec*
                                                 ((x-cnd8069
                                                   (begin
                                                     (write '(funapp 946 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd8069
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 949 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g8070
                                                       (letrec*
                                                        ((x-cnd8071
                                                          (letrec*
                                                           ((x8072
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
                                                             (= x8072 n)))))
                                                        (if x-cnd8071
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g8073
                                                                  (letrec*
                                                                   ((val7255
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
                                                                    ((g8074
                                                                      (if val7255
                                                                        val7255
                                                                        (letrec*
                                                                         ((x-cnd8075
                                                                           (letrec*
                                                                            ((x8077
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
                                                                             (x8076
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
                                                                               x8077
                                                                               x8076)))))
                                                                         (if x-cnd8075
                                                                           (letrec*
                                                                            ((x8078
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
                                                                               x8078)))
                                                                           #f)))))
                                                                    g8074))))
                                                                g8073))))
                                                           (letrec*
                                                            ((g8079
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   998
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g8079))
                                                          #f))))
                                                     g8070))
                                                   #f))
                                                #f)))))
                                         g8067)))))
                                   g8059)))))
                             g8056)))))
                       g8054))))
                   g8053)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g8080
                     (letrec*
                      ((x8081
                        (letrec*
                         ((x8082
                           (letrec*
                            ((x8083
                              (begin
                                (write '(funapp 1016 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1016 61))
                              (display "\n")
                              (car x8083)))))
                         (begin
                           (write '(funapp 1017 26))
                           (display "\n")
                           (car x8082)))))
                      (begin
                        (write '(funapp 1018 23))
                        (display "\n")
                        (cdr x8081)))))
                   g8080)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g8084
                     (letrec*
                      ((x8085
                        (letrec*
                         ((x8086
                           (letrec*
                            ((x8087
                              (begin
                                (write '(funapp 1027 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1027 61))
                              (display "\n")
                              (cdr x8087)))))
                         (begin
                           (write '(funapp 1028 26))
                           (display "\n")
                           (car x8086)))))
                      (begin
                        (write '(funapp 1029 23))
                        (display "\n")
                        (car x8085)))))
                   g8084)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g8088
                     (begin
                       (write '(funapp 1031 53))
                       (display "\n")
                       (eq? x y))))
                   g8088)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g8089
                     (letrec*
                      ((x8092
                        (begin
                          (write '(funapp 1036 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1036 60))
                        (display "\n")
                        (assert x8092))))
                    (g8090
                     (letrec*
                      ((x8093
                        (begin
                          (write '(funapp 1038 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1038 59))
                        (display "\n")
                        (assert x8093))))
                    (g8091
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
                       ((g8094
                         (begin
                           (write '(funapp 1044 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g8095 res))
                       g8095))))
                   g8091)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g8096
                     (begin
                       (write '(funapp 1047 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1047 57))
                          (display "\n")
                          '())))))
                   g8096)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8097
                     (letrec*
                      ((x8100
                        (begin
                          (write '(funapp 1051 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1051 58))
                        (display "\n")
                        (assert x8100))))
                    (g8098
                     (letrec*
                      ((x8101
                        (begin
                          (write '(funapp 1052 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1052 58))
                        (display "\n")
                        (assert x8101))))
                    (g8099
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1055 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g8102
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1057 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g8102))))
                   g8099)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g8103
                     (letrec*
                      ((x8104
                        (letrec*
                         ((x8105
                           (begin
                             (write '(funapp 1065 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1065 58))
                           (display "\n")
                           (car x8105)))))
                      (begin
                        (write '(funapp 1066 23))
                        (display "\n")
                        (cdr x8104)))))
                   g8103)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g8106
                     (letrec*
                      ((x8107
                        (letrec*
                         ((x8108
                           (letrec*
                            ((x8109
                              (begin
                                (write '(funapp 1075 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1075 61))
                              (display "\n")
                              (cdr x8109)))))
                         (begin
                           (write '(funapp 1076 26))
                           (display "\n")
                           (car x8108)))))
                      (begin
                        (write '(funapp 1077 23))
                        (display "\n")
                        (cdr x8107)))))
                   g8106)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g8110
                     (letrec*
                      ((x8111
                        (letrec*
                         ((x8112
                           (begin
                             (write '(funapp 1085 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1085 58))
                           (display "\n")
                           (cdr x8112)))))
                      (begin
                        (write '(funapp 1086 23))
                        (display "\n")
                        (car x8111)))))
                   g8110)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g8113
                     (letrec*
                      ((x8114
                        (letrec*
                         ((x8115
                           (begin
                             (write '(funapp 1093 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1093 58))
                           (display "\n")
                           (car x8115)))))
                      (begin
                        (write '(funapp 1094 23))
                        (display "\n")
                        (car x8114)))))
                   g8113)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g8116
                     (letrec*
                      ((x8119
                        (begin
                          (write '(funapp 1099 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1099 58))
                        (display "\n")
                        (assert x8119))))
                    (g8117
                     (letrec*
                      ((x8120
                        (begin
                          (write '(funapp 1100 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1100 58))
                        (display "\n")
                        (assert x8120))))
                    (g8118
                     (letrec*
                      ((x8121
                        (begin
                          (write '(funapp 1101 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1101 66))
                        (display "\n")
                        (not x8121)))))
                   g8118)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
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
                                (write '(funapp 1111 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (car x8125)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (car x8124)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (car x8123)))))
                   g8122)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g8126
                     (letrec*
                      ((x8128
                        (begin
                          (write '(funapp 1118 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1118 59))
                        (display "\n")
                        (assert x8128))))
                    (g8127
                     (begin (write '(funapp 1119 28)) (display "\n") (< x 0))))
                   g8127)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g8129
                     (begin
                       (write '(funapp 1121 53))
                       (display "\n")
                       (memq e l))))
                   g8129)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g8130
                     (letrec*
                      ((x8131
                        (letrec*
                         ((x8132
                           (begin
                             (write '(funapp 1127 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1127 58))
                           (display "\n")
                           (car x8132)))))
                      (begin
                        (write '(funapp 1128 23))
                        (display "\n")
                        (car x8131)))))
                   g8130)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g8133
                     (begin (write '(funapp 1130 51)) (display "\n") '())))
                   g8133)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g8134
                     (letrec*
                      ((x8136
                        (begin
                          (write '(funapp 1134 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1134 57))
                        (display "\n")
                        (assert x8136))))
                    (g8135
                     (letrec*
                      ((x-cnd8137
                        (begin
                          (write '(funapp 1137 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8137
                        (begin (write '(funapp 1139 24)) (display "\n") '())
                        (letrec*
                         ((x8140
                           (letrec*
                            ((x8141
                              (begin
                                (write '(funapp 1141 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1141 61))
                              (display "\n")
                              (reverse x8141))))
                          (x8138
                           (letrec*
                            ((x8139
                              (begin
                                (write '(funapp 1142 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1142 61))
                              (display "\n")
                              (list x8139)))))
                         (begin
                           (write '(funapp 1143 26))
                           (display "\n")
                           (append x8140 x8138)))))))
                   g8135)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g8142
                     (letrec*
                      ((x8143
                        (letrec*
                         ((x8144
                           (letrec*
                            ((x8145
                              (begin
                                (write '(funapp 1152 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1152 61))
                              (display "\n")
                              (car x8145)))))
                         (begin
                           (write '(funapp 1153 26))
                           (display "\n")
                           (car x8144)))))
                      (begin
                        (write '(funapp 1154 23))
                        (display "\n")
                        (car x8143)))))
                   g8142)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g8146
                     (letrec*
                      ((x8147
                        (letrec*
                         ((x8148
                           (letrec*
                            ((x8149
                              (begin
                                (write '(funapp 1163 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1163 61))
                              (display "\n")
                              (car x8149)))))
                         (begin
                           (write '(funapp 1164 26))
                           (display "\n")
                           (cdr x8148)))))
                      (begin
                        (write '(funapp 1165 23))
                        (display "\n")
                        (cdr x8147)))))
                   g8146)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g8150
                     (letrec*
                      ((x8152
                        (begin
                          (write '(funapp 1170 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1170 59))
                        (display "\n")
                        (assert x8152))))
                    (g8151
                     (letrec*
                      ((x8153
                        (begin
                          (write '(funapp 1171 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1171 60))
                        (display "\n")
                        (= 1 x8153)))))
                   g8151)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g8154
                     (letrec*
                      ((x8155
                        (letrec*
                         ((x8156
                           (letrec*
                            ((x8157
                              (begin
                                (write '(funapp 1180 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1180 61))
                              (display "\n")
                              (cdr x8157)))))
                         (begin
                           (write '(funapp 1181 26))
                           (display "\n")
                           (car x8156)))))
                      (begin
                        (write '(funapp 1182 23))
                        (display "\n")
                        (car x8155)))))
                   g8154)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g8158
                     (letrec*
                      ((x8161
                        (begin
                          (write '(funapp 1188 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1188 59))
                        (display "\n")
                        (assert x8161))))
                    (g8159
                     (letrec*
                      ((x8162
                        (begin
                          (write '(funapp 1189 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1189 60))
                        (display "\n")
                        (assert x8162))))
                    (g8160
                     (letrec*
                      ((x-cnd8163
                        (begin
                          (write '(funapp 1192 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd8163
                        (letrec*
                         ((g8164
                           (begin
                             (write '(funapp 1194 42))
                             (display "\n")
                             (proc))))
                         g8164)
                        (letrec*
                         ((x-cnd8165
                           (letrec*
                            ((x8166
                              (begin
                                (write '(funapp 1197 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1197 58))
                              (display "\n")
                              (null? x8166)))))
                         (if x-cnd8165
                           (letrec*
                            ((g8167
                              (letrec*
                               ((x8168
                                 (begin
                                   (write '(funapp 1201 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1201 61))
                                 (display "\n")
                                 (proc x8168)))))
                            g8167)
                           (letrec*
                            ((x-cnd8169
                              (letrec*
                               ((x8170
                                 (begin
                                   (write '(funapp 1205 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1205 62))
                                 (display "\n")
                                 (null? x8170)))))
                            (if x-cnd8169
                              (letrec*
                               ((g8171
                                 (letrec*
                                  ((x8173
                                    (begin
                                      (write '(funapp 1210 43))
                                      (display "\n")
                                      (car args)))
                                   (x8172
                                    (begin
                                      (write '(funapp 1210 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1211 35))
                                    (display "\n")
                                    (proc x8173 x8172)))))
                               g8171)
                              (letrec*
                               ((x-cnd8174
                                 (letrec*
                                  ((x8175
                                    (begin
                                      (write '(funapp 1216 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1217 35))
                                    (display "\n")
                                    (null? x8175)))))
                               (if x-cnd8174
                                 (letrec*
                                  ((g8176
                                    (letrec*
                                     ((x8179
                                       (begin
                                         (write '(funapp 1222 46))
                                         (display "\n")
                                         (car args)))
                                      (x8178
                                       (begin
                                         (write '(funapp 1223 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x8177
                                       (begin
                                         (write '(funapp 1224 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1225 38))
                                       (display "\n")
                                       (proc x8179 x8178 x8177)))))
                                  g8176)
                                 (letrec*
                                  ((x-cnd8180
                                    (letrec*
                                     ((x8181
                                       (begin
                                         (write '(funapp 1230 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1231 38))
                                       (display "\n")
                                       (null? x8181)))))
                                  (if x-cnd8180
                                    (letrec*
                                     ((g8182
                                       (letrec*
                                        ((x8186
                                          (begin
                                            (write '(funapp 1236 49))
                                            (display "\n")
                                            (car args)))
                                         (x8185
                                          (begin
                                            (write '(funapp 1237 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x8184
                                          (begin
                                            (write '(funapp 1238 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x8183
                                          (begin
                                            (write '(funapp 1239 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1240 41))
                                          (display "\n")
                                          (proc x8186 x8185 x8184 x8183)))))
                                     g8182)
                                    (letrec*
                                     ((x-cnd8187
                                       (letrec*
                                        ((x8188
                                          (letrec*
                                           ((x8189
                                             (begin
                                               (write '(funapp 1247 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1248 44))
                                             (display "\n")
                                             (cdr x8189)))))
                                        (begin
                                          (write '(funapp 1249 41))
                                          (display "\n")
                                          (null? x8188)))))
                                     (if x-cnd8187
                                       (letrec*
                                        ((g8190
                                          (letrec*
                                           ((x8196
                                             (begin
                                               (write '(funapp 1254 52))
                                               (display "\n")
                                               (car args)))
                                            (x8195
                                             (begin
                                               (write '(funapp 1255 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x8194
                                             (begin
                                               (write '(funapp 1256 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x8193
                                             (begin
                                               (write '(funapp 1257 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x8191
                                             (letrec*
                                              ((x8192
                                                (begin
                                                  (write '(funapp 1260 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1261 47))
                                                (display "\n")
                                                (car x8192)))))
                                           (begin
                                             (write '(funapp 1262 44))
                                             (display "\n")
                                             (proc
                                              x8196
                                              x8195
                                              x8194
                                              x8193
                                              x8191)))))
                                        g8190)
                                       (letrec*
                                        ((x-cnd8197
                                          (letrec*
                                           ((x8198
                                             (letrec*
                                              ((x8199
                                                (begin
                                                  (write '(funapp 1274 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1275 47))
                                                (display "\n")
                                                (cddr x8199)))))
                                           (begin
                                             (write '(funapp 1276 44))
                                             (display "\n")
                                             (null? x8198)))))
                                        (if x-cnd8197
                                          (letrec*
                                           ((g8200
                                             (letrec*
                                              ((x8208
                                                (begin
                                                  (write '(funapp 1281 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x8207
                                                (begin
                                                  (write '(funapp 1282 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x8206
                                                (begin
                                                  (write '(funapp 1283 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x8205
                                                (begin
                                                  (write '(funapp 1284 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x8203
                                                (letrec*
                                                 ((x8204
                                                   (begin
                                                     (write '(funapp 1287 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1288 50))
                                                   (display "\n")
                                                   (car x8204))))
                                               (x8201
                                                (letrec*
                                                 ((x8202
                                                   (begin
                                                     (write '(funapp 1291 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1292 50))
                                                   (display "\n")
                                                   (cadr x8202)))))
                                              (begin
                                                (write '(funapp 1293 47))
                                                (display "\n")
                                                (proc
                                                 x8208
                                                 x8207
                                                 x8206
                                                 x8205
                                                 x8203
                                                 x8201)))))
                                           g8200)
                                          (letrec*
                                           ((x-cnd8209
                                             (letrec*
                                              ((x8210
                                                (letrec*
                                                 ((x8211
                                                   (begin
                                                     (write '(funapp 1306 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1307 50))
                                                   (display "\n")
                                                   (cdddr x8211)))))
                                              (begin
                                                (write '(funapp 1308 47))
                                                (display "\n")
                                                (null? x8210)))))
                                           (if x-cnd8209
                                             (letrec*
                                              ((g8212
                                                (letrec*
                                                 ((x8222
                                                   (begin
                                                     (write '(funapp 1313 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x8221
                                                   (begin
                                                     (write '(funapp 1314 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x8220
                                                   (begin
                                                     (write '(funapp 1315 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x8219
                                                   (begin
                                                     (write '(funapp 1316 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x8217
                                                   (letrec*
                                                    ((x8218
                                                      (begin
                                                        (write
                                                         '(funapp 1319 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1320 53))
                                                      (display "\n")
                                                      (car x8218))))
                                                  (x8215
                                                   (letrec*
                                                    ((x8216
                                                      (begin
                                                        (write
                                                         '(funapp 1323 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1324 53))
                                                      (display "\n")
                                                      (cadr x8216))))
                                                  (x8213
                                                   (letrec*
                                                    ((x8214
                                                      (begin
                                                        (write
                                                         '(funapp 1327 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1328 53))
                                                      (display "\n")
                                                      (caddr x8214)))))
                                                 (begin
                                                   (write '(funapp 1329 50))
                                                   (display "\n")
                                                   (proc
                                                    x8222
                                                    x8221
                                                    x8220
                                                    x8219
                                                    x8217
                                                    x8215
                                                    x8213)))))
                                              g8212)
                                             (letrec*
                                              ((g8223
                                                (begin
                                                  (write '(funapp 1340 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g8223)))))))))))))))))))
                   g8160)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g8224
                     (letrec*
                      ((x8226
                        (begin
                          (write '(funapp 1346 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1346 57))
                        (display "\n")
                        (assert x8226))))
                    (g8225
                     (letrec*
                      ((x-cnd8227
                        (begin
                          (write '(funapp 1349 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8227
                        #f
                        (letrec*
                         ((x-cnd8228
                           (letrec*
                            ((x8229
                              (begin
                                (write '(funapp 1354 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1354 55))
                              (display "\n")
                              (equal? x8229 e)))))
                         (if x-cnd8228
                           l
                           (letrec*
                            ((x8230
                              (begin
                                (write '(funapp 1357 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1357 55))
                              (display "\n")
                              (member e x8230)))))))))
                   g8225)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g8231
                     (letrec*
                      ((x8232
                        (letrec*
                         ((x8233
                           (letrec*
                            ((x8234
                              (begin
                                (write '(funapp 1366 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1366 61))
                              (display "\n")
                              (cdr x8234)))))
                         (begin
                           (write '(funapp 1367 26))
                           (display "\n")
                           (cdr x8233)))))
                      (begin
                        (write '(funapp 1368 23))
                        (display "\n")
                        (cdr x8232)))))
                   g8231)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g8235
                     (letrec*
                      ((x8236
                        (letrec*
                         ((x8237
                           (letrec*
                            ((x8238
                              (begin
                                (write '(funapp 1377 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1377 61))
                              (display "\n")
                              (cdr x8238)))))
                         (begin
                           (write '(funapp 1378 26))
                           (display "\n")
                           (cdr x8237)))))
                      (begin
                        (write '(funapp 1379 23))
                        (display "\n")
                        (car x8236)))))
                   g8235)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g8239
                     (begin
                       (write '(funapp 1381 53))
                       (display "\n")
                       (random 42))))
                   g8239)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g8240
                     (letrec*
                      ((x8242
                        (begin
                          (write '(funapp 1385 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1385 59))
                        (display "\n")
                        (assert x8242))))
                    (g8241
                     (begin (write '(funapp 1386 28)) (display "\n") (= x 0))))
                   g8241)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8243
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1393 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g8244
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1395 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8244))))
                   g8243)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g8245
                     (letrec*
                      ((x8246
                        (begin
                          (write '(funapp 1401 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1401 55))
                        (display "\n")
                        (car x8246)))))
                   g8245)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g8247
                     (letrec*
                      ((val7258
                        (letrec*
                         ((x-cnd8248
                           (begin
                             (write '(funapp 1411 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8248
                           (letrec*
                            ((x8249
                              (begin
                                (write '(funapp 1413 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1413 55))
                              (display "\n")
                              (list? x8249)))
                           #f))))
                      (letrec*
                       ((g8250
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1416 52))
                             (display "\n")
                             (null? l)))))
                       g8250))))
                   g8247)))
               (cddaar
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
                                (write '(funapp 1426 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1426 61))
                              (display "\n")
                              (car x8254)))))
                         (begin
                           (write '(funapp 1427 26))
                           (display "\n")
                           (cdr x8253)))))
                      (begin
                        (write '(funapp 1428 23))
                        (display "\n")
                        (cdr x8252)))))
                   g8251)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g8255
                     (letrec*
                      ((x-cnd8256
                        (letrec*
                         ((x8257 #\0))
                         (begin
                           (write '(funapp 1435 58))
                           (display "\n")
                           (char<=? x8257 c)))))
                      (if x-cnd8256
                        (letrec*
                         ((x8258 #\9))
                         (begin
                           (write '(funapp 1437 48))
                           (display "\n")
                           (char<=? c x8258)))
                        #f))))
                   g8255)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g8259
                     (letrec*
                      ((x8261
                        (begin
                          (write '(funapp 1444 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1444 57))
                        (display "\n")
                        (assert x8261))))
                    (g8260
                     (letrec*
                      ((x-cnd8262
                        (begin
                          (write '(funapp 1447 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8262
                        #f
                        (letrec*
                         ((x-cnd8263
                           (letrec*
                            ((x8264
                              (begin
                                (write '(funapp 1452 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1452 56))
                              (display "\n")
                              (eqv? x8264 k)))))
                         (if x-cnd8263
                           (begin
                             (write '(funapp 1454 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8265
                              (begin
                                (write '(funapp 1455 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1455 55))
                              (display "\n")
                              (assq k x8265)))))))))
                   g8260)))
               (not (lambda (x) (letrec* ((g8266 (if x #f #t))) g8266)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g8267
                     (begin
                       (write '(funapp 1459 50))
                       (display "\n")
                       (append l1 l2))))
                   g8267)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g8268
                     (letrec*
                      ((x8270
                        (begin
                          (write '(funapp 1463 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1463 57))
                        (display "\n")
                        (assert x8270))))
                    (g8269
                     (letrec*
                      ((x-cnd8271
                        (begin
                          (write '(funapp 1466 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8271
                        #f
                        (letrec*
                         ((x-cnd8272
                           (letrec*
                            ((x8273
                              (begin
                                (write '(funapp 1471 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1471 55))
                              (display "\n")
                              (eq? x8273 e)))))
                         (if x-cnd8272
                           l
                           (letrec*
                            ((x8274
                              (begin
                                (write '(funapp 1474 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1474 55))
                              (display "\n")
                              (memq e x8274)))))))))
                   g8269)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g8275
                     (letrec*
                      ((x8276
                        (letrec*
                         ((x8277
                           (letrec*
                            ((x8278
                              (begin
                                (write '(funapp 1483 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1483 61))
                              (display "\n")
                              (car x8278)))))
                         (begin
                           (write '(funapp 1484 26))
                           (display "\n")
                           (cdr x8277)))))
                      (begin
                        (write '(funapp 1485 23))
                        (display "\n")
                        (car x8276)))))
                   g8275)))
               (length
                (lambda (l)
                  (letrec*
                   ((g8279
                     (letrec*
                      ((x8281
                        (begin
                          (write '(funapp 1490 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1490 57))
                        (display "\n")
                        (assert x8281))))
                    (g8280
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g8282
                             (letrec*
                              ((x-cnd8283
                                (begin
                                  (write '(funapp 1498 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd8283
                                0
                                (letrec*
                                 ((x8284
                                   (letrec*
                                    ((x8285
                                      (begin
                                        (write '(funapp 1503 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1503 63))
                                      (display "\n")
                                      (rec x8285)))))
                                 (begin
                                   (write '(funapp 1504 34))
                                   (display "\n")
                                   (+ 1 x8284)))))))
                           g8282))))
                      (letrec*
                       ((g8286
                         (begin
                           (write '(funapp 1506 40))
                           (display "\n")
                           (rec l))))
                       g8286))))
                   g8280)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8287
                     (letrec*
                      ((x8290
                        (begin
                          (write '(funapp 1511 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1511 58))
                        (display "\n")
                        (assert x8290))))
                    (g8288
                     (letrec*
                      ((x8291
                        (begin
                          (write '(funapp 1512 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1512 58))
                        (display "\n")
                        (assert x8291))))
                    (g8289
                     (letrec*
                      ((val7259
                        (begin
                          (write '(funapp 1515 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g8292
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1517 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8292))))
                   g8289)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g8293
                     (letrec*
                      ((x8294
                        (begin
                          (write '(funapp 1523 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1523 65))
                        (display "\n")
                        (not x8294)))))
                   g8293)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g8295
                     (letrec*
                      ((x8296
                        (letrec*
                         ((x8297
                           (begin
                             (write '(funapp 1530 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1530 58))
                           (display "\n")
                           (car x8297)))))
                      (begin
                        (write '(funapp 1531 23))
                        (display "\n")
                        (cdr x8296)))))
                   g8295)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g8298
                     (letrec*
                      ((x8300
                        (begin
                          (write '(funapp 1536 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1536 57))
                        (display "\n")
                        (assert x8300))))
                    (g8299
                     (letrec*
                      ((x-cnd8301
                        (begin
                          (write '(funapp 1539 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8301
                        #f
                        (letrec*
                         ((x-cnd8302
                           (letrec*
                            ((x8303
                              (begin
                                (write '(funapp 1544 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1544 56))
                              (display "\n")
                              (equal? x8303 k)))))
                         (if x-cnd8302
                           (begin
                             (write '(funapp 1546 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8304
                              (begin
                                (write '(funapp 1547 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1547 55))
                              (display "\n")
                              (assoc k x8304)))))))))
                   g8299)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g8305
                     (letrec*
                      ((x8306
                        (begin
                          (write '(funapp 1552 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1552 55))
                        (display "\n")
                        (car x8306)))))
                   g8305)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g8307
                     (letrec*
                      ((x8310
                        (begin
                          (write '(funapp 1557 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1557 58))
                        (display "\n")
                        (assert x8310))))
                    (g8308
                     (letrec*
                      ((x8311
                        (begin
                          (write '(funapp 1558 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1558 58))
                        (display "\n")
                        (assert x8311))))
                    (g8309
                     (letrec*
                      ((x8312
                        (begin
                          (write '(funapp 1559 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1559 63))
                        (display "\n")
                        (not x8312)))))
                   g8309)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8313
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1566 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g8314
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1568 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8314))))
                   g8313)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g8315
                     (letrec*
                      ((x8318
                        (begin
                          (write '(funapp 1574 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1574 62))
                        (display "\n")
                        (assert x8318))))
                    (g8316
                     (letrec*
                      ((x8319
                        (begin
                          (write '(funapp 1575 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1575 57))
                        (display "\n")
                        (assert x8319))))
                    (g8317
                     (letrec*
                      ((x-cnd8320
                        (begin
                          (write '(funapp 1578 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8320
                        #t
                        (letrec*
                         ((x-cnd8321
                           (begin
                             (write '(funapp 1582 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8321
                           (letrec*
                            ((g8322
                              (letrec*
                               ((x8324
                                 (begin
                                   (write '(funapp 1585 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1585 64))
                                 (display "\n")
                                 (f x8324))))
                             (g8323
                              (letrec*
                               ((x8325
                                 (begin
                                   (write '(funapp 1587 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1587 58))
                                 (display "\n")
                                 (for-each f x8325)))))
                            g8323)
                           (begin
                             (write '(funapp 1589 27))
                             (display "\n")
                             '())))))))
                   g8317)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g8326
                     (letrec*
                      ((x8328
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1594 59))
                        (display "\n")
                        (assert x8328))))
                    (g8327
                     (letrec*
                      ((x-cnd8329
                        (begin
                          (write '(funapp 1596 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd8329
                        (begin
                          (write '(funapp 1596 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g8327)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8330
                     (letrec*
                      ((x8333
                        (begin
                          (write '(funapp 1601 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1601 58))
                        (display "\n")
                        (assert x8333))))
                    (g8331
                     (letrec*
                      ((x8334
                        (begin
                          (write '(funapp 1602 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1602 58))
                        (display "\n")
                        (assert x8334))))
                    (g8332
                     (letrec*
                      ((val7261
                        (begin
                          (write '(funapp 1605 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g8335
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1607 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8335))))
                   g8332)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g8336
                     (letrec*
                      ((x8337
                        (letrec*
                         ((x8338
                           (letrec*
                            ((x8339
                              (begin
                                (write '(funapp 1617 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1617 61))
                              (display "\n")
                              (cdr x8339)))))
                         (begin
                           (write '(funapp 1618 26))
                           (display "\n")
                           (cdr x8338)))))
                      (begin
                        (write '(funapp 1619 23))
                        (display "\n")
                        (car x8337)))))
                   g8336)))
               (newline (lambda () (letrec* ((g8340 #f)) g8340)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g8341
                     (letrec*
                      ((x8343
                        (letrec*
                         ((x8344
                           (begin
                             (write '(funapp 1627 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1627 58))
                           (display "\n")
                           (abs x8344))))
                       (x8342
                        (begin
                          (write '(funapp 1628 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1629 23))
                        (display "\n")
                        (/ x8343 x8342)))))
                   g8341)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g8345
                     (letrec*
                      ((x8349
                        (begin
                          (write '(funapp 1635 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1635 57))
                        (display "\n")
                        (assert x8349))))
                    (g8346
                     (letrec*
                      ((x8350
                        (begin
                          (write '(funapp 1636 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1636 63))
                        (display "\n")
                        (assert x8350))))
                    (g8347
                     (letrec*
                      ((x8351
                        (letrec*
                         ((x8352
                           (begin
                             (write '(funapp 1639 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1639 61))
                           (display "\n")
                           (< index x8352)))))
                      (begin
                        (write '(funapp 1640 23))
                        (display "\n")
                        (assert x8351))))
                    (g8348
                     (letrec*
                      ((x-cnd8353
                        (begin
                          (write '(funapp 1643 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8353
                        (begin
                          (write '(funapp 1645 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8355
                           (begin
                             (write '(funapp 1647 34))
                             (display "\n")
                             (cdr l)))
                          (x8354
                           (begin
                             (write '(funapp 1647 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1648 26))
                           (display "\n")
                           (list-ref x8355 x8354)))))))
                   g8348)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8356
                     (letrec*
                      ((x-cnd8357
                        (begin
                          (write '(funapp 1655 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8357
                        a
                        (letrec*
                         ((x8358
                           (begin
                             (write '(funapp 1658 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1658 57))
                           (display "\n")
                           (gcd b x8358)))))))
                   g8356)))
               (block
                (lambda (x7754 y7755 color7756)
                  (letrec*
                   ((g8359
                     (letrec*
                      ((x8360
                        (letrec*
                         ((x8361
                           (letrec*
                            ((x8362
                              (begin
                                (write '(funapp 1669 37))
                                (display "\n")
                                (orig-cons
                                 color7756
                                 (begin
                                   (write '(funapp 1669 57))
                                   (display "\n")
                                   '())))))
                            (begin
                              (write '(funapp 1670 29))
                              (display "\n")
                              (orig-cons y7755 x8362)))))
                         (begin
                           (write '(funapp 1671 26))
                           (display "\n")
                           (orig-cons x7754 x8361)))))
                      (begin
                        (write '(funapp 1672 23))
                        (display "\n")
                        (orig-cons
                         (begin
                           (write '(funapp 1672 33))
                           (display "\n")
                           'block)
                         x8360)))))
                   g8359)))
               (block?
                (lambda (block7753)
                  (letrec*
                   ((g8363
                     (letrec*
                      ((x8364
                        (begin
                          (write '(funapp 1678 39))
                          (display "\n")
                          (car block7753))))
                      (begin
                        (write '(funapp 1678 57))
                        (display "\n")
                        (eq?
                         x8364
                         (begin
                           (write '(funapp 1678 67))
                           (display "\n")
                           'block))))))
                   g8363)))
               (block-x
                (lambda (block)
                  (letrec*
                   ((g8365
                     (letrec*
                      ((x8366
                        (begin
                          (write '(funapp 1684 39))
                          (display "\n")
                          (orig-cdr block))))
                      (begin
                        (write '(funapp 1684 58))
                        (display "\n")
                        (orig-car x8366)))))
                   g8365)))
               (block-y
                (lambda (block)
                  (letrec*
                   ((g8367
                     (letrec*
                      ((x8368
                        (letrec*
                         ((x8369
                           (begin
                             (write '(funapp 1692 42))
                             (display "\n")
                             (orig-cdr block))))
                         (begin
                           (write '(funapp 1692 61))
                           (display "\n")
                           (orig-cdr x8369)))))
                      (begin
                        (write '(funapp 1693 23))
                        (display "\n")
                        (orig-car x8368)))))
                   g8367)))
               (block-color
                (lambda (block)
                  (letrec*
                   ((g8370
                     (letrec*
                      ((x8371
                        (letrec*
                         ((x8372
                           (letrec*
                            ((x8373
                              (begin
                                (write '(funapp 1704 37))
                                (display "\n")
                                (orig-cdr block))))
                            (begin
                              (write '(funapp 1705 29))
                              (display "\n")
                              (orig-cdr x8373)))))
                         (begin
                           (write '(funapp 1706 26))
                           (display "\n")
                           (orig-cdr x8372)))))
                      (begin
                        (write '(funapp 1707 23))
                        (display "\n")
                        (orig-car x8371)))))
                   g8370)))
               (tetra
                (lambda (center7761 blocks7762)
                  (letrec*
                   ((g8374
                     (letrec*
                      ((x8375
                        (letrec*
                         ((x8376
                           (begin
                             (write '(funapp 1716 34))
                             (display "\n")
                             (orig-cons
                              blocks7762
                              (begin
                                (write '(funapp 1716 55))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1717 26))
                           (display "\n")
                           (orig-cons center7761 x8376)))))
                      (begin
                        (write '(funapp 1718 23))
                        (display "\n")
                        (orig-cons
                         (begin
                           (write '(funapp 1718 33))
                           (display "\n")
                           'tetra)
                         x8375)))))
                   g8374)))
               (tetra?
                (lambda (tetra7760)
                  (letrec*
                   ((g8377
                     (letrec*
                      ((x8378
                        (begin
                          (write '(funapp 1724 39))
                          (display "\n")
                          (car tetra7760))))
                      (begin
                        (write '(funapp 1724 57))
                        (display "\n")
                        (eq?
                         x8378
                         (begin
                           (write '(funapp 1724 67))
                           (display "\n")
                           'tetra))))))
                   g8377)))
               (tetra-center
                (lambda (tetra)
                  (letrec*
                   ((g8379
                     (letrec*
                      ((x8380
                        (begin
                          (write '(funapp 1730 39))
                          (display "\n")
                          (orig-cdr tetra))))
                      (begin
                        (write '(funapp 1730 58))
                        (display "\n")
                        (orig-car x8380)))))
                   g8379)))
               (tetra-blocks
                (lambda (tetra)
                  (letrec*
                   ((g8381
                     (letrec*
                      ((x8382
                        (letrec*
                         ((x8383
                           (begin
                             (write '(funapp 1738 42))
                             (display "\n")
                             (orig-cdr tetra))))
                         (begin
                           (write '(funapp 1738 61))
                           (display "\n")
                           (orig-cdr x8383)))))
                      (begin
                        (write '(funapp 1739 23))
                        (display "\n")
                        (orig-car x8382)))))
                   g8381)))
               (world
                (lambda (tetra7766 blocks7767)
                  (letrec*
                   ((g8384
                     (letrec*
                      ((x8385
                        (letrec*
                         ((x8386
                           (begin
                             (write '(funapp 1748 34))
                             (display "\n")
                             (orig-cons
                              blocks7767
                              (begin
                                (write '(funapp 1748 55))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1749 26))
                           (display "\n")
                           (orig-cons tetra7766 x8386)))))
                      (begin
                        (write '(funapp 1750 23))
                        (display "\n")
                        (orig-cons
                         (begin
                           (write '(funapp 1750 33))
                           (display "\n")
                           'world)
                         x8385)))))
                   g8384)))
               (world?
                (lambda (world7765)
                  (letrec*
                   ((g8387
                     (letrec*
                      ((x8388
                        (begin
                          (write '(funapp 1756 39))
                          (display "\n")
                          (car world7765))))
                      (begin
                        (write '(funapp 1756 57))
                        (display "\n")
                        (eq?
                         x8388
                         (begin
                           (write '(funapp 1756 67))
                           (display "\n")
                           'world))))))
                   g8387)))
               (world-tetra
                (lambda (world)
                  (letrec*
                   ((g8389
                     (letrec*
                      ((x8390
                        (begin
                          (write '(funapp 1762 39))
                          (display "\n")
                          (orig-cdr world))))
                      (begin
                        (write '(funapp 1762 58))
                        (display "\n")
                        (orig-car x8390)))))
                   g8389)))
               (world-blocks
                (lambda (world)
                  (letrec*
                   ((g8391
                     (letrec*
                      ((x8392
                        (letrec*
                         ((x8393
                           (begin
                             (write '(funapp 1770 42))
                             (display "\n")
                             (orig-cdr world))))
                         (begin
                           (write '(funapp 1770 61))
                           (display "\n")
                           (orig-cdr x8393)))))
                      (begin
                        (write '(funapp 1771 23))
                        (display "\n")
                        (orig-car x8392)))))
                   g8391)))
               (posn
                (lambda (x7771 y7772)
                  (letrec*
                   ((g8394
                     (letrec*
                      ((x8395
                        (letrec*
                         ((x8396
                           (begin
                             (write '(funapp 1780 34))
                             (display "\n")
                             (orig-cons
                              y7772
                              (begin
                                (write '(funapp 1780 50))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1781 26))
                           (display "\n")
                           (orig-cons x7771 x8396)))))
                      (begin
                        (write '(funapp 1782 23))
                        (display "\n")
                        (orig-cons
                         (begin (write '(funapp 1782 33)) (display "\n") 'posn)
                         x8395)))))
                   g8394)))
               (posn?
                (lambda (posn7770)
                  (letrec*
                   ((g8397
                     (letrec*
                      ((x8398
                        (begin
                          (write '(funapp 1788 39))
                          (display "\n")
                          (car posn7770))))
                      (begin
                        (write '(funapp 1788 56))
                        (display "\n")
                        (eq?
                         x8398
                         (begin
                           (write '(funapp 1788 66))
                           (display "\n")
                           'posn))))))
                   g8397)))
               (posn-x
                (lambda (posn)
                  (letrec*
                   ((g8399
                     (letrec*
                      ((x8400
                        (begin
                          (write '(funapp 1794 39))
                          (display "\n")
                          (orig-cdr posn))))
                      (begin
                        (write '(funapp 1794 57))
                        (display "\n")
                        (orig-car x8400)))))
                   g8399)))
               (posn-y
                (lambda (posn)
                  (letrec*
                   ((g8401
                     (letrec*
                      ((x8402
                        (letrec*
                         ((x8403
                           (begin
                             (write '(funapp 1802 42))
                             (display "\n")
                             (orig-cdr posn))))
                         (begin
                           (write '(funapp 1802 60))
                           (display "\n")
                           (orig-cdr x8403)))))
                      (begin
                        (write '(funapp 1803 23))
                        (display "\n")
                        (orig-car x8402)))))
                   g8401)))
               (COLOR/C symbol?/c)
               (POSN/C
                (lambda (j7402 k7403 v7401)
                  (letrec*
                   ((g8404
                     (letrec*
                      ((checked7404
                        (letrec*
                         ((x8405
                           (letrec*
                            ((x8406
                              (begin
                                (write '(funapp 1815 37))
                                (display "\n")
                                (orig-cdr v7401))))
                            (begin
                              (write '(funapp 1816 29))
                              (display "\n")
                              (orig-car x8406)))))
                         (begin
                           (write '(funapp 1817 26))
                           (display "\n")
                           (real?/c j7402 k7403 x8405)))))
                      (letrec*
                       ((g8407
                         (letrec*
                          ((checked7405
                            (letrec*
                             ((x8408
                               (letrec*
                                ((x8409
                                  (letrec*
                                   ((x8410
                                     (begin
                                       (write '(funapp 1827 44))
                                       (display "\n")
                                       (orig-cdr v7401))))
                                   (begin
                                     (write '(funapp 1828 36))
                                     (display "\n")
                                     (orig-cdr x8410)))))
                                (begin
                                  (write '(funapp 1829 33))
                                  (display "\n")
                                  (orig-car x8409)))))
                             (begin
                               (write '(funapp 1830 30))
                               (display "\n")
                               (real?/c j7402 k7403 x8408)))))
                          (letrec*
                           ((g8411
                             (letrec*
                              ((x8412
                                (letrec*
                                 ((x8413
                                   (begin
                                     (write '(funapp 1836 42))
                                     (display "\n")
                                     (cons
                                      checked7405
                                      (begin
                                        (write '(funapp 1836 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1837 34))
                                   (display "\n")
                                   (cons checked7404 x8413)))))
                              (begin
                                (write '(funapp 1838 31))
                                (display "\n")
                                (cons posn x8412)))))
                           g8411))))
                       g8407))))
                   g8404)))
               (BLOCK/C
                (lambda (j7408 k7409 v7407)
                  (letrec*
                   ((g8414
                     (letrec*
                      ((checked7410
                        (letrec*
                         ((x8415
                           (letrec*
                            ((x8416
                              (begin
                                (write '(funapp 1851 37))
                                (display "\n")
                                (orig-cdr v7407))))
                            (begin
                              (write '(funapp 1852 29))
                              (display "\n")
                              (orig-car x8416)))))
                         (begin
                           (write '(funapp 1853 26))
                           (display "\n")
                           (real?/c j7408 k7409 x8415)))))
                      (letrec*
                       ((g8417
                         (letrec*
                          ((checked7411
                            (letrec*
                             ((x8418
                               (letrec*
                                ((x8419
                                  (letrec*
                                   ((x8420
                                     (begin
                                       (write '(funapp 1863 44))
                                       (display "\n")
                                       (orig-cdr v7407))))
                                   (begin
                                     (write '(funapp 1864 36))
                                     (display "\n")
                                     (orig-cdr x8420)))))
                                (begin
                                  (write '(funapp 1865 33))
                                  (display "\n")
                                  (orig-car x8419)))))
                             (begin
                               (write '(funapp 1866 30))
                               (display "\n")
                               (real?/c j7408 k7409 x8418)))))
                          (letrec*
                           ((g8421
                             (letrec*
                              ((checked7412
                                (letrec*
                                 ((x8422
                                   (letrec*
                                    ((x8423
                                      (letrec*
                                       ((x8424
                                         (letrec*
                                          ((x8425
                                            (begin
                                              (write '(funapp 1878 51))
                                              (display "\n")
                                              (orig-cdr v7407))))
                                          (begin
                                            (write '(funapp 1879 43))
                                            (display "\n")
                                            (orig-cdr x8425)))))
                                       (begin
                                         (write '(funapp 1880 40))
                                         (display "\n")
                                         (orig-cdr x8424)))))
                                    (begin
                                      (write '(funapp 1881 37))
                                      (display "\n")
                                      (orig-car x8423)))))
                                 (begin
                                   (write '(funapp 1882 34))
                                   (display "\n")
                                   (COLOR/C j7408 k7409 x8422)))))
                              (letrec*
                               ((g8426
                                 (letrec*
                                  ((x8427
                                    (letrec*
                                     ((x8428
                                       (letrec*
                                        ((x8429
                                          (begin
                                            (write '(funapp 1890 49))
                                            (display "\n")
                                            (cons
                                             checked7412
                                             (begin
                                               (write '(funapp 1890 66))
                                               (display "\n")
                                               '())))))
                                        (begin
                                          (write '(funapp 1891 41))
                                          (display "\n")
                                          (cons checked7411 x8429)))))
                                     (begin
                                       (write '(funapp 1892 38))
                                       (display "\n")
                                       (cons checked7410 x8428)))))
                                  (begin
                                    (write '(funapp 1893 35))
                                    (display "\n")
                                    (cons block x8427)))))
                               g8426))))
                           g8421))))
                       g8417))))
                   g8414)))
               (BSET/C
                (begin
                  (write '(funapp 1898 24))
                  (display "\n")
                  (listof BLOCK/C)))
               (TETRA/C
                (lambda (j7415 k7416 v7414)
                  (letrec*
                   ((g8430
                     (letrec*
                      ((checked7417
                        (letrec*
                         ((x8431
                           (letrec*
                            ((x8432
                              (begin
                                (write '(funapp 1908 37))
                                (display "\n")
                                (orig-cdr v7414))))
                            (begin
                              (write '(funapp 1909 29))
                              (display "\n")
                              (orig-car x8432)))))
                         (begin
                           (write '(funapp 1910 26))
                           (display "\n")
                           (POSN/C j7415 k7416 x8431)))))
                      (letrec*
                       ((g8433
                         (letrec*
                          ((checked7418
                            (letrec*
                             ((x8434
                               (letrec*
                                ((x8435
                                  (letrec*
                                   ((x8436
                                     (begin
                                       (write '(funapp 1920 44))
                                       (display "\n")
                                       (orig-cdr v7414))))
                                   (begin
                                     (write '(funapp 1921 36))
                                     (display "\n")
                                     (orig-cdr x8436)))))
                                (begin
                                  (write '(funapp 1922 33))
                                  (display "\n")
                                  (orig-car x8435)))))
                             (begin
                               (write '(funapp 1923 30))
                               (display "\n")
                               (BSET/C j7415 k7416 x8434)))))
                          (letrec*
                           ((g8437
                             (letrec*
                              ((x8438
                                (letrec*
                                 ((x8439
                                   (begin
                                     (write '(funapp 1929 42))
                                     (display "\n")
                                     (cons
                                      checked7418
                                      (begin
                                        (write '(funapp 1929 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1930 34))
                                   (display "\n")
                                   (cons checked7417 x8439)))))
                              (begin
                                (write '(funapp 1931 31))
                                (display "\n")
                                (cons tetra x8438)))))
                           g8437))))
                       g8433))))
                   g8430)))
               (WORLD/C
                (lambda (j7421 k7422 v7420)
                  (letrec*
                   ((g8440
                     (letrec*
                      ((checked7423
                        (letrec*
                         ((x8441
                           (letrec*
                            ((x8442
                              (begin
                                (write '(funapp 1944 37))
                                (display "\n")
                                (orig-cdr v7420))))
                            (begin
                              (write '(funapp 1945 29))
                              (display "\n")
                              (orig-car x8442)))))
                         (begin
                           (write '(funapp 1946 26))
                           (display "\n")
                           (TETRA/C j7421 k7422 x8441)))))
                      (letrec*
                       ((g8443
                         (letrec*
                          ((checked7424
                            (letrec*
                             ((x8444
                               (letrec*
                                ((x8445
                                  (letrec*
                                   ((x8446
                                     (begin
                                       (write '(funapp 1956 44))
                                       (display "\n")
                                       (orig-cdr v7420))))
                                   (begin
                                     (write '(funapp 1957 36))
                                     (display "\n")
                                     (orig-cdr x8446)))))
                                (begin
                                  (write '(funapp 1958 33))
                                  (display "\n")
                                  (orig-car x8445)))))
                             (begin
                               (write '(funapp 1959 30))
                               (display "\n")
                               (BSET/C j7421 k7422 x8444)))))
                          (letrec*
                           ((g8447
                             (letrec*
                              ((x8448
                                (letrec*
                                 ((x8449
                                   (begin
                                     (write '(funapp 1965 42))
                                     (display "\n")
                                     (cons
                                      checked7424
                                      (begin
                                        (write '(funapp 1965 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1966 34))
                                   (display "\n")
                                   (cons checked7423 x8449)))))
                              (begin
                                (write '(funapp 1967 31))
                                (display "\n")
                                (cons world x8448)))))
                           g8447))))
                       g8443))))
                   g8440)))
               (posn=?
                (lambda (p1 p2)
                  (letrec*
                   ((g8450
                     (letrec*
                      ((x-cnd8451
                        (letrec*
                         ((x8453
                           (begin
                             (write '(funapp 1978 34))
                             (display "\n")
                             (posn-x p1)))
                          (x8452
                           (begin
                             (write '(funapp 1978 54))
                             (display "\n")
                             (posn-x p2))))
                         (begin
                           (write '(funapp 1979 26))
                           (display "\n")
                           (= x8453 x8452)))))
                      (if x-cnd8451
                        (letrec*
                         ((x8455
                           (begin
                             (write '(funapp 1982 34))
                             (display "\n")
                             (posn-y p1)))
                          (x8454
                           (begin
                             (write '(funapp 1982 54))
                             (display "\n")
                             (posn-y p2))))
                         (begin
                           (write '(funapp 1983 26))
                           (display "\n")
                           (= x8455 x8454)))
                        #f))))
                   g8450)))
               (block-size 20)
               (board-height 20)
               (board-width 10)
               (block=?
                (lambda (b1 b2)
                  (letrec*
                   ((g8456
                     (letrec*
                      ((x-cnd8457
                        (letrec*
                         ((x8459
                           (begin
                             (write '(funapp 1996 34))
                             (display "\n")
                             (block-x b1)))
                          (x8458
                           (begin
                             (write '(funapp 1996 55))
                             (display "\n")
                             (block-x b2))))
                         (begin
                           (write '(funapp 1997 26))
                           (display "\n")
                           (= x8459 x8458)))))
                      (if x-cnd8457
                        (letrec*
                         ((x8461
                           (begin
                             (write '(funapp 2000 34))
                             (display "\n")
                             (block-y b1)))
                          (x8460
                           (begin
                             (write '(funapp 2000 55))
                             (display "\n")
                             (block-y b2))))
                         (begin
                           (write '(funapp 2001 26))
                           (display "\n")
                           (= x8461 x8460)))
                        #f))))
                   g8456)))
               (block-move
                (lambda (dx dy b)
                  (letrec*
                   ((g8462
                     (letrec*
                      ((x8466
                        (letrec*
                         ((x8467
                           (begin
                             (write '(funapp 2009 48))
                             (display "\n")
                             (block-x b))))
                         (begin
                           (write '(funapp 2009 62))
                           (display "\n")
                           (+ dx x8467))))
                       (x8464
                        (letrec*
                         ((x8465
                           (begin
                             (write '(funapp 2010 48))
                             (display "\n")
                             (block-y b))))
                         (begin
                           (write '(funapp 2010 62))
                           (display "\n")
                           (+ dy x8465))))
                       (x8463
                        (begin
                          (write '(funapp 2011 31))
                          (display "\n")
                          (block-color b))))
                      (begin
                        (write '(funapp 2012 23))
                        (display "\n")
                        (block x8466 x8464 x8463)))))
                   g8462)))
               (block-rotate-ccw
                (lambda (c b)
                  (letrec*
                   ((g8468
                     (letrec*
                      ((x8475
                        (letrec*
                         ((x8479
                           (begin
                             (write '(funapp 2021 34))
                             (display "\n")
                             (posn-x c)))
                          (x8476
                           (letrec*
                            ((x8478
                              (begin
                                (write '(funapp 2024 37))
                                (display "\n")
                                (posn-y c)))
                             (x8477
                              (begin
                                (write '(funapp 2024 56))
                                (display "\n")
                                (block-y b))))
                            (begin
                              (write '(funapp 2025 29))
                              (display "\n")
                              (- x8478 x8477)))))
                         (begin
                           (write '(funapp 2026 26))
                           (display "\n")
                           (+ x8479 x8476))))
                       (x8470
                        (letrec*
                         ((x8474
                           (begin
                             (write '(funapp 2029 34))
                             (display "\n")
                             (posn-y c)))
                          (x8471
                           (letrec*
                            ((x8473
                              (begin
                                (write '(funapp 2032 37))
                                (display "\n")
                                (block-x b)))
                             (x8472
                              (begin
                                (write '(funapp 2032 57))
                                (display "\n")
                                (posn-x c))))
                            (begin
                              (write '(funapp 2033 29))
                              (display "\n")
                              (- x8473 x8472)))))
                         (begin
                           (write '(funapp 2034 26))
                           (display "\n")
                           (+ x8474 x8471))))
                       (x8469
                        (begin
                          (write '(funapp 2035 31))
                          (display "\n")
                          (block-color b))))
                      (begin
                        (write '(funapp 2036 23))
                        (display "\n")
                        (block x8475 x8470 x8469)))))
                   g8468)))
               (block-rotate-cw
                (lambda (c b)
                  (letrec*
                   ((g8480
                     (letrec*
                      ((x8481
                        (letrec*
                         ((x8482
                           (begin
                             (write '(funapp 2045 34))
                             (display "\n")
                             (block-rotate-ccw c b))))
                         (begin
                           (write '(funapp 2046 26))
                           (display "\n")
                           (block-rotate-ccw c x8482)))))
                      (begin
                        (write '(funapp 2047 23))
                        (display "\n")
                        (block-rotate-ccw c x8481)))))
                   g8480)))
               (ormap
                (lambda (p? xs)
                  (letrec*
                   ((g8483
                     (letrec*
                      ((x-cnd8484
                        (begin
                          (write '(funapp 2054 35))
                          (display "\n")
                          (null? xs))))
                      (if x-cnd8484
                        (letrec* ((g8485 #f)) g8485)
                        (letrec*
                         ((g8486
                           (letrec*
                            ((x8489
                              (letrec*
                               ((x8490
                                 (begin
                                   (write '(funapp 2060 54))
                                   (display "\n")
                                   (car xs))))
                               (begin
                                 (write '(funapp 2060 65))
                                 (display "\n")
                                 (p? x8490))))
                             (x8487
                              (letrec*
                               ((x8488
                                 (begin
                                   (write '(funapp 2062 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 2062 59))
                                 (display "\n")
                                 (ormap p? x8488)))))
                            (begin
                              (write '(funapp 2063 29))
                              (display "\n")
                              (or x8489 x8487)))))
                         g8486)))))
                   g8483)))
               (andmap
                (lambda (p? xs)
                  (letrec*
                   ((g8491
                     (letrec*
                      ((x-cnd8492
                        (begin
                          (write '(funapp 2071 35))
                          (display "\n")
                          (null? xs))))
                      (if x-cnd8492
                        (letrec* ((g8493 #t)) g8493)
                        (letrec*
                         ((g8494
                           (letrec*
                            ((x8497
                              (letrec*
                               ((x8498
                                 (begin
                                   (write '(funapp 2077 54))
                                   (display "\n")
                                   (car xs))))
                               (begin
                                 (write '(funapp 2077 65))
                                 (display "\n")
                                 (p? x8498))))
                             (x8495
                              (letrec*
                               ((x8496
                                 (begin
                                   (write '(funapp 2079 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 2079 59))
                                 (display "\n")
                                 (andmap p? x8496)))))
                            (begin
                              (write '(funapp 2080 29))
                              (display "\n")
                              (and x8497 x8495)))))
                         g8494)))))
                   g8491)))
               (filter
                (lambda (p? xs)
                  (letrec*
                   ((g8499
                     (letrec*
                      ((x-cnd8500
                        (begin
                          (write '(funapp 2088 35))
                          (display "\n")
                          (null? xs))))
                      (if x-cnd8500
                        (letrec* ((g8501 null)) g8501)
                        (letrec*
                         ((x-cnd8502
                           (letrec*
                            ((x8503
                              (begin
                                (write '(funapp 2092 55))
                                (display "\n")
                                (car xs))))
                            (begin
                              (write '(funapp 2092 66))
                              (display "\n")
                              (p? x8503)))))
                         (if x-cnd8502
                           (letrec*
                            ((g8504
                              (letrec*
                               ((x8507
                                 (begin
                                   (write '(funapp 2097 40))
                                   (display "\n")
                                   (car xs)))
                                (x8505
                                 (letrec*
                                  ((x8506
                                    (begin
                                      (write '(funapp 2100 43))
                                      (display "\n")
                                      (cdr xs))))
                                  (begin
                                    (write '(funapp 2101 35))
                                    (display "\n")
                                    (filter p? x8506)))))
                               (begin
                                 (write '(funapp 2102 32))
                                 (display "\n")
                                 (cons x8507 x8505)))))
                            g8504)
                           (letrec*
                            ((g8508
                              (letrec*
                               ((x8509
                                 (begin
                                   (write '(funapp 2106 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 2106 59))
                                 (display "\n")
                                 (filter p? x8509)))))
                            g8508)))))))
                   g8499)))
               (append
                (lambda (l r)
                  (letrec*
                   ((g8510
                     (letrec*
                      ((x-cnd8511
                        (begin
                          (write '(funapp 2114 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8511
                        (letrec* ((g8512 r)) g8512)
                        (letrec*
                         ((g8513
                           (letrec*
                            ((x8516
                              (begin
                                (write '(funapp 2120 37))
                                (display "\n")
                                (car l)))
                             (x8514
                              (letrec*
                               ((x8515
                                 (begin
                                   (write '(funapp 2122 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 2122 58))
                                 (display "\n")
                                 (append x8515 r)))))
                            (begin
                              (write '(funapp 2123 29))
                              (display "\n")
                              (cons x8516 x8514)))))
                         g8513)))))
                   g8510)))
               (foldr
                (lambda (f a xs)
                  (letrec*
                   ((g8517
                     (letrec*
                      ((x-cnd8518
                        (begin
                          (write '(funapp 2131 35))
                          (display "\n")
                          (null? xs))))
                      (if x-cnd8518
                        (letrec* ((g8519 a)) g8519)
                        (letrec*
                         ((g8520
                           (letrec*
                            ((x8523
                              (begin
                                (write '(funapp 2137 37))
                                (display "\n")
                                (car xs)))
                             (x8521
                              (letrec*
                               ((x8522
                                 (begin
                                   (write '(funapp 2139 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 2139 59))
                                 (display "\n")
                                 (foldr f a x8522)))))
                            (begin
                              (write '(funapp 2140 29))
                              (display "\n")
                              (f x8523 x8521)))))
                         g8520)))))
                   g8517)))
               (blocks-contains?
                (lambda (bs b)
                  (letrec*
                   ((g8524
                     (begin
                       (write '(funapp 2147 22))
                       (display "\n")
                       (ormap
                        (lambda (c)
                          (letrec*
                           ((g8525
                             (begin
                               (write '(funapp 2148 52))
                               (display "\n")
                               (block=? b c))))
                           g8525))
                        bs))))
                   g8524)))
               (blocks-subset?
                (lambda (bs1 bs2)
                  (letrec*
                   ((g8526
                     (begin
                       (write '(funapp 2155 22))
                       (display "\n")
                       (andmap
                        (lambda (b)
                          (letrec*
                           ((g8527
                             (begin
                               (write '(funapp 2157 42))
                               (display "\n")
                               (blocks-contains? bs2 b))))
                           g8527))
                        bs1))))
                   g8526)))
               (blocks=?
                (lambda (bs1 bs2)
                  (letrec*
                   ((g8528
                     (letrec*
                      ((x-cnd8529
                        (begin
                          (write '(funapp 2165 35))
                          (display "\n")
                          (blocks-subset? bs1 bs2))))
                      (if x-cnd8529
                        (begin
                          (write '(funapp 2166 37))
                          (display "\n")
                          (blocks-subset? bs2 bs1))
                        #f))))
                   g8528)))
               (blocks-intersect
                (lambda (bs1 bs2)
                  (letrec*
                   ((g8530
                     (begin
                       (write '(funapp 2172 22))
                       (display "\n")
                       (filter
                        (lambda (b)
                          (letrec*
                           ((g8531
                             (begin
                               (write '(funapp 2174 42))
                               (display "\n")
                               (blocks-contains? bs2 b))))
                           g8531))
                        bs1))))
                   g8530)))
               (blocks-count
                (lambda (bs)
                  (letrec*
                   ((g8532
                     (begin
                       (write '(funapp 2178 47))
                       (display "\n")
                       (length bs))))
                   g8532)))
               (blocks-move
                (lambda (dx dy bs)
                  (letrec*
                   ((g8533
                     (begin
                       (write '(funapp 2183 22))
                       (display "\n")
                       (map
                        (lambda (b)
                          (letrec*
                           ((g8534
                             (begin
                               (write '(funapp 2185 42))
                               (display "\n")
                               (block-move dx dy b))))
                           g8534))
                        bs))))
                   g8533)))
               (blocks-rotate-ccw
                (lambda (c bs)
                  (letrec*
                   ((g8535
                     (begin
                       (write '(funapp 2192 22))
                       (display "\n")
                       (map
                        (lambda (b)
                          (letrec*
                           ((g8536
                             (begin
                               (write '(funapp 2194 42))
                               (display "\n")
                               (block-rotate-ccw c b))))
                           g8536))
                        bs))))
                   g8535)))
               (blocks-rotate-cw
                (lambda (c bs)
                  (letrec*
                   ((g8537
                     (begin
                       (write '(funapp 2201 22))
                       (display "\n")
                       (map
                        (lambda (b)
                          (letrec*
                           ((g8538
                             (begin
                               (write '(funapp 2203 42))
                               (display "\n")
                               (block-rotate-cw c b))))
                           g8538))
                        bs))))
                   g8537)))
               (blocks-change-color
                (lambda (bs c)
                  (letrec*
                   ((g8539
                     (begin
                       (write '(funapp 2210 22))
                       (display "\n")
                       (map
                        (lambda (b)
                          (letrec*
                           ((g8540
                             (letrec*
                              ((x8542
                                (begin
                                  (write '(funapp 2215 37))
                                  (display "\n")
                                  (block-x b)))
                               (x8541
                                (begin
                                  (write '(funapp 2215 57))
                                  (display "\n")
                                  (block-y b))))
                              (begin
                                (write '(funapp 2216 29))
                                (display "\n")
                                (block x8542 x8541 c)))))
                           g8540))
                        bs))))
                   g8539)))
               (blocks-row
                (lambda (bs i)
                  (letrec*
                   ((g8543
                     (begin
                       (write '(funapp 2224 22))
                       (display "\n")
                       (filter
                        (lambda (b)
                          (letrec*
                           ((g8544
                             (letrec*
                              ((x8545
                                (begin
                                  (write '(funapp 2227 51))
                                  (display "\n")
                                  (block-y b))))
                              (begin
                                (write '(funapp 2227 65))
                                (display "\n")
                                (= i x8545)))))
                           g8544))
                        bs))))
                   g8543)))
               (full-row?
                (lambda (bs i)
                  (letrec*
                   ((g8546
                     (letrec*
                      ((x8547
                        (letrec*
                         ((x8548
                           (begin
                             (write '(funapp 2238 34))
                             (display "\n")
                             (blocks-row bs i))))
                         (begin
                           (write '(funapp 2239 26))
                           (display "\n")
                           (blocks-count x8548)))))
                      (begin
                        (write '(funapp 2240 23))
                        (display "\n")
                        (= board-width x8547)))))
                   g8546)))
               (blocks-overflow?
                (lambda (bs)
                  (letrec*
                   ((g8549
                     (begin
                       (write '(funapp 2246 22))
                       (display "\n")
                       (ormap
                        (lambda (b)
                          (letrec*
                           ((g8550
                             (letrec*
                              ((x8551
                                (begin
                                  (write '(funapp 2249 51))
                                  (display "\n")
                                  (block-y b))))
                              (begin
                                (write '(funapp 2249 65))
                                (display "\n")
                                (<= x8551 0)))))
                           g8550))
                        bs))))
                   g8549)))
               (blocks-union
                (lambda (bs1 bs2)
                  (letrec*
                   ((g8552
                     (begin
                       (write '(funapp 2257 22))
                       (display "\n")
                       (foldr
                        (lambda (b bs)
                          (letrec*
                           ((g8553
                             (letrec*
                              ((x-cnd8554
                                (begin
                                  (write '(funapp 2262 41))
                                  (display "\n")
                                  (blocks-contains? bs b))))
                              (if x-cnd8554
                                (letrec* ((g8555 bs)) g8555)
                                (letrec*
                                 ((g8556
                                   (begin
                                     (write '(funapp 2265 48))
                                     (display "\n")
                                     (cons b bs))))
                                 g8556)))))
                           g8553))
                        bs2
                        bs1))))
                   g8552)))
               (blocks-max-y
                (lambda (bs)
                  (letrec*
                   ((g8557
                     (begin
                       (write '(funapp 2274 22))
                       (display "\n")
                       (foldr
                        (lambda (b n)
                          (letrec*
                           ((g8558
                             (letrec*
                              ((x8559
                                (begin
                                  (write '(funapp 2278 45))
                                  (display "\n")
                                  (block-y b))))
                              (begin
                                (write '(funapp 2278 59))
                                (display "\n")
                                (max x8559 n)))))
                           g8558))
                        0
                        bs))))
                   g8557)))
               (blocks-min-x
                (lambda (bs)
                  (letrec*
                   ((g8560
                     (begin
                       (write '(funapp 2287 22))
                       (display "\n")
                       (foldr
                        (lambda (b n)
                          (letrec*
                           ((g8561
                             (letrec*
                              ((x8562
                                (begin
                                  (write '(funapp 2291 45))
                                  (display "\n")
                                  (block-x b))))
                              (begin
                                (write '(funapp 2291 59))
                                (display "\n")
                                (min x8562 n)))))
                           g8561))
                        board-width
                        bs))))
                   g8560)))
               (blocks-max-x
                (lambda (bs)
                  (letrec*
                   ((g8563
                     (begin
                       (write '(funapp 2300 22))
                       (display "\n")
                       (foldr
                        (lambda (b n)
                          (letrec*
                           ((g8564
                             (letrec*
                              ((x8565
                                (begin
                                  (write '(funapp 2304 45))
                                  (display "\n")
                                  (block-x b))))
                              (begin
                                (write '(funapp 2304 59))
                                (display "\n")
                                (max x8565 n)))))
                           g8564))
                        0
                        bs))))
                   g8563)))
               (eliminate-full-rows
                (lambda (bs)
                  (letrec*
                   ((g8566
                     (begin
                       (write '(funapp 2311 36))
                       (display "\n")
                       (elim-row bs board-height 0))))
                   g8566)))
               (elim-row
                (lambda (bs i offset)
                  (letrec*
                   ((g8567
                     (letrec*
                      ((x-cnd8568
                        (begin
                          (write '(funapp 2317 35))
                          (display "\n")
                          (< i 0))))
                      (if x-cnd8568
                        (letrec* ((g8569 empty)) g8569)
                        (letrec*
                         ((x-cnd8570
                           (begin
                             (write '(funapp 2321 38))
                             (display "\n")
                             (full-row? bs i))))
                         (if x-cnd8570
                           (letrec*
                            ((g8571
                              (letrec*
                               ((x8573
                                 (begin
                                   (write '(funapp 2326 40))
                                   (display "\n")
                                   (sub1 i)))
                                (x8572
                                 (begin
                                   (write '(funapp 2326 57))
                                   (display "\n")
                                   (add1 offset))))
                               (begin
                                 (write '(funapp 2327 32))
                                 (display "\n")
                                 (elim-row bs x8573 x8572)))))
                            g8571)
                           (letrec*
                            ((g8574
                              (letrec*
                               ((x8577
                                 (letrec*
                                  ((x8578
                                    (begin
                                      (write '(funapp 2334 43))
                                      (display "\n")
                                      (sub1 i))))
                                  (begin
                                    (write '(funapp 2335 35))
                                    (display "\n")
                                    (elim-row bs x8578 offset))))
                                (x8575
                                 (letrec*
                                  ((x8576
                                    (begin
                                      (write '(funapp 2338 43))
                                      (display "\n")
                                      (blocks-row bs i))))
                                  (begin
                                    (write '(funapp 2339 35))
                                    (display "\n")
                                    (blocks-move 0 offset x8576)))))
                               (begin
                                 (write '(funapp 2340 32))
                                 (display "\n")
                                 (blocks-union x8577 x8575)))))
                            g8574)))))))
                   g8567)))
               (tetra-move
                (lambda (dx dy t)
                  (letrec*
                   ((g8579
                     (letrec*
                      ((x8582
                        (letrec*
                         ((x8586
                           (letrec*
                            ((x8587
                              (letrec*
                               ((x8588
                                 (begin
                                   (write '(funapp 2354 40))
                                   (display "\n")
                                   (tetra-center t))))
                               (begin
                                 (write '(funapp 2355 32))
                                 (display "\n")
                                 (posn-x x8588)))))
                            (begin
                              (write '(funapp 2356 29))
                              (display "\n")
                              (+ dx x8587))))
                          (x8583
                           (letrec*
                            ((x8584
                              (letrec*
                               ((x8585
                                 (begin
                                   (write '(funapp 2361 40))
                                   (display "\n")
                                   (tetra-center t))))
                               (begin
                                 (write '(funapp 2362 32))
                                 (display "\n")
                                 (posn-y x8585)))))
                            (begin
                              (write '(funapp 2363 29))
                              (display "\n")
                              (+ dy x8584)))))
                         (begin
                           (write '(funapp 2364 26))
                           (display "\n")
                           (posn x8586 x8583))))
                       (x8580
                        (letrec*
                         ((x8581
                           (begin
                             (write '(funapp 2367 34))
                             (display "\n")
                             (tetra-blocks t))))
                         (begin
                           (write '(funapp 2368 26))
                           (display "\n")
                           (blocks-move dx dy x8581)))))
                      (begin
                        (write '(funapp 2369 23))
                        (display "\n")
                        (tetra x8582 x8580)))))
                   g8579)))
               (tetra-rotate-ccw
                (lambda (t)
                  (letrec*
                   ((g8589
                     (letrec*
                      ((x8593
                        (begin
                          (write '(funapp 2376 31))
                          (display "\n")
                          (tetra-center t)))
                       (x8590
                        (letrec*
                         ((x8592
                           (begin
                             (write '(funapp 2379 34))
                             (display "\n")
                             (tetra-center t)))
                          (x8591
                           (begin
                             (write '(funapp 2379 59))
                             (display "\n")
                             (tetra-blocks t))))
                         (begin
                           (write '(funapp 2380 26))
                           (display "\n")
                           (blocks-rotate-ccw x8592 x8591)))))
                      (begin
                        (write '(funapp 2381 23))
                        (display "\n")
                        (tetra x8593 x8590)))))
                   g8589)))
               (tetra-rotate-cw
                (lambda (t)
                  (letrec*
                   ((g8594
                     (letrec*
                      ((x8598
                        (begin
                          (write '(funapp 2388 31))
                          (display "\n")
                          (tetra-center t)))
                       (x8595
                        (letrec*
                         ((x8597
                           (begin
                             (write '(funapp 2391 34))
                             (display "\n")
                             (tetra-center t)))
                          (x8596
                           (begin
                             (write '(funapp 2391 59))
                             (display "\n")
                             (tetra-blocks t))))
                         (begin
                           (write '(funapp 2392 26))
                           (display "\n")
                           (blocks-rotate-cw x8597 x8596)))))
                      (begin
                        (write '(funapp 2393 23))
                        (display "\n")
                        (tetra x8598 x8595)))))
                   g8594)))
               (tetra-overlaps-blocks?
                (lambda (t bs)
                  (letrec*
                   ((g8599
                     (letrec*
                      ((x8600
                        (letrec*
                         ((x8601
                           (letrec*
                            ((x8602
                              (begin
                                (write '(funapp 2404 37))
                                (display "\n")
                                (tetra-blocks t))))
                            (begin
                              (write '(funapp 2405 29))
                              (display "\n")
                              (blocks-intersect x8602 bs)))))
                         (begin
                           (write '(funapp 2406 26))
                           (display "\n")
                           (false? x8601)))))
                      (begin
                        (write '(funapp 2407 23))
                        (display "\n")
                        (false? x8600)))))
                   g8599)))
               (tetra-change-color
                (lambda (t c)
                  (letrec*
                   ((g8603
                     (letrec*
                      ((x8606
                        (begin
                          (write '(funapp 2414 31))
                          (display "\n")
                          (tetra-center t)))
                       (x8604
                        (letrec*
                         ((x8605
                           (begin
                             (write '(funapp 2417 34))
                             (display "\n")
                             (tetra-blocks t))))
                         (begin
                           (write '(funapp 2418 26))
                           (display "\n")
                           (blocks-change-color x8605 c)))))
                      (begin
                        (write '(funapp 2419 23))
                        (display "\n")
                        (tetra x8606 x8604)))))
                   g8603)))
               (build-tetra-blocks
                (lambda (color xc yc x1 y1 x2 y2 x3 y3 x4 y4)
                  (letrec*
                   ((g8607
                     (letrec*
                      ((x8608
                        (letrec*
                         ((x8614
                           (begin
                             (write '(funapp 2428 34))
                             (display "\n")
                             (posn xc yc)))
                          (x8609
                           (letrec*
                            ((x8613
                              (begin
                                (write '(funapp 2431 37))
                                (display "\n")
                                (block x1 y1 color)))
                             (x8612
                              (begin
                                (write '(funapp 2432 37))
                                (display "\n")
                                (block x2 y2 color)))
                             (x8611
                              (begin
                                (write '(funapp 2433 37))
                                (display "\n")
                                (block x3 y3 color)))
                             (x8610
                              (begin
                                (write '(funapp 2434 37))
                                (display "\n")
                                (block x4 y4 color))))
                            (begin
                              (write '(funapp 2435 29))
                              (display "\n")
                              (list x8613 x8612 x8611 x8610)))))
                         (begin
                           (write '(funapp 2436 26))
                           (display "\n")
                           (tetra x8614 x8609)))))
                      (begin
                        (write '(funapp 2437 23))
                        (display "\n")
                        (tetra-move 3 0 x8608)))))
                   g8607)))
               (touchdown
                (lambda (w tetras)
                  (letrec*
                   ((g8615
                     (letrec*
                      ((x8621
                        (begin
                          (write '(funapp 2444 31))
                          (display "\n")
                          (list-pick-random tetras)))
                       (x8616
                        (letrec*
                         ((x8617
                           (letrec*
                            ((x8619
                              (letrec*
                               ((x8620
                                 (begin
                                   (write '(funapp 2451 40))
                                   (display "\n")
                                   (world-tetra w))))
                               (begin
                                 (write '(funapp 2452 32))
                                 (display "\n")
                                 (tetra-blocks x8620))))
                             (x8618
                              (begin
                                (write '(funapp 2453 37))
                                (display "\n")
                                (world-blocks w))))
                            (begin
                              (write '(funapp 2454 29))
                              (display "\n")
                              (blocks-union x8619 x8618)))))
                         (begin
                           (write '(funapp 2455 26))
                           (display "\n")
                           (eliminate-full-rows x8617)))))
                      (begin
                        (write '(funapp 2456 23))
                        (display "\n")
                        (world x8621 x8616)))))
                   g8615)))
               (world-jump-down
                (lambda (w)
                  (letrec*
                   ((g8622
                     (letrec*
                      ((x-cnd8623
                        (begin
                          (write '(funapp 2463 35))
                          (display "\n")
                          (landed? w))))
                      (if x-cnd8623
                        (letrec* ((g8624 w)) g8624)
                        (letrec*
                         ((g8625
                           (letrec*
                            ((x8626
                              (letrec*
                               ((x8628
                                 (letrec*
                                  ((x8629
                                    (begin
                                      (write '(funapp 2473 43))
                                      (display "\n")
                                      (world-tetra w))))
                                  (begin
                                    (write '(funapp 2474 35))
                                    (display "\n")
                                    (tetra-move 0 1 x8629))))
                                (x8627
                                 (begin
                                   (write '(funapp 2475 40))
                                   (display "\n")
                                   (world-blocks w))))
                               (begin
                                 (write '(funapp 2476 32))
                                 (display "\n")
                                 (world x8628 x8627)))))
                            (begin
                              (write '(funapp 2477 29))
                              (display "\n")
                              (world-jump-down x8626)))))
                         g8625)))))
                   g8622)))
               (landed-on-blocks?
                (lambda (w)
                  (letrec*
                   ((g8630
                     (letrec*
                      ((x8632
                        (letrec*
                         ((x8633
                           (begin
                             (write '(funapp 2487 34))
                             (display "\n")
                             (world-tetra w))))
                         (begin
                           (write '(funapp 2488 26))
                           (display "\n")
                           (tetra-move 0 1 x8633))))
                       (x8631
                        (begin
                          (write '(funapp 2489 31))
                          (display "\n")
                          (world-blocks w))))
                      (begin
                        (write '(funapp 2490 23))
                        (display "\n")
                        (tetra-overlaps-blocks? x8632 x8631)))))
                   g8630)))
               (landed-on-floor?
                (lambda (w)
                  (letrec*
                   ((g8634
                     (letrec*
                      ((x8636
                        (letrec*
                         ((x8637
                           (letrec*
                            ((x8638
                              (begin
                                (write '(funapp 2501 37))
                                (display "\n")
                                (world-tetra w))))
                            (begin
                              (write '(funapp 2502 29))
                              (display "\n")
                              (tetra-blocks x8638)))))
                         (begin
                           (write '(funapp 2503 26))
                           (display "\n")
                           (blocks-max-y x8637))))
                       (x8635
                        (begin
                          (write '(funapp 2504 31))
                          (display "\n")
                          (sub1 board-height))))
                      (begin
                        (write '(funapp 2505 23))
                        (display "\n")
                        (= x8636 x8635)))))
                   g8634)))
               (landed?
                (lambda (w)
                  (letrec*
                   ((g8639
                     (letrec*
                      ((val7262
                        (begin
                          (write '(funapp 2512 33))
                          (display "\n")
                          (landed-on-blocks? w))))
                      (letrec*
                       ((g8640
                         (if val7262
                           val7262
                           (begin
                             (write '(funapp 2514 52))
                             (display "\n")
                             (landed-on-floor? w)))))
                       g8640))))
                   g8639)))
               (next-world
                (lambda (w tetras)
                  (letrec*
                   ((g8641
                     (letrec*
                      ((x-cnd8642
                        (begin
                          (write '(funapp 2522 35))
                          (display "\n")
                          (landed? w))))
                      (if x-cnd8642
                        (letrec*
                         ((g8643
                           (begin
                             (write '(funapp 2524 42))
                             (display "\n")
                             (touchdown w tetras))))
                         g8643)
                        (letrec*
                         ((g8644
                           (letrec*
                            ((x8646
                              (letrec*
                               ((x8647
                                 (begin
                                   (write '(funapp 2530 40))
                                   (display "\n")
                                   (world-tetra w))))
                               (begin
                                 (write '(funapp 2531 32))
                                 (display "\n")
                                 (tetra-move 0 1 x8647))))
                             (x8645
                              (begin
                                (write '(funapp 2532 37))
                                (display "\n")
                                (world-blocks w))))
                            (begin
                              (write '(funapp 2533 29))
                              (display "\n")
                              (world x8646 x8645)))))
                         g8644)))))
                   g8641)))
               (try-new-tetra
                (lambda (w new-tetra)
                  (letrec*
                   ((g8648
                     (letrec*
                      ((x-cnd8649
                        (letrec*
                         ((val7263
                           (letrec*
                            ((x8650
                              (letrec*
                               ((x8651
                                 (begin
                                   (write '(funapp 2547 40))
                                   (display "\n")
                                   (tetra-blocks new-tetra))))
                               (begin
                                 (write '(funapp 2548 32))
                                 (display "\n")
                                 (blocks-min-x x8651)))))
                            (begin
                              (write '(funapp 2549 29))
                              (display "\n")
                              (< x8650 0)))))
                         (letrec*
                          ((g8652
                            (if val7263
                              val7263
                              (letrec*
                               ((val7264
                                 (letrec*
                                  ((x8653
                                    (letrec*
                                     ((x8654
                                       (begin
                                         (write '(funapp 2559 46))
                                         (display "\n")
                                         (tetra-blocks new-tetra))))
                                     (begin
                                       (write '(funapp 2560 38))
                                       (display "\n")
                                       (blocks-max-x x8654)))))
                                  (begin
                                    (write '(funapp 2561 35))
                                    (display "\n")
                                    (>= x8653 board-width)))))
                               (letrec*
                                ((g8655
                                  (if val7264
                                    val7264
                                    (letrec*
                                     ((x8656
                                       (begin
                                         (write '(funapp 2567 46))
                                         (display "\n")
                                         (world-blocks w))))
                                     (begin
                                       (write '(funapp 2568 38))
                                       (display "\n")
                                       (tetra-overlaps-blocks?
                                        new-tetra
                                        x8656))))))
                                g8655)))))
                          g8652))))
                      (if x-cnd8649
                        (letrec* ((g8657 w)) g8657)
                        (letrec*
                         ((g8658
                           (letrec*
                            ((x8659
                              (begin
                                (write '(funapp 2578 37))
                                (display "\n")
                                (world-blocks w))))
                            (begin
                              (write '(funapp 2579 29))
                              (display "\n")
                              (world new-tetra x8659)))))
                         g8658)))))
                   g8648)))
               (world-move
                (lambda (dx dy w)
                  (letrec*
                   ((g8660
                     (letrec*
                      ((x8661
                        (letrec*
                         ((x8662
                           (begin
                             (write '(funapp 2589 34))
                             (display "\n")
                             (world-tetra w))))
                         (begin
                           (write '(funapp 2590 26))
                           (display "\n")
                           (tetra-move dx dy x8662)))))
                      (begin
                        (write '(funapp 2591 23))
                        (display "\n")
                        (try-new-tetra w x8661)))))
                   g8660)))
               (world-rotate-ccw
                (lambda (w)
                  (letrec*
                   ((g8663
                     (letrec*
                      ((x8664
                        (letrec*
                         ((x8665
                           (begin
                             (write '(funapp 2600 34))
                             (display "\n")
                             (world-tetra w))))
                         (begin
                           (write '(funapp 2601 26))
                           (display "\n")
                           (tetra-rotate-ccw x8665)))))
                      (begin
                        (write '(funapp 2602 23))
                        (display "\n")
                        (try-new-tetra w x8664)))))
                   g8663)))
               (world-rotate-cw
                (lambda (w)
                  (letrec*
                   ((g8666
                     (letrec*
                      ((x8667
                        (letrec*
                         ((x8668
                           (begin
                             (write '(funapp 2611 34))
                             (display "\n")
                             (world-tetra w))))
                         (begin
                           (write '(funapp 2612 26))
                           (display "\n")
                           (tetra-rotate-cw x8668)))))
                      (begin
                        (write '(funapp 2613 23))
                        (display "\n")
                        (try-new-tetra w x8667)))))
                   g8666)))
               (ghost-blocks
                (lambda (w)
                  (letrec*
                   ((g8669
                     (letrec*
                      ((x8670
                        (letrec*
                         ((x8671
                           (letrec*
                            ((x8672
                              (begin
                                (write '(funapp 2624 37))
                                (display "\n")
                                (world-jump-down w))))
                            (begin
                              (write '(funapp 2625 29))
                              (display "\n")
                              (world-tetra x8672)))))
                         (begin
                           (write '(funapp 2626 26))
                           (display "\n")
                           (tetra-change-color
                            x8671
                            (begin
                              (write '(funapp 2626 51))
                              (display "\n")
                              'gray))))))
                      (begin
                        (write '(funapp 2627 23))
                        (display "\n")
                        (tetra-blocks x8670)))))
                   g8669)))
               (world-key-move
                (lambda (w k)
                  (letrec*
                   ((g8673
                     (letrec*
                      ((x-cnd8674
                        (begin
                          (write '(funapp 2634 35))
                          (display "\n")
                          (equal? k "left"))))
                      (if x-cnd8674
                        (letrec*
                         ((g8675
                           (begin
                             (write '(funapp 2636 42))
                             (display "\n")
                             (world-move neg-1 0 w))))
                         g8675)
                        (letrec*
                         ((x-cnd8676
                           (begin
                             (write '(funapp 2638 38))
                             (display "\n")
                             (equal? k "right"))))
                         (if x-cnd8676
                           (letrec*
                            ((g8677
                              (begin
                                (write '(funapp 2640 45))
                                (display "\n")
                                (world-move 1 0 w))))
                            g8677)
                           (letrec*
                            ((x-cnd8678
                              (begin
                                (write '(funapp 2642 41))
                                (display "\n")
                                (equal? k "down"))))
                            (if x-cnd8678
                              (letrec*
                               ((g8679
                                 (begin
                                   (write '(funapp 2644 48))
                                   (display "\n")
                                   (world-jump-down w))))
                               g8679)
                              (letrec*
                               ((x-cnd8680
                                 (begin
                                   (write '(funapp 2646 44))
                                   (display "\n")
                                   (equal? k "a"))))
                               (if x-cnd8680
                                 (letrec*
                                  ((g8681
                                    (begin
                                      (write '(funapp 2648 51))
                                      (display "\n")
                                      (world-rotate-ccw w))))
                                  g8681)
                                 (letrec*
                                  ((x-cnd8682
                                    (begin
                                      (write '(funapp 2650 47))
                                      (display "\n")
                                      (equal? k "s"))))
                                  (if x-cnd8682
                                    (letrec*
                                     ((g8683
                                       (begin
                                         (write '(funapp 2653 46))
                                         (display "\n")
                                         (world-rotate-cw w))))
                                     g8683)
                                    (letrec* ((g8684 w)) g8684)))))))))))))
                   g8673)))
               (image
                (lambda ()
                  (letrec*
                   ((g8685
                     (begin
                       (write '(funapp 2658 45))
                       (display "\n")
                       (orig-cons
                        (begin (write '(funapp 2658 55)) (display "\n") 'image)
                        (begin
                          (write '(funapp 2658 62))
                          (display "\n")
                          '())))))
                   g8685)))
               (image?
                (lambda (image7775)
                  (letrec*
                   ((g8686
                     (letrec*
                      ((x8687
                        (begin
                          (write '(funapp 2663 39))
                          (display "\n")
                          (car image7775))))
                      (begin
                        (write '(funapp 2663 57))
                        (display "\n")
                        (eq?
                         x8687
                         (begin
                           (write '(funapp 2663 67))
                           (display "\n")
                           'image))))))
                   g8686)))
               (image/c
                (lambda (j7427 k7428 v7426)
                  (letrec*
                   ((g8688
                     (begin
                       (write '(funapp 2667 36))
                       (display "\n")
                       (cons
                        image
                        (begin
                          (write '(funapp 2667 47))
                          (display "\n")
                          '())))))
                   g8688)))
               (overlay
                (lambda (i₁ i₂)
                  (letrec*
                   ((g8689
                     (begin (write '(funapp 2668 58)) (display "\n") (image))))
                   g8689)))
               (circle
                (lambda (r m c)
                  (letrec*
                   ((g8690
                     (begin (write '(funapp 2669 57)) (display "\n") (image))))
                   g8690)))
               (rectangle
                (lambda (w h m c)
                  (letrec*
                   ((g8691
                     (begin (write '(funapp 2670 62)) (display "\n") (image))))
                   g8691)))
               (place-image
                (lambda (i₁ r c i₂)
                  (letrec*
                   ((g8692
                     (begin (write '(funapp 2672 54)) (display "\n") (image))))
                   g8692)))
               (empty-scene
                (lambda (w h)
                  (letrec*
                   ((g8693
                     (begin (write '(funapp 2673 60)) (display "\n") (image))))
                   g8693)))
               (list-pick-random
                (lambda (xs)
                  (letrec*
                   ((g8694
                     (letrec*
                      ((x-cnd8695
                        (letrec*
                         ((x8696
                           (begin
                             (write '(funapp 2679 52))
                             (display "\n")
                             (cdr xs))))
                         (begin
                           (write '(funapp 2679 63))
                           (display "\n")
                           (null? x8696)))))
                      (if x-cnd8695
                        (letrec*
                         ((g8697
                           (begin
                             (write '(funapp 2681 42))
                             (display "\n")
                             (car xs))))
                         g8697)
                        (letrec*
                         ((g8698
                           (letrec*
                            ((x8699
                              (begin
                                (write '(funapp 2685 37))
                                (display "\n")
                                (cdr xs))))
                            (begin
                              (write '(funapp 2686 29))
                              (display "\n")
                              (list-pick-random x8699)))))
                         g8698)))))
                   g8694)))
               (neg-1
                (begin (write '(funapp 2689 23)) (display "\n") (random 10)))
               (world->image
                (lambda (w)
                  (letrec*
                   ((g8700
                     (letrec*
                      ((x8704
                        (letrec*
                         ((x8705
                           (letrec*
                            ((x8709
                              (letrec*
                               ((x8710
                                 (begin
                                   (write '(funapp 2701 40))
                                   (display "\n")
                                   (world-tetra w))))
                               (begin
                                 (write '(funapp 2702 32))
                                 (display "\n")
                                 (tetra-blocks x8710))))
                             (x8706
                              (letrec*
                               ((x8708
                                 (begin
                                   (write '(funapp 2705 40))
                                   (display "\n")
                                   (ghost-blocks w)))
                                (x8707
                                 (begin
                                   (write '(funapp 2706 40))
                                   (display "\n")
                                   (world-blocks w))))
                               (begin
                                 (write '(funapp 2707 32))
                                 (display "\n")
                                 (append x8708 x8707)))))
                            (begin
                              (write '(funapp 2708 29))
                              (display "\n")
                              (append x8709 x8706)))))
                         (begin
                           (write '(funapp 2709 26))
                           (display "\n")
                           (blocks->image x8705))))
                       (x8701
                        (letrec*
                         ((x8703
                           (begin
                             (write '(funapp 2712 34))
                             (display "\n")
                             (* board-width block-size)))
                          (x8702
                           (begin
                             (write '(funapp 2713 34))
                             (display "\n")
                             (* board-height block-size))))
                         (begin
                           (write '(funapp 2714 26))
                           (display "\n")
                           (empty-scene x8703 x8702)))))
                      (begin
                        (write '(funapp 2715 23))
                        (display "\n")
                        (place-image x8704 0 0 x8701)))))
                   g8700)))
               (blocks->image
                (lambda (bs)
                  (letrec*
                   ((g8711
                     (letrec*
                      ((x8712
                        (letrec*
                         ((x8715
                           (letrec*
                            ((x8716
                              (begin
                                (write '(funapp 2726 37))
                                (display "\n")
                                (* board-width block-size))))
                            (begin
                              (write '(funapp 2727 29))
                              (display "\n")
                              (add1 x8716))))
                          (x8713
                           (letrec*
                            ((x8714
                              (begin
                                (write '(funapp 2730 37))
                                (display "\n")
                                (* board-height block-size))))
                            (begin
                              (write '(funapp 2731 29))
                              (display "\n")
                              (add1 x8714)))))
                         (begin
                           (write '(funapp 2732 26))
                           (display "\n")
                           (empty-scene x8715 x8713)))))
                      (begin
                        (write '(funapp 2733 23))
                        (display "\n")
                        (foldr
                         (lambda (b img)
                           (letrec*
                            ((g8717
                              (letrec*
                               ((x-cnd8718
                                 (letrec*
                                  ((x8719
                                    (begin
                                      (write '(funapp 2739 49))
                                      (display "\n")
                                      (block-y b))))
                                  (begin
                                    (write '(funapp 2739 63))
                                    (display "\n")
                                    (<= 0 x8719)))))
                               (if x-cnd8718
                                 (letrec*
                                  ((g8720
                                    (begin
                                      (write '(funapp 2741 49))
                                      (display "\n")
                                      (place-block b img))))
                                  g8720)
                                 (letrec* ((g8721 img)) g8721)))))
                            g8717))
                         x8712
                         bs)))))
                   g8711)))
               (block->image
                (lambda (b)
                  (letrec*
                   ((g8722
                     (letrec*
                      ((x8726
                        (letrec*
                         ((x8729
                           (begin
                             (write '(funapp 2754 34))
                             (display "\n")
                             (add1 block-size)))
                          (x8728
                           (begin
                             (write '(funapp 2755 34))
                             (display "\n")
                             (add1 block-size)))
                          (x8727
                           (begin
                             (write '(funapp 2756 34))
                             (display "\n")
                             (block-color b))))
                         (begin
                           (write '(funapp 2757 26))
                           (display "\n")
                           (rectangle
                            x8729
                            x8728
                            (begin
                              (write '(funapp 2757 48))
                              (display "\n")
                              'solid)
                            x8727))))
                       (x8723
                        (letrec*
                         ((x8725
                           (begin
                             (write '(funapp 2760 34))
                             (display "\n")
                             (add1 block-size)))
                          (x8724
                           (begin
                             (write '(funapp 2760 60))
                             (display "\n")
                             (add1 block-size))))
                         (begin
                           (write '(funapp 2761 26))
                           (display "\n")
                           (rectangle
                            x8725
                            x8724
                            (begin
                              (write '(funapp 2761 48))
                              (display "\n")
                              'outline)
                            (begin
                              (write '(funapp 2761 57))
                              (display "\n")
                              'black))))))
                      (begin
                        (write '(funapp 2762 23))
                        (display "\n")
                        (overlay x8726 x8723)))))
                   g8722)))
               (place-block
                (lambda (b scene)
                  (letrec*
                   ((g8730
                     (letrec*
                      ((x8739
                        (begin
                          (write '(funapp 2769 31))
                          (display "\n")
                          (block->image b)))
                       (x8735
                        (letrec*
                         ((x8737
                           (letrec*
                            ((x8738
                              (begin
                                (write '(funapp 2774 37))
                                (display "\n")
                                (block-x b))))
                            (begin
                              (write '(funapp 2775 29))
                              (display "\n")
                              (* x8738 block-size))))
                          (x8736
                           (begin
                             (write '(funapp 2776 34))
                             (display "\n")
                             (/ block-size 2))))
                         (begin
                           (write '(funapp 2777 26))
                           (display "\n")
                           (+ x8737 x8736))))
                       (x8731
                        (letrec*
                         ((x8733
                           (letrec*
                            ((x8734
                              (begin
                                (write '(funapp 2782 37))
                                (display "\n")
                                (block-y b))))
                            (begin
                              (write '(funapp 2783 29))
                              (display "\n")
                              (* x8734 block-size))))
                          (x8732
                           (begin
                             (write '(funapp 2784 34))
                             (display "\n")
                             (/ block-size 2))))
                         (begin
                           (write '(funapp 2785 26))
                           (display "\n")
                           (+ x8733 x8732)))))
                      (begin
                        (write '(funapp 2786 23))
                        (display "\n")
                        (place-image x8739 x8735 x8731 scene)))))
                   g8730)))
               (world0
                (lambda (tetras)
                  (letrec*
                   ((g8740
                     (letrec*
                      ((x8741
                        (begin
                          (write '(funapp 2793 31))
                          (display "\n")
                          (list-pick-random tetras))))
                      (begin
                        (write '(funapp 2794 23))
                        (display "\n")
                        (world x8741 null)))))
                   g8740))))
              (letrec*
               ((g8742
                 (begin
                   (write '(funapp 2798 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 2799 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8753
                          (letrec*
                           ((xj7430
                             (begin
                               (write '(funapp 2803 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2803 37))
                                  (display "\n")
                                  'module))))
                            (xk7431
                             (begin
                               (write '(funapp 2803 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2803 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8754
                              (begin
                                (write '(funapp 2806 27))
                                (display "\n")
                                ((lambda (j7434 k7435 f7436)
                                   (letrec*
                                    ((g8755
                                      (lambda (g7432 g7433)
                                        (letrec*
                                         ((g8756
                                           (letrec*
                                            ((x8757
                                              (letrec*
                                               ((x8759
                                                 (begin
                                                   (write '(funapp 2815 50))
                                                   (display "\n")
                                                   (POSN/C j7434 k7435 g7432)))
                                                (x8758
                                                 (begin
                                                   (write '(funapp 2816 50))
                                                   (display "\n")
                                                   (POSN/C
                                                    j7434
                                                    k7435
                                                    g7433))))
                                               (begin
                                                 (write '(funapp 2817 42))
                                                 (display "\n")
                                                 (f7436 x8759 x8758)))))
                                            (begin
                                              (write '(funapp 2818 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7434
                                               k7435
                                               x8757)))))
                                         g8756))))
                                    g8755))
                                 xj7430
                                 xk7431
                                 posn=?))))
                            g8754)))
                         (x8748
                          (letrec*
                           ((x8749
                             (letrec*
                              ((x8752 (input))
                               (x8750
                                (letrec*
                                 ((x8751 (input)))
                                 (begin
                                   (write '(funapp 2831 56))
                                   (display "\n")
                                   (cons
                                    x8751
                                    (begin
                                      (write '(funapp 2831 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2832 27))
                                (display "\n")
                                (cons x8752 x8750)))))
                           (begin
                             (write '(funapp 2833 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2833 29))
                                (display "\n")
                                'posn)
                              x8749))))
                         (x8743
                          (letrec*
                           ((x8744
                             (letrec*
                              ((x8747 (input))
                               (x8745
                                (letrec*
                                 ((x8746 (input)))
                                 (begin
                                   (write '(funapp 2840 56))
                                   (display "\n")
                                   (cons
                                    x8746
                                    (begin
                                      (write '(funapp 2840 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2841 27))
                                (display "\n")
                                (cons x8747 x8745)))))
                           (begin
                             (write '(funapp 2842 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2842 29))
                                (display "\n")
                                'posn)
                              x8744)))))
                        (begin
                          (write '(funapp 2843 21))
                          (display "\n")
                          (x8753 x8748 x8743)))
                       (letrec*
                        ((xj7437
                          (begin
                            (write '(funapp 2845 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2845 34))
                               (display "\n")
                               'module))))
                         (xk7438
                          (begin
                            (write '(funapp 2845 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2845 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8760
                           (begin
                             (write '(funapp 2846 38))
                             (display "\n")
                             (any/c xj7437 xk7438 COLOR/C))))
                         g8760))
                       (letrec*
                        ((xj7439
                          (begin
                            (write '(funapp 2848 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2848 34))
                               (display "\n")
                               'module))))
                         (xk7440
                          (begin
                            (write '(funapp 2848 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2848 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8761
                           (begin
                             (write '(funapp 2849 38))
                             (display "\n")
                             (any/c xj7439 xk7440 POSN/C))))
                         g8761))
                       (letrec*
                        ((xj7441
                          (begin
                            (write '(funapp 2851 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2851 34))
                               (display "\n")
                               'module))))
                         (xk7442
                          (begin
                            (write '(funapp 2851 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2851 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8762
                           (begin
                             (write '(funapp 2852 38))
                             (display "\n")
                             (any/c xj7441 xk7442 BLOCK/C))))
                         g8762))
                       (letrec*
                        ((xj7443
                          (begin
                            (write '(funapp 2854 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2854 34))
                               (display "\n")
                               'module))))
                         (xk7444
                          (begin
                            (write '(funapp 2854 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2854 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8763
                           (begin
                             (write '(funapp 2855 38))
                             (display "\n")
                             (any/c xj7443 xk7444 TETRA/C))))
                         g8763))
                       (letrec*
                        ((xj7445
                          (begin
                            (write '(funapp 2857 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2857 34))
                               (display "\n")
                               'module))))
                         (xk7446
                          (begin
                            (write '(funapp 2857 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2857 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8764
                           (begin
                             (write '(funapp 2858 38))
                             (display "\n")
                             (any/c xj7445 xk7446 WORLD/C))))
                         g8764))
                       (letrec*
                        ((xj7447
                          (begin
                            (write '(funapp 2860 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2860 34))
                               (display "\n")
                               'module))))
                         (xk7448
                          (begin
                            (write '(funapp 2860 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2860 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8765
                           (begin
                             (write '(funapp 2861 38))
                             (display "\n")
                             (any/c xj7447 xk7448 BSET/C))))
                         g8765))
                       (letrec*
                        ((xj7449
                          (begin
                            (write '(funapp 2863 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2863 34))
                               (display "\n")
                               'module))))
                         (xk7450
                          (begin
                            (write '(funapp 2863 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2863 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8766
                           (begin
                             (write '(funapp 2865 30))
                             (display "\n")
                             (integer?/c xj7449 xk7450 block-size))))
                         g8766))
                       (letrec*
                        ((xj7451
                          (begin
                            (write '(funapp 2868 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2868 34))
                               (display "\n")
                               'module))))
                         (xk7452
                          (begin
                            (write '(funapp 2868 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2868 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8767
                           (begin
                             (write '(funapp 2870 30))
                             (display "\n")
                             (integer?/c xj7451 xk7452 board-width))))
                         g8767))
                       (letrec*
                        ((xj7453
                          (begin
                            (write '(funapp 2873 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2873 34))
                               (display "\n")
                               'module))))
                         (xk7454
                          (begin
                            (write '(funapp 2873 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2873 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8768
                           (begin
                             (write '(funapp 2875 30))
                             (display "\n")
                             (integer?/c xj7453 xk7454 board-height))))
                         g8768))
                       (letrec*
                        ((x8781
                          (letrec*
                           ((xj7455
                             (begin
                               (write '(funapp 2880 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2880 37))
                                  (display "\n")
                                  'module))))
                            (xk7456
                             (begin
                               (write '(funapp 2880 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2880 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8782
                              (begin
                                (write '(funapp 2883 27))
                                (display "\n")
                                ((lambda (j7459 k7460 f7461)
                                   (letrec*
                                    ((g8783
                                      (lambda (g7457 g7458)
                                        (letrec*
                                         ((g8784
                                           (letrec*
                                            ((x8785
                                              (letrec*
                                               ((x8787
                                                 (begin
                                                   (write '(funapp 2892 50))
                                                   (display "\n")
                                                   (POSN/C j7459 k7460 g7457)))
                                                (x8786
                                                 (begin
                                                   (write '(funapp 2893 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7459
                                                    k7460
                                                    g7458))))
                                               (begin
                                                 (write '(funapp 2894 42))
                                                 (display "\n")
                                                 (f7461 x8787 x8786)))))
                                            (begin
                                              (write '(funapp 2895 39))
                                              (display "\n")
                                              (BLOCK/C j7459 k7460 x8785)))))
                                         g8784))))
                                    g8783))
                                 xj7455
                                 xk7456
                                 block-rotate-ccw))))
                            g8782)))
                         (x8776
                          (letrec*
                           ((x8777
                             (letrec*
                              ((x8780 (input))
                               (x8778
                                (letrec*
                                 ((x8779 (input)))
                                 (begin
                                   (write '(funapp 2908 56))
                                   (display "\n")
                                   (cons
                                    x8779
                                    (begin
                                      (write '(funapp 2908 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2909 27))
                                (display "\n")
                                (cons x8780 x8778)))))
                           (begin
                             (write '(funapp 2910 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2910 29))
                                (display "\n")
                                'posn)
                              x8777))))
                         (x8769
                          (letrec*
                           ((x8770
                             (letrec*
                              ((x8775 (input))
                               (x8771
                                (letrec*
                                 ((x8774 (input))
                                  (x8772
                                   (letrec*
                                    ((x8773 (input)))
                                    (begin
                                      (write '(funapp 2920 59))
                                      (display "\n")
                                      (cons
                                       x8773
                                       (begin
                                         (write '(funapp 2920 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 2921 30))
                                   (display "\n")
                                   (cons x8774 x8772)))))
                              (begin
                                (write '(funapp 2922 27))
                                (display "\n")
                                (cons x8775 x8771)))))
                           (begin
                             (write '(funapp 2923 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2923 29))
                                (display "\n")
                                'block)
                              x8770)))))
                        (begin
                          (write '(funapp 2924 21))
                          (display "\n")
                          (x8781 x8776 x8769)))
                       (letrec*
                        ((x8800
                          (letrec*
                           ((xj7462
                             (begin
                               (write '(funapp 2928 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2928 37))
                                  (display "\n")
                                  'module))))
                            (xk7463
                             (begin
                               (write '(funapp 2928 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2928 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8801
                              (begin
                                (write '(funapp 2931 27))
                                (display "\n")
                                ((lambda (j7466 k7467 f7468)
                                   (letrec*
                                    ((g8802
                                      (lambda (g7464 g7465)
                                        (letrec*
                                         ((g8803
                                           (letrec*
                                            ((x8804
                                              (letrec*
                                               ((x8806
                                                 (begin
                                                   (write '(funapp 2940 50))
                                                   (display "\n")
                                                   (POSN/C j7466 k7467 g7464)))
                                                (x8805
                                                 (begin
                                                   (write '(funapp 2941 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7466
                                                    k7467
                                                    g7465))))
                                               (begin
                                                 (write '(funapp 2942 42))
                                                 (display "\n")
                                                 (f7468 x8806 x8805)))))
                                            (begin
                                              (write '(funapp 2943 39))
                                              (display "\n")
                                              (BLOCK/C j7466 k7467 x8804)))))
                                         g8803))))
                                    g8802))
                                 xj7462
                                 xk7463
                                 block-rotate-cw))))
                            g8801)))
                         (x8795
                          (letrec*
                           ((x8796
                             (letrec*
                              ((x8799 (input))
                               (x8797
                                (letrec*
                                 ((x8798 (input)))
                                 (begin
                                   (write '(funapp 2956 56))
                                   (display "\n")
                                   (cons
                                    x8798
                                    (begin
                                      (write '(funapp 2956 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2957 27))
                                (display "\n")
                                (cons x8799 x8797)))))
                           (begin
                             (write '(funapp 2958 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2958 29))
                                (display "\n")
                                'posn)
                              x8796))))
                         (x8788
                          (letrec*
                           ((x8789
                             (letrec*
                              ((x8794 (input))
                               (x8790
                                (letrec*
                                 ((x8793 (input))
                                  (x8791
                                   (letrec*
                                    ((x8792 (input)))
                                    (begin
                                      (write '(funapp 2968 59))
                                      (display "\n")
                                      (cons
                                       x8792
                                       (begin
                                         (write '(funapp 2968 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 2969 30))
                                   (display "\n")
                                   (cons x8793 x8791)))))
                              (begin
                                (write '(funapp 2970 27))
                                (display "\n")
                                (cons x8794 x8790)))))
                           (begin
                             (write '(funapp 2971 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2971 29))
                                (display "\n")
                                'block)
                              x8789)))))
                        (begin
                          (write '(funapp 2972 21))
                          (display "\n")
                          (x8800 x8795 x8788)))
                       (letrec*
                        ((x8821
                          (letrec*
                           ((xj7469
                             (begin
                               (write '(funapp 2976 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2976 37))
                                  (display "\n")
                                  'module))))
                            (xk7470
                             (begin
                               (write '(funapp 2976 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2976 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8822
                              (begin
                                (write '(funapp 2979 27))
                                (display "\n")
                                ((lambda (j7473 k7474 f7475)
                                   (letrec*
                                    ((g8823
                                      (lambda (g7471 g7472)
                                        (letrec*
                                         ((g8824
                                           (letrec*
                                            ((x8825
                                              (letrec*
                                               ((x8827
                                                 (begin
                                                   (write '(funapp 2988 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7473
                                                    k7474
                                                    g7471)))
                                                (x8826
                                                 (begin
                                                   (write '(funapp 2989 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7473
                                                    k7474
                                                    g7472))))
                                               (begin
                                                 (write '(funapp 2990 42))
                                                 (display "\n")
                                                 (f7475 x8827 x8826)))))
                                            (begin
                                              (write '(funapp 2991 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7473
                                               k7474
                                               x8825)))))
                                         g8824))))
                                    g8823))
                                 xj7469
                                 xk7470
                                 block=?))))
                            g8822)))
                         (x8814
                          (letrec*
                           ((x8815
                             (letrec*
                              ((x8820 (input))
                               (x8816
                                (letrec*
                                 ((x8819 (input))
                                  (x8817
                                   (letrec*
                                    ((x8818 (input)))
                                    (begin
                                      (write '(funapp 3007 59))
                                      (display "\n")
                                      (cons
                                       x8818
                                       (begin
                                         (write '(funapp 3007 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 3008 30))
                                   (display "\n")
                                   (cons x8819 x8817)))))
                              (begin
                                (write '(funapp 3009 27))
                                (display "\n")
                                (cons x8820 x8816)))))
                           (begin
                             (write '(funapp 3010 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3010 29))
                                (display "\n")
                                'block)
                              x8815))))
                         (x8807
                          (letrec*
                           ((x8808
                             (letrec*
                              ((x8813 (input))
                               (x8809
                                (letrec*
                                 ((x8812 (input))
                                  (x8810
                                   (letrec*
                                    ((x8811 (input)))
                                    (begin
                                      (write '(funapp 3020 59))
                                      (display "\n")
                                      (cons
                                       x8811
                                       (begin
                                         (write '(funapp 3020 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 3021 30))
                                   (display "\n")
                                   (cons x8812 x8810)))))
                              (begin
                                (write '(funapp 3022 27))
                                (display "\n")
                                (cons x8813 x8809)))))
                           (begin
                             (write '(funapp 3023 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3023 29))
                                (display "\n")
                                'block)
                              x8808)))))
                        (begin
                          (write '(funapp 3024 21))
                          (display "\n")
                          (x8821 x8814 x8807)))
                       (letrec*
                        ((x8837
                          (letrec*
                           ((xj7476
                             (begin
                               (write '(funapp 3028 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3028 37))
                                  (display "\n")
                                  'module))))
                            (xk7477
                             (begin
                               (write '(funapp 3028 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3028 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8838
                              (begin
                                (write '(funapp 3031 27))
                                (display "\n")
                                ((lambda (j7481 k7482 f7483)
                                   (letrec*
                                    ((g8839
                                      (lambda (g7478 g7479 g7480)
                                        (letrec*
                                         ((g8840
                                           (letrec*
                                            ((x8841
                                              (letrec*
                                               ((x8844
                                                 (begin
                                                   (write '(funapp 3040 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7481
                                                    k7482
                                                    g7478)))
                                                (x8843
                                                 (begin
                                                   (write '(funapp 3041 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7481
                                                    k7482
                                                    g7479)))
                                                (x8842
                                                 (begin
                                                   (write '(funapp 3042 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7481
                                                    k7482
                                                    g7480))))
                                               (begin
                                                 (write '(funapp 3043 42))
                                                 (display "\n")
                                                 (f7483 x8844 x8843 x8842)))))
                                            (begin
                                              (write '(funapp 3044 39))
                                              (display "\n")
                                              (BLOCK/C j7481 k7482 x8841)))))
                                         g8840))))
                                    g8839))
                                 xj7476
                                 xk7477
                                 block-move))))
                            g8838)))
                         (x8836 (input))
                         (x8835 (input))
                         (x8828
                          (letrec*
                           ((x8829
                             (letrec*
                              ((x8834 (input))
                               (x8830
                                (letrec*
                                 ((x8833 (input))
                                  (x8831
                                   (letrec*
                                    ((x8832 (input)))
                                    (begin
                                      (write '(funapp 3062 59))
                                      (display "\n")
                                      (cons
                                       x8832
                                       (begin
                                         (write '(funapp 3062 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 3063 30))
                                   (display "\n")
                                   (cons x8833 x8831)))))
                              (begin
                                (write '(funapp 3064 27))
                                (display "\n")
                                (cons x8834 x8830)))))
                           (begin
                             (write '(funapp 3065 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3065 29))
                                (display "\n")
                                'block)
                              x8829)))))
                        (begin
                          (write '(funapp 3066 21))
                          (display "\n")
                          (x8837 x8836 x8835 x8828)))
                       (letrec*
                        ((x8853
                          (letrec*
                           ((xj7484
                             (begin
                               (write '(funapp 3070 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3070 37))
                                  (display "\n")
                                  'module))))
                            (xk7485
                             (begin
                               (write '(funapp 3070 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3070 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8854
                              (begin
                                (write '(funapp 3073 27))
                                (display "\n")
                                ((lambda (j7488 k7489 f7490)
                                   (letrec*
                                    ((g8855
                                      (lambda (g7486 g7487)
                                        (letrec*
                                         ((g8856
                                           (letrec*
                                            ((x8857
                                              (letrec*
                                               ((x8859
                                                 (begin
                                                   (write '(funapp 3082 50))
                                                   (display "\n")
                                                   (BSET/C j7488 k7489 g7486)))
                                                (x8858
                                                 (begin
                                                   (write '(funapp 3083 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7488
                                                    k7489
                                                    g7487))))
                                               (begin
                                                 (write '(funapp 3084 42))
                                                 (display "\n")
                                                 (f7490 x8859 x8858)))))
                                            (begin
                                              (write '(funapp 3085 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7488
                                               k7489
                                               x8857)))))
                                         g8856))))
                                    g8855))
                                 xj7484
                                 xk7485
                                 blocks-contains?))))
                            g8854)))
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
                                      (write '(funapp 3102 59))
                                      (display "\n")
                                      (cons
                                       x8849
                                       (begin
                                         (write '(funapp 3102 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 3103 30))
                                   (display "\n")
                                   (cons x8850 x8848)))))
                              (begin
                                (write '(funapp 3104 27))
                                (display "\n")
                                (cons x8851 x8847)))))
                           (begin
                             (write '(funapp 3105 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3105 29))
                                (display "\n")
                                'block)
                              x8846)))))
                        (begin
                          (write '(funapp 3106 21))
                          (display "\n")
                          (x8853 x8852 x8845)))
                       (letrec*
                        ((x8862
                          (letrec*
                           ((xj7491
                             (begin
                               (write '(funapp 3110 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3110 37))
                                  (display "\n")
                                  'module))))
                            (xk7492
                             (begin
                               (write '(funapp 3110 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3110 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8863
                              (begin
                                (write '(funapp 3113 27))
                                (display "\n")
                                ((lambda (j7495 k7496 f7497)
                                   (letrec*
                                    ((g8864
                                      (lambda (g7493 g7494)
                                        (letrec*
                                         ((g8865
                                           (letrec*
                                            ((x8866
                                              (letrec*
                                               ((x8868
                                                 (begin
                                                   (write '(funapp 3122 50))
                                                   (display "\n")
                                                   (BSET/C j7495 k7496 g7493)))
                                                (x8867
                                                 (begin
                                                   (write '(funapp 3123 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7495
                                                    k7496
                                                    g7494))))
                                               (begin
                                                 (write '(funapp 3124 42))
                                                 (display "\n")
                                                 (f7497 x8868 x8867)))))
                                            (begin
                                              (write '(funapp 3125 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7495
                                               k7496
                                               x8866)))))
                                         g8865))))
                                    g8864))
                                 xj7491
                                 xk7492
                                 blocks=?))))
                            g8863)))
                         (x8861 (input))
                         (x8860 (input)))
                        (begin
                          (write '(funapp 3134 21))
                          (display "\n")
                          (x8862 x8861 x8860)))
                       (letrec*
                        ((x8871
                          (letrec*
                           ((xj7498
                             (begin
                               (write '(funapp 3138 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3138 37))
                                  (display "\n")
                                  'module))))
                            (xk7499
                             (begin
                               (write '(funapp 3138 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3138 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8872
                              (begin
                                (write '(funapp 3141 27))
                                (display "\n")
                                ((lambda (j7502 k7503 f7504)
                                   (letrec*
                                    ((g8873
                                      (lambda (g7500 g7501)
                                        (letrec*
                                         ((g8874
                                           (letrec*
                                            ((x8875
                                              (letrec*
                                               ((x8877
                                                 (begin
                                                   (write '(funapp 3150 50))
                                                   (display "\n")
                                                   (BSET/C j7502 k7503 g7500)))
                                                (x8876
                                                 (begin
                                                   (write '(funapp 3151 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7502
                                                    k7503
                                                    g7501))))
                                               (begin
                                                 (write '(funapp 3152 42))
                                                 (display "\n")
                                                 (f7504 x8877 x8876)))))
                                            (begin
                                              (write '(funapp 3153 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7502
                                               k7503
                                               x8875)))))
                                         g8874))))
                                    g8873))
                                 xj7498
                                 xk7499
                                 blocks-subset?))))
                            g8872)))
                         (x8870 (input))
                         (x8869 (input)))
                        (begin
                          (write '(funapp 3162 21))
                          (display "\n")
                          (x8871 x8870 x8869)))
                       (letrec*
                        ((x8880
                          (letrec*
                           ((xj7505
                             (begin
                               (write '(funapp 3166 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3166 37))
                                  (display "\n")
                                  'module))))
                            (xk7506
                             (begin
                               (write '(funapp 3166 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3166 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8881
                              (begin
                                (write '(funapp 3169 27))
                                (display "\n")
                                ((lambda (j7509 k7510 f7511)
                                   (letrec*
                                    ((g8882
                                      (lambda (g7507 g7508)
                                        (letrec*
                                         ((g8883
                                           (letrec*
                                            ((x8884
                                              (letrec*
                                               ((x8886
                                                 (begin
                                                   (write '(funapp 3178 50))
                                                   (display "\n")
                                                   (BSET/C j7509 k7510 g7507)))
                                                (x8885
                                                 (begin
                                                   (write '(funapp 3179 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7509
                                                    k7510
                                                    g7508))))
                                               (begin
                                                 (write '(funapp 3180 42))
                                                 (display "\n")
                                                 (f7511 x8886 x8885)))))
                                            (begin
                                              (write '(funapp 3181 39))
                                              (display "\n")
                                              (BSET/C j7509 k7510 x8884)))))
                                         g8883))))
                                    g8882))
                                 xj7505
                                 xk7506
                                 blocks-intersect))))
                            g8881)))
                         (x8879 (input))
                         (x8878 (input)))
                        (begin
                          (write '(funapp 3190 21))
                          (display "\n")
                          (x8880 x8879 x8878)))
                       (letrec*
                        ((x8888
                          (letrec*
                           ((xj7512
                             (begin
                               (write '(funapp 3194 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3194 37))
                                  (display "\n")
                                  'module))))
                            (xk7513
                             (begin
                               (write '(funapp 3194 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3194 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8889
                              (begin
                                (write '(funapp 3197 27))
                                (display "\n")
                                ((lambda (j7515 k7516 f7517)
                                   (letrec*
                                    ((g8890
                                      (lambda (g7514)
                                        (letrec*
                                         ((g8891
                                           (letrec*
                                            ((x8892
                                              (letrec*
                                               ((x8893
                                                 (begin
                                                   (write '(funapp 3206 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7515
                                                    k7516
                                                    g7514))))
                                               (begin
                                                 (write '(funapp 3207 42))
                                                 (display "\n")
                                                 (f7517 x8893)))))
                                            (begin
                                              (write '(funapp 3208 39))
                                              (display "\n")
                                              (real?/c j7515 k7516 x8892)))))
                                         g8891))))
                                    g8890))
                                 xj7512
                                 xk7513
                                 blocks-count))))
                            g8889)))
                         (x8887 (input)))
                        (begin
                          (write '(funapp 3216 21))
                          (display "\n")
                          (x8888 x8887)))
                       (letrec*
                        ((x8895
                          (letrec*
                           ((xj7518
                             (begin
                               (write '(funapp 3220 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3220 37))
                                  (display "\n")
                                  'module))))
                            (xk7519
                             (begin
                               (write '(funapp 3220 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3220 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8896
                              (begin
                                (write '(funapp 3223 27))
                                (display "\n")
                                ((lambda (j7521 k7522 f7523)
                                   (letrec*
                                    ((g8897
                                      (lambda (g7520)
                                        (letrec*
                                         ((g8898
                                           (letrec*
                                            ((x8899
                                              (letrec*
                                               ((x8900
                                                 (begin
                                                   (write '(funapp 3232 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7521
                                                    k7522
                                                    g7520))))
                                               (begin
                                                 (write '(funapp 3233 42))
                                                 (display "\n")
                                                 (f7523 x8900)))))
                                            (begin
                                              (write '(funapp 3234 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7521
                                               k7522
                                               x8899)))))
                                         g8898))))
                                    g8897))
                                 xj7518
                                 xk7519
                                 blocks-overflow?))))
                            g8896)))
                         (x8894 (input)))
                        (begin
                          (write '(funapp 3242 21))
                          (display "\n")
                          (x8895 x8894)))
                       (letrec*
                        ((x8904
                          (letrec*
                           ((xj7524
                             (begin
                               (write '(funapp 3246 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3246 37))
                                  (display "\n")
                                  'module))))
                            (xk7525
                             (begin
                               (write '(funapp 3246 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3246 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8905
                              (begin
                                (write '(funapp 3249 27))
                                (display "\n")
                                ((lambda (j7529 k7530 f7531)
                                   (letrec*
                                    ((g8906
                                      (lambda (g7526 g7527 g7528)
                                        (letrec*
                                         ((g8907
                                           (letrec*
                                            ((x8908
                                              (letrec*
                                               ((x8911
                                                 (begin
                                                   (write '(funapp 3258 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7529
                                                    k7530
                                                    g7526)))
                                                (x8910
                                                 (begin
                                                   (write '(funapp 3259 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7529
                                                    k7530
                                                    g7527)))
                                                (x8909
                                                 (begin
                                                   (write '(funapp 3260 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7529
                                                    k7530
                                                    g7528))))
                                               (begin
                                                 (write '(funapp 3261 42))
                                                 (display "\n")
                                                 (f7531 x8911 x8910 x8909)))))
                                            (begin
                                              (write '(funapp 3262 39))
                                              (display "\n")
                                              (BSET/C j7529 k7530 x8908)))))
                                         g8907))))
                                    g8906))
                                 xj7524
                                 xk7525
                                 blocks-move))))
                            g8905)))
                         (x8903 (input))
                         (x8902 (input))
                         (x8901 (input)))
                        (begin
                          (write '(funapp 3272 21))
                          (display "\n")
                          (x8904 x8903 x8902 x8901)))
                       (letrec*
                        ((x8918
                          (letrec*
                           ((xj7532
                             (begin
                               (write '(funapp 3276 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3276 37))
                                  (display "\n")
                                  'module))))
                            (xk7533
                             (begin
                               (write '(funapp 3276 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3276 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8919
                              (begin
                                (write '(funapp 3279 27))
                                (display "\n")
                                ((lambda (j7536 k7537 f7538)
                                   (letrec*
                                    ((g8920
                                      (lambda (g7534 g7535)
                                        (letrec*
                                         ((g8921
                                           (letrec*
                                            ((x8922
                                              (letrec*
                                               ((x8924
                                                 (begin
                                                   (write '(funapp 3288 50))
                                                   (display "\n")
                                                   (POSN/C j7536 k7537 g7534)))
                                                (x8923
                                                 (begin
                                                   (write '(funapp 3289 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7536
                                                    k7537
                                                    g7535))))
                                               (begin
                                                 (write '(funapp 3290 42))
                                                 (display "\n")
                                                 (f7538 x8924 x8923)))))
                                            (begin
                                              (write '(funapp 3291 39))
                                              (display "\n")
                                              (BSET/C j7536 k7537 x8922)))))
                                         g8921))))
                                    g8920))
                                 xj7532
                                 xk7533
                                 blocks-rotate-cw))))
                            g8919)))
                         (x8913
                          (letrec*
                           ((x8914
                             (letrec*
                              ((x8917 (input))
                               (x8915
                                (letrec*
                                 ((x8916 (input)))
                                 (begin
                                   (write '(funapp 3304 56))
                                   (display "\n")
                                   (cons
                                    x8916
                                    (begin
                                      (write '(funapp 3304 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3305 27))
                                (display "\n")
                                (cons x8917 x8915)))))
                           (begin
                             (write '(funapp 3306 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3306 29))
                                (display "\n")
                                'posn)
                              x8914))))
                         (x8912 (input)))
                        (begin
                          (write '(funapp 3308 21))
                          (display "\n")
                          (x8918 x8913 x8912)))
                       (letrec*
                        ((x8931
                          (letrec*
                           ((xj7539
                             (begin
                               (write '(funapp 3312 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3312 37))
                                  (display "\n")
                                  'module))))
                            (xk7540
                             (begin
                               (write '(funapp 3312 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3312 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8932
                              (begin
                                (write '(funapp 3315 27))
                                (display "\n")
                                ((lambda (j7543 k7544 f7545)
                                   (letrec*
                                    ((g8933
                                      (lambda (g7541 g7542)
                                        (letrec*
                                         ((g8934
                                           (letrec*
                                            ((x8935
                                              (letrec*
                                               ((x8937
                                                 (begin
                                                   (write '(funapp 3324 50))
                                                   (display "\n")
                                                   (POSN/C j7543 k7544 g7541)))
                                                (x8936
                                                 (begin
                                                   (write '(funapp 3325 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7543
                                                    k7544
                                                    g7542))))
                                               (begin
                                                 (write '(funapp 3326 42))
                                                 (display "\n")
                                                 (f7545 x8937 x8936)))))
                                            (begin
                                              (write '(funapp 3327 39))
                                              (display "\n")
                                              (BSET/C j7543 k7544 x8935)))))
                                         g8934))))
                                    g8933))
                                 xj7539
                                 xk7540
                                 blocks-rotate-ccw))))
                            g8932)))
                         (x8926
                          (letrec*
                           ((x8927
                             (letrec*
                              ((x8930 (input))
                               (x8928
                                (letrec*
                                 ((x8929 (input)))
                                 (begin
                                   (write '(funapp 3340 56))
                                   (display "\n")
                                   (cons
                                    x8929
                                    (begin
                                      (write '(funapp 3340 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3341 27))
                                (display "\n")
                                (cons x8930 x8928)))))
                           (begin
                             (write '(funapp 3342 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3342 29))
                                (display "\n")
                                'posn)
                              x8927))))
                         (x8925 (input)))
                        (begin
                          (write '(funapp 3344 21))
                          (display "\n")
                          (x8931 x8926 x8925)))
                       (letrec*
                        ((x8940
                          (letrec*
                           ((xj7546
                             (begin
                               (write '(funapp 3348 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3348 37))
                                  (display "\n")
                                  'module))))
                            (xk7547
                             (begin
                               (write '(funapp 3348 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3348 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8941
                              (begin
                                (write '(funapp 3351 27))
                                (display "\n")
                                ((lambda (j7550 k7551 f7552)
                                   (letrec*
                                    ((g8942
                                      (lambda (g7548 g7549)
                                        (letrec*
                                         ((g8943
                                           (letrec*
                                            ((x8944
                                              (letrec*
                                               ((x8946
                                                 (begin
                                                   (write '(funapp 3360 50))
                                                   (display "\n")
                                                   (BSET/C j7550 k7551 g7548)))
                                                (x8945
                                                 (begin
                                                   (write '(funapp 3361 50))
                                                   (display "\n")
                                                   (COLOR/C
                                                    j7550
                                                    k7551
                                                    g7549))))
                                               (begin
                                                 (write '(funapp 3362 42))
                                                 (display "\n")
                                                 (f7552 x8946 x8945)))))
                                            (begin
                                              (write '(funapp 3363 39))
                                              (display "\n")
                                              (BSET/C j7550 k7551 x8944)))))
                                         g8943))))
                                    g8942))
                                 xj7546
                                 xk7547
                                 blocks-change-color))))
                            g8941)))
                         (x8939 (input))
                         (x8938 (input)))
                        (begin
                          (write '(funapp 3372 21))
                          (display "\n")
                          (x8940 x8939 x8938)))
                       (letrec*
                        ((x8949
                          (letrec*
                           ((xj7553
                             (begin
                               (write '(funapp 3376 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3376 37))
                                  (display "\n")
                                  'module))))
                            (xk7554
                             (begin
                               (write '(funapp 3376 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3376 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8950
                              (begin
                                (write '(funapp 3379 27))
                                (display "\n")
                                ((lambda (j7557 k7558 f7559)
                                   (letrec*
                                    ((g8951
                                      (lambda (g7555 g7556)
                                        (letrec*
                                         ((g8952
                                           (letrec*
                                            ((x8953
                                              (letrec*
                                               ((x8955
                                                 (begin
                                                   (write '(funapp 3388 50))
                                                   (display "\n")
                                                   (BSET/C j7557 k7558 g7555)))
                                                (x8954
                                                 (begin
                                                   (write '(funapp 3389 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7557
                                                    k7558
                                                    g7556))))
                                               (begin
                                                 (write '(funapp 3390 42))
                                                 (display "\n")
                                                 (f7559 x8955 x8954)))))
                                            (begin
                                              (write '(funapp 3391 39))
                                              (display "\n")
                                              (BSET/C j7557 k7558 x8953)))))
                                         g8952))))
                                    g8951))
                                 xj7553
                                 xk7554
                                 blocks-row))))
                            g8950)))
                         (x8948 (input))
                         (x8947 (input)))
                        (begin
                          (write '(funapp 3400 21))
                          (display "\n")
                          (x8949 x8948 x8947)))
                       (letrec*
                        ((x8958
                          (letrec*
                           ((xj7560
                             (begin
                               (write '(funapp 3404 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3404 37))
                                  (display "\n")
                                  'module))))
                            (xk7561
                             (begin
                               (write '(funapp 3404 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3404 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8959
                              (begin
                                (write '(funapp 3407 27))
                                (display "\n")
                                ((lambda (j7564 k7565 f7566)
                                   (letrec*
                                    ((g8960
                                      (lambda (g7562 g7563)
                                        (letrec*
                                         ((g8961
                                           (letrec*
                                            ((x8962
                                              (letrec*
                                               ((x8964
                                                 (begin
                                                   (write '(funapp 3416 50))
                                                   (display "\n")
                                                   (BSET/C j7564 k7565 g7562)))
                                                (x8963
                                                 (begin
                                                   (write '(funapp 3417 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7564
                                                    k7565
                                                    g7563))))
                                               (begin
                                                 (write '(funapp 3418 42))
                                                 (display "\n")
                                                 (f7566 x8964 x8963)))))
                                            (begin
                                              (write '(funapp 3419 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7564
                                               k7565
                                               x8962)))))
                                         g8961))))
                                    g8960))
                                 xj7560
                                 xk7561
                                 full-row?))))
                            g8959)))
                         (x8957 (input))
                         (x8956 (input)))
                        (begin
                          (write '(funapp 3428 21))
                          (display "\n")
                          (x8958 x8957 x8956)))
                       (letrec*
                        ((x8967
                          (letrec*
                           ((xj7567
                             (begin
                               (write '(funapp 3432 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3432 37))
                                  (display "\n")
                                  'module))))
                            (xk7568
                             (begin
                               (write '(funapp 3432 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3432 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8968
                              (begin
                                (write '(funapp 3435 27))
                                (display "\n")
                                ((lambda (j7571 k7572 f7573)
                                   (letrec*
                                    ((g8969
                                      (lambda (g7569 g7570)
                                        (letrec*
                                         ((g8970
                                           (letrec*
                                            ((x8971
                                              (letrec*
                                               ((x8973
                                                 (begin
                                                   (write '(funapp 3444 50))
                                                   (display "\n")
                                                   (BSET/C j7571 k7572 g7569)))
                                                (x8972
                                                 (begin
                                                   (write '(funapp 3445 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7571
                                                    k7572
                                                    g7570))))
                                               (begin
                                                 (write '(funapp 3446 42))
                                                 (display "\n")
                                                 (f7573 x8973 x8972)))))
                                            (begin
                                              (write '(funapp 3447 39))
                                              (display "\n")
                                              (BSET/C j7571 k7572 x8971)))))
                                         g8970))))
                                    g8969))
                                 xj7567
                                 xk7568
                                 blocks-union))))
                            g8968)))
                         (x8966 (input))
                         (x8965 (input)))
                        (begin
                          (write '(funapp 3456 21))
                          (display "\n")
                          (x8967 x8966 x8965)))
                       (letrec*
                        ((x8975
                          (letrec*
                           ((xj7574
                             (begin
                               (write '(funapp 3460 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3460 37))
                                  (display "\n")
                                  'module))))
                            (xk7575
                             (begin
                               (write '(funapp 3460 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3460 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8976
                              (begin
                                (write '(funapp 3463 27))
                                (display "\n")
                                ((lambda (j7577 k7578 f7579)
                                   (letrec*
                                    ((g8977
                                      (lambda (g7576)
                                        (letrec*
                                         ((g8978
                                           (letrec*
                                            ((x8979
                                              (letrec*
                                               ((x8980
                                                 (begin
                                                   (write '(funapp 3472 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7577
                                                    k7578
                                                    g7576))))
                                               (begin
                                                 (write '(funapp 3473 42))
                                                 (display "\n")
                                                 (f7579 x8980)))))
                                            (begin
                                              (write '(funapp 3474 39))
                                              (display "\n")
                                              (real?/c j7577 k7578 x8979)))))
                                         g8978))))
                                    g8977))
                                 xj7574
                                 xk7575
                                 blocks-max-x))))
                            g8976)))
                         (x8974 (input)))
                        (begin
                          (write '(funapp 3482 21))
                          (display "\n")
                          (x8975 x8974)))
                       (letrec*
                        ((x8982
                          (letrec*
                           ((xj7580
                             (begin
                               (write '(funapp 3486 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3486 37))
                                  (display "\n")
                                  'module))))
                            (xk7581
                             (begin
                               (write '(funapp 3486 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3486 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8983
                              (begin
                                (write '(funapp 3489 27))
                                (display "\n")
                                ((lambda (j7583 k7584 f7585)
                                   (letrec*
                                    ((g8984
                                      (lambda (g7582)
                                        (letrec*
                                         ((g8985
                                           (letrec*
                                            ((x8986
                                              (letrec*
                                               ((x8987
                                                 (begin
                                                   (write '(funapp 3498 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7583
                                                    k7584
                                                    g7582))))
                                               (begin
                                                 (write '(funapp 3499 42))
                                                 (display "\n")
                                                 (f7585 x8987)))))
                                            (begin
                                              (write '(funapp 3500 39))
                                              (display "\n")
                                              (real?/c j7583 k7584 x8986)))))
                                         g8985))))
                                    g8984))
                                 xj7580
                                 xk7581
                                 blocks-min-x))))
                            g8983)))
                         (x8981 (input)))
                        (begin
                          (write '(funapp 3508 21))
                          (display "\n")
                          (x8982 x8981)))
                       (letrec*
                        ((x8989
                          (letrec*
                           ((xj7586
                             (begin
                               (write '(funapp 3512 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3512 37))
                                  (display "\n")
                                  'module))))
                            (xk7587
                             (begin
                               (write '(funapp 3512 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3512 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8990
                              (begin
                                (write '(funapp 3515 27))
                                (display "\n")
                                ((lambda (j7589 k7590 f7591)
                                   (letrec*
                                    ((g8991
                                      (lambda (g7588)
                                        (letrec*
                                         ((g8992
                                           (letrec*
                                            ((x8993
                                              (letrec*
                                               ((x8994
                                                 (begin
                                                   (write '(funapp 3524 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7589
                                                    k7590
                                                    g7588))))
                                               (begin
                                                 (write '(funapp 3525 42))
                                                 (display "\n")
                                                 (f7591 x8994)))))
                                            (begin
                                              (write '(funapp 3526 39))
                                              (display "\n")
                                              (real?/c j7589 k7590 x8993)))))
                                         g8992))))
                                    g8991))
                                 xj7586
                                 xk7587
                                 blocks-max-y))))
                            g8990)))
                         (x8988 (input)))
                        (begin
                          (write '(funapp 3534 21))
                          (display "\n")
                          (x8989 x8988)))
                       (letrec*
                        ((x8996
                          (letrec*
                           ((xj7592
                             (begin
                               (write '(funapp 3538 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3538 37))
                                  (display "\n")
                                  'module))))
                            (xk7593
                             (begin
                               (write '(funapp 3538 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3538 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8997
                              (begin
                                (write '(funapp 3541 27))
                                (display "\n")
                                ((lambda (j7595 k7596 f7597)
                                   (letrec*
                                    ((g8998
                                      (lambda (g7594)
                                        (letrec*
                                         ((g8999
                                           (letrec*
                                            ((x9000
                                              (letrec*
                                               ((x9001
                                                 (begin
                                                   (write '(funapp 3550 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7595
                                                    k7596
                                                    g7594))))
                                               (begin
                                                 (write '(funapp 3551 42))
                                                 (display "\n")
                                                 (f7597 x9001)))))
                                            (begin
                                              (write '(funapp 3552 39))
                                              (display "\n")
                                              (BSET/C j7595 k7596 x9000)))))
                                         g8999))))
                                    g8998))
                                 xj7592
                                 xk7593
                                 eliminate-full-rows))))
                            g8997)))
                         (x8995 (input)))
                        (begin
                          (write '(funapp 3560 21))
                          (display "\n")
                          (x8996 x8995)))
                       (letrec*
                        ((x9013
                          (letrec*
                           ((xj7598
                             (begin
                               (write '(funapp 3564 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3564 37))
                                  (display "\n")
                                  'module))))
                            (xk7599
                             (begin
                               (write '(funapp 3564 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3564 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9014
                              (begin
                                (write '(funapp 3567 27))
                                (display "\n")
                                ((lambda (j7603 k7604 f7605)
                                   (letrec*
                                    ((g9015
                                      (lambda (g7600 g7601 g7602)
                                        (letrec*
                                         ((g9016
                                           (letrec*
                                            ((x9017
                                              (letrec*
                                               ((x9020
                                                 (begin
                                                   (write '(funapp 3577 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7603
                                                    k7604
                                                    g7600)))
                                                (x9019
                                                 (begin
                                                   (write '(funapp 3579 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7603
                                                    k7604
                                                    g7601)))
                                                (x9018
                                                 (begin
                                                   (write '(funapp 3580 50))
                                                   (display "\n")
                                                   (TETRA/C
                                                    j7603
                                                    k7604
                                                    g7602))))
                                               (begin
                                                 (write '(funapp 3581 42))
                                                 (display "\n")
                                                 (f7605 x9020 x9019 x9018)))))
                                            (begin
                                              (write '(funapp 3582 39))
                                              (display "\n")
                                              (TETRA/C j7603 k7604 x9017)))))
                                         g9016))))
                                    g9015))
                                 xj7598
                                 xk7599
                                 tetra-move))))
                            g9014)))
                         (x9012 (input))
                         (x9011 (input))
                         (x9002
                          (letrec*
                           ((x9003
                             (letrec*
                              ((x9006
                                (letrec*
                                 ((x9007
                                   (letrec*
                                    ((x9010 (input))
                                     (x9008
                                      (letrec*
                                       ((x9009 (input)))
                                       (begin
                                         (write '(funapp 3603 36))
                                         (display "\n")
                                         (cons
                                          x9009
                                          (begin
                                            (write '(funapp 3603 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3604 33))
                                      (display "\n")
                                      (cons x9010 x9008)))))
                                 (begin
                                   (write '(funapp 3605 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3605 35))
                                      (display "\n")
                                      'posn)
                                    x9007))))
                               (x9004
                                (letrec*
                                 ((x9005 (input)))
                                 (begin
                                   (write '(funapp 3607 56))
                                   (display "\n")
                                   (cons
                                    x9005
                                    (begin
                                      (write '(funapp 3607 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3608 27))
                                (display "\n")
                                (cons x9006 x9004)))))
                           (begin
                             (write '(funapp 3609 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3609 29))
                                (display "\n")
                                'tetra)
                              x9003)))))
                        (begin
                          (write '(funapp 3610 21))
                          (display "\n")
                          (x9013 x9012 x9011 x9002)))
                       (letrec*
                        ((x9030
                          (letrec*
                           ((xj7606
                             (begin
                               (write '(funapp 3614 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3614 37))
                                  (display "\n")
                                  'module))))
                            (xk7607
                             (begin
                               (write '(funapp 3614 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3614 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9031
                              (begin
                                (write '(funapp 3617 27))
                                (display "\n")
                                ((lambda (j7609 k7610 f7611)
                                   (letrec*
                                    ((g9032
                                      (lambda (g7608)
                                        (letrec*
                                         ((g9033
                                           (letrec*
                                            ((x9034
                                              (letrec*
                                               ((x9035
                                                 (begin
                                                   (write '(funapp 3626 50))
                                                   (display "\n")
                                                   (TETRA/C
                                                    j7609
                                                    k7610
                                                    g7608))))
                                               (begin
                                                 (write '(funapp 3627 42))
                                                 (display "\n")
                                                 (f7611 x9035)))))
                                            (begin
                                              (write '(funapp 3628 39))
                                              (display "\n")
                                              (TETRA/C j7609 k7610 x9034)))))
                                         g9033))))
                                    g9032))
                                 xj7606
                                 xk7607
                                 tetra-rotate-ccw))))
                            g9031)))
                         (x9021
                          (letrec*
                           ((x9022
                             (letrec*
                              ((x9025
                                (letrec*
                                 ((x9026
                                   (letrec*
                                    ((x9029 (input))
                                     (x9027
                                      (letrec*
                                       ((x9028 (input)))
                                       (begin
                                         (write '(funapp 3647 36))
                                         (display "\n")
                                         (cons
                                          x9028
                                          (begin
                                            (write '(funapp 3647 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3648 33))
                                      (display "\n")
                                      (cons x9029 x9027)))))
                                 (begin
                                   (write '(funapp 3649 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3649 35))
                                      (display "\n")
                                      'posn)
                                    x9026))))
                               (x9023
                                (letrec*
                                 ((x9024 (input)))
                                 (begin
                                   (write '(funapp 3651 56))
                                   (display "\n")
                                   (cons
                                    x9024
                                    (begin
                                      (write '(funapp 3651 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3652 27))
                                (display "\n")
                                (cons x9025 x9023)))))
                           (begin
                             (write '(funapp 3653 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3653 29))
                                (display "\n")
                                'tetra)
                              x9022)))))
                        (begin
                          (write '(funapp 3654 21))
                          (display "\n")
                          (x9030 x9021)))
                       (letrec*
                        ((x9045
                          (letrec*
                           ((xj7612
                             (begin
                               (write '(funapp 3658 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3658 37))
                                  (display "\n")
                                  'module))))
                            (xk7613
                             (begin
                               (write '(funapp 3658 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3658 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9046
                              (begin
                                (write '(funapp 3661 27))
                                (display "\n")
                                ((lambda (j7615 k7616 f7617)
                                   (letrec*
                                    ((g9047
                                      (lambda (g7614)
                                        (letrec*
                                         ((g9048
                                           (letrec*
                                            ((x9049
                                              (letrec*
                                               ((x9050
                                                 (begin
                                                   (write '(funapp 3670 50))
                                                   (display "\n")
                                                   (TETRA/C
                                                    j7615
                                                    k7616
                                                    g7614))))
                                               (begin
                                                 (write '(funapp 3671 42))
                                                 (display "\n")
                                                 (f7617 x9050)))))
                                            (begin
                                              (write '(funapp 3672 39))
                                              (display "\n")
                                              (TETRA/C j7615 k7616 x9049)))))
                                         g9048))))
                                    g9047))
                                 xj7612
                                 xk7613
                                 tetra-rotate-cw))))
                            g9046)))
                         (x9036
                          (letrec*
                           ((x9037
                             (letrec*
                              ((x9040
                                (letrec*
                                 ((x9041
                                   (letrec*
                                    ((x9044 (input))
                                     (x9042
                                      (letrec*
                                       ((x9043 (input)))
                                       (begin
                                         (write '(funapp 3691 36))
                                         (display "\n")
                                         (cons
                                          x9043
                                          (begin
                                            (write '(funapp 3691 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3692 33))
                                      (display "\n")
                                      (cons x9044 x9042)))))
                                 (begin
                                   (write '(funapp 3693 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3693 35))
                                      (display "\n")
                                      'posn)
                                    x9041))))
                               (x9038
                                (letrec*
                                 ((x9039 (input)))
                                 (begin
                                   (write '(funapp 3695 56))
                                   (display "\n")
                                   (cons
                                    x9039
                                    (begin
                                      (write '(funapp 3695 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3696 27))
                                (display "\n")
                                (cons x9040 x9038)))))
                           (begin
                             (write '(funapp 3697 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3697 29))
                                (display "\n")
                                'tetra)
                              x9037)))))
                        (begin
                          (write '(funapp 3698 21))
                          (display "\n")
                          (x9045 x9036)))
                       (letrec*
                        ((x9061
                          (letrec*
                           ((xj7618
                             (begin
                               (write '(funapp 3702 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3702 37))
                                  (display "\n")
                                  'module))))
                            (xk7619
                             (begin
                               (write '(funapp 3702 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3702 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9062
                              (begin
                                (write '(funapp 3705 27))
                                (display "\n")
                                ((lambda (j7622 k7623 f7624)
                                   (letrec*
                                    ((g9063
                                      (lambda (g7620 g7621)
                                        (letrec*
                                         ((g9064
                                           (letrec*
                                            ((x9065
                                              (letrec*
                                               ((x9067
                                                 (begin
                                                   (write '(funapp 3714 50))
                                                   (display "\n")
                                                   (TETRA/C
                                                    j7622
                                                    k7623
                                                    g7620)))
                                                (x9066
                                                 (begin
                                                   (write '(funapp 3715 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7622
                                                    k7623
                                                    g7621))))
                                               (begin
                                                 (write '(funapp 3716 42))
                                                 (display "\n")
                                                 (f7624 x9067 x9066)))))
                                            (begin
                                              (write '(funapp 3717 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7622
                                               k7623
                                               x9065)))))
                                         g9064))))
                                    g9063))
                                 xj7618
                                 xk7619
                                 tetra-overlaps-blocks?))))
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
                                         (write '(funapp 3736 36))
                                         (display "\n")
                                         (cons
                                          x9059
                                          (begin
                                            (write '(funapp 3736 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3737 33))
                                      (display "\n")
                                      (cons x9060 x9058)))))
                                 (begin
                                   (write '(funapp 3738 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3738 35))
                                      (display "\n")
                                      'posn)
                                    x9057))))
                               (x9054
                                (letrec*
                                 ((x9055 (input)))
                                 (begin
                                   (write '(funapp 3740 56))
                                   (display "\n")
                                   (cons
                                    x9055
                                    (begin
                                      (write '(funapp 3740 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3741 27))
                                (display "\n")
                                (cons x9056 x9054)))))
                           (begin
                             (write '(funapp 3742 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3742 29))
                                (display "\n")
                                'tetra)
                              x9053))))
                         (x9051 (input)))
                        (begin
                          (write '(funapp 3744 21))
                          (display "\n")
                          (x9061 x9052 x9051)))
                       (letrec*
                        ((x9079
                          (letrec*
                           ((xj7625
                             (begin
                               (write '(funapp 3748 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3748 37))
                                  (display "\n")
                                  'module))))
                            (xk7626
                             (begin
                               (write '(funapp 3748 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3748 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9080
                              (begin
                                (write '(funapp 3751 27))
                                (display "\n")
                                ((lambda (j7638 k7639 f7640)
                                   (letrec*
                                    ((g9081
                                      (lambda (g7627
                                               g7628
                                               g7629
                                               g7630
                                               g7631
                                               g7632
                                               g7633
                                               g7634
                                               g7635
                                               g7636
                                               g7637)
                                        (letrec*
                                         ((g9082
                                           (letrec*
                                            ((x9083
                                              (letrec*
                                               ((x9094
                                                 (begin
                                                   (write '(funapp 3770 50))
                                                   (display "\n")
                                                   (COLOR/C
                                                    j7638
                                                    k7639
                                                    g7627)))
                                                (x9093
                                                 (begin
                                                   (write '(funapp 3771 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7638
                                                    k7639
                                                    g7628)))
                                                (x9092
                                                 (begin
                                                   (write '(funapp 3772 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7638
                                                    k7639
                                                    g7629)))
                                                (x9091
                                                 (begin
                                                   (write '(funapp 3774 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7638
                                                    k7639
                                                    g7630)))
                                                (x9090
                                                 (begin
                                                   (write '(funapp 3776 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7638
                                                    k7639
                                                    g7631)))
                                                (x9089
                                                 (begin
                                                   (write '(funapp 3778 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7638
                                                    k7639
                                                    g7632)))
                                                (x9088
                                                 (begin
                                                   (write '(funapp 3780 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7638
                                                    k7639
                                                    g7633)))
                                                (x9087
                                                 (begin
                                                   (write '(funapp 3782 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7638
                                                    k7639
                                                    g7634)))
                                                (x9086
                                                 (begin
                                                   (write '(funapp 3784 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7638
                                                    k7639
                                                    g7635)))
                                                (x9085
                                                 (begin
                                                   (write '(funapp 3786 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7638
                                                    k7639
                                                    g7636)))
                                                (x9084
                                                 (begin
                                                   (write '(funapp 3788 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7638
                                                    k7639
                                                    g7637))))
                                               (begin
                                                 (write '(funapp 3789 42))
                                                 (display "\n")
                                                 (f7640
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
                                                  x9084)))))
                                            (begin
                                              (write '(funapp 3801 39))
                                              (display "\n")
                                              (TETRA/C j7638 k7639 x9083)))))
                                         g9082))))
                                    g9081))
                                 xj7625
                                 xk7626
                                 build-tetra-blocks))))
                            g9080)))
                         (x9078 (input))
                         (x9077 (input))
                         (x9076 (input))
                         (x9075 (input))
                         (x9074 (input))
                         (x9073 (input))
                         (x9072 (input))
                         (x9071 (input))
                         (x9070 (input))
                         (x9069 (input))
                         (x9068 (input)))
                        (begin
                          (write '(funapp 3819 21))
                          (display "\n")
                          (x9079
                           x9078
                           x9077
                           x9076
                           x9075
                           x9074
                           x9073
                           x9072
                           x9071
                           x9070
                           x9069
                           x9068)))
                       (letrec*
                        ((x9105
                          (letrec*
                           ((xj7641
                             (begin
                               (write '(funapp 3834 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3834 37))
                                  (display "\n")
                                  'module))))
                            (xk7642
                             (begin
                               (write '(funapp 3834 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3834 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9106
                              (begin
                                (write '(funapp 3837 27))
                                (display "\n")
                                ((lambda (j7645 k7646 f7647)
                                   (letrec*
                                    ((g9107
                                      (lambda (g7643 g7644)
                                        (letrec*
                                         ((g9108
                                           (letrec*
                                            ((x9109
                                              (letrec*
                                               ((x9111
                                                 (begin
                                                   (write '(funapp 3846 50))
                                                   (display "\n")
                                                   (TETRA/C
                                                    j7645
                                                    k7646
                                                    g7643)))
                                                (x9110
                                                 (begin
                                                   (write '(funapp 3847 50))
                                                   (display "\n")
                                                   (COLOR/C
                                                    j7645
                                                    k7646
                                                    g7644))))
                                               (begin
                                                 (write '(funapp 3848 42))
                                                 (display "\n")
                                                 (f7647 x9111 x9110)))))
                                            (begin
                                              (write '(funapp 3849 39))
                                              (display "\n")
                                              (TETRA/C j7645 k7646 x9109)))))
                                         g9108))))
                                    g9107))
                                 xj7641
                                 xk7642
                                 tetra-change-color))))
                            g9106)))
                         (x9096
                          (letrec*
                           ((x9097
                             (letrec*
                              ((x9100
                                (letrec*
                                 ((x9101
                                   (letrec*
                                    ((x9104 (input))
                                     (x9102
                                      (letrec*
                                       ((x9103 (input)))
                                       (begin
                                         (write '(funapp 3868 36))
                                         (display "\n")
                                         (cons
                                          x9103
                                          (begin
                                            (write '(funapp 3868 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3869 33))
                                      (display "\n")
                                      (cons x9104 x9102)))))
                                 (begin
                                   (write '(funapp 3870 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3870 35))
                                      (display "\n")
                                      'posn)
                                    x9101))))
                               (x9098
                                (letrec*
                                 ((x9099 (input)))
                                 (begin
                                   (write '(funapp 3872 56))
                                   (display "\n")
                                   (cons
                                    x9099
                                    (begin
                                      (write '(funapp 3872 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3873 27))
                                (display "\n")
                                (cons x9100 x9098)))))
                           (begin
                             (write '(funapp 3874 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3874 29))
                                (display "\n")
                                'tetra)
                              x9097))))
                         (x9095 (input)))
                        (begin
                          (write '(funapp 3876 21))
                          (display "\n")
                          (x9105 x9096 x9095)))
                       (letrec*
                        ((x9126
                          (letrec*
                           ((xj7648
                             (begin
                               (write '(funapp 3880 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3880 37))
                                  (display "\n")
                                  'module))))
                            (xk7649
                             (begin
                               (write '(funapp 3880 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3880 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9127
                              (begin
                                (write '(funapp 3883 27))
                                (display "\n")
                                ((lambda (j7652 k7653 f7654)
                                   (letrec*
                                    ((g9128
                                      (lambda (g7650 g7651)
                                        (letrec*
                                         ((g9129
                                           (letrec*
                                            ((x9130
                                              (letrec*
                                               ((x9132
                                                 (begin
                                                   (write '(funapp 3892 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7652
                                                    k7653
                                                    g7650)))
                                                (x9131
                                                 (begin
                                                   (write '(funapp 3894 44))
                                                   (display "\n")
                                                   (string?/c
                                                    j7652
                                                    k7653
                                                    g7651))))
                                               (begin
                                                 (write '(funapp 3895 42))
                                                 (display "\n")
                                                 (f7654 x9132 x9131)))))
                                            (begin
                                              (write '(funapp 3896 39))
                                              (display "\n")
                                              (WORLD/C j7652 k7653 x9130)))))
                                         g9129))))
                                    g9128))
                                 xj7648
                                 xk7649
                                 world-key-move))))
                            g9127)))
                         (x9113
                          (letrec*
                           ((x9114
                             (letrec*
                              ((x9117
                                (letrec*
                                 ((x9118
                                   (letrec*
                                    ((x9121
                                      (letrec*
                                       ((x9122
                                         (letrec*
                                          ((x9125 (input))
                                           (x9123
                                            (letrec*
                                             ((x9124 (input)))
                                             (begin
                                               (write '(funapp 3919 42))
                                               (display "\n")
                                               (cons
                                                x9124
                                                (begin
                                                  (write '(funapp 3919 53))
                                                  (display "\n")
                                                  '()))))))
                                          (begin
                                            (write '(funapp 3920 39))
                                            (display "\n")
                                            (cons x9125 x9123)))))
                                       (begin
                                         (write '(funapp 3921 36))
                                         (display "\n")
                                         (cons
                                          (begin
                                            (write '(funapp 3921 41))
                                            (display "\n")
                                            'posn)
                                          x9122))))
                                     (x9119
                                      (letrec*
                                       ((x9120 (input)))
                                       (begin
                                         (write '(funapp 3925 36))
                                         (display "\n")
                                         (cons
                                          x9120
                                          (begin
                                            (write '(funapp 3925 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3926 33))
                                      (display "\n")
                                      (cons x9121 x9119)))))
                                 (begin
                                   (write '(funapp 3927 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3927 35))
                                      (display "\n")
                                      'tetra)
                                    x9118))))
                               (x9115
                                (letrec*
                                 ((x9116 (input)))
                                 (begin
                                   (write '(funapp 3929 56))
                                   (display "\n")
                                   (cons
                                    x9116
                                    (begin
                                      (write '(funapp 3929 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3930 27))
                                (display "\n")
                                (cons x9117 x9115)))))
                           (begin
                             (write '(funapp 3931 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3931 29))
                                (display "\n")
                                'world)
                              x9114))))
                         (x9112 (input)))
                        (begin
                          (write '(funapp 3933 21))
                          (display "\n")
                          (x9126 x9113 x9112)))
                       (letrec*
                        ((x9147
                          (letrec*
                           ((xj7655
                             (begin
                               (write '(funapp 3937 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3937 37))
                                  (display "\n")
                                  'module))))
                            (xk7656
                             (begin
                               (write '(funapp 3937 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3937 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9148
                              (begin
                                (write '(funapp 3940 27))
                                (display "\n")
                                ((lambda (j7659 k7660 f7661)
                                   (letrec*
                                    ((g9149
                                      (lambda (g7657 g7658)
                                        (letrec*
                                         ((g9150
                                           (letrec*
                                            ((x9151
                                              (letrec*
                                               ((x9155
                                                 (begin
                                                   (write '(funapp 3949 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7659
                                                    k7660
                                                    g7657)))
                                                (x9152
                                                 (letrec*
                                                  ((x9153
                                                    (letrec*
                                                     ((x9154
                                                       (begin
                                                         (write
                                                          '(funapp 3954 56))
                                                         (display "\n")
                                                         (listof TETRA/C))))
                                                     (begin
                                                       (write
                                                        '(funapp 3955 48))
                                                       (display "\n")
                                                       (and/c
                                                        cons?/c
                                                        x9154)))))
                                                  (begin
                                                    (write '(funapp 3956 45))
                                                    (display "\n")
                                                    (x9153
                                                     j7659
                                                     k7660
                                                     g7658)))))
                                               (begin
                                                 (write '(funapp 3957 42))
                                                 (display "\n")
                                                 (f7661 x9155 x9152)))))
                                            (begin
                                              (write '(funapp 3958 39))
                                              (display "\n")
                                              (WORLD/C j7659 k7660 x9151)))))
                                         g9150))))
                                    g9149))
                                 xj7655
                                 xk7656
                                 next-world))))
                            g9148)))
                         (x9134
                          (letrec*
                           ((x9135
                             (letrec*
                              ((x9138
                                (letrec*
                                 ((x9139
                                   (letrec*
                                    ((x9142
                                      (letrec*
                                       ((x9143
                                         (letrec*
                                          ((x9146 (input))
                                           (x9144
                                            (letrec*
                                             ((x9145 (input)))
                                             (begin
                                               (write '(funapp 3981 42))
                                               (display "\n")
                                               (cons
                                                x9145
                                                (begin
                                                  (write '(funapp 3981 53))
                                                  (display "\n")
                                                  '()))))))
                                          (begin
                                            (write '(funapp 3982 39))
                                            (display "\n")
                                            (cons x9146 x9144)))))
                                       (begin
                                         (write '(funapp 3983 36))
                                         (display "\n")
                                         (cons
                                          (begin
                                            (write '(funapp 3983 41))
                                            (display "\n")
                                            'posn)
                                          x9143))))
                                     (x9140
                                      (letrec*
                                       ((x9141 (input)))
                                       (begin
                                         (write '(funapp 3987 36))
                                         (display "\n")
                                         (cons
                                          x9141
                                          (begin
                                            (write '(funapp 3987 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3988 33))
                                      (display "\n")
                                      (cons x9142 x9140)))))
                                 (begin
                                   (write '(funapp 3989 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3989 35))
                                      (display "\n")
                                      'tetra)
                                    x9139))))
                               (x9136
                                (letrec*
                                 ((x9137 (input)))
                                 (begin
                                   (write '(funapp 3991 56))
                                   (display "\n")
                                   (cons
                                    x9137
                                    (begin
                                      (write '(funapp 3991 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3992 27))
                                (display "\n")
                                (cons x9138 x9136)))))
                           (begin
                             (write '(funapp 3993 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3993 29))
                                (display "\n")
                                'world)
                              x9135))))
                         (x9133 (input)))
                        (begin
                          (write '(funapp 3995 21))
                          (display "\n")
                          (x9147 x9134 x9133)))
                       (letrec*
                        ((x9169
                          (letrec*
                           ((xj7662
                             (begin
                               (write '(funapp 3999 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3999 37))
                                  (display "\n")
                                  'module))))
                            (xk7663
                             (begin
                               (write '(funapp 3999 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3999 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9170
                              (begin
                                (write '(funapp 4002 27))
                                (display "\n")
                                ((lambda (j7665 k7666 f7667)
                                   (letrec*
                                    ((g9171
                                      (lambda (g7664)
                                        (letrec*
                                         ((g9172
                                           (letrec*
                                            ((x9173
                                              (letrec*
                                               ((x9174
                                                 (begin
                                                   (write '(funapp 4011 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7665
                                                    k7666
                                                    g7664))))
                                               (begin
                                                 (write '(funapp 4012 42))
                                                 (display "\n")
                                                 (f7667 x9174)))))
                                            (begin
                                              (write '(funapp 4013 39))
                                              (display "\n")
                                              (BSET/C j7665 k7666 x9173)))))
                                         g9172))))
                                    g9171))
                                 xj7662
                                 xk7663
                                 ghost-blocks))))
                            g9170)))
                         (x9156
                          (letrec*
                           ((x9157
                             (letrec*
                              ((x9160
                                (letrec*
                                 ((x9161
                                   (letrec*
                                    ((x9164
                                      (letrec*
                                       ((x9165
                                         (letrec*
                                          ((x9168 (input))
                                           (x9166
                                            (letrec*
                                             ((x9167 (input)))
                                             (begin
                                               (write '(funapp 4036 42))
                                               (display "\n")
                                               (cons
                                                x9167
                                                (begin
                                                  (write '(funapp 4036 53))
                                                  (display "\n")
                                                  '()))))))
                                          (begin
                                            (write '(funapp 4037 39))
                                            (display "\n")
                                            (cons x9168 x9166)))))
                                       (begin
                                         (write '(funapp 4038 36))
                                         (display "\n")
                                         (cons
                                          (begin
                                            (write '(funapp 4038 41))
                                            (display "\n")
                                            'posn)
                                          x9165))))
                                     (x9162
                                      (letrec*
                                       ((x9163 (input)))
                                       (begin
                                         (write '(funapp 4042 36))
                                         (display "\n")
                                         (cons
                                          x9163
                                          (begin
                                            (write '(funapp 4042 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 4043 33))
                                      (display "\n")
                                      (cons x9164 x9162)))))
                                 (begin
                                   (write '(funapp 4044 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 4044 35))
                                      (display "\n")
                                      'tetra)
                                    x9161))))
                               (x9158
                                (letrec*
                                 ((x9159 (input)))
                                 (begin
                                   (write '(funapp 4046 56))
                                   (display "\n")
                                   (cons
                                    x9159
                                    (begin
                                      (write '(funapp 4046 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 4047 27))
                                (display "\n")
                                (cons x9160 x9158)))))
                           (begin
                             (write '(funapp 4048 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 4048 29))
                                (display "\n")
                                'world)
                              x9157)))))
                        (begin
                          (write '(funapp 4049 21))
                          (display "\n")
                          (x9169 x9156)))
                       (letrec*
                        ((x9176
                          (letrec*
                           ((xj7668
                             (begin
                               (write '(funapp 4053 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4053 37))
                                  (display "\n")
                                  'module))))
                            (xk7669
                             (begin
                               (write '(funapp 4053 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4053 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9177
                              (begin
                                (write '(funapp 4056 27))
                                (display "\n")
                                ((lambda (j7671 k7672 f7673)
                                   (letrec*
                                    ((g9178
                                      (lambda (g7670)
                                        (letrec*
                                         ((g9179
                                           (letrec*
                                            ((x9180
                                              (letrec*
                                               ((x9181
                                                 (begin
                                                   (write '(funapp 4065 50))
                                                   (display "\n")
                                                   (any/c j7671 k7672 g7670))))
                                               (begin
                                                 (write '(funapp 4066 42))
                                                 (display "\n")
                                                 (f7673 x9181)))))
                                            (begin
                                              (write '(funapp 4067 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7671
                                               k7672
                                               x9180)))))
                                         g9179))))
                                    g9178))
                                 xj7668
                                 xk7669
                                 image?))))
                            g9177)))
                         (x9175 (input)))
                        (begin
                          (write '(funapp 4075 21))
                          (display "\n")
                          (x9176 x9175)))
                       (letrec*
                        ((x9184
                          (letrec*
                           ((xj7674
                             (begin
                               (write '(funapp 4079 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4079 37))
                                  (display "\n")
                                  'module))))
                            (xk7675
                             (begin
                               (write '(funapp 4079 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4079 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9185
                              (begin
                                (write '(funapp 4082 27))
                                (display "\n")
                                ((lambda (j7678 k7679 f7680)
                                   (letrec*
                                    ((g9186
                                      (lambda (g7676 g7677)
                                        (letrec*
                                         ((g9187
                                           (letrec*
                                            ((x9188
                                              (letrec*
                                               ((x9190
                                                 (begin
                                                   (write '(funapp 4091 50))
                                                   (display "\n")
                                                   (image? j7678 k7679 g7676)))
                                                (x9189
                                                 (begin
                                                   (write '(funapp 4092 50))
                                                   (display "\n")
                                                   (image?
                                                    j7678
                                                    k7679
                                                    g7677))))
                                               (begin
                                                 (write '(funapp 4093 42))
                                                 (display "\n")
                                                 (f7680 x9190 x9189)))))
                                            (begin
                                              (write '(funapp 4094 39))
                                              (display "\n")
                                              (image? j7678 k7679 x9188)))))
                                         g9187))))
                                    g9186))
                                 xj7674
                                 xk7675
                                 overlay))))
                            g9185)))
                         (x9183 (input))
                         (x9182 (input)))
                        (begin
                          (write '(funapp 4103 21))
                          (display "\n")
                          (x9184 x9183 x9182)))
                       (letrec*
                        ((x9194
                          (letrec*
                           ((xj7681
                             (begin
                               (write '(funapp 4107 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4107 37))
                                  (display "\n")
                                  'module))))
                            (xk7682
                             (begin
                               (write '(funapp 4107 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4107 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9195
                              (begin
                                (write '(funapp 4110 27))
                                (display "\n")
                                ((lambda (j7686 k7687 f7688)
                                   (letrec*
                                    ((g9196
                                      (lambda (g7683 g7684 g7685)
                                        (letrec*
                                         ((g9197
                                           (letrec*
                                            ((x9198
                                              (letrec*
                                               ((x9201
                                                 (begin
                                                   (write '(funapp 4119 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7686
                                                    k7687
                                                    g7683)))
                                                (x9200
                                                 (begin
                                                   (write '(funapp 4120 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7686
                                                    k7687
                                                    g7684)))
                                                (x9199
                                                 (begin
                                                   (write '(funapp 4122 44))
                                                   (display "\n")
                                                   (string?/c
                                                    j7686
                                                    k7687
                                                    g7685))))
                                               (begin
                                                 (write '(funapp 4123 42))
                                                 (display "\n")
                                                 (f7688 x9201 x9200 x9199)))))
                                            (begin
                                              (write '(funapp 4124 39))
                                              (display "\n")
                                              (image? j7686 k7687 x9198)))))
                                         g9197))))
                                    g9196))
                                 xj7681
                                 xk7682
                                 circle))))
                            g9195)))
                         (x9193 (input))
                         (x9192 (input))
                         (x9191 (input)))
                        (begin
                          (write '(funapp 4134 21))
                          (display "\n")
                          (x9194 x9193 x9192 x9191)))
                       (letrec*
                        ((x9206
                          (letrec*
                           ((xj7689
                             (begin
                               (write '(funapp 4138 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4138 37))
                                  (display "\n")
                                  'module))))
                            (xk7690
                             (begin
                               (write '(funapp 4138 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4138 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9207
                              (begin
                                (write '(funapp 4141 27))
                                (display "\n")
                                ((lambda (j7695 k7696 f7697)
                                   (letrec*
                                    ((g9208
                                      (lambda (g7691 g7692 g7693 g7694)
                                        (letrec*
                                         ((g9209
                                           (letrec*
                                            ((x9210
                                              (letrec*
                                               ((x9214
                                                 (begin
                                                   (write '(funapp 4150 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7695
                                                    k7696
                                                    g7691)))
                                                (x9213
                                                 (begin
                                                   (write '(funapp 4151 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7695
                                                    k7696
                                                    g7692)))
                                                (x9212
                                                 (begin
                                                   (write '(funapp 4152 50))
                                                   (display "\n")
                                                   (COLOR/C
                                                    j7695
                                                    k7696
                                                    g7693)))
                                                (x9211
                                                 (begin
                                                   (write '(funapp 4153 50))
                                                   (display "\n")
                                                   (COLOR/C
                                                    j7695
                                                    k7696
                                                    g7694))))
                                               (begin
                                                 (write '(funapp 4154 42))
                                                 (display "\n")
                                                 (f7697
                                                  x9214
                                                  x9213
                                                  x9212
                                                  x9211)))))
                                            (begin
                                              (write '(funapp 4155 39))
                                              (display "\n")
                                              (image? j7695 k7696 x9210)))))
                                         g9209))))
                                    g9208))
                                 xj7689
                                 xk7690
                                 rectangle))))
                            g9207)))
                         (x9205 (input))
                         (x9204 (input))
                         (x9203 (input))
                         (x9202 (input)))
                        (begin
                          (write '(funapp 4166 21))
                          (display "\n")
                          (x9206 x9205 x9204 x9203 x9202)))
                       (letrec*
                        ((x9219
                          (letrec*
                           ((xj7698
                             (begin
                               (write '(funapp 4170 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4170 37))
                                  (display "\n")
                                  'module))))
                            (xk7699
                             (begin
                               (write '(funapp 4170 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4170 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9220
                              (begin
                                (write '(funapp 4173 27))
                                (display "\n")
                                ((lambda (j7704 k7705 f7706)
                                   (letrec*
                                    ((g9221
                                      (lambda (g7700 g7701 g7702 g7703)
                                        (letrec*
                                         ((g9222
                                           (letrec*
                                            ((x9223
                                              (letrec*
                                               ((x9227
                                                 (begin
                                                   (write '(funapp 4182 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7704
                                                    k7705
                                                    g7700)))
                                                (x9226
                                                 (begin
                                                   (write '(funapp 4183 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7704
                                                    k7705
                                                    g7701)))
                                                (x9225
                                                 (begin
                                                   (write '(funapp 4184 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7704
                                                    k7705
                                                    g7702)))
                                                (x9224
                                                 (begin
                                                   (write '(funapp 4185 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7704
                                                    k7705
                                                    g7703))))
                                               (begin
                                                 (write '(funapp 4186 42))
                                                 (display "\n")
                                                 (f7706
                                                  x9227
                                                  x9226
                                                  x9225
                                                  x9224)))))
                                            (begin
                                              (write '(funapp 4187 39))
                                              (display "\n")
                                              (image/c j7704 k7705 x9223)))))
                                         g9222))))
                                    g9221))
                                 xj7698
                                 xk7699
                                 place-image))))
                            g9220)))
                         (x9218
                          (begin
                            (write '(funapp 4194 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 4194 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 4194 41))
                               (display "\n")
                               '()))))
                         (x9217 (input))
                         (x9216 (input))
                         (x9215
                          (begin
                            (write '(funapp 4197 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 4197 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 4197 41))
                               (display "\n")
                               '())))))
                        (begin
                          (write '(funapp 4198 21))
                          (display "\n")
                          (x9219 x9218 x9217 x9216 x9215)))
                       (letrec*
                        ((x9230
                          (letrec*
                           ((xj7707
                             (begin
                               (write '(funapp 4202 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4202 37))
                                  (display "\n")
                                  'module))))
                            (xk7708
                             (begin
                               (write '(funapp 4202 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4202 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9231
                              (begin
                                (write '(funapp 4205 27))
                                (display "\n")
                                ((lambda (j7711 k7712 f7713)
                                   (letrec*
                                    ((g9232
                                      (lambda (g7709 g7710)
                                        (letrec*
                                         ((g9233
                                           (letrec*
                                            ((x9234
                                              (letrec*
                                               ((x9236
                                                 (begin
                                                   (write '(funapp 4214 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7711
                                                    k7712
                                                    g7709)))
                                                (x9235
                                                 (begin
                                                   (write '(funapp 4215 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7711
                                                    k7712
                                                    g7710))))
                                               (begin
                                                 (write '(funapp 4216 42))
                                                 (display "\n")
                                                 (f7713 x9236 x9235)))))
                                            (begin
                                              (write '(funapp 4217 39))
                                              (display "\n")
                                              (image? j7711 k7712 x9234)))))
                                         g9233))))
                                    g9232))
                                 xj7707
                                 xk7708
                                 empty-scene))))
                            g9231)))
                         (x9229 (input))
                         (x9228 (input)))
                        (begin
                          (write '(funapp 4226 21))
                          (display "\n")
                          (x9230 x9229 x9228)))
                       (letrec*
                        ((x9238
                          (letrec*
                           ((xj7714
                             (begin
                               (write '(funapp 4230 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4230 37))
                                  (display "\n")
                                  'module))))
                            (xk7715
                             (begin
                               (write '(funapp 4230 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4230 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9239
                              (begin
                                (write '(funapp 4233 27))
                                (display "\n")
                                ((lambda (j7717 k7718 f7719)
                                   (letrec*
                                    ((g9240
                                      (lambda (g7716)
                                        (letrec*
                                         ((g9241
                                           (letrec*
                                            ((x9242
                                              (letrec*
                                               ((x9243
                                                 (letrec*
                                                  ((x9244
                                                    (letrec*
                                                     ((x9245
                                                       (begin
                                                         (write
                                                          '(funapp 4246 56))
                                                         (display "\n")
                                                         (listof TETRA/C))))
                                                     (begin
                                                       (write
                                                        '(funapp 4247 48))
                                                       (display "\n")
                                                       (and/c
                                                        cons?/c
                                                        x9245)))))
                                                  (begin
                                                    (write '(funapp 4248 45))
                                                    (display "\n")
                                                    (x9244
                                                     j7717
                                                     k7718
                                                     g7716)))))
                                               (begin
                                                 (write '(funapp 4249 42))
                                                 (display "\n")
                                                 (f7719 x9243)))))
                                            (begin
                                              (write '(funapp 4250 39))
                                              (display "\n")
                                              (TETRA/C j7717 k7718 x9242)))))
                                         g9241))))
                                    g9240))
                                 xj7714
                                 xk7715
                                 list-pick-random))))
                            g9239)))
                         (x9237 (input)))
                        (begin
                          (write '(funapp 4258 21))
                          (display "\n")
                          (x9238 x9237)))
                       (letrec*
                        ((xj7720
                          (begin
                            (write '(funapp 4260 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 4260 34))
                               (display "\n")
                               'module))))
                         (xk7721
                          (begin
                            (write '(funapp 4260 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 4260 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g9246
                           (begin
                             (write '(funapp 4261 38))
                             (display "\n")
                             (integer?/c xj7720 xk7721 neg-1))))
                         g9246))
                       (letrec*
                        ((x9260
                          (letrec*
                           ((xj7722
                             (begin
                               (write '(funapp 4265 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4265 37))
                                  (display "\n")
                                  'module))))
                            (xk7723
                             (begin
                               (write '(funapp 4265 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4265 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9261
                              (begin
                                (write '(funapp 4268 27))
                                (display "\n")
                                ((lambda (j7725 k7726 f7727)
                                   (letrec*
                                    ((g9262
                                      (lambda (g7724)
                                        (letrec*
                                         ((g9263
                                           (letrec*
                                            ((x9264
                                              (letrec*
                                               ((x9265
                                                 (begin
                                                   (write '(funapp 4277 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7725
                                                    k7726
                                                    g7724))))
                                               (begin
                                                 (write '(funapp 4278 42))
                                                 (display "\n")
                                                 (f7727 x9265)))))
                                            (begin
                                              (write '(funapp 4279 39))
                                              (display "\n")
                                              (image/c j7725 k7726 x9264)))))
                                         g9263))))
                                    g9262))
                                 xj7722
                                 xk7723
                                 world->image))))
                            g9261)))
                         (x9247
                          (letrec*
                           ((x9248
                             (letrec*
                              ((x9251
                                (letrec*
                                 ((x9252
                                   (letrec*
                                    ((x9255
                                      (letrec*
                                       ((x9256
                                         (letrec*
                                          ((x9259 (input))
                                           (x9257
                                            (letrec*
                                             ((x9258 (input)))
                                             (begin
                                               (write '(funapp 4302 42))
                                               (display "\n")
                                               (cons
                                                x9258
                                                (begin
                                                  (write '(funapp 4302 53))
                                                  (display "\n")
                                                  '()))))))
                                          (begin
                                            (write '(funapp 4303 39))
                                            (display "\n")
                                            (cons x9259 x9257)))))
                                       (begin
                                         (write '(funapp 4304 36))
                                         (display "\n")
                                         (cons
                                          (begin
                                            (write '(funapp 4304 41))
                                            (display "\n")
                                            'posn)
                                          x9256))))
                                     (x9253
                                      (letrec*
                                       ((x9254 (input)))
                                       (begin
                                         (write '(funapp 4308 36))
                                         (display "\n")
                                         (cons
                                          x9254
                                          (begin
                                            (write '(funapp 4308 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 4309 33))
                                      (display "\n")
                                      (cons x9255 x9253)))))
                                 (begin
                                   (write '(funapp 4310 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 4310 35))
                                      (display "\n")
                                      'tetra)
                                    x9252))))
                               (x9249
                                (letrec*
                                 ((x9250 (input)))
                                 (begin
                                   (write '(funapp 4312 56))
                                   (display "\n")
                                   (cons
                                    x9250
                                    (begin
                                      (write '(funapp 4312 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 4313 27))
                                (display "\n")
                                (cons x9251 x9249)))))
                           (begin
                             (write '(funapp 4314 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 4314 29))
                                (display "\n")
                                'world)
                              x9248)))))
                        (begin
                          (write '(funapp 4315 21))
                          (display "\n")
                          (x9260 x9247)))
                       (letrec*
                        ((x9267
                          (letrec*
                           ((xj7728
                             (begin
                               (write '(funapp 4319 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4319 37))
                                  (display "\n")
                                  'module))))
                            (xk7729
                             (begin
                               (write '(funapp 4319 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4319 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9268
                              (begin
                                (write '(funapp 4322 27))
                                (display "\n")
                                ((lambda (j7731 k7732 f7733)
                                   (letrec*
                                    ((g9269
                                      (lambda (g7730)
                                        (letrec*
                                         ((g9270
                                           (letrec*
                                            ((x9271
                                              (letrec*
                                               ((x9272
                                                 (begin
                                                   (write '(funapp 4331 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7731
                                                    k7732
                                                    g7730))))
                                               (begin
                                                 (write '(funapp 4332 42))
                                                 (display "\n")
                                                 (f7733 x9272)))))
                                            (begin
                                              (write '(funapp 4333 39))
                                              (display "\n")
                                              (image/c j7731 k7732 x9271)))))
                                         g9270))))
                                    g9269))
                                 xj7728
                                 xk7729
                                 blocks->image))))
                            g9268)))
                         (x9266 (input)))
                        (begin
                          (write '(funapp 4341 21))
                          (display "\n")
                          (x9267 x9266)))
                       (letrec*
                        ((x9280
                          (letrec*
                           ((xj7734
                             (begin
                               (write '(funapp 4345 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4345 37))
                                  (display "\n")
                                  'module))))
                            (xk7735
                             (begin
                               (write '(funapp 4345 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4345 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9281
                              (begin
                                (write '(funapp 4348 27))
                                (display "\n")
                                ((lambda (j7737 k7738 f7739)
                                   (letrec*
                                    ((g9282
                                      (lambda (g7736)
                                        (letrec*
                                         ((g9283
                                           (letrec*
                                            ((x9284
                                              (letrec*
                                               ((x9285
                                                 (begin
                                                   (write '(funapp 4357 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7737
                                                    k7738
                                                    g7736))))
                                               (begin
                                                 (write '(funapp 4358 42))
                                                 (display "\n")
                                                 (f7739 x9285)))))
                                            (begin
                                              (write '(funapp 4359 39))
                                              (display "\n")
                                              (image/c j7737 k7738 x9284)))))
                                         g9283))))
                                    g9282))
                                 xj7734
                                 xk7735
                                 block->image))))
                            g9281)))
                         (x9273
                          (letrec*
                           ((x9274
                             (letrec*
                              ((x9279 (input))
                               (x9275
                                (letrec*
                                 ((x9278 (input))
                                  (x9276
                                   (letrec*
                                    ((x9277 (input)))
                                    (begin
                                      (write '(funapp 4375 59))
                                      (display "\n")
                                      (cons
                                       x9277
                                       (begin
                                         (write '(funapp 4375 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 4376 30))
                                   (display "\n")
                                   (cons x9278 x9276)))))
                              (begin
                                (write '(funapp 4377 27))
                                (display "\n")
                                (cons x9279 x9275)))))
                           (begin
                             (write '(funapp 4378 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 4378 29))
                                (display "\n")
                                'block)
                              x9274)))))
                        (begin
                          (write '(funapp 4379 21))
                          (display "\n")
                          (x9280 x9273)))
                       (letrec*
                        ((x9294
                          (letrec*
                           ((xj7740
                             (begin
                               (write '(funapp 4383 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4383 37))
                                  (display "\n")
                                  'module))))
                            (xk7741
                             (begin
                               (write '(funapp 4383 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4383 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9295
                              (begin
                                (write '(funapp 4386 27))
                                (display "\n")
                                ((lambda (j7744 k7745 f7746)
                                   (letrec*
                                    ((g9296
                                      (lambda (g7742 g7743)
                                        (letrec*
                                         ((g9297
                                           (letrec*
                                            ((x9298
                                              (letrec*
                                               ((x9300
                                                 (begin
                                                   (write '(funapp 4395 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7744
                                                    k7745
                                                    g7742)))
                                                (x9299
                                                 (begin
                                                   (write '(funapp 4396 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7744
                                                    k7745
                                                    g7743))))
                                               (begin
                                                 (write '(funapp 4397 42))
                                                 (display "\n")
                                                 (f7746 x9300 x9299)))))
                                            (begin
                                              (write '(funapp 4398 39))
                                              (display "\n")
                                              (image/c j7744 k7745 x9298)))))
                                         g9297))))
                                    g9296))
                                 xj7740
                                 xk7741
                                 place-block))))
                            g9295)))
                         (x9287
                          (letrec*
                           ((x9288
                             (letrec*
                              ((x9293 (input))
                               (x9289
                                (letrec*
                                 ((x9292 (input))
                                  (x9290
                                   (letrec*
                                    ((x9291 (input)))
                                    (begin
                                      (write '(funapp 4414 59))
                                      (display "\n")
                                      (cons
                                       x9291
                                       (begin
                                         (write '(funapp 4414 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 4415 30))
                                   (display "\n")
                                   (cons x9292 x9290)))))
                              (begin
                                (write '(funapp 4416 27))
                                (display "\n")
                                (cons x9293 x9289)))))
                           (begin
                             (write '(funapp 4417 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 4417 29))
                                (display "\n")
                                'block)
                              x9288))))
                         (x9286
                          (begin
                            (write '(funapp 4418 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 4418 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 4418 41))
                               (display "\n")
                               '())))))
                        (begin
                          (write '(funapp 4419 21))
                          (display "\n")
                          (x9294 x9287 x9286)))
                       (letrec*
                        ((x9302
                          (letrec*
                           ((xj7747
                             (begin
                               (write '(funapp 4423 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4423 37))
                                  (display "\n")
                                  'module))))
                            (xk7748
                             (begin
                               (write '(funapp 4423 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4423 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9303
                              (begin
                                (write '(funapp 4426 27))
                                (display "\n")
                                ((lambda (j7750 k7751 f7752)
                                   (letrec*
                                    ((g9304
                                      (lambda (g7749)
                                        (letrec*
                                         ((g9305
                                           (letrec*
                                            ((x9306
                                              (letrec*
                                               ((x9307
                                                 (letrec*
                                                  ((x9308
                                                    (letrec*
                                                     ((x9309
                                                       (begin
                                                         (write
                                                          '(funapp 4439 56))
                                                         (display "\n")
                                                         (listof TETRA/C))))
                                                     (begin
                                                       (write
                                                        '(funapp 4440 48))
                                                       (display "\n")
                                                       (and/c
                                                        cons?/c
                                                        x9309)))))
                                                  (begin
                                                    (write '(funapp 4441 45))
                                                    (display "\n")
                                                    (x9308
                                                     j7750
                                                     k7751
                                                     g7749)))))
                                               (begin
                                                 (write '(funapp 4442 42))
                                                 (display "\n")
                                                 (f7752 x9307)))))
                                            (begin
                                              (write '(funapp 4443 39))
                                              (display "\n")
                                              (WORLD/C j7750 k7751 x9306)))))
                                         g9305))))
                                    g9304))
                                 xj7747
                                 xk7748
                                 world0))))
                            g9303)))
                         (x9301 (input)))
                        (begin
                          (write '(funapp 4451 21))
                          (display "\n")
                          (x9302 x9301)))))))))
               g8742))))
           g7804))))
       g7787)))
    g7786)))
