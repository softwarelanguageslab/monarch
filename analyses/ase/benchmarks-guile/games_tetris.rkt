(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7770 #t)) g7770)))
    (meta (lambda (v) (letrec* ((g7771 v)) g7771)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7772
          (letrec*
           ((g7773
             (letrec*
              ((x-e7774 lst))
              (letrec*
               ((v1742 x-e7774))
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
                   ((x-cnd7775
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7775
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
           g7773)))
        g7772)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7776 (lambda (v) (letrec* ((g7777 v)) g7777)))) g7776)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7778
          (letrec*
           ((x7779 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7779)))))
        g7778))))
   (letrec*
    ((g7780
      (letrec*
       ((g7781
         (letrec*
          ((orig-+ +)
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
           ((g7782 (begin (write '(funapp 58 19)) (display "\n") '()))
            (g7783
             (letrec*
              ((empty (begin (write '(funapp 61 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7784
                     (lambda (k j lst)
                       (letrec*
                        ((g7785
                          (begin
                            (write '(funapp 69 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7786
                                  (begin
                                    (write '(funapp 71 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7786))
                             lst))))
                        g7785))))
                   g7784)))
               (real?/c
                (lambda (g7262 g7263 g7264)
                  (letrec*
                   ((g7787
                     (letrec*
                      ((x-cnd7788
                        (begin
                          (write '(funapp 80 35))
                          (display "\n")
                          (real? g7264))))
                      (if x-cnd7788
                        g7264
                        (begin
                          (write '(blame g7262 81 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7262)))))))
                   g7787)))
               (boolean?/c
                (lambda (g7265 g7266 g7267)
                  (letrec*
                   ((g7789
                     (letrec*
                      ((x-cnd7790
                        (begin
                          (write '(funapp 88 35))
                          (display "\n")
                          (boolean? g7267))))
                      (if x-cnd7790
                        g7267
                        (begin
                          (write '(blame g7265 89 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7265)))))))
                   g7789)))
               (number?/c
                (lambda (g7268 g7269 g7270)
                  (letrec*
                   ((g7791
                     (letrec*
                      ((x-cnd7792
                        (begin
                          (write '(funapp 96 35))
                          (display "\n")
                          (number? g7270))))
                      (if x-cnd7792
                        g7270
                        (begin
                          (write '(blame g7268 97 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7268)))))))
                   g7791)))
               (any/c
                (lambda (g7271 g7272 g7273)
                  (letrec*
                   ((g7793
                     (letrec*
                      ((x-cnd7794
                        (begin
                          (write '(funapp 105 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7795 #t)) g7795)) g7273))))
                      (if x-cnd7794
                        g7273
                        (begin
                          (write '(blame g7271 106 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7271)))))))
                   g7793)))
               (any?/c
                (lambda (g7274 g7275 g7276)
                  (letrec*
                   ((g7796
                     (letrec*
                      ((x-cnd7797
                        (begin
                          (write '(funapp 114 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7798 #t)) g7798)) g7276))))
                      (if x-cnd7797
                        g7276
                        (begin
                          (write '(blame g7274 115 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7274)))))))
                   g7796)))
               (cons?/c
                (lambda (g7277 g7278 g7279)
                  (letrec*
                   ((g7799
                     (letrec*
                      ((x-cnd7800
                        (begin
                          (write '(funapp 122 35))
                          (display "\n")
                          (pair? g7279))))
                      (if x-cnd7800
                        g7279
                        (begin
                          (write '(blame g7277 123 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7277)))))))
                   g7799)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7280 g7281 g7282)
                  (letrec*
                   ((g7801
                     (letrec*
                      ((x-cnd7802
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (pair? g7282))))
                      (if x-cnd7802
                        g7282
                        (begin
                          (write '(blame g7280 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7280)))))))
                   g7801)))
               (integer?/c
                (lambda (g7283 g7284 g7285)
                  (letrec*
                   ((g7803
                     (letrec*
                      ((x-cnd7804
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (integer? g7285))))
                      (if x-cnd7804
                        g7285
                        (begin
                          (write '(blame g7283 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7283)))))))
                   g7803)))
               (symbol?/c
                (lambda (g7286 g7287 g7288)
                  (letrec*
                   ((g7805
                     (letrec*
                      ((x-cnd7806
                        (begin
                          (write '(funapp 147 35))
                          (display "\n")
                          (symbol? g7288))))
                      (if x-cnd7806
                        g7288
                        (begin
                          (write '(blame g7286 148 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7286)))))))
                   g7805)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7807
                     (lambda (k j v)
                       (letrec*
                        ((g7808
                          (letrec*
                           ((x-cnd7809
                             (begin
                               (write '(funapp 158 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7809
                             (begin
                               (write '(funapp 159 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7808))))
                   g7807)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7810
                     (lambda (k j v)
                       (letrec*
                        ((g7811
                          (letrec*
                           ((x-cnd7812
                             (begin
                               (write '(funapp 170 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7812
                             (begin
                               (write '(funapp 172 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7816
                                (letrec*
                                 ((x7817
                                   (begin
                                     (write '(funapp 176 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 177 34))
                                   (display "\n")
                                   (contract k j x7817))))
                               (x7813
                                (letrec*
                                 ((x7815
                                   (begin
                                     (write '(funapp 180 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7814
                                   (begin
                                     (write '(funapp 180 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 181 34))
                                   (display "\n")
                                   (x7815 k j x7814)))))
                              (begin
                                (write '(funapp 182 31))
                                (display "\n")
                                (orig-cons x7816 x7813)))))))
                        g7811))))
                   g7810)))
               (any? (lambda (v) (letrec* ((g7818 #t)) g7818)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7819
                     (letrec*
                      ((x7820
                        (begin
                          (write '(funapp 189 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 189 55))
                        (display "\n")
                        (not x7820)))))
                   g7819)))
               (nonzero?/c
                (lambda (g7289 g7290 g7291)
                  (letrec*
                   ((g7821
                     (letrec*
                      ((x-cnd7822
                        (begin
                          (write '(funapp 197 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7823
                                (letrec*
                                 ((x7824
                                   (begin
                                     (write '(funapp 199 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 199 64))
                                   (display "\n")
                                   (not x7824)))))
                              g7823))
                           g7291))))
                      (if x-cnd7822
                        g7291
                        (begin
                          (write '(blame g7289 204 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7289)))))))
                   g7821)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7825
                     (lambda (g7292 g7293 g7294)
                       (letrec*
                        ((g7826
                          (letrec*
                           ((x-cnd7827
                             (begin
                               (write '(funapp 215 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7828
                                     (begin
                                       (write '(funapp 216 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7828))
                                g7294))))
                           (if x-cnd7827
                             g7294
                             (begin
                               (write '(blame g7292 220 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7292)))))))
                        g7826))))
                   g7825)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7829
                     (lambda (g7295 g7296 g7297)
                       (letrec*
                        ((g7830
                          (letrec*
                           ((x-cnd7831
                             (begin
                               (write '(funapp 232 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7832
                                     (begin
                                       (write '(funapp 233 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7832))
                                g7297))))
                           (if x-cnd7831
                             g7297
                             (begin
                               (write '(blame g7295 237 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7295)))))))
                        g7830))))
                   g7829)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7833
                     (lambda (g7298 g7299 g7300)
                       (letrec*
                        ((g7834
                          (letrec*
                           ((x-cnd7835
                             (begin
                               (write '(funapp 249 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7836
                                     (begin
                                       (write '(funapp 250 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7836))
                                g7300))))
                           (if x-cnd7835
                             g7300
                             (begin
                               (write '(blame g7298 254 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7298)))))))
                        g7834))))
                   g7833)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7837
                     (lambda (g7301 g7302 g7303)
                       (letrec*
                        ((g7838
                          (letrec*
                           ((x-cnd7839
                             (begin
                               (write '(funapp 266 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7840
                                     (begin
                                       (write '(funapp 267 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7840))
                                g7303))))
                           (if x-cnd7839
                             g7303
                             (begin
                               (write '(blame g7301 271 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7301)))))))
                        g7838))))
                   g7837)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7841
                     (lambda (g7304 g7305 g7306)
                       (letrec*
                        ((g7842
                          (letrec*
                           ((x-cnd7843
                             (begin
                               (write '(funapp 283 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7844
                                     (begin
                                       (write '(funapp 284 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7844))
                                g7306))))
                           (if x-cnd7843
                             g7306
                             (begin
                               (write '(blame g7304 288 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7304)))))))
                        g7842))))
                   g7841)))
               (meta (lambda (v) (letrec* ((g7845 v)) g7845)))
               (+
                (letrec*
                 ((xj7307
                   (begin (write '(funapp 294 26)) (display "\n") 'server))
                  (xk7308
                   (begin (write '(funapp 294 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7846
                    (begin
                      (write '(funapp 297 21))
                      (display "\n")
                      ((lambda (j7311 k7312 f7313)
                         (letrec*
                          ((g7848
                            (lambda (g7309 g7310)
                              (letrec*
                               ((g7849
                                 (letrec*
                                  ((x7850
                                    (letrec*
                                     ((x7852
                                       (begin
                                         (write '(funapp 306 44))
                                         (display "\n")
                                         (number?/c j7311 k7312 g7309)))
                                      (x7851
                                       (begin
                                         (write '(funapp 307 44))
                                         (display "\n")
                                         (number?/c j7311 k7312 g7310))))
                                     (begin
                                       (write '(funapp 308 36))
                                       (display "\n")
                                       (f7313 x7852 x7851)))))
                                  (begin
                                    (write '(funapp 309 33))
                                    (display "\n")
                                    (number?/c j7311 k7312 x7850)))))
                               g7849))))
                          g7848))
                       xj7307
                       xk7308
                       (lambda (a b)
                         (letrec*
                          ((g7847
                            (begin
                              (write '(funapp 314 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7847))))))
                  g7846)))
               (-
                (letrec*
                 ((xj7314
                   (begin (write '(funapp 318 26)) (display "\n") 'server))
                  (xk7315
                   (begin (write '(funapp 318 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7853
                    (begin
                      (write '(funapp 321 21))
                      (display "\n")
                      ((lambda (j7318 k7319 f7320)
                         (letrec*
                          ((g7855
                            (lambda (g7316 g7317)
                              (letrec*
                               ((g7856
                                 (letrec*
                                  ((x7857
                                    (letrec*
                                     ((x7859
                                       (begin
                                         (write '(funapp 330 44))
                                         (display "\n")
                                         (number?/c j7318 k7319 g7316)))
                                      (x7858
                                       (begin
                                         (write '(funapp 331 44))
                                         (display "\n")
                                         (number?/c j7318 k7319 g7317))))
                                     (begin
                                       (write '(funapp 332 36))
                                       (display "\n")
                                       (f7320 x7859 x7858)))))
                                  (begin
                                    (write '(funapp 333 33))
                                    (display "\n")
                                    (number?/c j7318 k7319 x7857)))))
                               g7856))))
                          g7855))
                       xj7314
                       xk7315
                       (lambda (a b)
                         (letrec*
                          ((g7854
                            (begin
                              (write '(funapp 338 53))
                              (display "\n")
                              (orig-- a b))))
                          g7854))))))
                  g7853)))
               (*
                (letrec*
                 ((xj7321
                   (begin (write '(funapp 342 26)) (display "\n") 'server))
                  (xk7322
                   (begin (write '(funapp 342 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7860
                    (begin
                      (write '(funapp 345 21))
                      (display "\n")
                      ((lambda (j7325 k7326 f7327)
                         (letrec*
                          ((g7862
                            (lambda (g7323 g7324)
                              (letrec*
                               ((g7863
                                 (letrec*
                                  ((x7864
                                    (letrec*
                                     ((x7866
                                       (begin
                                         (write '(funapp 354 44))
                                         (display "\n")
                                         (number?/c j7325 k7326 g7323)))
                                      (x7865
                                       (begin
                                         (write '(funapp 355 44))
                                         (display "\n")
                                         (number?/c j7325 k7326 g7324))))
                                     (begin
                                       (write '(funapp 356 36))
                                       (display "\n")
                                       (f7327 x7866 x7865)))))
                                  (begin
                                    (write '(funapp 357 33))
                                    (display "\n")
                                    (number?/c j7325 k7326 x7864)))))
                               g7863))))
                          g7862))
                       xj7321
                       xk7322
                       (lambda (a b)
                         (letrec*
                          ((g7861
                            (begin
                              (write '(funapp 362 53))
                              (display "\n")
                              (orig-* a b))))
                          g7861))))))
                  g7860)))
               (<
                (letrec*
                 ((xj7328
                   (begin (write '(funapp 366 26)) (display "\n") 'server))
                  (xk7329
                   (begin (write '(funapp 366 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7867
                    (begin
                      (write '(funapp 369 21))
                      (display "\n")
                      ((lambda (j7332 k7333 f7334)
                         (letrec*
                          ((g7869
                            (lambda (g7330 g7331)
                              (letrec*
                               ((g7870
                                 (letrec*
                                  ((x7871
                                    (letrec*
                                     ((x7873
                                       (begin
                                         (write '(funapp 378 44))
                                         (display "\n")
                                         (number?/c j7332 k7333 g7330)))
                                      (x7872
                                       (begin
                                         (write '(funapp 379 44))
                                         (display "\n")
                                         (number?/c j7332 k7333 g7331))))
                                     (begin
                                       (write '(funapp 380 36))
                                       (display "\n")
                                       (f7334 x7873 x7872)))))
                                  (begin
                                    (write '(funapp 381 33))
                                    (display "\n")
                                    (boolean?/c j7332 k7333 x7871)))))
                               g7870))))
                          g7869))
                       xj7328
                       xk7329
                       (lambda (a b)
                         (letrec*
                          ((g7868
                            (begin
                              (write '(funapp 386 53))
                              (display "\n")
                              (orig-< a b))))
                          g7868))))))
                  g7867)))
               (>
                (letrec*
                 ((xj7335
                   (begin (write '(funapp 390 26)) (display "\n") 'server))
                  (xk7336
                   (begin (write '(funapp 390 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7874
                    (begin
                      (write '(funapp 393 21))
                      (display "\n")
                      ((lambda (j7339 k7340 f7341)
                         (letrec*
                          ((g7876
                            (lambda (g7337 g7338)
                              (letrec*
                               ((g7877
                                 (letrec*
                                  ((x7878
                                    (letrec*
                                     ((x7880
                                       (begin
                                         (write '(funapp 402 44))
                                         (display "\n")
                                         (number?/c j7339 k7340 g7337)))
                                      (x7879
                                       (begin
                                         (write '(funapp 403 44))
                                         (display "\n")
                                         (number?/c j7339 k7340 g7338))))
                                     (begin
                                       (write '(funapp 404 36))
                                       (display "\n")
                                       (f7341 x7880 x7879)))))
                                  (begin
                                    (write '(funapp 405 33))
                                    (display "\n")
                                    (boolean?/c j7339 k7340 x7878)))))
                               g7877))))
                          g7876))
                       xj7335
                       xk7336
                       (lambda (a b)
                         (letrec*
                          ((g7875
                            (begin
                              (write '(funapp 410 53))
                              (display "\n")
                              (orig-> a b))))
                          g7875))))))
                  g7874)))
               (<=
                (letrec*
                 ((xj7342
                   (begin (write '(funapp 414 26)) (display "\n") 'server))
                  (xk7343
                   (begin (write '(funapp 414 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7881
                    (begin
                      (write '(funapp 417 21))
                      (display "\n")
                      ((lambda (j7346 k7347 f7348)
                         (letrec*
                          ((g7883
                            (lambda (g7344 g7345)
                              (letrec*
                               ((g7884
                                 (letrec*
                                  ((x7885
                                    (letrec*
                                     ((x7887
                                       (begin
                                         (write '(funapp 426 44))
                                         (display "\n")
                                         (number?/c j7346 k7347 g7344)))
                                      (x7886
                                       (begin
                                         (write '(funapp 427 44))
                                         (display "\n")
                                         (number?/c j7346 k7347 g7345))))
                                     (begin
                                       (write '(funapp 428 36))
                                       (display "\n")
                                       (f7348 x7887 x7886)))))
                                  (begin
                                    (write '(funapp 429 33))
                                    (display "\n")
                                    (boolean?/c j7346 k7347 x7885)))))
                               g7884))))
                          g7883))
                       xj7342
                       xk7343
                       (lambda (a b)
                         (letrec*
                          ((g7882
                            (begin
                              (write '(funapp 434 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7882))))))
                  g7881)))
               (>=
                (letrec*
                 ((xj7349
                   (begin (write '(funapp 438 26)) (display "\n") 'server))
                  (xk7350
                   (begin (write '(funapp 438 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7888
                    (begin
                      (write '(funapp 441 21))
                      (display "\n")
                      ((lambda (j7353 k7354 f7355)
                         (letrec*
                          ((g7890
                            (lambda (g7351 g7352)
                              (letrec*
                               ((g7891
                                 (letrec*
                                  ((x7892
                                    (letrec*
                                     ((x7894
                                       (begin
                                         (write '(funapp 450 44))
                                         (display "\n")
                                         (number?/c j7353 k7354 g7351)))
                                      (x7893
                                       (begin
                                         (write '(funapp 451 44))
                                         (display "\n")
                                         (number?/c j7353 k7354 g7352))))
                                     (begin
                                       (write '(funapp 452 36))
                                       (display "\n")
                                       (f7355 x7894 x7893)))))
                                  (begin
                                    (write '(funapp 453 33))
                                    (display "\n")
                                    (boolean?/c j7353 k7354 x7892)))))
                               g7891))))
                          g7890))
                       xj7349
                       xk7350
                       (lambda (a b)
                         (letrec*
                          ((g7889
                            (begin
                              (write '(funapp 458 53))
                              (display "\n")
                              (orig->= a b))))
                          g7889))))))
                  g7888)))
               (/
                (letrec*
                 ((xj7356
                   (begin (write '(funapp 462 26)) (display "\n") 'server))
                  (xk7357
                   (begin (write '(funapp 462 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7895
                    (begin
                      (write '(funapp 465 21))
                      (display "\n")
                      ((lambda (j7360 k7361 f7362)
                         (letrec*
                          ((g7897
                            (lambda (g7358 g7359)
                              (letrec*
                               ((g7898
                                 (letrec*
                                  ((x7899
                                    (letrec*
                                     ((x7901
                                       (begin
                                         (write '(funapp 474 44))
                                         (display "\n")
                                         (number?/c j7360 k7361 g7358)))
                                      (x7900
                                       (begin
                                         (write '(funapp 475 44))
                                         (display "\n")
                                         (number?/c j7360 k7361 g7359))))
                                     (begin
                                       (write '(funapp 476 36))
                                       (display "\n")
                                       (f7362 x7901 x7900)))))
                                  (begin
                                    (write '(funapp 477 33))
                                    (display "\n")
                                    (number?/c j7360 k7361 x7899)))))
                               g7898))))
                          g7897))
                       xj7356
                       xk7357
                       (lambda (a b)
                         (letrec*
                          ((g7896
                            (begin
                              (write '(funapp 482 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7896))))))
                  g7895)))
               (car
                (letrec*
                 ((xj7363
                   (begin (write '(funapp 486 26)) (display "\n") 'server))
                  (xk7364
                   (begin (write '(funapp 486 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7902
                    (begin
                      (write '(funapp 489 21))
                      (display "\n")
                      ((lambda (j7366 k7367 f7368)
                         (letrec*
                          ((g7904
                            (lambda (g7365)
                              (letrec*
                               ((g7905
                                 (letrec*
                                  ((x7906
                                    (letrec*
                                     ((x7907
                                       (begin
                                         (write '(funapp 498 44))
                                         (display "\n")
                                         (pair?/c j7366 k7367 g7365))))
                                     (begin
                                       (write '(funapp 499 36))
                                       (display "\n")
                                       (f7368 x7907)))))
                                  (begin
                                    (write '(funapp 500 33))
                                    (display "\n")
                                    (any/c j7366 k7367 x7906)))))
                               g7905))))
                          g7904))
                       xj7363
                       xk7364
                       (lambda (p)
                         (letrec*
                          ((g7903
                            (begin
                              (write '(funapp 505 51))
                              (display "\n")
                              (orig-car p))))
                          g7903))))))
                  g7902)))
               (cdr
                (letrec*
                 ((xj7369
                   (begin (write '(funapp 509 26)) (display "\n") 'server))
                  (xk7370
                   (begin (write '(funapp 509 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7908
                    (begin
                      (write '(funapp 512 21))
                      (display "\n")
                      ((lambda (j7372 k7373 f7374)
                         (letrec*
                          ((g7910
                            (lambda (g7371)
                              (letrec*
                               ((g7911
                                 (letrec*
                                  ((x7912
                                    (letrec*
                                     ((x7913
                                       (begin
                                         (write '(funapp 521 44))
                                         (display "\n")
                                         (pair?/c j7372 k7373 g7371))))
                                     (begin
                                       (write '(funapp 522 36))
                                       (display "\n")
                                       (f7374 x7913)))))
                                  (begin
                                    (write '(funapp 523 33))
                                    (display "\n")
                                    (any/c j7372 k7373 x7912)))))
                               g7911))))
                          g7910))
                       xj7369
                       xk7370
                       (lambda (p)
                         (letrec*
                          ((g7909
                            (begin
                              (write '(funapp 528 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7909))))))
                  g7908)))
               (cons
                (letrec*
                 ((xj7375
                   (begin (write '(funapp 532 26)) (display "\n") 'server))
                  (xk7376
                   (begin (write '(funapp 532 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7914
                    (begin
                      (write '(funapp 535 21))
                      (display "\n")
                      ((lambda (j7379 k7380 f7381)
                         (letrec*
                          ((g7916
                            (lambda (g7377 g7378)
                              (letrec*
                               ((g7917
                                 (letrec*
                                  ((x7918
                                    (letrec*
                                     ((x7920
                                       (begin
                                         (write '(funapp 544 44))
                                         (display "\n")
                                         (any/c j7379 k7380 g7377)))
                                      (x7919
                                       (begin
                                         (write '(funapp 545 44))
                                         (display "\n")
                                         (any/c j7379 k7380 g7378))))
                                     (begin
                                       (write '(funapp 546 36))
                                       (display "\n")
                                       (f7381 x7920 x7919)))))
                                  (begin
                                    (write '(funapp 547 33))
                                    (display "\n")
                                    (pair?/c j7379 k7380 x7918)))))
                               g7917))))
                          g7916))
                       xj7375
                       xk7376
                       (lambda (a b)
                         (letrec*
                          ((g7915
                            (begin
                              (write '(funapp 553 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7915))))))
                  g7914)))
               (vector-ref
                (letrec*
                 ((xj7382
                   (begin (write '(funapp 557 26)) (display "\n") 'server))
                  (xk7383
                   (begin (write '(funapp 557 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7921
                    (begin
                      (write '(funapp 560 21))
                      (display "\n")
                      ((lambda (j7385 k7386 f7387)
                         (letrec*
                          ((g7923
                            (lambda (g7384)
                              (letrec*
                               ((g7924
                                 (letrec*
                                  ((x7925
                                    (letrec*
                                     ((x7926
                                       (begin
                                         (write '(funapp 569 44))
                                         (display "\n")
                                         (vector?/c j7385 k7386 g7384))))
                                     (begin
                                       (write '(funapp 570 36))
                                       (display "\n")
                                       (f7387 x7926)))))
                                  (begin
                                    (write '(funapp 571 33))
                                    (display "\n")
                                    (integer?/c j7385 k7386 x7925)))))
                               g7924))))
                          g7923))
                       xj7382
                       xk7383
                       (lambda (v i)
                         (letrec*
                          ((g7922
                            (begin
                              (write '(funapp 577 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7922))))))
                  g7921)))
               (vector-set!
                (letrec*
                 ((xj7388
                   (begin (write '(funapp 581 26)) (display "\n") 'server))
                  (xk7389
                   (begin (write '(funapp 581 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7927
                    (begin
                      (write '(funapp 584 21))
                      (display "\n")
                      ((lambda (j7392 k7393 f7394)
                         (letrec*
                          ((g7929
                            (lambda (g7390 g7391)
                              (letrec*
                               ((g7930
                                 (letrec*
                                  ((x7931
                                    (letrec*
                                     ((x7933
                                       (begin
                                         (write '(funapp 593 44))
                                         (display "\n")
                                         (vector?/c j7392 k7393 g7390)))
                                      (x7932
                                       (begin
                                         (write '(funapp 594 44))
                                         (display "\n")
                                         (integer?/c j7392 k7393 g7391))))
                                     (begin
                                       (write '(funapp 595 36))
                                       (display "\n")
                                       (f7394 x7933 x7932)))))
                                  (begin
                                    (write '(funapp 596 33))
                                    (display "\n")
                                    (any/c j7392 k7393 x7931)))))
                               g7930))))
                          g7929))
                       xj7388
                       xk7389
                       (lambda (vec i v)
                         (letrec*
                          ((g7928
                            (begin
                              (write '(funapp 602 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7928))))))
                  g7927)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7934
                     (if cnd
                       (begin (write '(funapp 607 35)) (display "\n") '())
                       (begin
                         (write '(funapp 607 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7934)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7935
                     (letrec*
                      ((x7936
                        (letrec*
                         ((x7937
                           (begin
                             (write '(funapp 614 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 614 58))
                           (display "\n")
                           (cdr x7937)))))
                      (begin
                        (write '(funapp 615 23))
                        (display "\n")
                        (cdr x7936)))))
                   g7935)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7938
                     (letrec*
                      ((x7941
                        (begin
                          (write '(funapp 621 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 621 62))
                        (display "\n")
                        (assert x7941))))
                    (g7939
                     (letrec*
                      ((x7942
                        (begin
                          (write '(funapp 622 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 622 57))
                        (display "\n")
                        (assert x7942))))
                    (g7940
                     (letrec*
                      ((x-cnd7943
                        (begin
                          (write '(funapp 625 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7943
                        (begin (write '(funapp 627 24)) (display "\n") '())
                        (letrec*
                         ((x7946
                           (letrec*
                            ((x7947
                              (begin
                                (write '(funapp 629 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 629 61))
                              (display "\n")
                              (f x7947))))
                          (x7944
                           (letrec*
                            ((x7945
                              (begin
                                (write '(funapp 630 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 630 61))
                              (display "\n")
                              (map f x7945)))))
                         (begin
                           (write '(funapp 631 26))
                           (display "\n")
                           (cons x7946 x7944)))))))
                   g7940)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7948
                     (letrec*
                      ((x7949
                        (begin
                          (write '(funapp 636 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 636 55))
                        (display "\n")
                        (cdr x7949)))))
                   g7948)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7950
                     (letrec*
                      ((x7951
                        (letrec*
                         ((x7952
                           (letrec*
                            ((x7953
                              (begin
                                (write '(funapp 645 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 645 61))
                              (display "\n")
                              (car x7953)))))
                         (begin
                           (write '(funapp 646 26))
                           (display "\n")
                           (cdr x7952)))))
                      (begin
                        (write '(funapp 647 23))
                        (display "\n")
                        (car x7951)))))
                   g7950)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7954
                     (letrec*
                      ((x7955
                        (letrec*
                         ((x7956
                           (letrec*
                            ((x7957
                              (begin
                                (write '(funapp 656 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 656 61))
                              (display "\n")
                              (cdr x7957)))))
                         (begin
                           (write '(funapp 657 26))
                           (display "\n")
                           (car x7956)))))
                      (begin
                        (write '(funapp 658 23))
                        (display "\n")
                        (cdr x7955)))))
                   g7954)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7958
                     (letrec*
                      ((x7961
                        (begin
                          (write '(funapp 664 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 664 60))
                        (display "\n")
                        (assert x7961))))
                    (g7959
                     (letrec*
                      ((x7962
                        (begin
                          (write '(funapp 666 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 666 59))
                        (display "\n")
                        (assert x7962))))
                    (g7960
                     (letrec*
                      ((output-port
                        (begin
                          (write '(funapp 669 37))
                          (display "\n")
                          (open-output-file filename)))
                       (res
                        (begin
                          (write '(funapp 670 29))
                          (display "\n")
                          (proc output-port))))
                      (letrec*
                       ((g7963
                         (begin
                           (write '(funapp 672 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7964 res))
                       g7964))))
                   g7960)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7965
                     (letrec*
                      ((x7966
                        (letrec*
                         ((x7967
                           (begin
                             (write '(funapp 680 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 680 58))
                           (display "\n")
                           (cdr x7967)))))
                      (begin
                        (write '(funapp 681 23))
                        (display "\n")
                        (car x7966)))))
                   g7965)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7968
                     (letrec*
                      ((x7969
                        (letrec*
                         ((x7970
                           (letrec*
                            ((x7971
                              (begin
                                (write '(funapp 690 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 690 61))
                              (display "\n")
                              (car x7971)))))
                         (begin
                           (write '(funapp 691 26))
                           (display "\n")
                           (car x7970)))))
                      (begin
                        (write '(funapp 692 23))
                        (display "\n")
                        (cdr x7969)))))
                   g7968)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7972
                     (letrec*
                      ((x7974
                        (begin
                          (write '(funapp 697 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 697 57))
                        (display "\n")
                        (assert x7974))))
                    (g7973
                     (letrec*
                      ((x-cnd7975
                        (begin
                          (write '(funapp 700 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7975
                        #f
                        (letrec*
                         ((x-cnd7976
                           (letrec*
                            ((x7977
                              (begin
                                (write '(funapp 705 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 705 56))
                              (display "\n")
                              (eq? x7977 k)))))
                         (if x-cnd7976
                           (begin
                             (write '(funapp 707 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7978
                              (begin
                                (write '(funapp 708 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 708 55))
                              (display "\n")
                              (assq k x7978)))))))))
                   g7973)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7979
                     (letrec*
                      ((x7980
                        (begin
                          (write '(funapp 713 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 713 60))
                        (display "\n")
                        (= 0 x7980)))))
                   g7979)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7981
                     (letrec*
                      ((x7983
                        (begin
                          (write '(funapp 718 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 718 57))
                        (display "\n")
                        (assert x7983))))
                    (g7982
                     (letrec*
                      ((x-cnd7984
                        (begin
                          (write '(funapp 721 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7984
                        ""
                        (letrec*
                         ((x7987
                           (letrec*
                            ((x7988
                              (begin
                                (write '(funapp 726 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 726 55))
                              (display "\n")
                              (char->string x7988))))
                          (x7985
                           (letrec*
                            ((x7986
                              (begin
                                (write '(funapp 728 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 728 55))
                              (display "\n")
                              (list->string x7986)))))
                         (begin
                           (write '(funapp 729 26))
                           (display "\n")
                           (string-append x7987 x7985)))))))
                   g7982)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7989
                     (letrec*
                      ((x7992
                        (begin
                          (write '(funapp 734 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 734 58))
                        (display "\n")
                        (assert x7992))))
                    (g7990
                     (letrec*
                      ((x7993
                        (begin
                          (write '(funapp 735 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 735 58))
                        (display "\n")
                        (assert x7993))))
                    (g7991
                     (letrec*
                      ((val7243
                        (begin
                          (write '(funapp 738 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7994
                         (if val7243
                           val7243
                           (begin
                             (write '(funapp 740 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7994))))
                   g7991)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7995
                     (letrec*
                      ((x7996
                        (letrec*
                         ((x7997
                           (letrec*
                            ((x7998
                              (begin
                                (write '(funapp 750 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 750 61))
                              (display "\n")
                              (cdr x7998)))))
                         (begin
                           (write '(funapp 751 26))
                           (display "\n")
                           (cdr x7997)))))
                      (begin
                        (write '(funapp 752 23))
                        (display "\n")
                        (cdr x7996)))))
                   g7995)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7999
                     (letrec*
                      ((x8002
                        (begin
                          (write '(funapp 757 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 757 57))
                        (display "\n")
                        (assert x8002))))
                    (g8000
                     (letrec*
                      ((x8003
                        (begin
                          (write '(funapp 758 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 758 57))
                        (display "\n")
                        (assert x8003))))
                    (g8001
                     (letrec*
                      ((x-cnd8004
                        (begin
                          (write '(funapp 761 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd8004
                        x
                        (letrec*
                         ((x8006
                           (begin
                             (write '(funapp 765 34))
                             (display "\n")
                             (cdr x)))
                          (x8005
                           (begin
                             (write '(funapp 765 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 766 26))
                           (display "\n")
                           (list-tail x8006 x8005)))))))
                   g8001)))
               (halt
                (lambda ()
                  (letrec*
                   ((g8007
                     (begin (write '(funapp 768 49)) (display "\n") '())))
                   g8007)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g8008
                     (letrec*
                      ((x-cnd8009
                        (letrec*
                         ((x8010 #\a))
                         (begin
                           (write '(funapp 775 48))
                           (display "\n")
                           (char-ci>=? c x8010)))))
                      (if x-cnd8009
                        (letrec*
                         ((x8011 #\z))
                         (begin
                           (write '(funapp 777 48))
                           (display "\n")
                           (char-ci<=? c x8011)))
                        #f))))
                   g8008)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g8012
                     (letrec*
                      ((x8014
                        (begin
                          (write '(funapp 783 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 783 59))
                        (display "\n")
                        (assert x8014))))
                    (g8013
                     (letrec*
                      ((val7244
                        (begin
                          (write '(funapp 786 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g8015
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (begin
                                (write '(funapp 792 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g8016 (if val7245 val7245 #f)))
                             g8016)))))
                       g8015))))
                   g8013)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g8017
                     (letrec*
                      ((val7246
                        (letrec*
                         ((x8018
                           (begin
                             (write '(funapp 804 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 804 62))
                           (display "\n")
                           (= x8018 9)))))
                      (letrec*
                       ((g8019
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x8020
                                 (begin
                                   (write '(funapp 812 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 813 32))
                                 (display "\n")
                                 (= x8020 10)))))
                            (letrec*
                             ((g8021
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((x8022
                                    (begin
                                      (write '(funapp 819 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 820 35))
                                    (display "\n")
                                    (= x8022 32))))))
                             g8021)))))
                       g8019))))
                   g8017)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g8023
                     (letrec*
                      ((x8024
                        (letrec*
                         ((x8025
                           (begin
                             (write '(funapp 829 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 829 58))
                           (display "\n")
                           (cdr x8025)))))
                      (begin
                        (write '(funapp 830 23))
                        (display "\n")
                        (cdr x8024)))))
                   g8023)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g8026
                     (letrec*
                      ((x8028
                        (begin
                          (write '(funapp 835 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 835 59))
                        (display "\n")
                        (assert x8028))))
                    (g8027
                     (begin (write '(funapp 836 28)) (display "\n") (> x 0))))
                   g8027)))
               ($pc (begin (write '(funapp 838 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g8029 #f)) g8029)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g8030
                     (letrec*
                      ((x8031
                        (begin
                          (write '(funapp 844 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 844 55))
                        (display "\n")
                        (cdr x8031)))))
                   g8030)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g8032
                     (letrec*
                      ((x8034
                        (begin
                          (write '(funapp 849 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 849 59))
                        (display "\n")
                        (assert x8034))))
                    (g8033
                     (letrec*
                      ((x-cnd8035
                        (begin
                          (write '(funapp 852 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd8035
                        (begin
                          (write '(funapp 853 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 853 49))
                          (display "\n")
                          (floor x))))))
                   g8033)))
               ($cmp (begin (write '(funapp 855 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g8036
                     (letrec*
                      ((val7248
                        (begin
                          (write '(funapp 861 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g8037
                         (if val7248
                           val7248
                           (letrec*
                            ((val7249
                              (letrec*
                               ((x-cnd8038
                                 (begin
                                   (write '(funapp 869 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd8038
                                 (begin
                                   (write '(funapp 870 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g8039
                               (if val7249
                                 val7249
                                 (letrec*
                                  ((val7250
                                    (letrec*
                                     ((x-cnd8040
                                       (begin
                                         (write '(funapp 878 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd8040
                                       (letrec*
                                        ((x-cnd8041
                                          (begin
                                            (write '(funapp 881 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd8041
                                          (begin
                                            (write '(funapp 882 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g8042
                                     (if val7250
                                       val7250
                                       (letrec*
                                        ((val7251
                                          (letrec*
                                           ((x-cnd8043
                                             (begin
                                               (write '(funapp 891 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd8043
                                             (letrec*
                                              ((x-cnd8044
                                                (begin
                                                  (write '(funapp 894 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd8044
                                                (letrec*
                                                 ((x-cnd8045
                                                   (letrec*
                                                    ((x8047
                                                      (begin
                                                        (write
                                                         '(funapp 899 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x8046
                                                      (begin
                                                        (write
                                                         '(funapp 900 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 901 53))
                                                      (display "\n")
                                                      (equal? x8047 x8046)))))
                                                 (if x-cnd8045
                                                   (letrec*
                                                    ((x8049
                                                      (begin
                                                        (write
                                                         '(funapp 904 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x8048
                                                      (begin
                                                        (write
                                                         '(funapp 905 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 906 53))
                                                      (display "\n")
                                                      (equal? x8049 x8048)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g8050
                                           (if val7251
                                             val7251
                                             (letrec*
                                              ((x-cnd8051
                                                (begin
                                                  (write '(funapp 915 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd8051
                                                (letrec*
                                                 ((x-cnd8052
                                                   (begin
                                                     (write '(funapp 918 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd8052
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 921 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g8053
                                                       (letrec*
                                                        ((x-cnd8054
                                                          (letrec*
                                                           ((x8055
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  928
                                                                  62))
                                                               (display "\n")
                                                               (vector-length
                                                                b))))
                                                           (begin
                                                             (write
                                                              '(funapp 930 60))
                                                             (display "\n")
                                                             (= x8055 n)))))
                                                        (if x-cnd8054
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g8056
                                                                  (letrec*
                                                                   ((val7252
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          939
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (=
                                                                        i
                                                                        n))))
                                                                   (letrec*
                                                                    ((g8057
                                                                      (if val7252
                                                                        val7252
                                                                        (letrec*
                                                                         ((x-cnd8058
                                                                           (letrec*
                                                                            ((x8060
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   948
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 a
                                                                                 i)))
                                                                             (x8059
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   952
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 b
                                                                                 i))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 955
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (equal?
                                                                               x8060
                                                                               x8059)))))
                                                                         (if x-cnd8058
                                                                           (letrec*
                                                                            ((x8061
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   961
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (+
                                                                                 i
                                                                                 1))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 964
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (loop
                                                                               x8061)))
                                                                           #f)))))
                                                                    g8057))))
                                                                g8056))))
                                                           (letrec*
                                                            ((g8062
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   970
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g8062))
                                                          #f))))
                                                     g8053))
                                                   #f))
                                                #f)))))
                                         g8050)))))
                                   g8042)))))
                             g8039)))))
                       g8037))))
                   g8036)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g8063
                     (letrec*
                      ((x8064
                        (letrec*
                         ((x8065
                           (letrec*
                            ((x8066
                              (begin
                                (write '(funapp 988 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 988 61))
                              (display "\n")
                              (car x8066)))))
                         (begin
                           (write '(funapp 989 26))
                           (display "\n")
                           (car x8065)))))
                      (begin
                        (write '(funapp 990 23))
                        (display "\n")
                        (cdr x8064)))))
                   g8063)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g8067
                     (letrec*
                      ((x8068
                        (letrec*
                         ((x8069
                           (letrec*
                            ((x8070
                              (begin
                                (write '(funapp 999 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 999 61))
                              (display "\n")
                              (cdr x8070)))))
                         (begin
                           (write '(funapp 1000 26))
                           (display "\n")
                           (car x8069)))))
                      (begin
                        (write '(funapp 1001 23))
                        (display "\n")
                        (car x8068)))))
                   g8067)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g8071
                     (begin
                       (write '(funapp 1003 53))
                       (display "\n")
                       (eq? x y))))
                   g8071)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g8072
                     (letrec*
                      ((x8074
                        (begin
                          (write '(funapp 1007 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1007 59))
                        (display "\n")
                        (assert x8074))))
                    (g8073
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 1010 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g8075
                         (if val7253
                           val7253
                           (letrec*
                            ((val7254
                              (begin
                                (write '(funapp 1016 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g8076 (if val7254 val7254 #f)))
                             g8076)))))
                       g8075))))
                   g8073)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g8077
                     (letrec*
                      ((x8080
                        (begin
                          (write '(funapp 1026 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1026 60))
                        (display "\n")
                        (assert x8080))))
                    (g8078
                     (letrec*
                      ((x8081
                        (begin
                          (write '(funapp 1028 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1028 59))
                        (display "\n")
                        (assert x8081))))
                    (g8079
                     (letrec*
                      ((input-port
                        (begin
                          (write '(funapp 1031 36))
                          (display "\n")
                          (open-input-file filename)))
                       (res
                        (begin
                          (write '(funapp 1032 29))
                          (display "\n")
                          (proc input-port))))
                      (letrec*
                       ((g8082
                         (begin
                           (write '(funapp 1034 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g8083 res))
                       g8083))))
                   g8079)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g8084
                     (begin
                       (write '(funapp 1037 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1037 57))
                          (display "\n")
                          '())))))
                   g8084)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8085
                     (letrec*
                      ((x8088
                        (begin
                          (write '(funapp 1041 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1041 58))
                        (display "\n")
                        (assert x8088))))
                    (g8086
                     (letrec*
                      ((x8089
                        (begin
                          (write '(funapp 1042 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1042 58))
                        (display "\n")
                        (assert x8089))))
                    (g8087
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1045 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g8090
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1047 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g8090))))
                   g8087)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g8091
                     (letrec*
                      ((x8092
                        (letrec*
                         ((x8093
                           (begin
                             (write '(funapp 1055 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1055 58))
                           (display "\n")
                           (car x8093)))))
                      (begin
                        (write '(funapp 1056 23))
                        (display "\n")
                        (cdr x8092)))))
                   g8091)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g8094
                     (letrec*
                      ((x8095
                        (letrec*
                         ((x8096
                           (letrec*
                            ((x8097
                              (begin
                                (write '(funapp 1065 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1065 61))
                              (display "\n")
                              (cdr x8097)))))
                         (begin
                           (write '(funapp 1066 26))
                           (display "\n")
                           (car x8096)))))
                      (begin
                        (write '(funapp 1067 23))
                        (display "\n")
                        (cdr x8095)))))
                   g8094)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g8098
                     (letrec*
                      ((x8099
                        (letrec*
                         ((x8100
                           (begin
                             (write '(funapp 1075 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1075 58))
                           (display "\n")
                           (cdr x8100)))))
                      (begin
                        (write '(funapp 1076 23))
                        (display "\n")
                        (car x8099)))))
                   g8098)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g8101
                     (letrec*
                      ((x8102
                        (letrec*
                         ((x8103
                           (begin
                             (write '(funapp 1083 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1083 58))
                           (display "\n")
                           (car x8103)))))
                      (begin
                        (write '(funapp 1084 23))
                        (display "\n")
                        (car x8102)))))
                   g8101)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g8104
                     (letrec*
                      ((x8107
                        (begin
                          (write '(funapp 1089 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1089 58))
                        (display "\n")
                        (assert x8107))))
                    (g8105
                     (letrec*
                      ((x8108
                        (begin
                          (write '(funapp 1090 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1090 58))
                        (display "\n")
                        (assert x8108))))
                    (g8106
                     (letrec*
                      ((x8109
                        (begin
                          (write '(funapp 1091 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1091 66))
                        (display "\n")
                        (not x8109)))))
                   g8106)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g8110
                     (letrec*
                      ((x8111
                        (letrec*
                         ((x8112
                           (letrec*
                            ((x8113
                              (begin
                                (write '(funapp 1101 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1101 61))
                              (display "\n")
                              (car x8113)))))
                         (begin
                           (write '(funapp 1102 26))
                           (display "\n")
                           (car x8112)))))
                      (begin
                        (write '(funapp 1103 23))
                        (display "\n")
                        (car x8111)))))
                   g8110)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g8114
                     (letrec*
                      ((x8116
                        (begin
                          (write '(funapp 1108 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1108 59))
                        (display "\n")
                        (assert x8116))))
                    (g8115
                     (begin (write '(funapp 1109 28)) (display "\n") (< x 0))))
                   g8115)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g8117
                     (begin
                       (write '(funapp 1111 53))
                       (display "\n")
                       (memq e l))))
                   g8117)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g8118
                     (letrec*
                      ((x8119
                        (letrec*
                         ((x8120
                           (begin
                             (write '(funapp 1117 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1117 58))
                           (display "\n")
                           (car x8120)))))
                      (begin
                        (write '(funapp 1118 23))
                        (display "\n")
                        (car x8119)))))
                   g8118)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g8121
                     (begin (write '(funapp 1120 51)) (display "\n") '())))
                   g8121)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g8122
                     (letrec*
                      ((x8124
                        (begin
                          (write '(funapp 1124 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1124 57))
                        (display "\n")
                        (assert x8124))))
                    (g8123
                     (letrec*
                      ((x-cnd8125
                        (begin
                          (write '(funapp 1127 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8125
                        (begin (write '(funapp 1129 24)) (display "\n") '())
                        (letrec*
                         ((x8128
                           (letrec*
                            ((x8129
                              (begin
                                (write '(funapp 1131 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1131 61))
                              (display "\n")
                              (reverse x8129))))
                          (x8126
                           (letrec*
                            ((x8127
                              (begin
                                (write '(funapp 1132 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1132 61))
                              (display "\n")
                              (list x8127)))))
                         (begin
                           (write '(funapp 1133 26))
                           (display "\n")
                           (append x8128 x8126)))))))
                   g8123)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g8130
                     (letrec*
                      ((x8131
                        (letrec*
                         ((x8132
                           (letrec*
                            ((x8133
                              (begin
                                (write '(funapp 1142 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1142 61))
                              (display "\n")
                              (car x8133)))))
                         (begin
                           (write '(funapp 1143 26))
                           (display "\n")
                           (car x8132)))))
                      (begin
                        (write '(funapp 1144 23))
                        (display "\n")
                        (car x8131)))))
                   g8130)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g8134
                     (letrec*
                      ((x8135
                        (letrec*
                         ((x8136
                           (letrec*
                            ((x8137
                              (begin
                                (write '(funapp 1153 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1153 61))
                              (display "\n")
                              (car x8137)))))
                         (begin
                           (write '(funapp 1154 26))
                           (display "\n")
                           (cdr x8136)))))
                      (begin
                        (write '(funapp 1155 23))
                        (display "\n")
                        (cdr x8135)))))
                   g8134)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g8138
                     (letrec*
                      ((x8140
                        (begin
                          (write '(funapp 1160 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1160 59))
                        (display "\n")
                        (assert x8140))))
                    (g8139
                     (letrec*
                      ((x8141
                        (begin
                          (write '(funapp 1161 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1161 60))
                        (display "\n")
                        (= 1 x8141)))))
                   g8139)))
               (caadar
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
                                (write '(funapp 1170 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1170 61))
                              (display "\n")
                              (cdr x8145)))))
                         (begin
                           (write '(funapp 1171 26))
                           (display "\n")
                           (car x8144)))))
                      (begin
                        (write '(funapp 1172 23))
                        (display "\n")
                        (car x8143)))))
                   g8142)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g8146
                     (letrec*
                      ((x8149
                        (begin
                          (write '(funapp 1178 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1178 59))
                        (display "\n")
                        (assert x8149))))
                    (g8147
                     (letrec*
                      ((x8150
                        (begin
                          (write '(funapp 1179 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1179 60))
                        (display "\n")
                        (assert x8150))))
                    (g8148
                     (letrec*
                      ((x-cnd8151
                        (begin
                          (write '(funapp 1182 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd8151
                        (letrec*
                         ((g8152
                           (begin
                             (write '(funapp 1184 42))
                             (display "\n")
                             (proc))))
                         g8152)
                        (letrec*
                         ((x-cnd8153
                           (letrec*
                            ((x8154
                              (begin
                                (write '(funapp 1187 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1187 58))
                              (display "\n")
                              (null? x8154)))))
                         (if x-cnd8153
                           (letrec*
                            ((g8155
                              (letrec*
                               ((x8156
                                 (begin
                                   (write '(funapp 1191 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1191 61))
                                 (display "\n")
                                 (proc x8156)))))
                            g8155)
                           (letrec*
                            ((x-cnd8157
                              (letrec*
                               ((x8158
                                 (begin
                                   (write '(funapp 1195 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1195 62))
                                 (display "\n")
                                 (null? x8158)))))
                            (if x-cnd8157
                              (letrec*
                               ((g8159
                                 (letrec*
                                  ((x8161
                                    (begin
                                      (write '(funapp 1200 43))
                                      (display "\n")
                                      (car args)))
                                   (x8160
                                    (begin
                                      (write '(funapp 1200 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1201 35))
                                    (display "\n")
                                    (proc x8161 x8160)))))
                               g8159)
                              (letrec*
                               ((x-cnd8162
                                 (letrec*
                                  ((x8163
                                    (begin
                                      (write '(funapp 1206 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1207 35))
                                    (display "\n")
                                    (null? x8163)))))
                               (if x-cnd8162
                                 (letrec*
                                  ((g8164
                                    (letrec*
                                     ((x8167
                                       (begin
                                         (write '(funapp 1212 46))
                                         (display "\n")
                                         (car args)))
                                      (x8166
                                       (begin
                                         (write '(funapp 1213 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x8165
                                       (begin
                                         (write '(funapp 1214 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1215 38))
                                       (display "\n")
                                       (proc x8167 x8166 x8165)))))
                                  g8164)
                                 (letrec*
                                  ((x-cnd8168
                                    (letrec*
                                     ((x8169
                                       (begin
                                         (write '(funapp 1220 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1221 38))
                                       (display "\n")
                                       (null? x8169)))))
                                  (if x-cnd8168
                                    (letrec*
                                     ((g8170
                                       (letrec*
                                        ((x8174
                                          (begin
                                            (write '(funapp 1226 49))
                                            (display "\n")
                                            (car args)))
                                         (x8173
                                          (begin
                                            (write '(funapp 1227 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x8172
                                          (begin
                                            (write '(funapp 1228 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x8171
                                          (begin
                                            (write '(funapp 1229 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1230 41))
                                          (display "\n")
                                          (proc x8174 x8173 x8172 x8171)))))
                                     g8170)
                                    (letrec*
                                     ((x-cnd8175
                                       (letrec*
                                        ((x8176
                                          (letrec*
                                           ((x8177
                                             (begin
                                               (write '(funapp 1237 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1238 44))
                                             (display "\n")
                                             (cdr x8177)))))
                                        (begin
                                          (write '(funapp 1239 41))
                                          (display "\n")
                                          (null? x8176)))))
                                     (if x-cnd8175
                                       (letrec*
                                        ((g8178
                                          (letrec*
                                           ((x8184
                                             (begin
                                               (write '(funapp 1244 52))
                                               (display "\n")
                                               (car args)))
                                            (x8183
                                             (begin
                                               (write '(funapp 1245 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x8182
                                             (begin
                                               (write '(funapp 1246 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x8181
                                             (begin
                                               (write '(funapp 1247 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x8179
                                             (letrec*
                                              ((x8180
                                                (begin
                                                  (write '(funapp 1250 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1251 47))
                                                (display "\n")
                                                (car x8180)))))
                                           (begin
                                             (write '(funapp 1252 44))
                                             (display "\n")
                                             (proc
                                              x8184
                                              x8183
                                              x8182
                                              x8181
                                              x8179)))))
                                        g8178)
                                       (letrec*
                                        ((x-cnd8185
                                          (letrec*
                                           ((x8186
                                             (letrec*
                                              ((x8187
                                                (begin
                                                  (write '(funapp 1264 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1265 47))
                                                (display "\n")
                                                (cddr x8187)))))
                                           (begin
                                             (write '(funapp 1266 44))
                                             (display "\n")
                                             (null? x8186)))))
                                        (if x-cnd8185
                                          (letrec*
                                           ((g8188
                                             (letrec*
                                              ((x8196
                                                (begin
                                                  (write '(funapp 1271 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x8195
                                                (begin
                                                  (write '(funapp 1272 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x8194
                                                (begin
                                                  (write '(funapp 1273 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x8193
                                                (begin
                                                  (write '(funapp 1274 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x8191
                                                (letrec*
                                                 ((x8192
                                                   (begin
                                                     (write '(funapp 1277 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1278 50))
                                                   (display "\n")
                                                   (car x8192))))
                                               (x8189
                                                (letrec*
                                                 ((x8190
                                                   (begin
                                                     (write '(funapp 1281 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1282 50))
                                                   (display "\n")
                                                   (cadr x8190)))))
                                              (begin
                                                (write '(funapp 1283 47))
                                                (display "\n")
                                                (proc
                                                 x8196
                                                 x8195
                                                 x8194
                                                 x8193
                                                 x8191
                                                 x8189)))))
                                           g8188)
                                          (letrec*
                                           ((x-cnd8197
                                             (letrec*
                                              ((x8198
                                                (letrec*
                                                 ((x8199
                                                   (begin
                                                     (write '(funapp 1296 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1297 50))
                                                   (display "\n")
                                                   (cdddr x8199)))))
                                              (begin
                                                (write '(funapp 1298 47))
                                                (display "\n")
                                                (null? x8198)))))
                                           (if x-cnd8197
                                             (letrec*
                                              ((g8200
                                                (letrec*
                                                 ((x8210
                                                   (begin
                                                     (write '(funapp 1303 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x8209
                                                   (begin
                                                     (write '(funapp 1304 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x8208
                                                   (begin
                                                     (write '(funapp 1305 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x8207
                                                   (begin
                                                     (write '(funapp 1306 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x8205
                                                   (letrec*
                                                    ((x8206
                                                      (begin
                                                        (write
                                                         '(funapp 1309 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1310 53))
                                                      (display "\n")
                                                      (car x8206))))
                                                  (x8203
                                                   (letrec*
                                                    ((x8204
                                                      (begin
                                                        (write
                                                         '(funapp 1313 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1314 53))
                                                      (display "\n")
                                                      (cadr x8204))))
                                                  (x8201
                                                   (letrec*
                                                    ((x8202
                                                      (begin
                                                        (write
                                                         '(funapp 1317 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1318 53))
                                                      (display "\n")
                                                      (caddr x8202)))))
                                                 (begin
                                                   (write '(funapp 1319 50))
                                                   (display "\n")
                                                   (proc
                                                    x8210
                                                    x8209
                                                    x8208
                                                    x8207
                                                    x8205
                                                    x8203
                                                    x8201)))))
                                              g8200)
                                             (letrec*
                                              ((g8211
                                                (begin
                                                  (write '(funapp 1330 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g8211)))))))))))))))))))
                   g8148)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g8212
                     (letrec*
                      ((x8214
                        (begin
                          (write '(funapp 1336 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1336 57))
                        (display "\n")
                        (assert x8214))))
                    (g8213
                     (letrec*
                      ((x-cnd8215
                        (begin
                          (write '(funapp 1339 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8215
                        #f
                        (letrec*
                         ((x-cnd8216
                           (letrec*
                            ((x8217
                              (begin
                                (write '(funapp 1344 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1344 55))
                              (display "\n")
                              (equal? x8217 e)))))
                         (if x-cnd8216
                           l
                           (letrec*
                            ((x8218
                              (begin
                                (write '(funapp 1347 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1347 55))
                              (display "\n")
                              (member e x8218)))))))))
                   g8213)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g8219
                     (letrec*
                      ((x8220
                        (letrec*
                         ((x8221
                           (letrec*
                            ((x8222
                              (begin
                                (write '(funapp 1356 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1356 61))
                              (display "\n")
                              (cdr x8222)))))
                         (begin
                           (write '(funapp 1357 26))
                           (display "\n")
                           (cdr x8221)))))
                      (begin
                        (write '(funapp 1358 23))
                        (display "\n")
                        (cdr x8220)))))
                   g8219)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g8223
                     (letrec*
                      ((x8224
                        (letrec*
                         ((x8225
                           (letrec*
                            ((x8226
                              (begin
                                (write '(funapp 1367 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1367 61))
                              (display "\n")
                              (cdr x8226)))))
                         (begin
                           (write '(funapp 1368 26))
                           (display "\n")
                           (cdr x8225)))))
                      (begin
                        (write '(funapp 1369 23))
                        (display "\n")
                        (car x8224)))))
                   g8223)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g8227
                     (begin
                       (write '(funapp 1371 53))
                       (display "\n")
                       (random 42))))
                   g8227)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g8228
                     (letrec*
                      ((x8230
                        (begin
                          (write '(funapp 1375 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1375 59))
                        (display "\n")
                        (assert x8230))))
                    (g8229
                     (begin (write '(funapp 1376 28)) (display "\n") (= x 0))))
                   g8229)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8231
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1383 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g8232
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1385 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8232))))
                   g8231)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g8233
                     (letrec*
                      ((x8234
                        (begin
                          (write '(funapp 1391 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1391 55))
                        (display "\n")
                        (car x8234)))))
                   g8233)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g8235
                     (letrec*
                      ((val7257
                        (letrec*
                         ((x-cnd8236
                           (begin
                             (write '(funapp 1401 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8236
                           (letrec*
                            ((x8237
                              (begin
                                (write '(funapp 1403 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1403 55))
                              (display "\n")
                              (list? x8237)))
                           #f))))
                      (letrec*
                       ((g8238
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1406 52))
                             (display "\n")
                             (null? l)))))
                       g8238))))
                   g8235)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g8239
                     (letrec*
                      ((x8240
                        (letrec*
                         ((x8241
                           (letrec*
                            ((x8242
                              (begin
                                (write '(funapp 1416 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1416 61))
                              (display "\n")
                              (car x8242)))))
                         (begin
                           (write '(funapp 1417 26))
                           (display "\n")
                           (cdr x8241)))))
                      (begin
                        (write '(funapp 1418 23))
                        (display "\n")
                        (cdr x8240)))))
                   g8239)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g8243
                     (letrec*
                      ((x-cnd8244
                        (letrec*
                         ((x8245 #\0))
                         (begin
                           (write '(funapp 1425 58))
                           (display "\n")
                           (char<=? x8245 c)))))
                      (if x-cnd8244
                        (letrec*
                         ((x8246 #\9))
                         (begin
                           (write '(funapp 1427 48))
                           (display "\n")
                           (char<=? c x8246)))
                        #f))))
                   g8243)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g8247
                     (letrec*
                      ((x8249
                        (begin
                          (write '(funapp 1434 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1434 57))
                        (display "\n")
                        (assert x8249))))
                    (g8248
                     (letrec*
                      ((x-cnd8250
                        (begin
                          (write '(funapp 1437 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8250
                        #f
                        (letrec*
                         ((x-cnd8251
                           (letrec*
                            ((x8252
                              (begin
                                (write '(funapp 1442 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1442 56))
                              (display "\n")
                              (eqv? x8252 k)))))
                         (if x-cnd8251
                           (begin
                             (write '(funapp 1444 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8253
                              (begin
                                (write '(funapp 1445 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1445 55))
                              (display "\n")
                              (assq k x8253)))))))))
                   g8248)))
               (not (lambda (x) (letrec* ((g8254 (if x #f #t))) g8254)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g8255
                     (begin
                       (write '(funapp 1449 50))
                       (display "\n")
                       (append l1 l2))))
                   g8255)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g8256
                     (letrec*
                      ((x8258
                        (begin
                          (write '(funapp 1453 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1453 57))
                        (display "\n")
                        (assert x8258))))
                    (g8257
                     (letrec*
                      ((x-cnd8259
                        (begin
                          (write '(funapp 1456 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8259
                        #f
                        (letrec*
                         ((x-cnd8260
                           (letrec*
                            ((x8261
                              (begin
                                (write '(funapp 1461 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1461 55))
                              (display "\n")
                              (eq? x8261 e)))))
                         (if x-cnd8260
                           l
                           (letrec*
                            ((x8262
                              (begin
                                (write '(funapp 1464 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1464 55))
                              (display "\n")
                              (memq e x8262)))))))))
                   g8257)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g8263
                     (letrec*
                      ((x8264
                        (letrec*
                         ((x8265
                           (letrec*
                            ((x8266
                              (begin
                                (write '(funapp 1473 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1473 61))
                              (display "\n")
                              (car x8266)))))
                         (begin
                           (write '(funapp 1474 26))
                           (display "\n")
                           (cdr x8265)))))
                      (begin
                        (write '(funapp 1475 23))
                        (display "\n")
                        (car x8264)))))
                   g8263)))
               (length
                (lambda (l)
                  (letrec*
                   ((g8267
                     (letrec*
                      ((x8269
                        (begin
                          (write '(funapp 1480 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1480 57))
                        (display "\n")
                        (assert x8269))))
                    (g8268
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g8270
                             (letrec*
                              ((x-cnd8271
                                (begin
                                  (write '(funapp 1488 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd8271
                                0
                                (letrec*
                                 ((x8272
                                   (letrec*
                                    ((x8273
                                      (begin
                                        (write '(funapp 1493 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1493 63))
                                      (display "\n")
                                      (rec x8273)))))
                                 (begin
                                   (write '(funapp 1494 34))
                                   (display "\n")
                                   (+ 1 x8272)))))))
                           g8270))))
                      (letrec*
                       ((g8274
                         (begin
                           (write '(funapp 1496 40))
                           (display "\n")
                           (rec l))))
                       g8274))))
                   g8268)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8275
                     (letrec*
                      ((x8278
                        (begin
                          (write '(funapp 1501 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1501 58))
                        (display "\n")
                        (assert x8278))))
                    (g8276
                     (letrec*
                      ((x8279
                        (begin
                          (write '(funapp 1502 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1502 58))
                        (display "\n")
                        (assert x8279))))
                    (g8277
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1505 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g8280
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1507 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8280))))
                   g8277)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g8281
                     (letrec*
                      ((x8282
                        (begin
                          (write '(funapp 1513 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1513 65))
                        (display "\n")
                        (not x8282)))))
                   g8281)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g8283
                     (letrec*
                      ((x8284
                        (letrec*
                         ((x8285
                           (begin
                             (write '(funapp 1520 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1520 58))
                           (display "\n")
                           (car x8285)))))
                      (begin
                        (write '(funapp 1521 23))
                        (display "\n")
                        (cdr x8284)))))
                   g8283)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g8286
                     (letrec*
                      ((x8288
                        (begin
                          (write '(funapp 1526 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1526 57))
                        (display "\n")
                        (assert x8288))))
                    (g8287
                     (letrec*
                      ((x-cnd8289
                        (begin
                          (write '(funapp 1529 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8289
                        #f
                        (letrec*
                         ((x-cnd8290
                           (letrec*
                            ((x8291
                              (begin
                                (write '(funapp 1534 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1534 56))
                              (display "\n")
                              (equal? x8291 k)))))
                         (if x-cnd8290
                           (begin
                             (write '(funapp 1536 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8292
                              (begin
                                (write '(funapp 1537 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1537 55))
                              (display "\n")
                              (assoc k x8292)))))))))
                   g8287)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g8293
                     (letrec*
                      ((x8294
                        (begin
                          (write '(funapp 1542 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1542 55))
                        (display "\n")
                        (car x8294)))))
                   g8293)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g8295
                     (letrec*
                      ((x8298
                        (begin
                          (write '(funapp 1547 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1547 58))
                        (display "\n")
                        (assert x8298))))
                    (g8296
                     (letrec*
                      ((x8299
                        (begin
                          (write '(funapp 1548 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1548 58))
                        (display "\n")
                        (assert x8299))))
                    (g8297
                     (letrec*
                      ((x8300
                        (begin
                          (write '(funapp 1549 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1549 63))
                        (display "\n")
                        (not x8300)))))
                   g8297)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8301
                     (letrec*
                      ((val7259
                        (begin
                          (write '(funapp 1556 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g8302
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1558 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8302))))
                   g8301)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g8303
                     (letrec*
                      ((x8306
                        (begin
                          (write '(funapp 1564 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1564 62))
                        (display "\n")
                        (assert x8306))))
                    (g8304
                     (letrec*
                      ((x8307
                        (begin
                          (write '(funapp 1565 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1565 57))
                        (display "\n")
                        (assert x8307))))
                    (g8305
                     (letrec*
                      ((x-cnd8308
                        (begin
                          (write '(funapp 1568 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8308
                        #t
                        (letrec*
                         ((x-cnd8309
                           (begin
                             (write '(funapp 1572 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8309
                           (letrec*
                            ((g8310
                              (letrec*
                               ((x8312
                                 (begin
                                   (write '(funapp 1575 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1575 64))
                                 (display "\n")
                                 (f x8312))))
                             (g8311
                              (letrec*
                               ((x8313
                                 (begin
                                   (write '(funapp 1577 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1577 58))
                                 (display "\n")
                                 (for-each f x8313)))))
                            g8311)
                           (begin
                             (write '(funapp 1579 27))
                             (display "\n")
                             '())))))))
                   g8305)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g8314
                     (letrec*
                      ((x8316
                        (begin
                          (write '(funapp 1584 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1584 59))
                        (display "\n")
                        (assert x8316))))
                    (g8315
                     (letrec*
                      ((x-cnd8317
                        (begin
                          (write '(funapp 1586 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd8317
                        (begin
                          (write '(funapp 1586 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g8315)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8318
                     (letrec*
                      ((x8321
                        (begin
                          (write '(funapp 1591 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1591 58))
                        (display "\n")
                        (assert x8321))))
                    (g8319
                     (letrec*
                      ((x8322
                        (begin
                          (write '(funapp 1592 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1592 58))
                        (display "\n")
                        (assert x8322))))
                    (g8320
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1595 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g8323
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1597 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8323))))
                   g8320)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g8324
                     (letrec*
                      ((x8325
                        (letrec*
                         ((x8326
                           (letrec*
                            ((x8327
                              (begin
                                (write '(funapp 1607 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1607 61))
                              (display "\n")
                              (cdr x8327)))))
                         (begin
                           (write '(funapp 1608 26))
                           (display "\n")
                           (cdr x8326)))))
                      (begin
                        (write '(funapp 1609 23))
                        (display "\n")
                        (car x8325)))))
                   g8324)))
               (newline (lambda () (letrec* ((g8328 #f)) g8328)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g8329
                     (letrec*
                      ((x8331
                        (letrec*
                         ((x8332
                           (begin
                             (write '(funapp 1617 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1617 58))
                           (display "\n")
                           (abs x8332))))
                       (x8330
                        (begin
                          (write '(funapp 1618 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1619 23))
                        (display "\n")
                        (/ x8331 x8330)))))
                   g8329)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g8333
                     (letrec*
                      ((x8335
                        (begin
                          (write '(funapp 1625 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1625 59))
                        (display "\n")
                        (assert x8335))))
                    (g8334
                     (letrec*
                      ((x8336
                        (begin
                          (write '(funapp 1626 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1626 56))
                        (display "\n")
                        (not x8336)))))
                   g8334)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g8337
                     (letrec*
                      ((x8341
                        (begin
                          (write '(funapp 1631 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1631 57))
                        (display "\n")
                        (assert x8341))))
                    (g8338
                     (letrec*
                      ((x8342
                        (begin
                          (write '(funapp 1632 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1632 63))
                        (display "\n")
                        (assert x8342))))
                    (g8339
                     (letrec*
                      ((x8343
                        (letrec*
                         ((x8344
                           (begin
                             (write '(funapp 1635 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1635 61))
                           (display "\n")
                           (< index x8344)))))
                      (begin
                        (write '(funapp 1636 23))
                        (display "\n")
                        (assert x8343))))
                    (g8340
                     (letrec*
                      ((x-cnd8345
                        (begin
                          (write '(funapp 1639 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8345
                        (begin
                          (write '(funapp 1641 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8347
                           (begin
                             (write '(funapp 1643 34))
                             (display "\n")
                             (cdr l)))
                          (x8346
                           (begin
                             (write '(funapp 1643 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1644 26))
                           (display "\n")
                           (list-ref x8347 x8346)))))))
                   g8340)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8348
                     (letrec*
                      ((x-cnd8349
                        (begin
                          (write '(funapp 1651 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8349
                        a
                        (letrec*
                         ((x8350
                           (begin
                             (write '(funapp 1654 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1654 57))
                           (display "\n")
                           (gcd b x8350)))))))
                   g8348)))
               (block
                (lambda (x7748 y7749 color7750)
                  (letrec*
                   ((g8351
                     (letrec*
                      ((x8352
                        (letrec*
                         ((x8353
                           (letrec*
                            ((x8354
                              (begin
                                (write '(funapp 1665 37))
                                (display "\n")
                                (orig-cons
                                 color7750
                                 (begin
                                   (write '(funapp 1665 57))
                                   (display "\n")
                                   '())))))
                            (begin
                              (write '(funapp 1666 29))
                              (display "\n")
                              (orig-cons y7749 x8354)))))
                         (begin
                           (write '(funapp 1667 26))
                           (display "\n")
                           (orig-cons x7748 x8353)))))
                      (begin
                        (write '(funapp 1668 23))
                        (display "\n")
                        (orig-cons
                         (begin
                           (write '(funapp 1668 33))
                           (display "\n")
                           'block)
                         x8352)))))
                   g8351)))
               (block?
                (lambda (block7747)
                  (letrec*
                   ((g8355
                     (letrec*
                      ((x8356
                        (begin
                          (write '(funapp 1674 39))
                          (display "\n")
                          (car block7747))))
                      (begin
                        (write '(funapp 1674 57))
                        (display "\n")
                        (eq?
                         x8356
                         (begin
                           (write '(funapp 1674 67))
                           (display "\n")
                           'block))))))
                   g8355)))
               (block-x
                (lambda (block)
                  (letrec*
                   ((g8357
                     (letrec*
                      ((x8358
                        (begin
                          (write '(funapp 1680 39))
                          (display "\n")
                          (orig-cdr block))))
                      (begin
                        (write '(funapp 1680 58))
                        (display "\n")
                        (orig-car x8358)))))
                   g8357)))
               (block-y
                (lambda (block)
                  (letrec*
                   ((g8359
                     (letrec*
                      ((x8360
                        (letrec*
                         ((x8361
                           (begin
                             (write '(funapp 1688 42))
                             (display "\n")
                             (orig-cdr block))))
                         (begin
                           (write '(funapp 1688 61))
                           (display "\n")
                           (orig-cdr x8361)))))
                      (begin
                        (write '(funapp 1689 23))
                        (display "\n")
                        (orig-car x8360)))))
                   g8359)))
               (block-color
                (lambda (block)
                  (letrec*
                   ((g8362
                     (letrec*
                      ((x8363
                        (letrec*
                         ((x8364
                           (letrec*
                            ((x8365
                              (begin
                                (write '(funapp 1700 37))
                                (display "\n")
                                (orig-cdr block))))
                            (begin
                              (write '(funapp 1701 29))
                              (display "\n")
                              (orig-cdr x8365)))))
                         (begin
                           (write '(funapp 1702 26))
                           (display "\n")
                           (orig-cdr x8364)))))
                      (begin
                        (write '(funapp 1703 23))
                        (display "\n")
                        (orig-car x8363)))))
                   g8362)))
               (tetra
                (lambda (center7755 blocks7756)
                  (letrec*
                   ((g8366
                     (letrec*
                      ((x8367
                        (letrec*
                         ((x8368
                           (begin
                             (write '(funapp 1712 34))
                             (display "\n")
                             (orig-cons
                              blocks7756
                              (begin
                                (write '(funapp 1712 55))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1713 26))
                           (display "\n")
                           (orig-cons center7755 x8368)))))
                      (begin
                        (write '(funapp 1714 23))
                        (display "\n")
                        (orig-cons
                         (begin
                           (write '(funapp 1714 33))
                           (display "\n")
                           'tetra)
                         x8367)))))
                   g8366)))
               (tetra?
                (lambda (tetra7754)
                  (letrec*
                   ((g8369
                     (letrec*
                      ((x8370
                        (begin
                          (write '(funapp 1720 39))
                          (display "\n")
                          (car tetra7754))))
                      (begin
                        (write '(funapp 1720 57))
                        (display "\n")
                        (eq?
                         x8370
                         (begin
                           (write '(funapp 1720 67))
                           (display "\n")
                           'tetra))))))
                   g8369)))
               (tetra-center
                (lambda (tetra)
                  (letrec*
                   ((g8371
                     (letrec*
                      ((x8372
                        (begin
                          (write '(funapp 1726 39))
                          (display "\n")
                          (orig-cdr tetra))))
                      (begin
                        (write '(funapp 1726 58))
                        (display "\n")
                        (orig-car x8372)))))
                   g8371)))
               (tetra-blocks
                (lambda (tetra)
                  (letrec*
                   ((g8373
                     (letrec*
                      ((x8374
                        (letrec*
                         ((x8375
                           (begin
                             (write '(funapp 1734 42))
                             (display "\n")
                             (orig-cdr tetra))))
                         (begin
                           (write '(funapp 1734 61))
                           (display "\n")
                           (orig-cdr x8375)))))
                      (begin
                        (write '(funapp 1735 23))
                        (display "\n")
                        (orig-car x8374)))))
                   g8373)))
               (world
                (lambda (tetra7760 blocks7761)
                  (letrec*
                   ((g8376
                     (letrec*
                      ((x8377
                        (letrec*
                         ((x8378
                           (begin
                             (write '(funapp 1744 34))
                             (display "\n")
                             (orig-cons
                              blocks7761
                              (begin
                                (write '(funapp 1744 55))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1745 26))
                           (display "\n")
                           (orig-cons tetra7760 x8378)))))
                      (begin
                        (write '(funapp 1746 23))
                        (display "\n")
                        (orig-cons
                         (begin
                           (write '(funapp 1746 33))
                           (display "\n")
                           'world)
                         x8377)))))
                   g8376)))
               (world?
                (lambda (world7759)
                  (letrec*
                   ((g8379
                     (letrec*
                      ((x8380
                        (begin
                          (write '(funapp 1752 39))
                          (display "\n")
                          (car world7759))))
                      (begin
                        (write '(funapp 1752 57))
                        (display "\n")
                        (eq?
                         x8380
                         (begin
                           (write '(funapp 1752 67))
                           (display "\n")
                           'world))))))
                   g8379)))
               (world-tetra
                (lambda (world)
                  (letrec*
                   ((g8381
                     (letrec*
                      ((x8382
                        (begin
                          (write '(funapp 1758 39))
                          (display "\n")
                          (orig-cdr world))))
                      (begin
                        (write '(funapp 1758 58))
                        (display "\n")
                        (orig-car x8382)))))
                   g8381)))
               (world-blocks
                (lambda (world)
                  (letrec*
                   ((g8383
                     (letrec*
                      ((x8384
                        (letrec*
                         ((x8385
                           (begin
                             (write '(funapp 1766 42))
                             (display "\n")
                             (orig-cdr world))))
                         (begin
                           (write '(funapp 1766 61))
                           (display "\n")
                           (orig-cdr x8385)))))
                      (begin
                        (write '(funapp 1767 23))
                        (display "\n")
                        (orig-car x8384)))))
                   g8383)))
               (posn
                (lambda (x7765 y7766)
                  (letrec*
                   ((g8386
                     (letrec*
                      ((x8387
                        (letrec*
                         ((x8388
                           (begin
                             (write '(funapp 1776 34))
                             (display "\n")
                             (orig-cons
                              y7766
                              (begin
                                (write '(funapp 1776 50))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1777 26))
                           (display "\n")
                           (orig-cons x7765 x8388)))))
                      (begin
                        (write '(funapp 1778 23))
                        (display "\n")
                        (orig-cons
                         (begin (write '(funapp 1778 33)) (display "\n") 'posn)
                         x8387)))))
                   g8386)))
               (posn?
                (lambda (posn7764)
                  (letrec*
                   ((g8389
                     (letrec*
                      ((x8390
                        (begin
                          (write '(funapp 1784 39))
                          (display "\n")
                          (car posn7764))))
                      (begin
                        (write '(funapp 1784 56))
                        (display "\n")
                        (eq?
                         x8390
                         (begin
                           (write '(funapp 1784 66))
                           (display "\n")
                           'posn))))))
                   g8389)))
               (posn-x
                (lambda (posn)
                  (letrec*
                   ((g8391
                     (letrec*
                      ((x8392
                        (begin
                          (write '(funapp 1790 39))
                          (display "\n")
                          (orig-cdr posn))))
                      (begin
                        (write '(funapp 1790 57))
                        (display "\n")
                        (orig-car x8392)))))
                   g8391)))
               (posn-y
                (lambda (posn)
                  (letrec*
                   ((g8393
                     (letrec*
                      ((x8394
                        (letrec*
                         ((x8395
                           (begin
                             (write '(funapp 1798 42))
                             (display "\n")
                             (orig-cdr posn))))
                         (begin
                           (write '(funapp 1798 60))
                           (display "\n")
                           (orig-cdr x8395)))))
                      (begin
                        (write '(funapp 1799 23))
                        (display "\n")
                        (orig-car x8394)))))
                   g8393)))
               (COLOR/C symbol?/c)
               (POSN/C
                (lambda (j7396 k7397 v7395)
                  (letrec*
                   ((g8396
                     (letrec*
                      ((checked7398
                        (letrec*
                         ((x8397
                           (letrec*
                            ((x8398
                              (begin
                                (write '(funapp 1811 37))
                                (display "\n")
                                (orig-cdr v7395))))
                            (begin
                              (write '(funapp 1812 29))
                              (display "\n")
                              (orig-car x8398)))))
                         (begin
                           (write '(funapp 1813 26))
                           (display "\n")
                           (real?/c j7396 k7397 x8397)))))
                      (letrec*
                       ((g8399
                         (letrec*
                          ((checked7399
                            (letrec*
                             ((x8400
                               (letrec*
                                ((x8401
                                  (letrec*
                                   ((x8402
                                     (begin
                                       (write '(funapp 1823 44))
                                       (display "\n")
                                       (orig-cdr v7395))))
                                   (begin
                                     (write '(funapp 1824 36))
                                     (display "\n")
                                     (orig-cdr x8402)))))
                                (begin
                                  (write '(funapp 1825 33))
                                  (display "\n")
                                  (orig-car x8401)))))
                             (begin
                               (write '(funapp 1826 30))
                               (display "\n")
                               (real?/c j7396 k7397 x8400)))))
                          (letrec*
                           ((g8403
                             (letrec*
                              ((x8404
                                (letrec*
                                 ((x8405
                                   (begin
                                     (write '(funapp 1832 42))
                                     (display "\n")
                                     (cons
                                      checked7399
                                      (begin
                                        (write '(funapp 1832 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1833 34))
                                   (display "\n")
                                   (cons checked7398 x8405)))))
                              (begin
                                (write '(funapp 1834 31))
                                (display "\n")
                                (cons posn x8404)))))
                           g8403))))
                       g8399))))
                   g8396)))
               (BLOCK/C
                (lambda (j7402 k7403 v7401)
                  (letrec*
                   ((g8406
                     (letrec*
                      ((checked7404
                        (letrec*
                         ((x8407
                           (letrec*
                            ((x8408
                              (begin
                                (write '(funapp 1847 37))
                                (display "\n")
                                (orig-cdr v7401))))
                            (begin
                              (write '(funapp 1848 29))
                              (display "\n")
                              (orig-car x8408)))))
                         (begin
                           (write '(funapp 1849 26))
                           (display "\n")
                           (real?/c j7402 k7403 x8407)))))
                      (letrec*
                       ((g8409
                         (letrec*
                          ((checked7405
                            (letrec*
                             ((x8410
                               (letrec*
                                ((x8411
                                  (letrec*
                                   ((x8412
                                     (begin
                                       (write '(funapp 1859 44))
                                       (display "\n")
                                       (orig-cdr v7401))))
                                   (begin
                                     (write '(funapp 1860 36))
                                     (display "\n")
                                     (orig-cdr x8412)))))
                                (begin
                                  (write '(funapp 1861 33))
                                  (display "\n")
                                  (orig-car x8411)))))
                             (begin
                               (write '(funapp 1862 30))
                               (display "\n")
                               (real?/c j7402 k7403 x8410)))))
                          (letrec*
                           ((g8413
                             (letrec*
                              ((checked7406
                                (letrec*
                                 ((x8414
                                   (letrec*
                                    ((x8415
                                      (letrec*
                                       ((x8416
                                         (letrec*
                                          ((x8417
                                            (begin
                                              (write '(funapp 1874 51))
                                              (display "\n")
                                              (orig-cdr v7401))))
                                          (begin
                                            (write '(funapp 1875 43))
                                            (display "\n")
                                            (orig-cdr x8417)))))
                                       (begin
                                         (write '(funapp 1876 40))
                                         (display "\n")
                                         (orig-cdr x8416)))))
                                    (begin
                                      (write '(funapp 1877 37))
                                      (display "\n")
                                      (orig-car x8415)))))
                                 (begin
                                   (write '(funapp 1878 34))
                                   (display "\n")
                                   (COLOR/C j7402 k7403 x8414)))))
                              (letrec*
                               ((g8418
                                 (letrec*
                                  ((x8419
                                    (letrec*
                                     ((x8420
                                       (letrec*
                                        ((x8421
                                          (begin
                                            (write '(funapp 1886 49))
                                            (display "\n")
                                            (cons
                                             checked7406
                                             (begin
                                               (write '(funapp 1886 66))
                                               (display "\n")
                                               '())))))
                                        (begin
                                          (write '(funapp 1887 41))
                                          (display "\n")
                                          (cons checked7405 x8421)))))
                                     (begin
                                       (write '(funapp 1888 38))
                                       (display "\n")
                                       (cons checked7404 x8420)))))
                                  (begin
                                    (write '(funapp 1889 35))
                                    (display "\n")
                                    (cons block x8419)))))
                               g8418))))
                           g8413))))
                       g8409))))
                   g8406)))
               (BSET/C
                (begin
                  (write '(funapp 1894 24))
                  (display "\n")
                  (listof BLOCK/C)))
               (TETRA/C
                (lambda (j7409 k7410 v7408)
                  (letrec*
                   ((g8422
                     (letrec*
                      ((checked7411
                        (letrec*
                         ((x8423
                           (letrec*
                            ((x8424
                              (begin
                                (write '(funapp 1904 37))
                                (display "\n")
                                (orig-cdr v7408))))
                            (begin
                              (write '(funapp 1905 29))
                              (display "\n")
                              (orig-car x8424)))))
                         (begin
                           (write '(funapp 1906 26))
                           (display "\n")
                           (POSN/C j7409 k7410 x8423)))))
                      (letrec*
                       ((g8425
                         (letrec*
                          ((checked7412
                            (letrec*
                             ((x8426
                               (letrec*
                                ((x8427
                                  (letrec*
                                   ((x8428
                                     (begin
                                       (write '(funapp 1916 44))
                                       (display "\n")
                                       (orig-cdr v7408))))
                                   (begin
                                     (write '(funapp 1917 36))
                                     (display "\n")
                                     (orig-cdr x8428)))))
                                (begin
                                  (write '(funapp 1918 33))
                                  (display "\n")
                                  (orig-car x8427)))))
                             (begin
                               (write '(funapp 1919 30))
                               (display "\n")
                               (BSET/C j7409 k7410 x8426)))))
                          (letrec*
                           ((g8429
                             (letrec*
                              ((x8430
                                (letrec*
                                 ((x8431
                                   (begin
                                     (write '(funapp 1925 42))
                                     (display "\n")
                                     (cons
                                      checked7412
                                      (begin
                                        (write '(funapp 1925 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1926 34))
                                   (display "\n")
                                   (cons checked7411 x8431)))))
                              (begin
                                (write '(funapp 1927 31))
                                (display "\n")
                                (cons tetra x8430)))))
                           g8429))))
                       g8425))))
                   g8422)))
               (WORLD/C
                (lambda (j7415 k7416 v7414)
                  (letrec*
                   ((g8432
                     (letrec*
                      ((checked7417
                        (letrec*
                         ((x8433
                           (letrec*
                            ((x8434
                              (begin
                                (write '(funapp 1940 37))
                                (display "\n")
                                (orig-cdr v7414))))
                            (begin
                              (write '(funapp 1941 29))
                              (display "\n")
                              (orig-car x8434)))))
                         (begin
                           (write '(funapp 1942 26))
                           (display "\n")
                           (TETRA/C j7415 k7416 x8433)))))
                      (letrec*
                       ((g8435
                         (letrec*
                          ((checked7418
                            (letrec*
                             ((x8436
                               (letrec*
                                ((x8437
                                  (letrec*
                                   ((x8438
                                     (begin
                                       (write '(funapp 1952 44))
                                       (display "\n")
                                       (orig-cdr v7414))))
                                   (begin
                                     (write '(funapp 1953 36))
                                     (display "\n")
                                     (orig-cdr x8438)))))
                                (begin
                                  (write '(funapp 1954 33))
                                  (display "\n")
                                  (orig-car x8437)))))
                             (begin
                               (write '(funapp 1955 30))
                               (display "\n")
                               (BSET/C j7415 k7416 x8436)))))
                          (letrec*
                           ((g8439
                             (letrec*
                              ((x8440
                                (letrec*
                                 ((x8441
                                   (begin
                                     (write '(funapp 1961 42))
                                     (display "\n")
                                     (cons
                                      checked7418
                                      (begin
                                        (write '(funapp 1961 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1962 34))
                                   (display "\n")
                                   (cons checked7417 x8441)))))
                              (begin
                                (write '(funapp 1963 31))
                                (display "\n")
                                (cons world x8440)))))
                           g8439))))
                       g8435))))
                   g8432)))
               (posn=?
                (lambda (p1 p2)
                  (letrec*
                   ((g8442
                     (letrec*
                      ((x-cnd8443
                        (letrec*
                         ((x8445
                           (begin
                             (write '(funapp 1974 34))
                             (display "\n")
                             (posn-x p1)))
                          (x8444
                           (begin
                             (write '(funapp 1974 54))
                             (display "\n")
                             (posn-x p2))))
                         (begin
                           (write '(funapp 1975 26))
                           (display "\n")
                           (= x8445 x8444)))))
                      (if x-cnd8443
                        (letrec*
                         ((x8447
                           (begin
                             (write '(funapp 1978 34))
                             (display "\n")
                             (posn-y p1)))
                          (x8446
                           (begin
                             (write '(funapp 1978 54))
                             (display "\n")
                             (posn-y p2))))
                         (begin
                           (write '(funapp 1979 26))
                           (display "\n")
                           (= x8447 x8446)))
                        #f))))
                   g8442)))
               (block-size 20)
               (board-height 20)
               (board-width 10)
               (block=?
                (lambda (b1 b2)
                  (letrec*
                   ((g8448
                     (letrec*
                      ((x-cnd8449
                        (letrec*
                         ((x8451
                           (begin
                             (write '(funapp 1992 34))
                             (display "\n")
                             (block-x b1)))
                          (x8450
                           (begin
                             (write '(funapp 1992 55))
                             (display "\n")
                             (block-x b2))))
                         (begin
                           (write '(funapp 1993 26))
                           (display "\n")
                           (= x8451 x8450)))))
                      (if x-cnd8449
                        (letrec*
                         ((x8453
                           (begin
                             (write '(funapp 1996 34))
                             (display "\n")
                             (block-y b1)))
                          (x8452
                           (begin
                             (write '(funapp 1996 55))
                             (display "\n")
                             (block-y b2))))
                         (begin
                           (write '(funapp 1997 26))
                           (display "\n")
                           (= x8453 x8452)))
                        #f))))
                   g8448)))
               (block-move
                (lambda (dx dy b)
                  (letrec*
                   ((g8454
                     (letrec*
                      ((x8458
                        (letrec*
                         ((x8459
                           (begin
                             (write '(funapp 2005 48))
                             (display "\n")
                             (block-x b))))
                         (begin
                           (write '(funapp 2005 62))
                           (display "\n")
                           (+ dx x8459))))
                       (x8456
                        (letrec*
                         ((x8457
                           (begin
                             (write '(funapp 2006 48))
                             (display "\n")
                             (block-y b))))
                         (begin
                           (write '(funapp 2006 62))
                           (display "\n")
                           (+ dy x8457))))
                       (x8455
                        (begin
                          (write '(funapp 2007 31))
                          (display "\n")
                          (block-color b))))
                      (begin
                        (write '(funapp 2008 23))
                        (display "\n")
                        (block x8458 x8456 x8455)))))
                   g8454)))
               (block-rotate-ccw
                (lambda (c b)
                  (letrec*
                   ((g8460
                     (letrec*
                      ((x8467
                        (letrec*
                         ((x8471
                           (begin
                             (write '(funapp 2017 34))
                             (display "\n")
                             (posn-x c)))
                          (x8468
                           (letrec*
                            ((x8470
                              (begin
                                (write '(funapp 2020 37))
                                (display "\n")
                                (posn-y c)))
                             (x8469
                              (begin
                                (write '(funapp 2020 56))
                                (display "\n")
                                (block-y b))))
                            (begin
                              (write '(funapp 2021 29))
                              (display "\n")
                              (- x8470 x8469)))))
                         (begin
                           (write '(funapp 2022 26))
                           (display "\n")
                           (+ x8471 x8468))))
                       (x8462
                        (letrec*
                         ((x8466
                           (begin
                             (write '(funapp 2025 34))
                             (display "\n")
                             (posn-y c)))
                          (x8463
                           (letrec*
                            ((x8465
                              (begin
                                (write '(funapp 2028 37))
                                (display "\n")
                                (block-x b)))
                             (x8464
                              (begin
                                (write '(funapp 2028 57))
                                (display "\n")
                                (posn-x c))))
                            (begin
                              (write '(funapp 2029 29))
                              (display "\n")
                              (- x8465 x8464)))))
                         (begin
                           (write '(funapp 2030 26))
                           (display "\n")
                           (+ x8466 x8463))))
                       (x8461
                        (begin
                          (write '(funapp 2031 31))
                          (display "\n")
                          (block-color b))))
                      (begin
                        (write '(funapp 2032 23))
                        (display "\n")
                        (block x8467 x8462 x8461)))))
                   g8460)))
               (block-rotate-cw
                (lambda (c b)
                  (letrec*
                   ((g8472
                     (letrec*
                      ((x8473
                        (letrec*
                         ((x8474
                           (begin
                             (write '(funapp 2041 34))
                             (display "\n")
                             (block-rotate-ccw c b))))
                         (begin
                           (write '(funapp 2042 26))
                           (display "\n")
                           (block-rotate-ccw c x8474)))))
                      (begin
                        (write '(funapp 2043 23))
                        (display "\n")
                        (block-rotate-ccw c x8473)))))
                   g8472)))
               (ormap
                (lambda (p? xs)
                  (letrec*
                   ((g8475
                     (letrec*
                      ((x-cnd8476
                        (begin
                          (write '(funapp 2050 35))
                          (display "\n")
                          (null? xs))))
                      (if x-cnd8476
                        (letrec* ((g8477 #f)) g8477)
                        (letrec*
                         ((g8478
                           (letrec*
                            ((x8481
                              (letrec*
                               ((x8482
                                 (begin
                                   (write '(funapp 2056 54))
                                   (display "\n")
                                   (car xs))))
                               (begin
                                 (write '(funapp 2056 65))
                                 (display "\n")
                                 (p? x8482))))
                             (x8479
                              (letrec*
                               ((x8480
                                 (begin
                                   (write '(funapp 2058 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 2058 59))
                                 (display "\n")
                                 (ormap p? x8480)))))
                            (begin
                              (write '(funapp 2059 29))
                              (display "\n")
                              (or x8481 x8479)))))
                         g8478)))))
                   g8475)))
               (andmap
                (lambda (p? xs)
                  (letrec*
                   ((g8483
                     (letrec*
                      ((x-cnd8484
                        (begin
                          (write '(funapp 2067 35))
                          (display "\n")
                          (null? xs))))
                      (if x-cnd8484
                        (letrec* ((g8485 #t)) g8485)
                        (letrec*
                         ((g8486
                           (letrec*
                            ((x8489
                              (letrec*
                               ((x8490
                                 (begin
                                   (write '(funapp 2073 54))
                                   (display "\n")
                                   (car xs))))
                               (begin
                                 (write '(funapp 2073 65))
                                 (display "\n")
                                 (p? x8490))))
                             (x8487
                              (letrec*
                               ((x8488
                                 (begin
                                   (write '(funapp 2075 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 2075 59))
                                 (display "\n")
                                 (andmap p? x8488)))))
                            (begin
                              (write '(funapp 2076 29))
                              (display "\n")
                              (and x8489 x8487)))))
                         g8486)))))
                   g8483)))
               (filter
                (lambda (p? xs)
                  (letrec*
                   ((g8491
                     (letrec*
                      ((x-cnd8492
                        (begin
                          (write '(funapp 2084 35))
                          (display "\n")
                          (null? xs))))
                      (if x-cnd8492
                        (letrec* ((g8493 null)) g8493)
                        (letrec*
                         ((x-cnd8494
                           (letrec*
                            ((x8495
                              (begin
                                (write '(funapp 2088 55))
                                (display "\n")
                                (car xs))))
                            (begin
                              (write '(funapp 2088 66))
                              (display "\n")
                              (p? x8495)))))
                         (if x-cnd8494
                           (letrec*
                            ((g8496
                              (letrec*
                               ((x8499
                                 (begin
                                   (write '(funapp 2093 40))
                                   (display "\n")
                                   (car xs)))
                                (x8497
                                 (letrec*
                                  ((x8498
                                    (begin
                                      (write '(funapp 2096 43))
                                      (display "\n")
                                      (cdr xs))))
                                  (begin
                                    (write '(funapp 2097 35))
                                    (display "\n")
                                    (filter p? x8498)))))
                               (begin
                                 (write '(funapp 2098 32))
                                 (display "\n")
                                 (cons x8499 x8497)))))
                            g8496)
                           (letrec*
                            ((g8500
                              (letrec*
                               ((x8501
                                 (begin
                                   (write '(funapp 2102 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 2102 59))
                                 (display "\n")
                                 (filter p? x8501)))))
                            g8500)))))))
                   g8491)))
               (append
                (lambda (l r)
                  (letrec*
                   ((g8502
                     (letrec*
                      ((x-cnd8503
                        (begin
                          (write '(funapp 2110 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8503
                        (letrec* ((g8504 r)) g8504)
                        (letrec*
                         ((g8505
                           (letrec*
                            ((x8508
                              (begin
                                (write '(funapp 2116 37))
                                (display "\n")
                                (car l)))
                             (x8506
                              (letrec*
                               ((x8507
                                 (begin
                                   (write '(funapp 2118 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 2118 58))
                                 (display "\n")
                                 (append x8507 r)))))
                            (begin
                              (write '(funapp 2119 29))
                              (display "\n")
                              (cons x8508 x8506)))))
                         g8505)))))
                   g8502)))
               (foldr
                (lambda (f a xs)
                  (letrec*
                   ((g8509
                     (letrec*
                      ((x-cnd8510
                        (begin
                          (write '(funapp 2127 35))
                          (display "\n")
                          (null? xs))))
                      (if x-cnd8510
                        (letrec* ((g8511 a)) g8511)
                        (letrec*
                         ((g8512
                           (letrec*
                            ((x8515
                              (begin
                                (write '(funapp 2133 37))
                                (display "\n")
                                (car xs)))
                             (x8513
                              (letrec*
                               ((x8514
                                 (begin
                                   (write '(funapp 2135 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 2135 59))
                                 (display "\n")
                                 (foldr f a x8514)))))
                            (begin
                              (write '(funapp 2136 29))
                              (display "\n")
                              (f x8515 x8513)))))
                         g8512)))))
                   g8509)))
               (blocks-contains?
                (lambda (bs b)
                  (letrec*
                   ((g8516
                     (begin
                       (write '(funapp 2143 22))
                       (display "\n")
                       (ormap
                        (lambda (c)
                          (letrec*
                           ((g8517
                             (begin
                               (write '(funapp 2144 52))
                               (display "\n")
                               (block=? b c))))
                           g8517))
                        bs))))
                   g8516)))
               (blocks-subset?
                (lambda (bs1 bs2)
                  (letrec*
                   ((g8518
                     (begin
                       (write '(funapp 2151 22))
                       (display "\n")
                       (andmap
                        (lambda (b)
                          (letrec*
                           ((g8519
                             (begin
                               (write '(funapp 2153 42))
                               (display "\n")
                               (blocks-contains? bs2 b))))
                           g8519))
                        bs1))))
                   g8518)))
               (blocks=?
                (lambda (bs1 bs2)
                  (letrec*
                   ((g8520
                     (letrec*
                      ((x-cnd8521
                        (begin
                          (write '(funapp 2161 35))
                          (display "\n")
                          (blocks-subset? bs1 bs2))))
                      (if x-cnd8521
                        (begin
                          (write '(funapp 2162 37))
                          (display "\n")
                          (blocks-subset? bs2 bs1))
                        #f))))
                   g8520)))
               (blocks-intersect
                (lambda (bs1 bs2)
                  (letrec*
                   ((g8522
                     (begin
                       (write '(funapp 2168 22))
                       (display "\n")
                       (filter
                        (lambda (b)
                          (letrec*
                           ((g8523
                             (begin
                               (write '(funapp 2170 42))
                               (display "\n")
                               (blocks-contains? bs2 b))))
                           g8523))
                        bs1))))
                   g8522)))
               (blocks-count
                (lambda (bs)
                  (letrec*
                   ((g8524
                     (begin
                       (write '(funapp 2174 47))
                       (display "\n")
                       (length bs))))
                   g8524)))
               (blocks-move
                (lambda (dx dy bs)
                  (letrec*
                   ((g8525
                     (begin
                       (write '(funapp 2179 22))
                       (display "\n")
                       (map
                        (lambda (b)
                          (letrec*
                           ((g8526
                             (begin
                               (write '(funapp 2181 42))
                               (display "\n")
                               (block-move dx dy b))))
                           g8526))
                        bs))))
                   g8525)))
               (blocks-rotate-ccw
                (lambda (c bs)
                  (letrec*
                   ((g8527
                     (begin
                       (write '(funapp 2188 22))
                       (display "\n")
                       (map
                        (lambda (b)
                          (letrec*
                           ((g8528
                             (begin
                               (write '(funapp 2190 42))
                               (display "\n")
                               (block-rotate-ccw c b))))
                           g8528))
                        bs))))
                   g8527)))
               (blocks-rotate-cw
                (lambda (c bs)
                  (letrec*
                   ((g8529
                     (begin
                       (write '(funapp 2197 22))
                       (display "\n")
                       (map
                        (lambda (b)
                          (letrec*
                           ((g8530
                             (begin
                               (write '(funapp 2199 42))
                               (display "\n")
                               (block-rotate-cw c b))))
                           g8530))
                        bs))))
                   g8529)))
               (blocks-change-color
                (lambda (bs c)
                  (letrec*
                   ((g8531
                     (begin
                       (write '(funapp 2206 22))
                       (display "\n")
                       (map
                        (lambda (b)
                          (letrec*
                           ((g8532
                             (letrec*
                              ((x8534
                                (begin
                                  (write '(funapp 2211 37))
                                  (display "\n")
                                  (block-x b)))
                               (x8533
                                (begin
                                  (write '(funapp 2211 57))
                                  (display "\n")
                                  (block-y b))))
                              (begin
                                (write '(funapp 2212 29))
                                (display "\n")
                                (block x8534 x8533 c)))))
                           g8532))
                        bs))))
                   g8531)))
               (blocks-row
                (lambda (bs i)
                  (letrec*
                   ((g8535
                     (begin
                       (write '(funapp 2220 22))
                       (display "\n")
                       (filter
                        (lambda (b)
                          (letrec*
                           ((g8536
                             (letrec*
                              ((x8537
                                (begin
                                  (write '(funapp 2223 51))
                                  (display "\n")
                                  (block-y b))))
                              (begin
                                (write '(funapp 2223 65))
                                (display "\n")
                                (= i x8537)))))
                           g8536))
                        bs))))
                   g8535)))
               (full-row?
                (lambda (bs i)
                  (letrec*
                   ((g8538
                     (letrec*
                      ((x8539
                        (letrec*
                         ((x8540
                           (begin
                             (write '(funapp 2234 34))
                             (display "\n")
                             (blocks-row bs i))))
                         (begin
                           (write '(funapp 2235 26))
                           (display "\n")
                           (blocks-count x8540)))))
                      (begin
                        (write '(funapp 2236 23))
                        (display "\n")
                        (= board-width x8539)))))
                   g8538)))
               (blocks-overflow?
                (lambda (bs)
                  (letrec*
                   ((g8541
                     (begin
                       (write '(funapp 2242 22))
                       (display "\n")
                       (ormap
                        (lambda (b)
                          (letrec*
                           ((g8542
                             (letrec*
                              ((x8543
                                (begin
                                  (write '(funapp 2245 51))
                                  (display "\n")
                                  (block-y b))))
                              (begin
                                (write '(funapp 2245 65))
                                (display "\n")
                                (<= x8543 0)))))
                           g8542))
                        bs))))
                   g8541)))
               (blocks-union
                (lambda (bs1 bs2)
                  (letrec*
                   ((g8544
                     (begin
                       (write '(funapp 2253 22))
                       (display "\n")
                       (foldr
                        (lambda (b bs)
                          (letrec*
                           ((g8545
                             (letrec*
                              ((x-cnd8546
                                (begin
                                  (write '(funapp 2258 41))
                                  (display "\n")
                                  (blocks-contains? bs b))))
                              (if x-cnd8546
                                (letrec* ((g8547 bs)) g8547)
                                (letrec*
                                 ((g8548
                                   (begin
                                     (write '(funapp 2261 48))
                                     (display "\n")
                                     (cons b bs))))
                                 g8548)))))
                           g8545))
                        bs2
                        bs1))))
                   g8544)))
               (blocks-max-y
                (lambda (bs)
                  (letrec*
                   ((g8549
                     (begin
                       (write '(funapp 2270 22))
                       (display "\n")
                       (foldr
                        (lambda (b n)
                          (letrec*
                           ((g8550
                             (letrec*
                              ((x8551
                                (begin
                                  (write '(funapp 2274 45))
                                  (display "\n")
                                  (block-y b))))
                              (begin
                                (write '(funapp 2274 59))
                                (display "\n")
                                (max x8551 n)))))
                           g8550))
                        0
                        bs))))
                   g8549)))
               (blocks-min-x
                (lambda (bs)
                  (letrec*
                   ((g8552
                     (begin
                       (write '(funapp 2283 22))
                       (display "\n")
                       (foldr
                        (lambda (b n)
                          (letrec*
                           ((g8553
                             (letrec*
                              ((x8554
                                (begin
                                  (write '(funapp 2287 45))
                                  (display "\n")
                                  (block-x b))))
                              (begin
                                (write '(funapp 2287 59))
                                (display "\n")
                                (min x8554 n)))))
                           g8553))
                        board-width
                        bs))))
                   g8552)))
               (blocks-max-x
                (lambda (bs)
                  (letrec*
                   ((g8555
                     (begin
                       (write '(funapp 2296 22))
                       (display "\n")
                       (foldr
                        (lambda (b n)
                          (letrec*
                           ((g8556
                             (letrec*
                              ((x8557
                                (begin
                                  (write '(funapp 2300 45))
                                  (display "\n")
                                  (block-x b))))
                              (begin
                                (write '(funapp 2300 59))
                                (display "\n")
                                (max x8557 n)))))
                           g8556))
                        0
                        bs))))
                   g8555)))
               (eliminate-full-rows
                (lambda (bs)
                  (letrec*
                   ((g8558
                     (begin
                       (write '(funapp 2307 36))
                       (display "\n")
                       (elim-row bs board-height 0))))
                   g8558)))
               (elim-row
                (lambda (bs i offset)
                  (letrec*
                   ((g8559
                     (letrec*
                      ((x-cnd8560
                        (begin
                          (write '(funapp 2313 35))
                          (display "\n")
                          (< i 0))))
                      (if x-cnd8560
                        (letrec* ((g8561 empty)) g8561)
                        (letrec*
                         ((x-cnd8562
                           (begin
                             (write '(funapp 2317 38))
                             (display "\n")
                             (full-row? bs i))))
                         (if x-cnd8562
                           (letrec*
                            ((g8563
                              (letrec*
                               ((x8565
                                 (begin
                                   (write '(funapp 2322 40))
                                   (display "\n")
                                   (sub1 i)))
                                (x8564
                                 (begin
                                   (write '(funapp 2322 57))
                                   (display "\n")
                                   (add1 offset))))
                               (begin
                                 (write '(funapp 2323 32))
                                 (display "\n")
                                 (elim-row bs x8565 x8564)))))
                            g8563)
                           (letrec*
                            ((g8566
                              (letrec*
                               ((x8569
                                 (letrec*
                                  ((x8570
                                    (begin
                                      (write '(funapp 2330 43))
                                      (display "\n")
                                      (sub1 i))))
                                  (begin
                                    (write '(funapp 2331 35))
                                    (display "\n")
                                    (elim-row bs x8570 offset))))
                                (x8567
                                 (letrec*
                                  ((x8568
                                    (begin
                                      (write '(funapp 2334 43))
                                      (display "\n")
                                      (blocks-row bs i))))
                                  (begin
                                    (write '(funapp 2335 35))
                                    (display "\n")
                                    (blocks-move 0 offset x8568)))))
                               (begin
                                 (write '(funapp 2336 32))
                                 (display "\n")
                                 (blocks-union x8569 x8567)))))
                            g8566)))))))
                   g8559)))
               (tetra-move
                (lambda (dx dy t)
                  (letrec*
                   ((g8571
                     (letrec*
                      ((x8574
                        (letrec*
                         ((x8578
                           (letrec*
                            ((x8579
                              (letrec*
                               ((x8580
                                 (begin
                                   (write '(funapp 2350 40))
                                   (display "\n")
                                   (tetra-center t))))
                               (begin
                                 (write '(funapp 2351 32))
                                 (display "\n")
                                 (posn-x x8580)))))
                            (begin
                              (write '(funapp 2352 29))
                              (display "\n")
                              (+ dx x8579))))
                          (x8575
                           (letrec*
                            ((x8576
                              (letrec*
                               ((x8577
                                 (begin
                                   (write '(funapp 2357 40))
                                   (display "\n")
                                   (tetra-center t))))
                               (begin
                                 (write '(funapp 2358 32))
                                 (display "\n")
                                 (posn-y x8577)))))
                            (begin
                              (write '(funapp 2359 29))
                              (display "\n")
                              (+ dy x8576)))))
                         (begin
                           (write '(funapp 2360 26))
                           (display "\n")
                           (posn x8578 x8575))))
                       (x8572
                        (letrec*
                         ((x8573
                           (begin
                             (write '(funapp 2363 34))
                             (display "\n")
                             (tetra-blocks t))))
                         (begin
                           (write '(funapp 2364 26))
                           (display "\n")
                           (blocks-move dx dy x8573)))))
                      (begin
                        (write '(funapp 2365 23))
                        (display "\n")
                        (tetra x8574 x8572)))))
                   g8571)))
               (tetra-rotate-ccw
                (lambda (t)
                  (letrec*
                   ((g8581
                     (letrec*
                      ((x8585
                        (begin
                          (write '(funapp 2372 31))
                          (display "\n")
                          (tetra-center t)))
                       (x8582
                        (letrec*
                         ((x8584
                           (begin
                             (write '(funapp 2375 34))
                             (display "\n")
                             (tetra-center t)))
                          (x8583
                           (begin
                             (write '(funapp 2375 59))
                             (display "\n")
                             (tetra-blocks t))))
                         (begin
                           (write '(funapp 2376 26))
                           (display "\n")
                           (blocks-rotate-ccw x8584 x8583)))))
                      (begin
                        (write '(funapp 2377 23))
                        (display "\n")
                        (tetra x8585 x8582)))))
                   g8581)))
               (tetra-rotate-cw
                (lambda (t)
                  (letrec*
                   ((g8586
                     (letrec*
                      ((x8590
                        (begin
                          (write '(funapp 2384 31))
                          (display "\n")
                          (tetra-center t)))
                       (x8587
                        (letrec*
                         ((x8589
                           (begin
                             (write '(funapp 2387 34))
                             (display "\n")
                             (tetra-center t)))
                          (x8588
                           (begin
                             (write '(funapp 2387 59))
                             (display "\n")
                             (tetra-blocks t))))
                         (begin
                           (write '(funapp 2388 26))
                           (display "\n")
                           (blocks-rotate-cw x8589 x8588)))))
                      (begin
                        (write '(funapp 2389 23))
                        (display "\n")
                        (tetra x8590 x8587)))))
                   g8586)))
               (tetra-overlaps-blocks?
                (lambda (t bs)
                  (letrec*
                   ((g8591
                     (letrec*
                      ((x8592
                        (letrec*
                         ((x8593
                           (letrec*
                            ((x8594
                              (begin
                                (write '(funapp 2400 37))
                                (display "\n")
                                (tetra-blocks t))))
                            (begin
                              (write '(funapp 2401 29))
                              (display "\n")
                              (blocks-intersect x8594 bs)))))
                         (begin
                           (write '(funapp 2402 26))
                           (display "\n")
                           (false? x8593)))))
                      (begin
                        (write '(funapp 2403 23))
                        (display "\n")
                        (false? x8592)))))
                   g8591)))
               (tetra-change-color
                (lambda (t c)
                  (letrec*
                   ((g8595
                     (letrec*
                      ((x8598
                        (begin
                          (write '(funapp 2410 31))
                          (display "\n")
                          (tetra-center t)))
                       (x8596
                        (letrec*
                         ((x8597
                           (begin
                             (write '(funapp 2413 34))
                             (display "\n")
                             (tetra-blocks t))))
                         (begin
                           (write '(funapp 2414 26))
                           (display "\n")
                           (blocks-change-color x8597 c)))))
                      (begin
                        (write '(funapp 2415 23))
                        (display "\n")
                        (tetra x8598 x8596)))))
                   g8595)))
               (build-tetra-blocks
                (lambda (color xc yc x1 y1 x2 y2 x3 y3 x4 y4)
                  (letrec*
                   ((g8599
                     (letrec*
                      ((x8600
                        (letrec*
                         ((x8606
                           (begin
                             (write '(funapp 2424 34))
                             (display "\n")
                             (posn xc yc)))
                          (x8601
                           (letrec*
                            ((x8605
                              (begin
                                (write '(funapp 2427 37))
                                (display "\n")
                                (block x1 y1 color)))
                             (x8604
                              (begin
                                (write '(funapp 2428 37))
                                (display "\n")
                                (block x2 y2 color)))
                             (x8603
                              (begin
                                (write '(funapp 2429 37))
                                (display "\n")
                                (block x3 y3 color)))
                             (x8602
                              (begin
                                (write '(funapp 2430 37))
                                (display "\n")
                                (block x4 y4 color))))
                            (begin
                              (write '(funapp 2431 29))
                              (display "\n")
                              (list x8605 x8604 x8603 x8602)))))
                         (begin
                           (write '(funapp 2432 26))
                           (display "\n")
                           (tetra x8606 x8601)))))
                      (begin
                        (write '(funapp 2433 23))
                        (display "\n")
                        (tetra-move 3 0 x8600)))))
                   g8599)))
               (touchdown
                (lambda (w tetras)
                  (letrec*
                   ((g8607
                     (letrec*
                      ((x8613
                        (begin
                          (write '(funapp 2440 31))
                          (display "\n")
                          (list-pick-random tetras)))
                       (x8608
                        (letrec*
                         ((x8609
                           (letrec*
                            ((x8611
                              (letrec*
                               ((x8612
                                 (begin
                                   (write '(funapp 2447 40))
                                   (display "\n")
                                   (world-tetra w))))
                               (begin
                                 (write '(funapp 2448 32))
                                 (display "\n")
                                 (tetra-blocks x8612))))
                             (x8610
                              (begin
                                (write '(funapp 2449 37))
                                (display "\n")
                                (world-blocks w))))
                            (begin
                              (write '(funapp 2450 29))
                              (display "\n")
                              (blocks-union x8611 x8610)))))
                         (begin
                           (write '(funapp 2451 26))
                           (display "\n")
                           (eliminate-full-rows x8609)))))
                      (begin
                        (write '(funapp 2452 23))
                        (display "\n")
                        (world x8613 x8608)))))
                   g8607)))
               (world-jump-down
                (lambda (w)
                  (letrec*
                   ((g8614
                     (letrec*
                      ((x-cnd8615
                        (begin
                          (write '(funapp 2459 35))
                          (display "\n")
                          (landed? w))))
                      (if x-cnd8615
                        (letrec* ((g8616 w)) g8616)
                        (letrec*
                         ((g8617
                           (letrec*
                            ((x8618
                              (letrec*
                               ((x8620
                                 (letrec*
                                  ((x8621
                                    (begin
                                      (write '(funapp 2469 43))
                                      (display "\n")
                                      (world-tetra w))))
                                  (begin
                                    (write '(funapp 2470 35))
                                    (display "\n")
                                    (tetra-move 0 1 x8621))))
                                (x8619
                                 (begin
                                   (write '(funapp 2471 40))
                                   (display "\n")
                                   (world-blocks w))))
                               (begin
                                 (write '(funapp 2472 32))
                                 (display "\n")
                                 (world x8620 x8619)))))
                            (begin
                              (write '(funapp 2473 29))
                              (display "\n")
                              (world-jump-down x8618)))))
                         g8617)))))
                   g8614)))
               (landed-on-blocks?
                (lambda (w)
                  (letrec*
                   ((g8622
                     (letrec*
                      ((x8624
                        (letrec*
                         ((x8625
                           (begin
                             (write '(funapp 2483 34))
                             (display "\n")
                             (world-tetra w))))
                         (begin
                           (write '(funapp 2484 26))
                           (display "\n")
                           (tetra-move 0 1 x8625))))
                       (x8623
                        (begin
                          (write '(funapp 2485 31))
                          (display "\n")
                          (world-blocks w))))
                      (begin
                        (write '(funapp 2486 23))
                        (display "\n")
                        (tetra-overlaps-blocks? x8624 x8623)))))
                   g8622)))
               (landed-on-floor?
                (lambda (w)
                  (letrec*
                   ((g8626
                     (letrec*
                      ((x8628
                        (letrec*
                         ((x8629
                           (letrec*
                            ((x8630
                              (begin
                                (write '(funapp 2497 37))
                                (display "\n")
                                (world-tetra w))))
                            (begin
                              (write '(funapp 2498 29))
                              (display "\n")
                              (tetra-blocks x8630)))))
                         (begin
                           (write '(funapp 2499 26))
                           (display "\n")
                           (blocks-max-y x8629))))
                       (x8627
                        (begin
                          (write '(funapp 2500 31))
                          (display "\n")
                          (sub1 board-height))))
                      (begin
                        (write '(funapp 2501 23))
                        (display "\n")
                        (= x8628 x8627)))))
                   g8626)))
               (landed?
                (lambda (w)
                  (letrec*
                   ((g8631
                     (letrec*
                      ((val7261
                        (begin
                          (write '(funapp 2508 33))
                          (display "\n")
                          (landed-on-blocks? w))))
                      (letrec*
                       ((g8632
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 2510 52))
                             (display "\n")
                             (landed-on-floor? w)))))
                       g8632))))
                   g8631)))
               (next-world
                (lambda (w tetras)
                  (letrec*
                   ((g8633
                     (letrec*
                      ((x-cnd8634
                        (begin
                          (write '(funapp 2518 35))
                          (display "\n")
                          (landed? w))))
                      (if x-cnd8634
                        (letrec*
                         ((g8635
                           (begin
                             (write '(funapp 2520 42))
                             (display "\n")
                             (touchdown w tetras))))
                         g8635)
                        (letrec*
                         ((g8636
                           (letrec*
                            ((x8638
                              (letrec*
                               ((x8639
                                 (begin
                                   (write '(funapp 2526 40))
                                   (display "\n")
                                   (world-tetra w))))
                               (begin
                                 (write '(funapp 2527 32))
                                 (display "\n")
                                 (tetra-move 0 1 x8639))))
                             (x8637
                              (begin
                                (write '(funapp 2528 37))
                                (display "\n")
                                (world-blocks w))))
                            (begin
                              (write '(funapp 2529 29))
                              (display "\n")
                              (world x8638 x8637)))))
                         g8636)))))
                   g8633)))
               (try-new-tetra
                (lambda (w new-tetra)
                  (letrec*
                   ((g8640
                     (letrec*
                      ((x-cnd8641
                        (letrec*
                         ((x8647
                           (letrec*
                            ((x8648
                              (letrec*
                               ((x8649
                                 (begin
                                   (write '(funapp 2543 40))
                                   (display "\n")
                                   (tetra-blocks new-tetra))))
                               (begin
                                 (write '(funapp 2544 32))
                                 (display "\n")
                                 (blocks-min-x x8649)))))
                            (begin
                              (write '(funapp 2545 29))
                              (display "\n")
                              (< x8648 0))))
                          (x8644
                           (letrec*
                            ((x8645
                              (letrec*
                               ((x8646
                                 (begin
                                   (write '(funapp 2550 40))
                                   (display "\n")
                                   (tetra-blocks new-tetra))))
                               (begin
                                 (write '(funapp 2551 32))
                                 (display "\n")
                                 (blocks-max-x x8646)))))
                            (begin
                              (write '(funapp 2552 29))
                              (display "\n")
                              (>= x8645 board-width))))
                          (x8642
                           (letrec*
                            ((x8643
                              (begin
                                (write '(funapp 2555 37))
                                (display "\n")
                                (world-blocks w))))
                            (begin
                              (write '(funapp 2556 29))
                              (display "\n")
                              (tetra-overlaps-blocks? new-tetra x8643)))))
                         (begin
                           (write '(funapp 2557 26))
                           (display "\n")
                           (or x8647 x8644 x8642)))))
                      (if x-cnd8641
                        (letrec* ((g8650 w)) g8650)
                        (letrec*
                         ((g8651
                           (letrec*
                            ((x8652
                              (begin
                                (write '(funapp 2563 37))
                                (display "\n")
                                (world-blocks w))))
                            (begin
                              (write '(funapp 2564 29))
                              (display "\n")
                              (world new-tetra x8652)))))
                         g8651)))))
                   g8640)))
               (world-move
                (lambda (dx dy w)
                  (letrec*
                   ((g8653
                     (letrec*
                      ((x8654
                        (letrec*
                         ((x8655
                           (begin
                             (write '(funapp 2574 34))
                             (display "\n")
                             (world-tetra w))))
                         (begin
                           (write '(funapp 2575 26))
                           (display "\n")
                           (tetra-move dx dy x8655)))))
                      (begin
                        (write '(funapp 2576 23))
                        (display "\n")
                        (try-new-tetra w x8654)))))
                   g8653)))
               (world-rotate-ccw
                (lambda (w)
                  (letrec*
                   ((g8656
                     (letrec*
                      ((x8657
                        (letrec*
                         ((x8658
                           (begin
                             (write '(funapp 2585 34))
                             (display "\n")
                             (world-tetra w))))
                         (begin
                           (write '(funapp 2586 26))
                           (display "\n")
                           (tetra-rotate-ccw x8658)))))
                      (begin
                        (write '(funapp 2587 23))
                        (display "\n")
                        (try-new-tetra w x8657)))))
                   g8656)))
               (world-rotate-cw
                (lambda (w)
                  (letrec*
                   ((g8659
                     (letrec*
                      ((x8660
                        (letrec*
                         ((x8661
                           (begin
                             (write '(funapp 2596 34))
                             (display "\n")
                             (world-tetra w))))
                         (begin
                           (write '(funapp 2597 26))
                           (display "\n")
                           (tetra-rotate-cw x8661)))))
                      (begin
                        (write '(funapp 2598 23))
                        (display "\n")
                        (try-new-tetra w x8660)))))
                   g8659)))
               (ghost-blocks
                (lambda (w)
                  (letrec*
                   ((g8662
                     (letrec*
                      ((x8663
                        (letrec*
                         ((x8664
                           (letrec*
                            ((x8665
                              (begin
                                (write '(funapp 2609 37))
                                (display "\n")
                                (world-jump-down w))))
                            (begin
                              (write '(funapp 2610 29))
                              (display "\n")
                              (world-tetra x8665)))))
                         (begin
                           (write '(funapp 2611 26))
                           (display "\n")
                           (tetra-change-color
                            x8664
                            (begin
                              (write '(funapp 2611 51))
                              (display "\n")
                              'gray))))))
                      (begin
                        (write '(funapp 2612 23))
                        (display "\n")
                        (tetra-blocks x8663)))))
                   g8662)))
               (world-key-move
                (lambda (w k)
                  (letrec*
                   ((g8666
                     (letrec*
                      ((x-cnd8667
                        (begin
                          (write '(funapp 2619 35))
                          (display "\n")
                          (equal? k "left"))))
                      (if x-cnd8667
                        (letrec*
                         ((g8668
                           (begin
                             (write '(funapp 2621 42))
                             (display "\n")
                             (world-move neg-1 0 w))))
                         g8668)
                        (letrec*
                         ((x-cnd8669
                           (begin
                             (write '(funapp 2623 38))
                             (display "\n")
                             (equal? k "right"))))
                         (if x-cnd8669
                           (letrec*
                            ((g8670
                              (begin
                                (write '(funapp 2625 45))
                                (display "\n")
                                (world-move 1 0 w))))
                            g8670)
                           (letrec*
                            ((x-cnd8671
                              (begin
                                (write '(funapp 2627 41))
                                (display "\n")
                                (equal? k "down"))))
                            (if x-cnd8671
                              (letrec*
                               ((g8672
                                 (begin
                                   (write '(funapp 2629 48))
                                   (display "\n")
                                   (world-jump-down w))))
                               g8672)
                              (letrec*
                               ((x-cnd8673
                                 (begin
                                   (write '(funapp 2631 44))
                                   (display "\n")
                                   (equal? k "a"))))
                               (if x-cnd8673
                                 (letrec*
                                  ((g8674
                                    (begin
                                      (write '(funapp 2633 51))
                                      (display "\n")
                                      (world-rotate-ccw w))))
                                  g8674)
                                 (letrec*
                                  ((x-cnd8675
                                    (begin
                                      (write '(funapp 2635 47))
                                      (display "\n")
                                      (equal? k "s"))))
                                  (if x-cnd8675
                                    (letrec*
                                     ((g8676
                                       (begin
                                         (write '(funapp 2638 46))
                                         (display "\n")
                                         (world-rotate-cw w))))
                                     g8676)
                                    (letrec* ((g8677 w)) g8677)))))))))))))
                   g8666)))
               (image
                (lambda ()
                  (letrec*
                   ((g8678
                     (begin
                       (write '(funapp 2643 45))
                       (display "\n")
                       (orig-cons
                        (begin (write '(funapp 2643 55)) (display "\n") 'image)
                        (begin
                          (write '(funapp 2643 62))
                          (display "\n")
                          '())))))
                   g8678)))
               (image?
                (lambda (image7769)
                  (letrec*
                   ((g8679
                     (letrec*
                      ((x8680
                        (begin
                          (write '(funapp 2648 39))
                          (display "\n")
                          (car image7769))))
                      (begin
                        (write '(funapp 2648 57))
                        (display "\n")
                        (eq?
                         x8680
                         (begin
                           (write '(funapp 2648 67))
                           (display "\n")
                           'image))))))
                   g8679)))
               (image/c
                (lambda (j7421 k7422 v7420)
                  (letrec*
                   ((g8681
                     (begin
                       (write '(funapp 2652 36))
                       (display "\n")
                       (cons
                        image
                        (begin
                          (write '(funapp 2652 47))
                          (display "\n")
                          '())))))
                   g8681)))
               (overlay
                (lambda (i₁ i₂)
                  (letrec*
                   ((g8682
                     (begin (write '(funapp 2653 58)) (display "\n") (image))))
                   g8682)))
               (circle
                (lambda (r m c)
                  (letrec*
                   ((g8683
                     (begin (write '(funapp 2654 57)) (display "\n") (image))))
                   g8683)))
               (rectangle
                (lambda (w h m c)
                  (letrec*
                   ((g8684
                     (begin (write '(funapp 2655 62)) (display "\n") (image))))
                   g8684)))
               (place-image
                (lambda (i₁ r c i₂)
                  (letrec*
                   ((g8685
                     (begin (write '(funapp 2657 54)) (display "\n") (image))))
                   g8685)))
               (empty-scene
                (lambda (w h)
                  (letrec*
                   ((g8686
                     (begin (write '(funapp 2658 60)) (display "\n") (image))))
                   g8686)))
               (list-pick-random
                (lambda (xs)
                  (letrec*
                   ((g8687
                     (letrec*
                      ((x-cnd8688
                        (letrec*
                         ((x8689
                           (begin
                             (write '(funapp 2664 52))
                             (display "\n")
                             (cdr xs))))
                         (begin
                           (write '(funapp 2664 63))
                           (display "\n")
                           (null? x8689)))))
                      (if x-cnd8688
                        (letrec*
                         ((g8690
                           (begin
                             (write '(funapp 2666 42))
                             (display "\n")
                             (car xs))))
                         g8690)
                        (letrec*
                         ((g8691
                           (letrec*
                            ((x8692
                              (begin
                                (write '(funapp 2670 37))
                                (display "\n")
                                (cdr xs))))
                            (begin
                              (write '(funapp 2671 29))
                              (display "\n")
                              (list-pick-random x8692)))))
                         g8691)))))
                   g8687)))
               (neg-1
                (begin (write '(funapp 2674 23)) (display "\n") (random 10)))
               (world->image
                (lambda (w)
                  (letrec*
                   ((g8693
                     (letrec*
                      ((x8697
                        (letrec*
                         ((x8698
                           (letrec*
                            ((x8702
                              (letrec*
                               ((x8703
                                 (begin
                                   (write '(funapp 2686 40))
                                   (display "\n")
                                   (world-tetra w))))
                               (begin
                                 (write '(funapp 2687 32))
                                 (display "\n")
                                 (tetra-blocks x8703))))
                             (x8699
                              (letrec*
                               ((x8701
                                 (begin
                                   (write '(funapp 2690 40))
                                   (display "\n")
                                   (ghost-blocks w)))
                                (x8700
                                 (begin
                                   (write '(funapp 2691 40))
                                   (display "\n")
                                   (world-blocks w))))
                               (begin
                                 (write '(funapp 2692 32))
                                 (display "\n")
                                 (append x8701 x8700)))))
                            (begin
                              (write '(funapp 2693 29))
                              (display "\n")
                              (append x8702 x8699)))))
                         (begin
                           (write '(funapp 2694 26))
                           (display "\n")
                           (blocks->image x8698))))
                       (x8694
                        (letrec*
                         ((x8696
                           (begin
                             (write '(funapp 2697 34))
                             (display "\n")
                             (* board-width block-size)))
                          (x8695
                           (begin
                             (write '(funapp 2698 34))
                             (display "\n")
                             (* board-height block-size))))
                         (begin
                           (write '(funapp 2699 26))
                           (display "\n")
                           (empty-scene x8696 x8695)))))
                      (begin
                        (write '(funapp 2700 23))
                        (display "\n")
                        (place-image x8697 0 0 x8694)))))
                   g8693)))
               (blocks->image
                (lambda (bs)
                  (letrec*
                   ((g8704
                     (letrec*
                      ((x8705
                        (letrec*
                         ((x8708
                           (letrec*
                            ((x8709
                              (begin
                                (write '(funapp 2711 37))
                                (display "\n")
                                (* board-width block-size))))
                            (begin
                              (write '(funapp 2712 29))
                              (display "\n")
                              (add1 x8709))))
                          (x8706
                           (letrec*
                            ((x8707
                              (begin
                                (write '(funapp 2715 37))
                                (display "\n")
                                (* board-height block-size))))
                            (begin
                              (write '(funapp 2716 29))
                              (display "\n")
                              (add1 x8707)))))
                         (begin
                           (write '(funapp 2717 26))
                           (display "\n")
                           (empty-scene x8708 x8706)))))
                      (begin
                        (write '(funapp 2718 23))
                        (display "\n")
                        (foldr
                         (lambda (b img)
                           (letrec*
                            ((g8710
                              (letrec*
                               ((x-cnd8711
                                 (letrec*
                                  ((x8712
                                    (begin
                                      (write '(funapp 2724 49))
                                      (display "\n")
                                      (block-y b))))
                                  (begin
                                    (write '(funapp 2724 63))
                                    (display "\n")
                                    (<= 0 x8712)))))
                               (if x-cnd8711
                                 (letrec*
                                  ((g8713
                                    (begin
                                      (write '(funapp 2726 49))
                                      (display "\n")
                                      (place-block b img))))
                                  g8713)
                                 (letrec* ((g8714 img)) g8714)))))
                            g8710))
                         x8705
                         bs)))))
                   g8704)))
               (block->image
                (lambda (b)
                  (letrec*
                   ((g8715
                     (letrec*
                      ((x8719
                        (letrec*
                         ((x8722
                           (begin
                             (write '(funapp 2739 34))
                             (display "\n")
                             (add1 block-size)))
                          (x8721
                           (begin
                             (write '(funapp 2740 34))
                             (display "\n")
                             (add1 block-size)))
                          (x8720
                           (begin
                             (write '(funapp 2741 34))
                             (display "\n")
                             (block-color b))))
                         (begin
                           (write '(funapp 2742 26))
                           (display "\n")
                           (rectangle
                            x8722
                            x8721
                            (begin
                              (write '(funapp 2742 48))
                              (display "\n")
                              'solid)
                            x8720))))
                       (x8716
                        (letrec*
                         ((x8718
                           (begin
                             (write '(funapp 2745 34))
                             (display "\n")
                             (add1 block-size)))
                          (x8717
                           (begin
                             (write '(funapp 2745 60))
                             (display "\n")
                             (add1 block-size))))
                         (begin
                           (write '(funapp 2746 26))
                           (display "\n")
                           (rectangle
                            x8718
                            x8717
                            (begin
                              (write '(funapp 2746 48))
                              (display "\n")
                              'outline)
                            (begin
                              (write '(funapp 2746 57))
                              (display "\n")
                              'black))))))
                      (begin
                        (write '(funapp 2747 23))
                        (display "\n")
                        (overlay x8719 x8716)))))
                   g8715)))
               (place-block
                (lambda (b scene)
                  (letrec*
                   ((g8723
                     (letrec*
                      ((x8732
                        (begin
                          (write '(funapp 2754 31))
                          (display "\n")
                          (block->image b)))
                       (x8728
                        (letrec*
                         ((x8730
                           (letrec*
                            ((x8731
                              (begin
                                (write '(funapp 2759 37))
                                (display "\n")
                                (block-x b))))
                            (begin
                              (write '(funapp 2760 29))
                              (display "\n")
                              (* x8731 block-size))))
                          (x8729
                           (begin
                             (write '(funapp 2761 34))
                             (display "\n")
                             (/ block-size 2))))
                         (begin
                           (write '(funapp 2762 26))
                           (display "\n")
                           (+ x8730 x8729))))
                       (x8724
                        (letrec*
                         ((x8726
                           (letrec*
                            ((x8727
                              (begin
                                (write '(funapp 2767 37))
                                (display "\n")
                                (block-y b))))
                            (begin
                              (write '(funapp 2768 29))
                              (display "\n")
                              (* x8727 block-size))))
                          (x8725
                           (begin
                             (write '(funapp 2769 34))
                             (display "\n")
                             (/ block-size 2))))
                         (begin
                           (write '(funapp 2770 26))
                           (display "\n")
                           (+ x8726 x8725)))))
                      (begin
                        (write '(funapp 2771 23))
                        (display "\n")
                        (place-image x8732 x8728 x8724 scene)))))
                   g8723)))
               (world0
                (lambda (tetras)
                  (letrec*
                   ((g8733
                     (letrec*
                      ((x8734
                        (begin
                          (write '(funapp 2778 31))
                          (display "\n")
                          (list-pick-random tetras))))
                      (begin
                        (write '(funapp 2779 23))
                        (display "\n")
                        (world x8734 null)))))
                   g8733))))
              (letrec*
               ((g8735
                 (begin
                   (write '(funapp 2783 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 2784 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8746
                          (letrec*
                           ((xj7424
                             (begin
                               (write '(funapp 2788 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2788 37))
                                  (display "\n")
                                  'module))))
                            (xk7425
                             (begin
                               (write '(funapp 2788 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2788 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8747
                              (begin
                                (write '(funapp 2791 27))
                                (display "\n")
                                ((lambda (j7428 k7429 f7430)
                                   (letrec*
                                    ((g8748
                                      (lambda (g7426 g7427)
                                        (letrec*
                                         ((g8749
                                           (letrec*
                                            ((x8750
                                              (letrec*
                                               ((x8752
                                                 (begin
                                                   (write '(funapp 2800 50))
                                                   (display "\n")
                                                   (POSN/C j7428 k7429 g7426)))
                                                (x8751
                                                 (begin
                                                   (write '(funapp 2801 50))
                                                   (display "\n")
                                                   (POSN/C
                                                    j7428
                                                    k7429
                                                    g7427))))
                                               (begin
                                                 (write '(funapp 2802 42))
                                                 (display "\n")
                                                 (f7430 x8752 x8751)))))
                                            (begin
                                              (write '(funapp 2803 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7428
                                               k7429
                                               x8750)))))
                                         g8749))))
                                    g8748))
                                 xj7424
                                 xk7425
                                 posn=?))))
                            g8747)))
                         (x8741
                          (letrec*
                           ((x8742
                             (letrec*
                              ((x8745 (input))
                               (x8743
                                (letrec*
                                 ((x8744 (input)))
                                 (begin
                                   (write '(funapp 2816 56))
                                   (display "\n")
                                   (cons
                                    x8744
                                    (begin
                                      (write '(funapp 2816 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2817 27))
                                (display "\n")
                                (cons x8745 x8743)))))
                           (begin
                             (write '(funapp 2818 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2818 29))
                                (display "\n")
                                'posn)
                              x8742))))
                         (x8736
                          (letrec*
                           ((x8737
                             (letrec*
                              ((x8740 (input))
                               (x8738
                                (letrec*
                                 ((x8739 (input)))
                                 (begin
                                   (write '(funapp 2825 56))
                                   (display "\n")
                                   (cons
                                    x8739
                                    (begin
                                      (write '(funapp 2825 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2826 27))
                                (display "\n")
                                (cons x8740 x8738)))))
                           (begin
                             (write '(funapp 2827 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2827 29))
                                (display "\n")
                                'posn)
                              x8737)))))
                        (begin
                          (write '(funapp 2828 21))
                          (display "\n")
                          (x8746 x8741 x8736)))
                       (letrec*
                        ((xj7431
                          (begin
                            (write '(funapp 2830 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2830 34))
                               (display "\n")
                               'module))))
                         (xk7432
                          (begin
                            (write '(funapp 2830 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2830 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8753
                           (begin
                             (write '(funapp 2831 38))
                             (display "\n")
                             (any/c xj7431 xk7432 COLOR/C))))
                         g8753))
                       (letrec*
                        ((xj7433
                          (begin
                            (write '(funapp 2833 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2833 34))
                               (display "\n")
                               'module))))
                         (xk7434
                          (begin
                            (write '(funapp 2833 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2833 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8754
                           (begin
                             (write '(funapp 2834 38))
                             (display "\n")
                             (any/c xj7433 xk7434 POSN/C))))
                         g8754))
                       (letrec*
                        ((xj7435
                          (begin
                            (write '(funapp 2836 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2836 34))
                               (display "\n")
                               'module))))
                         (xk7436
                          (begin
                            (write '(funapp 2836 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2836 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8755
                           (begin
                             (write '(funapp 2837 38))
                             (display "\n")
                             (any/c xj7435 xk7436 BLOCK/C))))
                         g8755))
                       (letrec*
                        ((xj7437
                          (begin
                            (write '(funapp 2839 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2839 34))
                               (display "\n")
                               'module))))
                         (xk7438
                          (begin
                            (write '(funapp 2839 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2839 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8756
                           (begin
                             (write '(funapp 2840 38))
                             (display "\n")
                             (any/c xj7437 xk7438 TETRA/C))))
                         g8756))
                       (letrec*
                        ((xj7439
                          (begin
                            (write '(funapp 2842 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2842 34))
                               (display "\n")
                               'module))))
                         (xk7440
                          (begin
                            (write '(funapp 2842 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2842 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8757
                           (begin
                             (write '(funapp 2843 38))
                             (display "\n")
                             (any/c xj7439 xk7440 WORLD/C))))
                         g8757))
                       (letrec*
                        ((xj7441
                          (begin
                            (write '(funapp 2845 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2845 34))
                               (display "\n")
                               'module))))
                         (xk7442
                          (begin
                            (write '(funapp 2845 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2845 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8758
                           (begin
                             (write '(funapp 2846 38))
                             (display "\n")
                             (any/c xj7441 xk7442 BSET/C))))
                         g8758))
                       (letrec*
                        ((xj7443
                          (begin
                            (write '(funapp 2848 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2848 34))
                               (display "\n")
                               'module))))
                         (xk7444
                          (begin
                            (write '(funapp 2848 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2848 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8759
                           (begin
                             (write '(funapp 2850 30))
                             (display "\n")
                             (integer?/c xj7443 xk7444 block-size))))
                         g8759))
                       (letrec*
                        ((xj7445
                          (begin
                            (write '(funapp 2853 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2853 34))
                               (display "\n")
                               'module))))
                         (xk7446
                          (begin
                            (write '(funapp 2853 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2853 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8760
                           (begin
                             (write '(funapp 2855 30))
                             (display "\n")
                             (integer?/c xj7445 xk7446 board-width))))
                         g8760))
                       (letrec*
                        ((xj7447
                          (begin
                            (write '(funapp 2858 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2858 34))
                               (display "\n")
                               'module))))
                         (xk7448
                          (begin
                            (write '(funapp 2858 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2858 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8761
                           (begin
                             (write '(funapp 2860 30))
                             (display "\n")
                             (integer?/c xj7447 xk7448 board-height))))
                         g8761))
                       (letrec*
                        ((x8774
                          (letrec*
                           ((xj7449
                             (begin
                               (write '(funapp 2865 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2865 37))
                                  (display "\n")
                                  'module))))
                            (xk7450
                             (begin
                               (write '(funapp 2865 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2865 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8775
                              (begin
                                (write '(funapp 2868 27))
                                (display "\n")
                                ((lambda (j7453 k7454 f7455)
                                   (letrec*
                                    ((g8776
                                      (lambda (g7451 g7452)
                                        (letrec*
                                         ((g8777
                                           (letrec*
                                            ((x8778
                                              (letrec*
                                               ((x8780
                                                 (begin
                                                   (write '(funapp 2877 50))
                                                   (display "\n")
                                                   (POSN/C j7453 k7454 g7451)))
                                                (x8779
                                                 (begin
                                                   (write '(funapp 2878 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7453
                                                    k7454
                                                    g7452))))
                                               (begin
                                                 (write '(funapp 2879 42))
                                                 (display "\n")
                                                 (f7455 x8780 x8779)))))
                                            (begin
                                              (write '(funapp 2880 39))
                                              (display "\n")
                                              (BLOCK/C j7453 k7454 x8778)))))
                                         g8777))))
                                    g8776))
                                 xj7449
                                 xk7450
                                 block-rotate-ccw))))
                            g8775)))
                         (x8769
                          (letrec*
                           ((x8770
                             (letrec*
                              ((x8773 (input))
                               (x8771
                                (letrec*
                                 ((x8772 (input)))
                                 (begin
                                   (write '(funapp 2893 56))
                                   (display "\n")
                                   (cons
                                    x8772
                                    (begin
                                      (write '(funapp 2893 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2894 27))
                                (display "\n")
                                (cons x8773 x8771)))))
                           (begin
                             (write '(funapp 2895 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2895 29))
                                (display "\n")
                                'posn)
                              x8770))))
                         (x8762
                          (letrec*
                           ((x8763
                             (letrec*
                              ((x8768 (input))
                               (x8764
                                (letrec*
                                 ((x8767 (input))
                                  (x8765
                                   (letrec*
                                    ((x8766 (input)))
                                    (begin
                                      (write '(funapp 2905 59))
                                      (display "\n")
                                      (cons
                                       x8766
                                       (begin
                                         (write '(funapp 2905 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 2906 30))
                                   (display "\n")
                                   (cons x8767 x8765)))))
                              (begin
                                (write '(funapp 2907 27))
                                (display "\n")
                                (cons x8768 x8764)))))
                           (begin
                             (write '(funapp 2908 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2908 29))
                                (display "\n")
                                'block)
                              x8763)))))
                        (begin
                          (write '(funapp 2909 21))
                          (display "\n")
                          (x8774 x8769 x8762)))
                       (letrec*
                        ((x8793
                          (letrec*
                           ((xj7456
                             (begin
                               (write '(funapp 2913 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2913 37))
                                  (display "\n")
                                  'module))))
                            (xk7457
                             (begin
                               (write '(funapp 2913 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2913 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8794
                              (begin
                                (write '(funapp 2916 27))
                                (display "\n")
                                ((lambda (j7460 k7461 f7462)
                                   (letrec*
                                    ((g8795
                                      (lambda (g7458 g7459)
                                        (letrec*
                                         ((g8796
                                           (letrec*
                                            ((x8797
                                              (letrec*
                                               ((x8799
                                                 (begin
                                                   (write '(funapp 2925 50))
                                                   (display "\n")
                                                   (POSN/C j7460 k7461 g7458)))
                                                (x8798
                                                 (begin
                                                   (write '(funapp 2926 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7460
                                                    k7461
                                                    g7459))))
                                               (begin
                                                 (write '(funapp 2927 42))
                                                 (display "\n")
                                                 (f7462 x8799 x8798)))))
                                            (begin
                                              (write '(funapp 2928 39))
                                              (display "\n")
                                              (BLOCK/C j7460 k7461 x8797)))))
                                         g8796))))
                                    g8795))
                                 xj7456
                                 xk7457
                                 block-rotate-cw))))
                            g8794)))
                         (x8788
                          (letrec*
                           ((x8789
                             (letrec*
                              ((x8792 (input))
                               (x8790
                                (letrec*
                                 ((x8791 (input)))
                                 (begin
                                   (write '(funapp 2941 56))
                                   (display "\n")
                                   (cons
                                    x8791
                                    (begin
                                      (write '(funapp 2941 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2942 27))
                                (display "\n")
                                (cons x8792 x8790)))))
                           (begin
                             (write '(funapp 2943 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2943 29))
                                (display "\n")
                                'posn)
                              x8789))))
                         (x8781
                          (letrec*
                           ((x8782
                             (letrec*
                              ((x8787 (input))
                               (x8783
                                (letrec*
                                 ((x8786 (input))
                                  (x8784
                                   (letrec*
                                    ((x8785 (input)))
                                    (begin
                                      (write '(funapp 2953 59))
                                      (display "\n")
                                      (cons
                                       x8785
                                       (begin
                                         (write '(funapp 2953 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 2954 30))
                                   (display "\n")
                                   (cons x8786 x8784)))))
                              (begin
                                (write '(funapp 2955 27))
                                (display "\n")
                                (cons x8787 x8783)))))
                           (begin
                             (write '(funapp 2956 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2956 29))
                                (display "\n")
                                'block)
                              x8782)))))
                        (begin
                          (write '(funapp 2957 21))
                          (display "\n")
                          (x8793 x8788 x8781)))
                       (letrec*
                        ((x8814
                          (letrec*
                           ((xj7463
                             (begin
                               (write '(funapp 2961 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2961 37))
                                  (display "\n")
                                  'module))))
                            (xk7464
                             (begin
                               (write '(funapp 2961 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2961 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8815
                              (begin
                                (write '(funapp 2964 27))
                                (display "\n")
                                ((lambda (j7467 k7468 f7469)
                                   (letrec*
                                    ((g8816
                                      (lambda (g7465 g7466)
                                        (letrec*
                                         ((g8817
                                           (letrec*
                                            ((x8818
                                              (letrec*
                                               ((x8820
                                                 (begin
                                                   (write '(funapp 2973 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7467
                                                    k7468
                                                    g7465)))
                                                (x8819
                                                 (begin
                                                   (write '(funapp 2974 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7467
                                                    k7468
                                                    g7466))))
                                               (begin
                                                 (write '(funapp 2975 42))
                                                 (display "\n")
                                                 (f7469 x8820 x8819)))))
                                            (begin
                                              (write '(funapp 2976 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7467
                                               k7468
                                               x8818)))))
                                         g8817))))
                                    g8816))
                                 xj7463
                                 xk7464
                                 block=?))))
                            g8815)))
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
                                      (write '(funapp 2992 59))
                                      (display "\n")
                                      (cons
                                       x8811
                                       (begin
                                         (write '(funapp 2992 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 2993 30))
                                   (display "\n")
                                   (cons x8812 x8810)))))
                              (begin
                                (write '(funapp 2994 27))
                                (display "\n")
                                (cons x8813 x8809)))))
                           (begin
                             (write '(funapp 2995 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2995 29))
                                (display "\n")
                                'block)
                              x8808))))
                         (x8800
                          (letrec*
                           ((x8801
                             (letrec*
                              ((x8806 (input))
                               (x8802
                                (letrec*
                                 ((x8805 (input))
                                  (x8803
                                   (letrec*
                                    ((x8804 (input)))
                                    (begin
                                      (write '(funapp 3005 59))
                                      (display "\n")
                                      (cons
                                       x8804
                                       (begin
                                         (write '(funapp 3005 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 3006 30))
                                   (display "\n")
                                   (cons x8805 x8803)))))
                              (begin
                                (write '(funapp 3007 27))
                                (display "\n")
                                (cons x8806 x8802)))))
                           (begin
                             (write '(funapp 3008 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3008 29))
                                (display "\n")
                                'block)
                              x8801)))))
                        (begin
                          (write '(funapp 3009 21))
                          (display "\n")
                          (x8814 x8807 x8800)))
                       (letrec*
                        ((x8830
                          (letrec*
                           ((xj7470
                             (begin
                               (write '(funapp 3013 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3013 37))
                                  (display "\n")
                                  'module))))
                            (xk7471
                             (begin
                               (write '(funapp 3013 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3013 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8831
                              (begin
                                (write '(funapp 3016 27))
                                (display "\n")
                                ((lambda (j7475 k7476 f7477)
                                   (letrec*
                                    ((g8832
                                      (lambda (g7472 g7473 g7474)
                                        (letrec*
                                         ((g8833
                                           (letrec*
                                            ((x8834
                                              (letrec*
                                               ((x8837
                                                 (begin
                                                   (write '(funapp 3025 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7475
                                                    k7476
                                                    g7472)))
                                                (x8836
                                                 (begin
                                                   (write '(funapp 3026 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7475
                                                    k7476
                                                    g7473)))
                                                (x8835
                                                 (begin
                                                   (write '(funapp 3027 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7475
                                                    k7476
                                                    g7474))))
                                               (begin
                                                 (write '(funapp 3028 42))
                                                 (display "\n")
                                                 (f7477 x8837 x8836 x8835)))))
                                            (begin
                                              (write '(funapp 3029 39))
                                              (display "\n")
                                              (BLOCK/C j7475 k7476 x8834)))))
                                         g8833))))
                                    g8832))
                                 xj7470
                                 xk7471
                                 block-move))))
                            g8831)))
                         (x8829 (input))
                         (x8828 (input))
                         (x8821
                          (letrec*
                           ((x8822
                             (letrec*
                              ((x8827 (input))
                               (x8823
                                (letrec*
                                 ((x8826 (input))
                                  (x8824
                                   (letrec*
                                    ((x8825 (input)))
                                    (begin
                                      (write '(funapp 3047 59))
                                      (display "\n")
                                      (cons
                                       x8825
                                       (begin
                                         (write '(funapp 3047 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 3048 30))
                                   (display "\n")
                                   (cons x8826 x8824)))))
                              (begin
                                (write '(funapp 3049 27))
                                (display "\n")
                                (cons x8827 x8823)))))
                           (begin
                             (write '(funapp 3050 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3050 29))
                                (display "\n")
                                'block)
                              x8822)))))
                        (begin
                          (write '(funapp 3051 21))
                          (display "\n")
                          (x8830 x8829 x8828 x8821)))
                       (letrec*
                        ((x8846
                          (letrec*
                           ((xj7478
                             (begin
                               (write '(funapp 3055 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3055 37))
                                  (display "\n")
                                  'module))))
                            (xk7479
                             (begin
                               (write '(funapp 3055 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3055 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8847
                              (begin
                                (write '(funapp 3058 27))
                                (display "\n")
                                ((lambda (j7482 k7483 f7484)
                                   (letrec*
                                    ((g8848
                                      (lambda (g7480 g7481)
                                        (letrec*
                                         ((g8849
                                           (letrec*
                                            ((x8850
                                              (letrec*
                                               ((x8852
                                                 (begin
                                                   (write '(funapp 3067 50))
                                                   (display "\n")
                                                   (BSET/C j7482 k7483 g7480)))
                                                (x8851
                                                 (begin
                                                   (write '(funapp 3068 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7482
                                                    k7483
                                                    g7481))))
                                               (begin
                                                 (write '(funapp 3069 42))
                                                 (display "\n")
                                                 (f7484 x8852 x8851)))))
                                            (begin
                                              (write '(funapp 3070 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7482
                                               k7483
                                               x8850)))))
                                         g8849))))
                                    g8848))
                                 xj7478
                                 xk7479
                                 blocks-contains?))))
                            g8847)))
                         (x8845 (input))
                         (x8838
                          (letrec*
                           ((x8839
                             (letrec*
                              ((x8844 (input))
                               (x8840
                                (letrec*
                                 ((x8843 (input))
                                  (x8841
                                   (letrec*
                                    ((x8842 (input)))
                                    (begin
                                      (write '(funapp 3087 59))
                                      (display "\n")
                                      (cons
                                       x8842
                                       (begin
                                         (write '(funapp 3087 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 3088 30))
                                   (display "\n")
                                   (cons x8843 x8841)))))
                              (begin
                                (write '(funapp 3089 27))
                                (display "\n")
                                (cons x8844 x8840)))))
                           (begin
                             (write '(funapp 3090 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3090 29))
                                (display "\n")
                                'block)
                              x8839)))))
                        (begin
                          (write '(funapp 3091 21))
                          (display "\n")
                          (x8846 x8845 x8838)))
                       (letrec*
                        ((x8855
                          (letrec*
                           ((xj7485
                             (begin
                               (write '(funapp 3095 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3095 37))
                                  (display "\n")
                                  'module))))
                            (xk7486
                             (begin
                               (write '(funapp 3095 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3095 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8856
                              (begin
                                (write '(funapp 3098 27))
                                (display "\n")
                                ((lambda (j7489 k7490 f7491)
                                   (letrec*
                                    ((g8857
                                      (lambda (g7487 g7488)
                                        (letrec*
                                         ((g8858
                                           (letrec*
                                            ((x8859
                                              (letrec*
                                               ((x8861
                                                 (begin
                                                   (write '(funapp 3107 50))
                                                   (display "\n")
                                                   (BSET/C j7489 k7490 g7487)))
                                                (x8860
                                                 (begin
                                                   (write '(funapp 3108 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7489
                                                    k7490
                                                    g7488))))
                                               (begin
                                                 (write '(funapp 3109 42))
                                                 (display "\n")
                                                 (f7491 x8861 x8860)))))
                                            (begin
                                              (write '(funapp 3110 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7489
                                               k7490
                                               x8859)))))
                                         g8858))))
                                    g8857))
                                 xj7485
                                 xk7486
                                 blocks=?))))
                            g8856)))
                         (x8854 (input))
                         (x8853 (input)))
                        (begin
                          (write '(funapp 3119 21))
                          (display "\n")
                          (x8855 x8854 x8853)))
                       (letrec*
                        ((x8864
                          (letrec*
                           ((xj7492
                             (begin
                               (write '(funapp 3123 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3123 37))
                                  (display "\n")
                                  'module))))
                            (xk7493
                             (begin
                               (write '(funapp 3123 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3123 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8865
                              (begin
                                (write '(funapp 3126 27))
                                (display "\n")
                                ((lambda (j7496 k7497 f7498)
                                   (letrec*
                                    ((g8866
                                      (lambda (g7494 g7495)
                                        (letrec*
                                         ((g8867
                                           (letrec*
                                            ((x8868
                                              (letrec*
                                               ((x8870
                                                 (begin
                                                   (write '(funapp 3135 50))
                                                   (display "\n")
                                                   (BSET/C j7496 k7497 g7494)))
                                                (x8869
                                                 (begin
                                                   (write '(funapp 3136 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7496
                                                    k7497
                                                    g7495))))
                                               (begin
                                                 (write '(funapp 3137 42))
                                                 (display "\n")
                                                 (f7498 x8870 x8869)))))
                                            (begin
                                              (write '(funapp 3138 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7496
                                               k7497
                                               x8868)))))
                                         g8867))))
                                    g8866))
                                 xj7492
                                 xk7493
                                 blocks-subset?))))
                            g8865)))
                         (x8863 (input))
                         (x8862 (input)))
                        (begin
                          (write '(funapp 3147 21))
                          (display "\n")
                          (x8864 x8863 x8862)))
                       (letrec*
                        ((x8873
                          (letrec*
                           ((xj7499
                             (begin
                               (write '(funapp 3151 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3151 37))
                                  (display "\n")
                                  'module))))
                            (xk7500
                             (begin
                               (write '(funapp 3151 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3151 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8874
                              (begin
                                (write '(funapp 3154 27))
                                (display "\n")
                                ((lambda (j7503 k7504 f7505)
                                   (letrec*
                                    ((g8875
                                      (lambda (g7501 g7502)
                                        (letrec*
                                         ((g8876
                                           (letrec*
                                            ((x8877
                                              (letrec*
                                               ((x8879
                                                 (begin
                                                   (write '(funapp 3163 50))
                                                   (display "\n")
                                                   (BSET/C j7503 k7504 g7501)))
                                                (x8878
                                                 (begin
                                                   (write '(funapp 3164 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7503
                                                    k7504
                                                    g7502))))
                                               (begin
                                                 (write '(funapp 3165 42))
                                                 (display "\n")
                                                 (f7505 x8879 x8878)))))
                                            (begin
                                              (write '(funapp 3166 39))
                                              (display "\n")
                                              (BSET/C j7503 k7504 x8877)))))
                                         g8876))))
                                    g8875))
                                 xj7499
                                 xk7500
                                 blocks-intersect))))
                            g8874)))
                         (x8872 (input))
                         (x8871 (input)))
                        (begin
                          (write '(funapp 3175 21))
                          (display "\n")
                          (x8873 x8872 x8871)))
                       (letrec*
                        ((x8881
                          (letrec*
                           ((xj7506
                             (begin
                               (write '(funapp 3179 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3179 37))
                                  (display "\n")
                                  'module))))
                            (xk7507
                             (begin
                               (write '(funapp 3179 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3179 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8882
                              (begin
                                (write '(funapp 3182 27))
                                (display "\n")
                                ((lambda (j7509 k7510 f7511)
                                   (letrec*
                                    ((g8883
                                      (lambda (g7508)
                                        (letrec*
                                         ((g8884
                                           (letrec*
                                            ((x8885
                                              (letrec*
                                               ((x8886
                                                 (begin
                                                   (write '(funapp 3191 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7509
                                                    k7510
                                                    g7508))))
                                               (begin
                                                 (write '(funapp 3192 42))
                                                 (display "\n")
                                                 (f7511 x8886)))))
                                            (begin
                                              (write '(funapp 3193 39))
                                              (display "\n")
                                              (real?/c j7509 k7510 x8885)))))
                                         g8884))))
                                    g8883))
                                 xj7506
                                 xk7507
                                 blocks-count))))
                            g8882)))
                         (x8880 (input)))
                        (begin
                          (write '(funapp 3201 21))
                          (display "\n")
                          (x8881 x8880)))
                       (letrec*
                        ((x8888
                          (letrec*
                           ((xj7512
                             (begin
                               (write '(funapp 3205 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3205 37))
                                  (display "\n")
                                  'module))))
                            (xk7513
                             (begin
                               (write '(funapp 3205 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3205 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8889
                              (begin
                                (write '(funapp 3208 27))
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
                                                   (write '(funapp 3217 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7515
                                                    k7516
                                                    g7514))))
                                               (begin
                                                 (write '(funapp 3218 42))
                                                 (display "\n")
                                                 (f7517 x8893)))))
                                            (begin
                                              (write '(funapp 3219 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7515
                                               k7516
                                               x8892)))))
                                         g8891))))
                                    g8890))
                                 xj7512
                                 xk7513
                                 blocks-overflow?))))
                            g8889)))
                         (x8887 (input)))
                        (begin
                          (write '(funapp 3227 21))
                          (display "\n")
                          (x8888 x8887)))
                       (letrec*
                        ((x8897
                          (letrec*
                           ((xj7518
                             (begin
                               (write '(funapp 3231 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3231 37))
                                  (display "\n")
                                  'module))))
                            (xk7519
                             (begin
                               (write '(funapp 3231 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3231 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8898
                              (begin
                                (write '(funapp 3234 27))
                                (display "\n")
                                ((lambda (j7523 k7524 f7525)
                                   (letrec*
                                    ((g8899
                                      (lambda (g7520 g7521 g7522)
                                        (letrec*
                                         ((g8900
                                           (letrec*
                                            ((x8901
                                              (letrec*
                                               ((x8904
                                                 (begin
                                                   (write '(funapp 3243 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7523
                                                    k7524
                                                    g7520)))
                                                (x8903
                                                 (begin
                                                   (write '(funapp 3244 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7523
                                                    k7524
                                                    g7521)))
                                                (x8902
                                                 (begin
                                                   (write '(funapp 3245 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7523
                                                    k7524
                                                    g7522))))
                                               (begin
                                                 (write '(funapp 3246 42))
                                                 (display "\n")
                                                 (f7525 x8904 x8903 x8902)))))
                                            (begin
                                              (write '(funapp 3247 39))
                                              (display "\n")
                                              (BSET/C j7523 k7524 x8901)))))
                                         g8900))))
                                    g8899))
                                 xj7518
                                 xk7519
                                 blocks-move))))
                            g8898)))
                         (x8896 (input))
                         (x8895 (input))
                         (x8894 (input)))
                        (begin
                          (write '(funapp 3257 21))
                          (display "\n")
                          (x8897 x8896 x8895 x8894)))
                       (letrec*
                        ((x8911
                          (letrec*
                           ((xj7526
                             (begin
                               (write '(funapp 3261 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3261 37))
                                  (display "\n")
                                  'module))))
                            (xk7527
                             (begin
                               (write '(funapp 3261 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3261 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8912
                              (begin
                                (write '(funapp 3264 27))
                                (display "\n")
                                ((lambda (j7530 k7531 f7532)
                                   (letrec*
                                    ((g8913
                                      (lambda (g7528 g7529)
                                        (letrec*
                                         ((g8914
                                           (letrec*
                                            ((x8915
                                              (letrec*
                                               ((x8917
                                                 (begin
                                                   (write '(funapp 3273 50))
                                                   (display "\n")
                                                   (POSN/C j7530 k7531 g7528)))
                                                (x8916
                                                 (begin
                                                   (write '(funapp 3274 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7530
                                                    k7531
                                                    g7529))))
                                               (begin
                                                 (write '(funapp 3275 42))
                                                 (display "\n")
                                                 (f7532 x8917 x8916)))))
                                            (begin
                                              (write '(funapp 3276 39))
                                              (display "\n")
                                              (BSET/C j7530 k7531 x8915)))))
                                         g8914))))
                                    g8913))
                                 xj7526
                                 xk7527
                                 blocks-rotate-cw))))
                            g8912)))
                         (x8906
                          (letrec*
                           ((x8907
                             (letrec*
                              ((x8910 (input))
                               (x8908
                                (letrec*
                                 ((x8909 (input)))
                                 (begin
                                   (write '(funapp 3289 56))
                                   (display "\n")
                                   (cons
                                    x8909
                                    (begin
                                      (write '(funapp 3289 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3290 27))
                                (display "\n")
                                (cons x8910 x8908)))))
                           (begin
                             (write '(funapp 3291 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3291 29))
                                (display "\n")
                                'posn)
                              x8907))))
                         (x8905 (input)))
                        (begin
                          (write '(funapp 3293 21))
                          (display "\n")
                          (x8911 x8906 x8905)))
                       (letrec*
                        ((x8924
                          (letrec*
                           ((xj7533
                             (begin
                               (write '(funapp 3297 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3297 37))
                                  (display "\n")
                                  'module))))
                            (xk7534
                             (begin
                               (write '(funapp 3297 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3297 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8925
                              (begin
                                (write '(funapp 3300 27))
                                (display "\n")
                                ((lambda (j7537 k7538 f7539)
                                   (letrec*
                                    ((g8926
                                      (lambda (g7535 g7536)
                                        (letrec*
                                         ((g8927
                                           (letrec*
                                            ((x8928
                                              (letrec*
                                               ((x8930
                                                 (begin
                                                   (write '(funapp 3309 50))
                                                   (display "\n")
                                                   (POSN/C j7537 k7538 g7535)))
                                                (x8929
                                                 (begin
                                                   (write '(funapp 3310 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7537
                                                    k7538
                                                    g7536))))
                                               (begin
                                                 (write '(funapp 3311 42))
                                                 (display "\n")
                                                 (f7539 x8930 x8929)))))
                                            (begin
                                              (write '(funapp 3312 39))
                                              (display "\n")
                                              (BSET/C j7537 k7538 x8928)))))
                                         g8927))))
                                    g8926))
                                 xj7533
                                 xk7534
                                 blocks-rotate-ccw))))
                            g8925)))
                         (x8919
                          (letrec*
                           ((x8920
                             (letrec*
                              ((x8923 (input))
                               (x8921
                                (letrec*
                                 ((x8922 (input)))
                                 (begin
                                   (write '(funapp 3325 56))
                                   (display "\n")
                                   (cons
                                    x8922
                                    (begin
                                      (write '(funapp 3325 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3326 27))
                                (display "\n")
                                (cons x8923 x8921)))))
                           (begin
                             (write '(funapp 3327 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3327 29))
                                (display "\n")
                                'posn)
                              x8920))))
                         (x8918 (input)))
                        (begin
                          (write '(funapp 3329 21))
                          (display "\n")
                          (x8924 x8919 x8918)))
                       (letrec*
                        ((x8933
                          (letrec*
                           ((xj7540
                             (begin
                               (write '(funapp 3333 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3333 37))
                                  (display "\n")
                                  'module))))
                            (xk7541
                             (begin
                               (write '(funapp 3333 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3333 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8934
                              (begin
                                (write '(funapp 3336 27))
                                (display "\n")
                                ((lambda (j7544 k7545 f7546)
                                   (letrec*
                                    ((g8935
                                      (lambda (g7542 g7543)
                                        (letrec*
                                         ((g8936
                                           (letrec*
                                            ((x8937
                                              (letrec*
                                               ((x8939
                                                 (begin
                                                   (write '(funapp 3345 50))
                                                   (display "\n")
                                                   (BSET/C j7544 k7545 g7542)))
                                                (x8938
                                                 (begin
                                                   (write '(funapp 3346 50))
                                                   (display "\n")
                                                   (COLOR/C
                                                    j7544
                                                    k7545
                                                    g7543))))
                                               (begin
                                                 (write '(funapp 3347 42))
                                                 (display "\n")
                                                 (f7546 x8939 x8938)))))
                                            (begin
                                              (write '(funapp 3348 39))
                                              (display "\n")
                                              (BSET/C j7544 k7545 x8937)))))
                                         g8936))))
                                    g8935))
                                 xj7540
                                 xk7541
                                 blocks-change-color))))
                            g8934)))
                         (x8932 (input))
                         (x8931 (input)))
                        (begin
                          (write '(funapp 3357 21))
                          (display "\n")
                          (x8933 x8932 x8931)))
                       (letrec*
                        ((x8942
                          (letrec*
                           ((xj7547
                             (begin
                               (write '(funapp 3361 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3361 37))
                                  (display "\n")
                                  'module))))
                            (xk7548
                             (begin
                               (write '(funapp 3361 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3361 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8943
                              (begin
                                (write '(funapp 3364 27))
                                (display "\n")
                                ((lambda (j7551 k7552 f7553)
                                   (letrec*
                                    ((g8944
                                      (lambda (g7549 g7550)
                                        (letrec*
                                         ((g8945
                                           (letrec*
                                            ((x8946
                                              (letrec*
                                               ((x8948
                                                 (begin
                                                   (write '(funapp 3373 50))
                                                   (display "\n")
                                                   (BSET/C j7551 k7552 g7549)))
                                                (x8947
                                                 (begin
                                                   (write '(funapp 3374 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7551
                                                    k7552
                                                    g7550))))
                                               (begin
                                                 (write '(funapp 3375 42))
                                                 (display "\n")
                                                 (f7553 x8948 x8947)))))
                                            (begin
                                              (write '(funapp 3376 39))
                                              (display "\n")
                                              (BSET/C j7551 k7552 x8946)))))
                                         g8945))))
                                    g8944))
                                 xj7547
                                 xk7548
                                 blocks-row))))
                            g8943)))
                         (x8941 (input))
                         (x8940 (input)))
                        (begin
                          (write '(funapp 3385 21))
                          (display "\n")
                          (x8942 x8941 x8940)))
                       (letrec*
                        ((x8951
                          (letrec*
                           ((xj7554
                             (begin
                               (write '(funapp 3389 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3389 37))
                                  (display "\n")
                                  'module))))
                            (xk7555
                             (begin
                               (write '(funapp 3389 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3389 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8952
                              (begin
                                (write '(funapp 3392 27))
                                (display "\n")
                                ((lambda (j7558 k7559 f7560)
                                   (letrec*
                                    ((g8953
                                      (lambda (g7556 g7557)
                                        (letrec*
                                         ((g8954
                                           (letrec*
                                            ((x8955
                                              (letrec*
                                               ((x8957
                                                 (begin
                                                   (write '(funapp 3401 50))
                                                   (display "\n")
                                                   (BSET/C j7558 k7559 g7556)))
                                                (x8956
                                                 (begin
                                                   (write '(funapp 3402 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7558
                                                    k7559
                                                    g7557))))
                                               (begin
                                                 (write '(funapp 3403 42))
                                                 (display "\n")
                                                 (f7560 x8957 x8956)))))
                                            (begin
                                              (write '(funapp 3404 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7558
                                               k7559
                                               x8955)))))
                                         g8954))))
                                    g8953))
                                 xj7554
                                 xk7555
                                 full-row?))))
                            g8952)))
                         (x8950 (input))
                         (x8949 (input)))
                        (begin
                          (write '(funapp 3413 21))
                          (display "\n")
                          (x8951 x8950 x8949)))
                       (letrec*
                        ((x8960
                          (letrec*
                           ((xj7561
                             (begin
                               (write '(funapp 3417 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3417 37))
                                  (display "\n")
                                  'module))))
                            (xk7562
                             (begin
                               (write '(funapp 3417 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3417 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8961
                              (begin
                                (write '(funapp 3420 27))
                                (display "\n")
                                ((lambda (j7565 k7566 f7567)
                                   (letrec*
                                    ((g8962
                                      (lambda (g7563 g7564)
                                        (letrec*
                                         ((g8963
                                           (letrec*
                                            ((x8964
                                              (letrec*
                                               ((x8966
                                                 (begin
                                                   (write '(funapp 3429 50))
                                                   (display "\n")
                                                   (BSET/C j7565 k7566 g7563)))
                                                (x8965
                                                 (begin
                                                   (write '(funapp 3430 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7565
                                                    k7566
                                                    g7564))))
                                               (begin
                                                 (write '(funapp 3431 42))
                                                 (display "\n")
                                                 (f7567 x8966 x8965)))))
                                            (begin
                                              (write '(funapp 3432 39))
                                              (display "\n")
                                              (BSET/C j7565 k7566 x8964)))))
                                         g8963))))
                                    g8962))
                                 xj7561
                                 xk7562
                                 blocks-union))))
                            g8961)))
                         (x8959 (input))
                         (x8958 (input)))
                        (begin
                          (write '(funapp 3441 21))
                          (display "\n")
                          (x8960 x8959 x8958)))
                       (letrec*
                        ((x8968
                          (letrec*
                           ((xj7568
                             (begin
                               (write '(funapp 3445 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3445 37))
                                  (display "\n")
                                  'module))))
                            (xk7569
                             (begin
                               (write '(funapp 3445 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3445 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8969
                              (begin
                                (write '(funapp 3448 27))
                                (display "\n")
                                ((lambda (j7571 k7572 f7573)
                                   (letrec*
                                    ((g8970
                                      (lambda (g7570)
                                        (letrec*
                                         ((g8971
                                           (letrec*
                                            ((x8972
                                              (letrec*
                                               ((x8973
                                                 (begin
                                                   (write '(funapp 3457 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7571
                                                    k7572
                                                    g7570))))
                                               (begin
                                                 (write '(funapp 3458 42))
                                                 (display "\n")
                                                 (f7573 x8973)))))
                                            (begin
                                              (write '(funapp 3459 39))
                                              (display "\n")
                                              (real?/c j7571 k7572 x8972)))))
                                         g8971))))
                                    g8970))
                                 xj7568
                                 xk7569
                                 blocks-max-x))))
                            g8969)))
                         (x8967 (input)))
                        (begin
                          (write '(funapp 3467 21))
                          (display "\n")
                          (x8968 x8967)))
                       (letrec*
                        ((x8975
                          (letrec*
                           ((xj7574
                             (begin
                               (write '(funapp 3471 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3471 37))
                                  (display "\n")
                                  'module))))
                            (xk7575
                             (begin
                               (write '(funapp 3471 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3471 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8976
                              (begin
                                (write '(funapp 3474 27))
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
                                                   (write '(funapp 3483 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7577
                                                    k7578
                                                    g7576))))
                                               (begin
                                                 (write '(funapp 3484 42))
                                                 (display "\n")
                                                 (f7579 x8980)))))
                                            (begin
                                              (write '(funapp 3485 39))
                                              (display "\n")
                                              (real?/c j7577 k7578 x8979)))))
                                         g8978))))
                                    g8977))
                                 xj7574
                                 xk7575
                                 blocks-min-x))))
                            g8976)))
                         (x8974 (input)))
                        (begin
                          (write '(funapp 3493 21))
                          (display "\n")
                          (x8975 x8974)))
                       (letrec*
                        ((x8982
                          (letrec*
                           ((xj7580
                             (begin
                               (write '(funapp 3497 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3497 37))
                                  (display "\n")
                                  'module))))
                            (xk7581
                             (begin
                               (write '(funapp 3497 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3497 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8983
                              (begin
                                (write '(funapp 3500 27))
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
                                                   (write '(funapp 3509 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7583
                                                    k7584
                                                    g7582))))
                                               (begin
                                                 (write '(funapp 3510 42))
                                                 (display "\n")
                                                 (f7585 x8987)))))
                                            (begin
                                              (write '(funapp 3511 39))
                                              (display "\n")
                                              (real?/c j7583 k7584 x8986)))))
                                         g8985))))
                                    g8984))
                                 xj7580
                                 xk7581
                                 blocks-max-y))))
                            g8983)))
                         (x8981 (input)))
                        (begin
                          (write '(funapp 3519 21))
                          (display "\n")
                          (x8982 x8981)))
                       (letrec*
                        ((x8989
                          (letrec*
                           ((xj7586
                             (begin
                               (write '(funapp 3523 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3523 37))
                                  (display "\n")
                                  'module))))
                            (xk7587
                             (begin
                               (write '(funapp 3523 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3523 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8990
                              (begin
                                (write '(funapp 3526 27))
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
                                                   (write '(funapp 3535 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7589
                                                    k7590
                                                    g7588))))
                                               (begin
                                                 (write '(funapp 3536 42))
                                                 (display "\n")
                                                 (f7591 x8994)))))
                                            (begin
                                              (write '(funapp 3537 39))
                                              (display "\n")
                                              (BSET/C j7589 k7590 x8993)))))
                                         g8992))))
                                    g8991))
                                 xj7586
                                 xk7587
                                 eliminate-full-rows))))
                            g8990)))
                         (x8988 (input)))
                        (begin
                          (write '(funapp 3545 21))
                          (display "\n")
                          (x8989 x8988)))
                       (letrec*
                        ((x9006
                          (letrec*
                           ((xj7592
                             (begin
                               (write '(funapp 3549 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3549 37))
                                  (display "\n")
                                  'module))))
                            (xk7593
                             (begin
                               (write '(funapp 3549 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3549 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9007
                              (begin
                                (write '(funapp 3552 27))
                                (display "\n")
                                ((lambda (j7597 k7598 f7599)
                                   (letrec*
                                    ((g9008
                                      (lambda (g7594 g7595 g7596)
                                        (letrec*
                                         ((g9009
                                           (letrec*
                                            ((x9010
                                              (letrec*
                                               ((x9013
                                                 (begin
                                                   (write '(funapp 3562 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7597
                                                    k7598
                                                    g7594)))
                                                (x9012
                                                 (begin
                                                   (write '(funapp 3564 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7597
                                                    k7598
                                                    g7595)))
                                                (x9011
                                                 (begin
                                                   (write '(funapp 3565 50))
                                                   (display "\n")
                                                   (TETRA/C
                                                    j7597
                                                    k7598
                                                    g7596))))
                                               (begin
                                                 (write '(funapp 3566 42))
                                                 (display "\n")
                                                 (f7599 x9013 x9012 x9011)))))
                                            (begin
                                              (write '(funapp 3567 39))
                                              (display "\n")
                                              (TETRA/C j7597 k7598 x9010)))))
                                         g9009))))
                                    g9008))
                                 xj7592
                                 xk7593
                                 tetra-move))))
                            g9007)))
                         (x9005 (input))
                         (x9004 (input))
                         (x8995
                          (letrec*
                           ((x8996
                             (letrec*
                              ((x8999
                                (letrec*
                                 ((x9000
                                   (letrec*
                                    ((x9003 (input))
                                     (x9001
                                      (letrec*
                                       ((x9002 (input)))
                                       (begin
                                         (write '(funapp 3588 36))
                                         (display "\n")
                                         (cons
                                          x9002
                                          (begin
                                            (write '(funapp 3588 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3589 33))
                                      (display "\n")
                                      (cons x9003 x9001)))))
                                 (begin
                                   (write '(funapp 3590 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3590 35))
                                      (display "\n")
                                      'posn)
                                    x9000))))
                               (x8997
                                (letrec*
                                 ((x8998 (input)))
                                 (begin
                                   (write '(funapp 3592 56))
                                   (display "\n")
                                   (cons
                                    x8998
                                    (begin
                                      (write '(funapp 3592 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3593 27))
                                (display "\n")
                                (cons x8999 x8997)))))
                           (begin
                             (write '(funapp 3594 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3594 29))
                                (display "\n")
                                'tetra)
                              x8996)))))
                        (begin
                          (write '(funapp 3595 21))
                          (display "\n")
                          (x9006 x9005 x9004 x8995)))
                       (letrec*
                        ((x9023
                          (letrec*
                           ((xj7600
                             (begin
                               (write '(funapp 3599 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3599 37))
                                  (display "\n")
                                  'module))))
                            (xk7601
                             (begin
                               (write '(funapp 3599 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3599 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9024
                              (begin
                                (write '(funapp 3602 27))
                                (display "\n")
                                ((lambda (j7603 k7604 f7605)
                                   (letrec*
                                    ((g9025
                                      (lambda (g7602)
                                        (letrec*
                                         ((g9026
                                           (letrec*
                                            ((x9027
                                              (letrec*
                                               ((x9028
                                                 (begin
                                                   (write '(funapp 3611 50))
                                                   (display "\n")
                                                   (TETRA/C
                                                    j7603
                                                    k7604
                                                    g7602))))
                                               (begin
                                                 (write '(funapp 3612 42))
                                                 (display "\n")
                                                 (f7605 x9028)))))
                                            (begin
                                              (write '(funapp 3613 39))
                                              (display "\n")
                                              (TETRA/C j7603 k7604 x9027)))))
                                         g9026))))
                                    g9025))
                                 xj7600
                                 xk7601
                                 tetra-rotate-ccw))))
                            g9024)))
                         (x9014
                          (letrec*
                           ((x9015
                             (letrec*
                              ((x9018
                                (letrec*
                                 ((x9019
                                   (letrec*
                                    ((x9022 (input))
                                     (x9020
                                      (letrec*
                                       ((x9021 (input)))
                                       (begin
                                         (write '(funapp 3632 36))
                                         (display "\n")
                                         (cons
                                          x9021
                                          (begin
                                            (write '(funapp 3632 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3633 33))
                                      (display "\n")
                                      (cons x9022 x9020)))))
                                 (begin
                                   (write '(funapp 3634 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3634 35))
                                      (display "\n")
                                      'posn)
                                    x9019))))
                               (x9016
                                (letrec*
                                 ((x9017 (input)))
                                 (begin
                                   (write '(funapp 3636 56))
                                   (display "\n")
                                   (cons
                                    x9017
                                    (begin
                                      (write '(funapp 3636 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3637 27))
                                (display "\n")
                                (cons x9018 x9016)))))
                           (begin
                             (write '(funapp 3638 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3638 29))
                                (display "\n")
                                'tetra)
                              x9015)))))
                        (begin
                          (write '(funapp 3639 21))
                          (display "\n")
                          (x9023 x9014)))
                       (letrec*
                        ((x9038
                          (letrec*
                           ((xj7606
                             (begin
                               (write '(funapp 3643 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3643 37))
                                  (display "\n")
                                  'module))))
                            (xk7607
                             (begin
                               (write '(funapp 3643 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3643 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9039
                              (begin
                                (write '(funapp 3646 27))
                                (display "\n")
                                ((lambda (j7609 k7610 f7611)
                                   (letrec*
                                    ((g9040
                                      (lambda (g7608)
                                        (letrec*
                                         ((g9041
                                           (letrec*
                                            ((x9042
                                              (letrec*
                                               ((x9043
                                                 (begin
                                                   (write '(funapp 3655 50))
                                                   (display "\n")
                                                   (TETRA/C
                                                    j7609
                                                    k7610
                                                    g7608))))
                                               (begin
                                                 (write '(funapp 3656 42))
                                                 (display "\n")
                                                 (f7611 x9043)))))
                                            (begin
                                              (write '(funapp 3657 39))
                                              (display "\n")
                                              (TETRA/C j7609 k7610 x9042)))))
                                         g9041))))
                                    g9040))
                                 xj7606
                                 xk7607
                                 tetra-rotate-cw))))
                            g9039)))
                         (x9029
                          (letrec*
                           ((x9030
                             (letrec*
                              ((x9033
                                (letrec*
                                 ((x9034
                                   (letrec*
                                    ((x9037 (input))
                                     (x9035
                                      (letrec*
                                       ((x9036 (input)))
                                       (begin
                                         (write '(funapp 3676 36))
                                         (display "\n")
                                         (cons
                                          x9036
                                          (begin
                                            (write '(funapp 3676 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3677 33))
                                      (display "\n")
                                      (cons x9037 x9035)))))
                                 (begin
                                   (write '(funapp 3678 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3678 35))
                                      (display "\n")
                                      'posn)
                                    x9034))))
                               (x9031
                                (letrec*
                                 ((x9032 (input)))
                                 (begin
                                   (write '(funapp 3680 56))
                                   (display "\n")
                                   (cons
                                    x9032
                                    (begin
                                      (write '(funapp 3680 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3681 27))
                                (display "\n")
                                (cons x9033 x9031)))))
                           (begin
                             (write '(funapp 3682 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3682 29))
                                (display "\n")
                                'tetra)
                              x9030)))))
                        (begin
                          (write '(funapp 3683 21))
                          (display "\n")
                          (x9038 x9029)))
                       (letrec*
                        ((x9054
                          (letrec*
                           ((xj7612
                             (begin
                               (write '(funapp 3687 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3687 37))
                                  (display "\n")
                                  'module))))
                            (xk7613
                             (begin
                               (write '(funapp 3687 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3687 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9055
                              (begin
                                (write '(funapp 3690 27))
                                (display "\n")
                                ((lambda (j7616 k7617 f7618)
                                   (letrec*
                                    ((g9056
                                      (lambda (g7614 g7615)
                                        (letrec*
                                         ((g9057
                                           (letrec*
                                            ((x9058
                                              (letrec*
                                               ((x9060
                                                 (begin
                                                   (write '(funapp 3699 50))
                                                   (display "\n")
                                                   (TETRA/C
                                                    j7616
                                                    k7617
                                                    g7614)))
                                                (x9059
                                                 (begin
                                                   (write '(funapp 3700 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7616
                                                    k7617
                                                    g7615))))
                                               (begin
                                                 (write '(funapp 3701 42))
                                                 (display "\n")
                                                 (f7618 x9060 x9059)))))
                                            (begin
                                              (write '(funapp 3702 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7616
                                               k7617
                                               x9058)))))
                                         g9057))))
                                    g9056))
                                 xj7612
                                 xk7613
                                 tetra-overlaps-blocks?))))
                            g9055)))
                         (x9045
                          (letrec*
                           ((x9046
                             (letrec*
                              ((x9049
                                (letrec*
                                 ((x9050
                                   (letrec*
                                    ((x9053 (input))
                                     (x9051
                                      (letrec*
                                       ((x9052 (input)))
                                       (begin
                                         (write '(funapp 3721 36))
                                         (display "\n")
                                         (cons
                                          x9052
                                          (begin
                                            (write '(funapp 3721 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3722 33))
                                      (display "\n")
                                      (cons x9053 x9051)))))
                                 (begin
                                   (write '(funapp 3723 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3723 35))
                                      (display "\n")
                                      'posn)
                                    x9050))))
                               (x9047
                                (letrec*
                                 ((x9048 (input)))
                                 (begin
                                   (write '(funapp 3725 56))
                                   (display "\n")
                                   (cons
                                    x9048
                                    (begin
                                      (write '(funapp 3725 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3726 27))
                                (display "\n")
                                (cons x9049 x9047)))))
                           (begin
                             (write '(funapp 3727 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3727 29))
                                (display "\n")
                                'tetra)
                              x9046))))
                         (x9044 (input)))
                        (begin
                          (write '(funapp 3729 21))
                          (display "\n")
                          (x9054 x9045 x9044)))
                       (letrec*
                        ((x9072
                          (letrec*
                           ((xj7619
                             (begin
                               (write '(funapp 3733 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3733 37))
                                  (display "\n")
                                  'module))))
                            (xk7620
                             (begin
                               (write '(funapp 3733 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3733 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9073
                              (begin
                                (write '(funapp 3736 27))
                                (display "\n")
                                ((lambda (j7632 k7633 f7634)
                                   (letrec*
                                    ((g9074
                                      (lambda (g7621
                                               g7622
                                               g7623
                                               g7624
                                               g7625
                                               g7626
                                               g7627
                                               g7628
                                               g7629
                                               g7630
                                               g7631)
                                        (letrec*
                                         ((g9075
                                           (letrec*
                                            ((x9076
                                              (letrec*
                                               ((x9087
                                                 (begin
                                                   (write '(funapp 3755 50))
                                                   (display "\n")
                                                   (COLOR/C
                                                    j7632
                                                    k7633
                                                    g7621)))
                                                (x9086
                                                 (begin
                                                   (write '(funapp 3756 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7632
                                                    k7633
                                                    g7622)))
                                                (x9085
                                                 (begin
                                                   (write '(funapp 3757 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7632
                                                    k7633
                                                    g7623)))
                                                (x9084
                                                 (begin
                                                   (write '(funapp 3759 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7632
                                                    k7633
                                                    g7624)))
                                                (x9083
                                                 (begin
                                                   (write '(funapp 3761 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7632
                                                    k7633
                                                    g7625)))
                                                (x9082
                                                 (begin
                                                   (write '(funapp 3763 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7632
                                                    k7633
                                                    g7626)))
                                                (x9081
                                                 (begin
                                                   (write '(funapp 3765 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7632
                                                    k7633
                                                    g7627)))
                                                (x9080
                                                 (begin
                                                   (write '(funapp 3767 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7632
                                                    k7633
                                                    g7628)))
                                                (x9079
                                                 (begin
                                                   (write '(funapp 3769 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7632
                                                    k7633
                                                    g7629)))
                                                (x9078
                                                 (begin
                                                   (write '(funapp 3771 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7632
                                                    k7633
                                                    g7630)))
                                                (x9077
                                                 (begin
                                                   (write '(funapp 3773 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7632
                                                    k7633
                                                    g7631))))
                                               (begin
                                                 (write '(funapp 3774 42))
                                                 (display "\n")
                                                 (f7634
                                                  x9087
                                                  x9086
                                                  x9085
                                                  x9084
                                                  x9083
                                                  x9082
                                                  x9081
                                                  x9080
                                                  x9079
                                                  x9078
                                                  x9077)))))
                                            (begin
                                              (write '(funapp 3786 39))
                                              (display "\n")
                                              (TETRA/C j7632 k7633 x9076)))))
                                         g9075))))
                                    g9074))
                                 xj7619
                                 xk7620
                                 build-tetra-blocks))))
                            g9073)))
                         (x9071 (input))
                         (x9070 (input))
                         (x9069 (input))
                         (x9068 (input))
                         (x9067 (input))
                         (x9066 (input))
                         (x9065 (input))
                         (x9064 (input))
                         (x9063 (input))
                         (x9062 (input))
                         (x9061 (input)))
                        (begin
                          (write '(funapp 3804 21))
                          (display "\n")
                          (x9072
                           x9071
                           x9070
                           x9069
                           x9068
                           x9067
                           x9066
                           x9065
                           x9064
                           x9063
                           x9062
                           x9061)))
                       (letrec*
                        ((x9098
                          (letrec*
                           ((xj7635
                             (begin
                               (write '(funapp 3819 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3819 37))
                                  (display "\n")
                                  'module))))
                            (xk7636
                             (begin
                               (write '(funapp 3819 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3819 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9099
                              (begin
                                (write '(funapp 3822 27))
                                (display "\n")
                                ((lambda (j7639 k7640 f7641)
                                   (letrec*
                                    ((g9100
                                      (lambda (g7637 g7638)
                                        (letrec*
                                         ((g9101
                                           (letrec*
                                            ((x9102
                                              (letrec*
                                               ((x9104
                                                 (begin
                                                   (write '(funapp 3831 50))
                                                   (display "\n")
                                                   (TETRA/C
                                                    j7639
                                                    k7640
                                                    g7637)))
                                                (x9103
                                                 (begin
                                                   (write '(funapp 3832 50))
                                                   (display "\n")
                                                   (COLOR/C
                                                    j7639
                                                    k7640
                                                    g7638))))
                                               (begin
                                                 (write '(funapp 3833 42))
                                                 (display "\n")
                                                 (f7641 x9104 x9103)))))
                                            (begin
                                              (write '(funapp 3834 39))
                                              (display "\n")
                                              (TETRA/C j7639 k7640 x9102)))))
                                         g9101))))
                                    g9100))
                                 xj7635
                                 xk7636
                                 tetra-change-color))))
                            g9099)))
                         (x9089
                          (letrec*
                           ((x9090
                             (letrec*
                              ((x9093
                                (letrec*
                                 ((x9094
                                   (letrec*
                                    ((x9097 (input))
                                     (x9095
                                      (letrec*
                                       ((x9096 (input)))
                                       (begin
                                         (write '(funapp 3853 36))
                                         (display "\n")
                                         (cons
                                          x9096
                                          (begin
                                            (write '(funapp 3853 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3854 33))
                                      (display "\n")
                                      (cons x9097 x9095)))))
                                 (begin
                                   (write '(funapp 3855 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3855 35))
                                      (display "\n")
                                      'posn)
                                    x9094))))
                               (x9091
                                (letrec*
                                 ((x9092 (input)))
                                 (begin
                                   (write '(funapp 3857 56))
                                   (display "\n")
                                   (cons
                                    x9092
                                    (begin
                                      (write '(funapp 3857 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3858 27))
                                (display "\n")
                                (cons x9093 x9091)))))
                           (begin
                             (write '(funapp 3859 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3859 29))
                                (display "\n")
                                'tetra)
                              x9090))))
                         (x9088 (input)))
                        (begin
                          (write '(funapp 3861 21))
                          (display "\n")
                          (x9098 x9089 x9088)))
                       (letrec*
                        ((x9119
                          (letrec*
                           ((xj7642
                             (begin
                               (write '(funapp 3865 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3865 37))
                                  (display "\n")
                                  'module))))
                            (xk7643
                             (begin
                               (write '(funapp 3865 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3865 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9120
                              (begin
                                (write '(funapp 3868 27))
                                (display "\n")
                                ((lambda (j7646 k7647 f7648)
                                   (letrec*
                                    ((g9121
                                      (lambda (g7644 g7645)
                                        (letrec*
                                         ((g9122
                                           (letrec*
                                            ((x9123
                                              (letrec*
                                               ((x9125
                                                 (begin
                                                   (write '(funapp 3877 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7646
                                                    k7647
                                                    g7644)))
                                                (x9124
                                                 (begin
                                                   (write '(funapp 3879 44))
                                                   (display "\n")
                                                   (string?/c
                                                    j7646
                                                    k7647
                                                    g7645))))
                                               (begin
                                                 (write '(funapp 3880 42))
                                                 (display "\n")
                                                 (f7648 x9125 x9124)))))
                                            (begin
                                              (write '(funapp 3881 39))
                                              (display "\n")
                                              (WORLD/C j7646 k7647 x9123)))))
                                         g9122))))
                                    g9121))
                                 xj7642
                                 xk7643
                                 world-key-move))))
                            g9120)))
                         (x9106
                          (letrec*
                           ((x9107
                             (letrec*
                              ((x9110
                                (letrec*
                                 ((x9111
                                   (letrec*
                                    ((x9114
                                      (letrec*
                                       ((x9115
                                         (letrec*
                                          ((x9118 (input))
                                           (x9116
                                            (letrec*
                                             ((x9117 (input)))
                                             (begin
                                               (write '(funapp 3904 42))
                                               (display "\n")
                                               (cons
                                                x9117
                                                (begin
                                                  (write '(funapp 3904 53))
                                                  (display "\n")
                                                  '()))))))
                                          (begin
                                            (write '(funapp 3905 39))
                                            (display "\n")
                                            (cons x9118 x9116)))))
                                       (begin
                                         (write '(funapp 3906 36))
                                         (display "\n")
                                         (cons
                                          (begin
                                            (write '(funapp 3906 41))
                                            (display "\n")
                                            'posn)
                                          x9115))))
                                     (x9112
                                      (letrec*
                                       ((x9113 (input)))
                                       (begin
                                         (write '(funapp 3910 36))
                                         (display "\n")
                                         (cons
                                          x9113
                                          (begin
                                            (write '(funapp 3910 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3911 33))
                                      (display "\n")
                                      (cons x9114 x9112)))))
                                 (begin
                                   (write '(funapp 3912 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3912 35))
                                      (display "\n")
                                      'tetra)
                                    x9111))))
                               (x9108
                                (letrec*
                                 ((x9109 (input)))
                                 (begin
                                   (write '(funapp 3914 56))
                                   (display "\n")
                                   (cons
                                    x9109
                                    (begin
                                      (write '(funapp 3914 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3915 27))
                                (display "\n")
                                (cons x9110 x9108)))))
                           (begin
                             (write '(funapp 3916 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3916 29))
                                (display "\n")
                                'world)
                              x9107))))
                         (x9105 (input)))
                        (begin
                          (write '(funapp 3918 21))
                          (display "\n")
                          (x9119 x9106 x9105)))
                       (letrec*
                        ((x9140
                          (letrec*
                           ((xj7649
                             (begin
                               (write '(funapp 3922 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3922 37))
                                  (display "\n")
                                  'module))))
                            (xk7650
                             (begin
                               (write '(funapp 3922 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3922 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9141
                              (begin
                                (write '(funapp 3925 27))
                                (display "\n")
                                ((lambda (j7653 k7654 f7655)
                                   (letrec*
                                    ((g9142
                                      (lambda (g7651 g7652)
                                        (letrec*
                                         ((g9143
                                           (letrec*
                                            ((x9144
                                              (letrec*
                                               ((x9148
                                                 (begin
                                                   (write '(funapp 3934 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7653
                                                    k7654
                                                    g7651)))
                                                (x9145
                                                 (letrec*
                                                  ((x9146
                                                    (letrec*
                                                     ((x9147
                                                       (begin
                                                         (write
                                                          '(funapp 3939 56))
                                                         (display "\n")
                                                         (listof TETRA/C))))
                                                     (begin
                                                       (write
                                                        '(funapp 3940 48))
                                                       (display "\n")
                                                       (and/c
                                                        cons?/c
                                                        x9147)))))
                                                  (begin
                                                    (write '(funapp 3941 45))
                                                    (display "\n")
                                                    (x9146
                                                     j7653
                                                     k7654
                                                     g7652)))))
                                               (begin
                                                 (write '(funapp 3942 42))
                                                 (display "\n")
                                                 (f7655 x9148 x9145)))))
                                            (begin
                                              (write '(funapp 3943 39))
                                              (display "\n")
                                              (WORLD/C j7653 k7654 x9144)))))
                                         g9143))))
                                    g9142))
                                 xj7649
                                 xk7650
                                 next-world))))
                            g9141)))
                         (x9127
                          (letrec*
                           ((x9128
                             (letrec*
                              ((x9131
                                (letrec*
                                 ((x9132
                                   (letrec*
                                    ((x9135
                                      (letrec*
                                       ((x9136
                                         (letrec*
                                          ((x9139 (input))
                                           (x9137
                                            (letrec*
                                             ((x9138 (input)))
                                             (begin
                                               (write '(funapp 3966 42))
                                               (display "\n")
                                               (cons
                                                x9138
                                                (begin
                                                  (write '(funapp 3966 53))
                                                  (display "\n")
                                                  '()))))))
                                          (begin
                                            (write '(funapp 3967 39))
                                            (display "\n")
                                            (cons x9139 x9137)))))
                                       (begin
                                         (write '(funapp 3968 36))
                                         (display "\n")
                                         (cons
                                          (begin
                                            (write '(funapp 3968 41))
                                            (display "\n")
                                            'posn)
                                          x9136))))
                                     (x9133
                                      (letrec*
                                       ((x9134 (input)))
                                       (begin
                                         (write '(funapp 3972 36))
                                         (display "\n")
                                         (cons
                                          x9134
                                          (begin
                                            (write '(funapp 3972 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3973 33))
                                      (display "\n")
                                      (cons x9135 x9133)))))
                                 (begin
                                   (write '(funapp 3974 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3974 35))
                                      (display "\n")
                                      'tetra)
                                    x9132))))
                               (x9129
                                (letrec*
                                 ((x9130 (input)))
                                 (begin
                                   (write '(funapp 3976 56))
                                   (display "\n")
                                   (cons
                                    x9130
                                    (begin
                                      (write '(funapp 3976 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3977 27))
                                (display "\n")
                                (cons x9131 x9129)))))
                           (begin
                             (write '(funapp 3978 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3978 29))
                                (display "\n")
                                'world)
                              x9128))))
                         (x9126 (input)))
                        (begin
                          (write '(funapp 3980 21))
                          (display "\n")
                          (x9140 x9127 x9126)))
                       (letrec*
                        ((x9162
                          (letrec*
                           ((xj7656
                             (begin
                               (write '(funapp 3984 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3984 37))
                                  (display "\n")
                                  'module))))
                            (xk7657
                             (begin
                               (write '(funapp 3984 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3984 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9163
                              (begin
                                (write '(funapp 3987 27))
                                (display "\n")
                                ((lambda (j7659 k7660 f7661)
                                   (letrec*
                                    ((g9164
                                      (lambda (g7658)
                                        (letrec*
                                         ((g9165
                                           (letrec*
                                            ((x9166
                                              (letrec*
                                               ((x9167
                                                 (begin
                                                   (write '(funapp 3996 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7659
                                                    k7660
                                                    g7658))))
                                               (begin
                                                 (write '(funapp 3997 42))
                                                 (display "\n")
                                                 (f7661 x9167)))))
                                            (begin
                                              (write '(funapp 3998 39))
                                              (display "\n")
                                              (BSET/C j7659 k7660 x9166)))))
                                         g9165))))
                                    g9164))
                                 xj7656
                                 xk7657
                                 ghost-blocks))))
                            g9163)))
                         (x9149
                          (letrec*
                           ((x9150
                             (letrec*
                              ((x9153
                                (letrec*
                                 ((x9154
                                   (letrec*
                                    ((x9157
                                      (letrec*
                                       ((x9158
                                         (letrec*
                                          ((x9161 (input))
                                           (x9159
                                            (letrec*
                                             ((x9160 (input)))
                                             (begin
                                               (write '(funapp 4021 42))
                                               (display "\n")
                                               (cons
                                                x9160
                                                (begin
                                                  (write '(funapp 4021 53))
                                                  (display "\n")
                                                  '()))))))
                                          (begin
                                            (write '(funapp 4022 39))
                                            (display "\n")
                                            (cons x9161 x9159)))))
                                       (begin
                                         (write '(funapp 4023 36))
                                         (display "\n")
                                         (cons
                                          (begin
                                            (write '(funapp 4023 41))
                                            (display "\n")
                                            'posn)
                                          x9158))))
                                     (x9155
                                      (letrec*
                                       ((x9156 (input)))
                                       (begin
                                         (write '(funapp 4027 36))
                                         (display "\n")
                                         (cons
                                          x9156
                                          (begin
                                            (write '(funapp 4027 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 4028 33))
                                      (display "\n")
                                      (cons x9157 x9155)))))
                                 (begin
                                   (write '(funapp 4029 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 4029 35))
                                      (display "\n")
                                      'tetra)
                                    x9154))))
                               (x9151
                                (letrec*
                                 ((x9152 (input)))
                                 (begin
                                   (write '(funapp 4031 56))
                                   (display "\n")
                                   (cons
                                    x9152
                                    (begin
                                      (write '(funapp 4031 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 4032 27))
                                (display "\n")
                                (cons x9153 x9151)))))
                           (begin
                             (write '(funapp 4033 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 4033 29))
                                (display "\n")
                                'world)
                              x9150)))))
                        (begin
                          (write '(funapp 4034 21))
                          (display "\n")
                          (x9162 x9149)))
                       (letrec*
                        ((x9169
                          (letrec*
                           ((xj7662
                             (begin
                               (write '(funapp 4038 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4038 37))
                                  (display "\n")
                                  'module))))
                            (xk7663
                             (begin
                               (write '(funapp 4038 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4038 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9170
                              (begin
                                (write '(funapp 4041 27))
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
                                                   (write '(funapp 4050 50))
                                                   (display "\n")
                                                   (any/c j7665 k7666 g7664))))
                                               (begin
                                                 (write '(funapp 4051 42))
                                                 (display "\n")
                                                 (f7667 x9174)))))
                                            (begin
                                              (write '(funapp 4052 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7665
                                               k7666
                                               x9173)))))
                                         g9172))))
                                    g9171))
                                 xj7662
                                 xk7663
                                 image?))))
                            g9170)))
                         (x9168 (input)))
                        (begin
                          (write '(funapp 4060 21))
                          (display "\n")
                          (x9169 x9168)))
                       (letrec*
                        ((x9177
                          (letrec*
                           ((xj7668
                             (begin
                               (write '(funapp 4064 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4064 37))
                                  (display "\n")
                                  'module))))
                            (xk7669
                             (begin
                               (write '(funapp 4064 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4064 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9178
                              (begin
                                (write '(funapp 4067 27))
                                (display "\n")
                                ((lambda (j7672 k7673 f7674)
                                   (letrec*
                                    ((g9179
                                      (lambda (g7670 g7671)
                                        (letrec*
                                         ((g9180
                                           (letrec*
                                            ((x9181
                                              (letrec*
                                               ((x9183
                                                 (begin
                                                   (write '(funapp 4076 50))
                                                   (display "\n")
                                                   (image? j7672 k7673 g7670)))
                                                (x9182
                                                 (begin
                                                   (write '(funapp 4077 50))
                                                   (display "\n")
                                                   (image?
                                                    j7672
                                                    k7673
                                                    g7671))))
                                               (begin
                                                 (write '(funapp 4078 42))
                                                 (display "\n")
                                                 (f7674 x9183 x9182)))))
                                            (begin
                                              (write '(funapp 4079 39))
                                              (display "\n")
                                              (image? j7672 k7673 x9181)))))
                                         g9180))))
                                    g9179))
                                 xj7668
                                 xk7669
                                 overlay))))
                            g9178)))
                         (x9176 (input))
                         (x9175 (input)))
                        (begin
                          (write '(funapp 4088 21))
                          (display "\n")
                          (x9177 x9176 x9175)))
                       (letrec*
                        ((x9187
                          (letrec*
                           ((xj7675
                             (begin
                               (write '(funapp 4092 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4092 37))
                                  (display "\n")
                                  'module))))
                            (xk7676
                             (begin
                               (write '(funapp 4092 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4092 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9188
                              (begin
                                (write '(funapp 4095 27))
                                (display "\n")
                                ((lambda (j7680 k7681 f7682)
                                   (letrec*
                                    ((g9189
                                      (lambda (g7677 g7678 g7679)
                                        (letrec*
                                         ((g9190
                                           (letrec*
                                            ((x9191
                                              (letrec*
                                               ((x9194
                                                 (begin
                                                   (write '(funapp 4104 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7680
                                                    k7681
                                                    g7677)))
                                                (x9193
                                                 (begin
                                                   (write '(funapp 4105 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7680
                                                    k7681
                                                    g7678)))
                                                (x9192
                                                 (begin
                                                   (write '(funapp 4107 44))
                                                   (display "\n")
                                                   (string?/c
                                                    j7680
                                                    k7681
                                                    g7679))))
                                               (begin
                                                 (write '(funapp 4108 42))
                                                 (display "\n")
                                                 (f7682 x9194 x9193 x9192)))))
                                            (begin
                                              (write '(funapp 4109 39))
                                              (display "\n")
                                              (image? j7680 k7681 x9191)))))
                                         g9190))))
                                    g9189))
                                 xj7675
                                 xk7676
                                 circle))))
                            g9188)))
                         (x9186 (input))
                         (x9185 (input))
                         (x9184 (input)))
                        (begin
                          (write '(funapp 4119 21))
                          (display "\n")
                          (x9187 x9186 x9185 x9184)))
                       (letrec*
                        ((x9199
                          (letrec*
                           ((xj7683
                             (begin
                               (write '(funapp 4123 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4123 37))
                                  (display "\n")
                                  'module))))
                            (xk7684
                             (begin
                               (write '(funapp 4123 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4123 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9200
                              (begin
                                (write '(funapp 4126 27))
                                (display "\n")
                                ((lambda (j7689 k7690 f7691)
                                   (letrec*
                                    ((g9201
                                      (lambda (g7685 g7686 g7687 g7688)
                                        (letrec*
                                         ((g9202
                                           (letrec*
                                            ((x9203
                                              (letrec*
                                               ((x9207
                                                 (begin
                                                   (write '(funapp 4135 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7689
                                                    k7690
                                                    g7685)))
                                                (x9206
                                                 (begin
                                                   (write '(funapp 4136 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7689
                                                    k7690
                                                    g7686)))
                                                (x9205
                                                 (begin
                                                   (write '(funapp 4137 50))
                                                   (display "\n")
                                                   (COLOR/C
                                                    j7689
                                                    k7690
                                                    g7687)))
                                                (x9204
                                                 (begin
                                                   (write '(funapp 4138 50))
                                                   (display "\n")
                                                   (COLOR/C
                                                    j7689
                                                    k7690
                                                    g7688))))
                                               (begin
                                                 (write '(funapp 4139 42))
                                                 (display "\n")
                                                 (f7691
                                                  x9207
                                                  x9206
                                                  x9205
                                                  x9204)))))
                                            (begin
                                              (write '(funapp 4140 39))
                                              (display "\n")
                                              (image? j7689 k7690 x9203)))))
                                         g9202))))
                                    g9201))
                                 xj7683
                                 xk7684
                                 rectangle))))
                            g9200)))
                         (x9198 (input))
                         (x9197 (input))
                         (x9196 (input))
                         (x9195 (input)))
                        (begin
                          (write '(funapp 4151 21))
                          (display "\n")
                          (x9199 x9198 x9197 x9196 x9195)))
                       (letrec*
                        ((x9212
                          (letrec*
                           ((xj7692
                             (begin
                               (write '(funapp 4155 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4155 37))
                                  (display "\n")
                                  'module))))
                            (xk7693
                             (begin
                               (write '(funapp 4155 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4155 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9213
                              (begin
                                (write '(funapp 4158 27))
                                (display "\n")
                                ((lambda (j7698 k7699 f7700)
                                   (letrec*
                                    ((g9214
                                      (lambda (g7694 g7695 g7696 g7697)
                                        (letrec*
                                         ((g9215
                                           (letrec*
                                            ((x9216
                                              (letrec*
                                               ((x9220
                                                 (begin
                                                   (write '(funapp 4167 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7698
                                                    k7699
                                                    g7694)))
                                                (x9219
                                                 (begin
                                                   (write '(funapp 4168 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7698
                                                    k7699
                                                    g7695)))
                                                (x9218
                                                 (begin
                                                   (write '(funapp 4169 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7698
                                                    k7699
                                                    g7696)))
                                                (x9217
                                                 (begin
                                                   (write '(funapp 4170 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7698
                                                    k7699
                                                    g7697))))
                                               (begin
                                                 (write '(funapp 4171 42))
                                                 (display "\n")
                                                 (f7700
                                                  x9220
                                                  x9219
                                                  x9218
                                                  x9217)))))
                                            (begin
                                              (write '(funapp 4172 39))
                                              (display "\n")
                                              (image/c j7698 k7699 x9216)))))
                                         g9215))))
                                    g9214))
                                 xj7692
                                 xk7693
                                 place-image))))
                            g9213)))
                         (x9211
                          (begin
                            (write '(funapp 4179 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 4179 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 4179 41))
                               (display "\n")
                               '()))))
                         (x9210 (input))
                         (x9209 (input))
                         (x9208
                          (begin
                            (write '(funapp 4182 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 4182 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 4182 41))
                               (display "\n")
                               '())))))
                        (begin
                          (write '(funapp 4183 21))
                          (display "\n")
                          (x9212 x9211 x9210 x9209 x9208)))
                       (letrec*
                        ((x9223
                          (letrec*
                           ((xj7701
                             (begin
                               (write '(funapp 4187 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4187 37))
                                  (display "\n")
                                  'module))))
                            (xk7702
                             (begin
                               (write '(funapp 4187 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4187 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9224
                              (begin
                                (write '(funapp 4190 27))
                                (display "\n")
                                ((lambda (j7705 k7706 f7707)
                                   (letrec*
                                    ((g9225
                                      (lambda (g7703 g7704)
                                        (letrec*
                                         ((g9226
                                           (letrec*
                                            ((x9227
                                              (letrec*
                                               ((x9229
                                                 (begin
                                                   (write '(funapp 4199 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7705
                                                    k7706
                                                    g7703)))
                                                (x9228
                                                 (begin
                                                   (write '(funapp 4200 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7705
                                                    k7706
                                                    g7704))))
                                               (begin
                                                 (write '(funapp 4201 42))
                                                 (display "\n")
                                                 (f7707 x9229 x9228)))))
                                            (begin
                                              (write '(funapp 4202 39))
                                              (display "\n")
                                              (image? j7705 k7706 x9227)))))
                                         g9226))))
                                    g9225))
                                 xj7701
                                 xk7702
                                 empty-scene))))
                            g9224)))
                         (x9222 (input))
                         (x9221 (input)))
                        (begin
                          (write '(funapp 4211 21))
                          (display "\n")
                          (x9223 x9222 x9221)))
                       (letrec*
                        ((x9231
                          (letrec*
                           ((xj7708
                             (begin
                               (write '(funapp 4215 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4215 37))
                                  (display "\n")
                                  'module))))
                            (xk7709
                             (begin
                               (write '(funapp 4215 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4215 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9232
                              (begin
                                (write '(funapp 4218 27))
                                (display "\n")
                                ((lambda (j7711 k7712 f7713)
                                   (letrec*
                                    ((g9233
                                      (lambda (g7710)
                                        (letrec*
                                         ((g9234
                                           (letrec*
                                            ((x9235
                                              (letrec*
                                               ((x9236
                                                 (letrec*
                                                  ((x9237
                                                    (letrec*
                                                     ((x9238
                                                       (begin
                                                         (write
                                                          '(funapp 4231 56))
                                                         (display "\n")
                                                         (listof TETRA/C))))
                                                     (begin
                                                       (write
                                                        '(funapp 4232 48))
                                                       (display "\n")
                                                       (and/c
                                                        cons?/c
                                                        x9238)))))
                                                  (begin
                                                    (write '(funapp 4233 45))
                                                    (display "\n")
                                                    (x9237
                                                     j7711
                                                     k7712
                                                     g7710)))))
                                               (begin
                                                 (write '(funapp 4234 42))
                                                 (display "\n")
                                                 (f7713 x9236)))))
                                            (begin
                                              (write '(funapp 4235 39))
                                              (display "\n")
                                              (TETRA/C j7711 k7712 x9235)))))
                                         g9234))))
                                    g9233))
                                 xj7708
                                 xk7709
                                 list-pick-random))))
                            g9232)))
                         (x9230 (input)))
                        (begin
                          (write '(funapp 4243 21))
                          (display "\n")
                          (x9231 x9230)))
                       (letrec*
                        ((xj7714
                          (begin
                            (write '(funapp 4245 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 4245 34))
                               (display "\n")
                               'module))))
                         (xk7715
                          (begin
                            (write '(funapp 4245 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 4245 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g9239
                           (begin
                             (write '(funapp 4246 38))
                             (display "\n")
                             (integer?/c xj7714 xk7715 neg-1))))
                         g9239))
                       (letrec*
                        ((x9253
                          (letrec*
                           ((xj7716
                             (begin
                               (write '(funapp 4250 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4250 37))
                                  (display "\n")
                                  'module))))
                            (xk7717
                             (begin
                               (write '(funapp 4250 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4250 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9254
                              (begin
                                (write '(funapp 4253 27))
                                (display "\n")
                                ((lambda (j7719 k7720 f7721)
                                   (letrec*
                                    ((g9255
                                      (lambda (g7718)
                                        (letrec*
                                         ((g9256
                                           (letrec*
                                            ((x9257
                                              (letrec*
                                               ((x9258
                                                 (begin
                                                   (write '(funapp 4262 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7719
                                                    k7720
                                                    g7718))))
                                               (begin
                                                 (write '(funapp 4263 42))
                                                 (display "\n")
                                                 (f7721 x9258)))))
                                            (begin
                                              (write '(funapp 4264 39))
                                              (display "\n")
                                              (image/c j7719 k7720 x9257)))))
                                         g9256))))
                                    g9255))
                                 xj7716
                                 xk7717
                                 world->image))))
                            g9254)))
                         (x9240
                          (letrec*
                           ((x9241
                             (letrec*
                              ((x9244
                                (letrec*
                                 ((x9245
                                   (letrec*
                                    ((x9248
                                      (letrec*
                                       ((x9249
                                         (letrec*
                                          ((x9252 (input))
                                           (x9250
                                            (letrec*
                                             ((x9251 (input)))
                                             (begin
                                               (write '(funapp 4287 42))
                                               (display "\n")
                                               (cons
                                                x9251
                                                (begin
                                                  (write '(funapp 4287 53))
                                                  (display "\n")
                                                  '()))))))
                                          (begin
                                            (write '(funapp 4288 39))
                                            (display "\n")
                                            (cons x9252 x9250)))))
                                       (begin
                                         (write '(funapp 4289 36))
                                         (display "\n")
                                         (cons
                                          (begin
                                            (write '(funapp 4289 41))
                                            (display "\n")
                                            'posn)
                                          x9249))))
                                     (x9246
                                      (letrec*
                                       ((x9247 (input)))
                                       (begin
                                         (write '(funapp 4293 36))
                                         (display "\n")
                                         (cons
                                          x9247
                                          (begin
                                            (write '(funapp 4293 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 4294 33))
                                      (display "\n")
                                      (cons x9248 x9246)))))
                                 (begin
                                   (write '(funapp 4295 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 4295 35))
                                      (display "\n")
                                      'tetra)
                                    x9245))))
                               (x9242
                                (letrec*
                                 ((x9243 (input)))
                                 (begin
                                   (write '(funapp 4297 56))
                                   (display "\n")
                                   (cons
                                    x9243
                                    (begin
                                      (write '(funapp 4297 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 4298 27))
                                (display "\n")
                                (cons x9244 x9242)))))
                           (begin
                             (write '(funapp 4299 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 4299 29))
                                (display "\n")
                                'world)
                              x9241)))))
                        (begin
                          (write '(funapp 4300 21))
                          (display "\n")
                          (x9253 x9240)))
                       (letrec*
                        ((x9260
                          (letrec*
                           ((xj7722
                             (begin
                               (write '(funapp 4304 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4304 37))
                                  (display "\n")
                                  'module))))
                            (xk7723
                             (begin
                               (write '(funapp 4304 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4304 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9261
                              (begin
                                (write '(funapp 4307 27))
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
                                                   (write '(funapp 4316 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7725
                                                    k7726
                                                    g7724))))
                                               (begin
                                                 (write '(funapp 4317 42))
                                                 (display "\n")
                                                 (f7727 x9265)))))
                                            (begin
                                              (write '(funapp 4318 39))
                                              (display "\n")
                                              (image/c j7725 k7726 x9264)))))
                                         g9263))))
                                    g9262))
                                 xj7722
                                 xk7723
                                 blocks->image))))
                            g9261)))
                         (x9259 (input)))
                        (begin
                          (write '(funapp 4326 21))
                          (display "\n")
                          (x9260 x9259)))
                       (letrec*
                        ((x9273
                          (letrec*
                           ((xj7728
                             (begin
                               (write '(funapp 4330 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4330 37))
                                  (display "\n")
                                  'module))))
                            (xk7729
                             (begin
                               (write '(funapp 4330 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4330 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9274
                              (begin
                                (write '(funapp 4333 27))
                                (display "\n")
                                ((lambda (j7731 k7732 f7733)
                                   (letrec*
                                    ((g9275
                                      (lambda (g7730)
                                        (letrec*
                                         ((g9276
                                           (letrec*
                                            ((x9277
                                              (letrec*
                                               ((x9278
                                                 (begin
                                                   (write '(funapp 4342 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7731
                                                    k7732
                                                    g7730))))
                                               (begin
                                                 (write '(funapp 4343 42))
                                                 (display "\n")
                                                 (f7733 x9278)))))
                                            (begin
                                              (write '(funapp 4344 39))
                                              (display "\n")
                                              (image/c j7731 k7732 x9277)))))
                                         g9276))))
                                    g9275))
                                 xj7728
                                 xk7729
                                 block->image))))
                            g9274)))
                         (x9266
                          (letrec*
                           ((x9267
                             (letrec*
                              ((x9272 (input))
                               (x9268
                                (letrec*
                                 ((x9271 (input))
                                  (x9269
                                   (letrec*
                                    ((x9270 (input)))
                                    (begin
                                      (write '(funapp 4360 59))
                                      (display "\n")
                                      (cons
                                       x9270
                                       (begin
                                         (write '(funapp 4360 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 4361 30))
                                   (display "\n")
                                   (cons x9271 x9269)))))
                              (begin
                                (write '(funapp 4362 27))
                                (display "\n")
                                (cons x9272 x9268)))))
                           (begin
                             (write '(funapp 4363 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 4363 29))
                                (display "\n")
                                'block)
                              x9267)))))
                        (begin
                          (write '(funapp 4364 21))
                          (display "\n")
                          (x9273 x9266)))
                       (letrec*
                        ((x9287
                          (letrec*
                           ((xj7734
                             (begin
                               (write '(funapp 4368 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4368 37))
                                  (display "\n")
                                  'module))))
                            (xk7735
                             (begin
                               (write '(funapp 4368 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4368 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9288
                              (begin
                                (write '(funapp 4371 27))
                                (display "\n")
                                ((lambda (j7738 k7739 f7740)
                                   (letrec*
                                    ((g9289
                                      (lambda (g7736 g7737)
                                        (letrec*
                                         ((g9290
                                           (letrec*
                                            ((x9291
                                              (letrec*
                                               ((x9293
                                                 (begin
                                                   (write '(funapp 4380 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7738
                                                    k7739
                                                    g7736)))
                                                (x9292
                                                 (begin
                                                   (write '(funapp 4381 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7738
                                                    k7739
                                                    g7737))))
                                               (begin
                                                 (write '(funapp 4382 42))
                                                 (display "\n")
                                                 (f7740 x9293 x9292)))))
                                            (begin
                                              (write '(funapp 4383 39))
                                              (display "\n")
                                              (image/c j7738 k7739 x9291)))))
                                         g9290))))
                                    g9289))
                                 xj7734
                                 xk7735
                                 place-block))))
                            g9288)))
                         (x9280
                          (letrec*
                           ((x9281
                             (letrec*
                              ((x9286 (input))
                               (x9282
                                (letrec*
                                 ((x9285 (input))
                                  (x9283
                                   (letrec*
                                    ((x9284 (input)))
                                    (begin
                                      (write '(funapp 4399 59))
                                      (display "\n")
                                      (cons
                                       x9284
                                       (begin
                                         (write '(funapp 4399 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 4400 30))
                                   (display "\n")
                                   (cons x9285 x9283)))))
                              (begin
                                (write '(funapp 4401 27))
                                (display "\n")
                                (cons x9286 x9282)))))
                           (begin
                             (write '(funapp 4402 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 4402 29))
                                (display "\n")
                                'block)
                              x9281))))
                         (x9279
                          (begin
                            (write '(funapp 4403 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 4403 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 4403 41))
                               (display "\n")
                               '())))))
                        (begin
                          (write '(funapp 4404 21))
                          (display "\n")
                          (x9287 x9280 x9279)))
                       (letrec*
                        ((x9295
                          (letrec*
                           ((xj7741
                             (begin
                               (write '(funapp 4408 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4408 37))
                                  (display "\n")
                                  'module))))
                            (xk7742
                             (begin
                               (write '(funapp 4408 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4408 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9296
                              (begin
                                (write '(funapp 4411 27))
                                (display "\n")
                                ((lambda (j7744 k7745 f7746)
                                   (letrec*
                                    ((g9297
                                      (lambda (g7743)
                                        (letrec*
                                         ((g9298
                                           (letrec*
                                            ((x9299
                                              (letrec*
                                               ((x9300
                                                 (letrec*
                                                  ((x9301
                                                    (letrec*
                                                     ((x9302
                                                       (begin
                                                         (write
                                                          '(funapp 4424 56))
                                                         (display "\n")
                                                         (listof TETRA/C))))
                                                     (begin
                                                       (write
                                                        '(funapp 4425 48))
                                                       (display "\n")
                                                       (and/c
                                                        cons?/c
                                                        x9302)))))
                                                  (begin
                                                    (write '(funapp 4426 45))
                                                    (display "\n")
                                                    (x9301
                                                     j7744
                                                     k7745
                                                     g7743)))))
                                               (begin
                                                 (write '(funapp 4427 42))
                                                 (display "\n")
                                                 (f7746 x9300)))))
                                            (begin
                                              (write '(funapp 4428 39))
                                              (display "\n")
                                              (WORLD/C j7744 k7745 x9299)))))
                                         g9298))))
                                    g9297))
                                 xj7741
                                 xk7742
                                 world0))))
                            g9296)))
                         (x9294 (input)))
                        (begin
                          (write '(funapp 4436 21))
                          (display "\n")
                          (x9295 x9294)))))))))
               g8735))))
           g7783))))
       g7781)))
    g7780)))
