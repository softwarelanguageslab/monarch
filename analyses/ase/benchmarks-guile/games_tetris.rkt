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
          ((>=
            (lambda (x y)
              (letrec*
               ((g7782
                 (letrec*
                  ((x7784
                    (begin
                      (write '(funapp 47 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 47 55))
                    (display "\n")
                    (assert x7784))))
                (g7783
                 (letrec*
                  ((val7243
                    (begin (write '(funapp 50 29)) (display "\n") (> x y))))
                  (letrec*
                   ((g7785
                     (if val7243
                       val7243
                       (letrec*
                        ((val7244
                          (begin
                            (write '(funapp 56 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7786 (if val7244 val7244 #f))) g7786)))))
                   g7785))))
               g7783)))
           (<=
            (lambda (x y)
              (letrec*
               ((g7787
                 (letrec*
                  ((x7789
                    (begin
                      (write '(funapp 63 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 63 55))
                    (display "\n")
                    (assert x7789))))
                (g7788
                 (letrec*
                  ((val7245
                    (begin (write '(funapp 66 29)) (display "\n") (< x y))))
                  (letrec*
                   ((g7790
                     (if val7245
                       val7245
                       (letrec*
                        ((val7246
                          (begin
                            (write '(funapp 72 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7791 (if val7246 val7246 #f))) g7791)))))
                   g7790))))
               g7788)))
           (>
            (lambda (x y)
              (letrec*
               ((g7792
                 (letrec*
                  ((x7794
                    (begin
                      (write '(funapp 79 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 79 55))
                    (display "\n")
                    (assert x7794))))
                (g7793
                 (letrec*
                  ((x7795
                    (begin (write '(funapp 80 41)) (display "\n") (<= x y))))
                  (begin (write '(funapp 80 52)) (display "\n") (not x7795)))))
               g7793)))
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
           ((g7796 (begin (write '(funapp 96 19)) (display "\n") '()))
            (g7797
             (letrec*
              ((empty (begin (write '(funapp 99 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7798
                     (lambda (k j lst)
                       (letrec*
                        ((g7799
                          (begin
                            (write '(funapp 107 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7800
                                  (begin
                                    (write '(funapp 109 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7800))
                             lst))))
                        g7799))))
                   g7798)))
               (real?/c
                (lambda (g7262 g7263 g7264)
                  (letrec*
                   ((g7801
                     (letrec*
                      ((x-cnd7802
                        (begin
                          (write '(funapp 118 35))
                          (display "\n")
                          (real? g7264))))
                      (if x-cnd7802
                        g7264
                        (begin
                          (write '(blame g7262 119 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7262)))))))
                   g7801)))
               (boolean?/c
                (lambda (g7265 g7266 g7267)
                  (letrec*
                   ((g7803
                     (letrec*
                      ((x-cnd7804
                        (begin
                          (write '(funapp 126 35))
                          (display "\n")
                          (boolean? g7267))))
                      (if x-cnd7804
                        g7267
                        (begin
                          (write '(blame g7265 127 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7265)))))))
                   g7803)))
               (number?/c
                (lambda (g7268 g7269 g7270)
                  (letrec*
                   ((g7805
                     (letrec*
                      ((x-cnd7806
                        (begin
                          (write '(funapp 134 35))
                          (display "\n")
                          (number? g7270))))
                      (if x-cnd7806
                        g7270
                        (begin
                          (write '(blame g7268 135 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7268)))))))
                   g7805)))
               (any/c
                (lambda (g7271 g7272 g7273)
                  (letrec*
                   ((g7807
                     (letrec*
                      ((x-cnd7808
                        (begin
                          (write '(funapp 143 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7809 #t)) g7809)) g7273))))
                      (if x-cnd7808
                        g7273
                        (begin
                          (write '(blame g7271 144 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7271)))))))
                   g7807)))
               (any?/c
                (lambda (g7274 g7275 g7276)
                  (letrec*
                   ((g7810
                     (letrec*
                      ((x-cnd7811
                        (begin
                          (write '(funapp 152 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7812 #t)) g7812)) g7276))))
                      (if x-cnd7811
                        g7276
                        (begin
                          (write '(blame g7274 153 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7274)))))))
                   g7810)))
               (cons?/c
                (lambda (g7277 g7278 g7279)
                  (letrec*
                   ((g7813
                     (letrec*
                      ((x-cnd7814
                        (begin
                          (write '(funapp 160 35))
                          (display "\n")
                          (pair? g7279))))
                      (if x-cnd7814
                        g7279
                        (begin
                          (write '(blame g7277 161 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7277)))))))
                   g7813)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7280 g7281 g7282)
                  (letrec*
                   ((g7815
                     (letrec*
                      ((x-cnd7816
                        (begin
                          (write '(funapp 169 35))
                          (display "\n")
                          (pair? g7282))))
                      (if x-cnd7816
                        g7282
                        (begin
                          (write '(blame g7280 170 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7280)))))))
                   g7815)))
               (integer?/c
                (lambda (g7283 g7284 g7285)
                  (letrec*
                   ((g7817
                     (letrec*
                      ((x-cnd7818
                        (begin
                          (write '(funapp 177 35))
                          (display "\n")
                          (integer? g7285))))
                      (if x-cnd7818
                        g7285
                        (begin
                          (write '(blame g7283 178 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7283)))))))
                   g7817)))
               (symbol?/c
                (lambda (g7286 g7287 g7288)
                  (letrec*
                   ((g7819
                     (letrec*
                      ((x-cnd7820
                        (begin
                          (write '(funapp 185 35))
                          (display "\n")
                          (symbol? g7288))))
                      (if x-cnd7820
                        g7288
                        (begin
                          (write '(blame g7286 186 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7286)))))))
                   g7819)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7821
                     (lambda (k j v)
                       (letrec*
                        ((g7822
                          (letrec*
                           ((x-cnd7823
                             (begin
                               (write '(funapp 196 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7823
                             (begin
                               (write '(funapp 197 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7822))))
                   g7821)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7824
                     (lambda (k j v)
                       (letrec*
                        ((g7825
                          (letrec*
                           ((x-cnd7826
                             (begin
                               (write '(funapp 208 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7826
                             (begin
                               (write '(funapp 210 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7830
                                (letrec*
                                 ((x7831
                                   (begin
                                     (write '(funapp 214 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 215 34))
                                   (display "\n")
                                   (contract k j x7831))))
                               (x7827
                                (letrec*
                                 ((x7829
                                   (begin
                                     (write '(funapp 218 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7828
                                   (begin
                                     (write '(funapp 218 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 219 34))
                                   (display "\n")
                                   (x7829 k j x7828)))))
                              (begin
                                (write '(funapp 220 31))
                                (display "\n")
                                (orig-cons x7830 x7827)))))))
                        g7825))))
                   g7824)))
               (any? (lambda (v) (letrec* ((g7832 #t)) g7832)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7833
                     (letrec*
                      ((x7834
                        (begin
                          (write '(funapp 227 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 227 55))
                        (display "\n")
                        (not x7834)))))
                   g7833)))
               (nonzero?/c
                (lambda (g7289 g7290 g7291)
                  (letrec*
                   ((g7835
                     (letrec*
                      ((x-cnd7836
                        (begin
                          (write '(funapp 235 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7837
                                (letrec*
                                 ((x7838
                                   (begin
                                     (write '(funapp 237 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 237 64))
                                   (display "\n")
                                   (not x7838)))))
                              g7837))
                           g7291))))
                      (if x-cnd7836
                        g7291
                        (begin
                          (write '(blame g7289 242 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7289)))))))
                   g7835)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7839
                     (lambda (g7292 g7293 g7294)
                       (letrec*
                        ((g7840
                          (letrec*
                           ((x-cnd7841
                             (begin
                               (write '(funapp 253 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7842
                                     (begin
                                       (write '(funapp 254 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7842))
                                g7294))))
                           (if x-cnd7841
                             g7294
                             (begin
                               (write '(blame g7292 258 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7292)))))))
                        g7840))))
                   g7839)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7843
                     (lambda (g7295 g7296 g7297)
                       (letrec*
                        ((g7844
                          (letrec*
                           ((x-cnd7845
                             (begin
                               (write '(funapp 270 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7846
                                     (begin
                                       (write '(funapp 271 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7846))
                                g7297))))
                           (if x-cnd7845
                             g7297
                             (begin
                               (write '(blame g7295 275 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7295)))))))
                        g7844))))
                   g7843)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7847
                     (lambda (g7298 g7299 g7300)
                       (letrec*
                        ((g7848
                          (letrec*
                           ((x-cnd7849
                             (begin
                               (write '(funapp 287 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7850
                                     (begin
                                       (write '(funapp 288 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7850))
                                g7300))))
                           (if x-cnd7849
                             g7300
                             (begin
                               (write '(blame g7298 292 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7298)))))))
                        g7848))))
                   g7847)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7851
                     (lambda (g7301 g7302 g7303)
                       (letrec*
                        ((g7852
                          (letrec*
                           ((x-cnd7853
                             (begin
                               (write '(funapp 304 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7854
                                     (begin
                                       (write '(funapp 305 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7854))
                                g7303))))
                           (if x-cnd7853
                             g7303
                             (begin
                               (write '(blame g7301 309 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7301)))))))
                        g7852))))
                   g7851)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7855
                     (lambda (g7304 g7305 g7306)
                       (letrec*
                        ((g7856
                          (letrec*
                           ((x-cnd7857
                             (begin
                               (write '(funapp 321 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7858
                                     (begin
                                       (write '(funapp 322 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7858))
                                g7306))))
                           (if x-cnd7857
                             g7306
                             (begin
                               (write '(blame g7304 326 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7304)))))))
                        g7856))))
                   g7855)))
               (meta (lambda (v) (letrec* ((g7859 v)) g7859)))
               (+
                (letrec*
                 ((xj7307
                   (begin (write '(funapp 332 26)) (display "\n") 'server))
                  (xk7308
                   (begin (write '(funapp 332 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7860
                    (begin
                      (write '(funapp 335 21))
                      (display "\n")
                      ((lambda (j7311 k7312 f7313)
                         (letrec*
                          ((g7862
                            (lambda (g7309 g7310)
                              (letrec*
                               ((g7863
                                 (letrec*
                                  ((x7864
                                    (letrec*
                                     ((x7866
                                       (begin
                                         (write '(funapp 344 44))
                                         (display "\n")
                                         (number?/c j7311 k7312 g7309)))
                                      (x7865
                                       (begin
                                         (write '(funapp 345 44))
                                         (display "\n")
                                         (number?/c j7311 k7312 g7310))))
                                     (begin
                                       (write '(funapp 346 36))
                                       (display "\n")
                                       (f7313 x7866 x7865)))))
                                  (begin
                                    (write '(funapp 347 33))
                                    (display "\n")
                                    (number?/c j7311 k7312 x7864)))))
                               g7863))))
                          g7862))
                       xj7307
                       xk7308
                       (lambda (a b)
                         (letrec*
                          ((g7861
                            (begin
                              (write '(funapp 352 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7861))))))
                  g7860)))
               (-
                (letrec*
                 ((xj7314
                   (begin (write '(funapp 356 26)) (display "\n") 'server))
                  (xk7315
                   (begin (write '(funapp 356 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7867
                    (begin
                      (write '(funapp 359 21))
                      (display "\n")
                      ((lambda (j7318 k7319 f7320)
                         (letrec*
                          ((g7869
                            (lambda (g7316 g7317)
                              (letrec*
                               ((g7870
                                 (letrec*
                                  ((x7871
                                    (letrec*
                                     ((x7873
                                       (begin
                                         (write '(funapp 368 44))
                                         (display "\n")
                                         (number?/c j7318 k7319 g7316)))
                                      (x7872
                                       (begin
                                         (write '(funapp 369 44))
                                         (display "\n")
                                         (number?/c j7318 k7319 g7317))))
                                     (begin
                                       (write '(funapp 370 36))
                                       (display "\n")
                                       (f7320 x7873 x7872)))))
                                  (begin
                                    (write '(funapp 371 33))
                                    (display "\n")
                                    (number?/c j7318 k7319 x7871)))))
                               g7870))))
                          g7869))
                       xj7314
                       xk7315
                       (lambda (a b)
                         (letrec*
                          ((g7868
                            (begin
                              (write '(funapp 376 53))
                              (display "\n")
                              (orig-- a b))))
                          g7868))))))
                  g7867)))
               (*
                (letrec*
                 ((xj7321
                   (begin (write '(funapp 380 26)) (display "\n") 'server))
                  (xk7322
                   (begin (write '(funapp 380 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7874
                    (begin
                      (write '(funapp 383 21))
                      (display "\n")
                      ((lambda (j7325 k7326 f7327)
                         (letrec*
                          ((g7876
                            (lambda (g7323 g7324)
                              (letrec*
                               ((g7877
                                 (letrec*
                                  ((x7878
                                    (letrec*
                                     ((x7880
                                       (begin
                                         (write '(funapp 392 44))
                                         (display "\n")
                                         (number?/c j7325 k7326 g7323)))
                                      (x7879
                                       (begin
                                         (write '(funapp 393 44))
                                         (display "\n")
                                         (number?/c j7325 k7326 g7324))))
                                     (begin
                                       (write '(funapp 394 36))
                                       (display "\n")
                                       (f7327 x7880 x7879)))))
                                  (begin
                                    (write '(funapp 395 33))
                                    (display "\n")
                                    (number?/c j7325 k7326 x7878)))))
                               g7877))))
                          g7876))
                       xj7321
                       xk7322
                       (lambda (a b)
                         (letrec*
                          ((g7875
                            (begin
                              (write '(funapp 400 53))
                              (display "\n")
                              (orig-* a b))))
                          g7875))))))
                  g7874)))
               (<
                (letrec*
                 ((xj7328
                   (begin (write '(funapp 404 26)) (display "\n") 'server))
                  (xk7329
                   (begin (write '(funapp 404 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7881
                    (begin
                      (write '(funapp 407 21))
                      (display "\n")
                      ((lambda (j7332 k7333 f7334)
                         (letrec*
                          ((g7883
                            (lambda (g7330 g7331)
                              (letrec*
                               ((g7884
                                 (letrec*
                                  ((x7885
                                    (letrec*
                                     ((x7887
                                       (begin
                                         (write '(funapp 416 44))
                                         (display "\n")
                                         (number?/c j7332 k7333 g7330)))
                                      (x7886
                                       (begin
                                         (write '(funapp 417 44))
                                         (display "\n")
                                         (number?/c j7332 k7333 g7331))))
                                     (begin
                                       (write '(funapp 418 36))
                                       (display "\n")
                                       (f7334 x7887 x7886)))))
                                  (begin
                                    (write '(funapp 419 33))
                                    (display "\n")
                                    (boolean?/c j7332 k7333 x7885)))))
                               g7884))))
                          g7883))
                       xj7328
                       xk7329
                       (lambda (a b)
                         (letrec*
                          ((g7882
                            (begin
                              (write '(funapp 424 53))
                              (display "\n")
                              (orig-< a b))))
                          g7882))))))
                  g7881)))
               (>
                (letrec*
                 ((xj7335
                   (begin (write '(funapp 428 26)) (display "\n") 'server))
                  (xk7336
                   (begin (write '(funapp 428 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7888
                    (begin
                      (write '(funapp 431 21))
                      (display "\n")
                      ((lambda (j7339 k7340 f7341)
                         (letrec*
                          ((g7890
                            (lambda (g7337 g7338)
                              (letrec*
                               ((g7891
                                 (letrec*
                                  ((x7892
                                    (letrec*
                                     ((x7894
                                       (begin
                                         (write '(funapp 440 44))
                                         (display "\n")
                                         (number?/c j7339 k7340 g7337)))
                                      (x7893
                                       (begin
                                         (write '(funapp 441 44))
                                         (display "\n")
                                         (number?/c j7339 k7340 g7338))))
                                     (begin
                                       (write '(funapp 442 36))
                                       (display "\n")
                                       (f7341 x7894 x7893)))))
                                  (begin
                                    (write '(funapp 443 33))
                                    (display "\n")
                                    (boolean?/c j7339 k7340 x7892)))))
                               g7891))))
                          g7890))
                       xj7335
                       xk7336
                       (lambda (a b)
                         (letrec*
                          ((g7889
                            (begin
                              (write '(funapp 448 53))
                              (display "\n")
                              (orig-> a b))))
                          g7889))))))
                  g7888)))
               (<=
                (letrec*
                 ((xj7342
                   (begin (write '(funapp 452 26)) (display "\n") 'server))
                  (xk7343
                   (begin (write '(funapp 452 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7895
                    (begin
                      (write '(funapp 455 21))
                      (display "\n")
                      ((lambda (j7346 k7347 f7348)
                         (letrec*
                          ((g7897
                            (lambda (g7344 g7345)
                              (letrec*
                               ((g7898
                                 (letrec*
                                  ((x7899
                                    (letrec*
                                     ((x7901
                                       (begin
                                         (write '(funapp 464 44))
                                         (display "\n")
                                         (number?/c j7346 k7347 g7344)))
                                      (x7900
                                       (begin
                                         (write '(funapp 465 44))
                                         (display "\n")
                                         (number?/c j7346 k7347 g7345))))
                                     (begin
                                       (write '(funapp 466 36))
                                       (display "\n")
                                       (f7348 x7901 x7900)))))
                                  (begin
                                    (write '(funapp 467 33))
                                    (display "\n")
                                    (boolean?/c j7346 k7347 x7899)))))
                               g7898))))
                          g7897))
                       xj7342
                       xk7343
                       (lambda (a b)
                         (letrec*
                          ((g7896
                            (begin
                              (write '(funapp 472 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7896))))))
                  g7895)))
               (>=
                (letrec*
                 ((xj7349
                   (begin (write '(funapp 476 26)) (display "\n") 'server))
                  (xk7350
                   (begin (write '(funapp 476 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7902
                    (begin
                      (write '(funapp 479 21))
                      (display "\n")
                      ((lambda (j7353 k7354 f7355)
                         (letrec*
                          ((g7904
                            (lambda (g7351 g7352)
                              (letrec*
                               ((g7905
                                 (letrec*
                                  ((x7906
                                    (letrec*
                                     ((x7908
                                       (begin
                                         (write '(funapp 488 44))
                                         (display "\n")
                                         (number?/c j7353 k7354 g7351)))
                                      (x7907
                                       (begin
                                         (write '(funapp 489 44))
                                         (display "\n")
                                         (number?/c j7353 k7354 g7352))))
                                     (begin
                                       (write '(funapp 490 36))
                                       (display "\n")
                                       (f7355 x7908 x7907)))))
                                  (begin
                                    (write '(funapp 491 33))
                                    (display "\n")
                                    (boolean?/c j7353 k7354 x7906)))))
                               g7905))))
                          g7904))
                       xj7349
                       xk7350
                       (lambda (a b)
                         (letrec*
                          ((g7903
                            (begin
                              (write '(funapp 496 53))
                              (display "\n")
                              (orig->= a b))))
                          g7903))))))
                  g7902)))
               (/
                (letrec*
                 ((xj7356
                   (begin (write '(funapp 500 26)) (display "\n") 'server))
                  (xk7357
                   (begin (write '(funapp 500 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7909
                    (begin
                      (write '(funapp 503 21))
                      (display "\n")
                      ((lambda (j7360 k7361 f7362)
                         (letrec*
                          ((g7911
                            (lambda (g7358 g7359)
                              (letrec*
                               ((g7912
                                 (letrec*
                                  ((x7913
                                    (letrec*
                                     ((x7915
                                       (begin
                                         (write '(funapp 512 44))
                                         (display "\n")
                                         (number?/c j7360 k7361 g7358)))
                                      (x7914
                                       (begin
                                         (write '(funapp 513 44))
                                         (display "\n")
                                         (number?/c j7360 k7361 g7359))))
                                     (begin
                                       (write '(funapp 514 36))
                                       (display "\n")
                                       (f7362 x7915 x7914)))))
                                  (begin
                                    (write '(funapp 515 33))
                                    (display "\n")
                                    (number?/c j7360 k7361 x7913)))))
                               g7912))))
                          g7911))
                       xj7356
                       xk7357
                       (lambda (a b)
                         (letrec*
                          ((g7910
                            (begin
                              (write '(funapp 520 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7910))))))
                  g7909)))
               (car
                (letrec*
                 ((xj7363
                   (begin (write '(funapp 524 26)) (display "\n") 'server))
                  (xk7364
                   (begin (write '(funapp 524 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7916
                    (begin
                      (write '(funapp 527 21))
                      (display "\n")
                      ((lambda (j7366 k7367 f7368)
                         (letrec*
                          ((g7918
                            (lambda (g7365)
                              (letrec*
                               ((g7919
                                 (letrec*
                                  ((x7920
                                    (letrec*
                                     ((x7921
                                       (begin
                                         (write '(funapp 536 44))
                                         (display "\n")
                                         (pair?/c j7366 k7367 g7365))))
                                     (begin
                                       (write '(funapp 537 36))
                                       (display "\n")
                                       (f7368 x7921)))))
                                  (begin
                                    (write '(funapp 538 33))
                                    (display "\n")
                                    (any/c j7366 k7367 x7920)))))
                               g7919))))
                          g7918))
                       xj7363
                       xk7364
                       (lambda (p)
                         (letrec*
                          ((g7917
                            (begin
                              (write '(funapp 543 51))
                              (display "\n")
                              (orig-car p))))
                          g7917))))))
                  g7916)))
               (cdr
                (letrec*
                 ((xj7369
                   (begin (write '(funapp 547 26)) (display "\n") 'server))
                  (xk7370
                   (begin (write '(funapp 547 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7922
                    (begin
                      (write '(funapp 550 21))
                      (display "\n")
                      ((lambda (j7372 k7373 f7374)
                         (letrec*
                          ((g7924
                            (lambda (g7371)
                              (letrec*
                               ((g7925
                                 (letrec*
                                  ((x7926
                                    (letrec*
                                     ((x7927
                                       (begin
                                         (write '(funapp 559 44))
                                         (display "\n")
                                         (pair?/c j7372 k7373 g7371))))
                                     (begin
                                       (write '(funapp 560 36))
                                       (display "\n")
                                       (f7374 x7927)))))
                                  (begin
                                    (write '(funapp 561 33))
                                    (display "\n")
                                    (any/c j7372 k7373 x7926)))))
                               g7925))))
                          g7924))
                       xj7369
                       xk7370
                       (lambda (p)
                         (letrec*
                          ((g7923
                            (begin
                              (write '(funapp 566 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7923))))))
                  g7922)))
               (cons
                (letrec*
                 ((xj7375
                   (begin (write '(funapp 570 26)) (display "\n") 'server))
                  (xk7376
                   (begin (write '(funapp 570 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7928
                    (begin
                      (write '(funapp 573 21))
                      (display "\n")
                      ((lambda (j7379 k7380 f7381)
                         (letrec*
                          ((g7930
                            (lambda (g7377 g7378)
                              (letrec*
                               ((g7931
                                 (letrec*
                                  ((x7932
                                    (letrec*
                                     ((x7934
                                       (begin
                                         (write '(funapp 582 44))
                                         (display "\n")
                                         (any/c j7379 k7380 g7377)))
                                      (x7933
                                       (begin
                                         (write '(funapp 583 44))
                                         (display "\n")
                                         (any/c j7379 k7380 g7378))))
                                     (begin
                                       (write '(funapp 584 36))
                                       (display "\n")
                                       (f7381 x7934 x7933)))))
                                  (begin
                                    (write '(funapp 585 33))
                                    (display "\n")
                                    (pair?/c j7379 k7380 x7932)))))
                               g7931))))
                          g7930))
                       xj7375
                       xk7376
                       (lambda (a b)
                         (letrec*
                          ((g7929
                            (begin
                              (write '(funapp 591 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7929))))))
                  g7928)))
               (vector-ref
                (letrec*
                 ((xj7382
                   (begin (write '(funapp 595 26)) (display "\n") 'server))
                  (xk7383
                   (begin (write '(funapp 595 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7935
                    (begin
                      (write '(funapp 598 21))
                      (display "\n")
                      ((lambda (j7385 k7386 f7387)
                         (letrec*
                          ((g7937
                            (lambda (g7384)
                              (letrec*
                               ((g7938
                                 (letrec*
                                  ((x7939
                                    (letrec*
                                     ((x7940
                                       (begin
                                         (write '(funapp 607 44))
                                         (display "\n")
                                         (vector?/c j7385 k7386 g7384))))
                                     (begin
                                       (write '(funapp 608 36))
                                       (display "\n")
                                       (f7387 x7940)))))
                                  (begin
                                    (write '(funapp 609 33))
                                    (display "\n")
                                    (integer?/c j7385 k7386 x7939)))))
                               g7938))))
                          g7937))
                       xj7382
                       xk7383
                       (lambda (v i)
                         (letrec*
                          ((g7936
                            (begin
                              (write '(funapp 615 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7936))))))
                  g7935)))
               (vector-set!
                (letrec*
                 ((xj7388
                   (begin (write '(funapp 619 26)) (display "\n") 'server))
                  (xk7389
                   (begin (write '(funapp 619 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7941
                    (begin
                      (write '(funapp 622 21))
                      (display "\n")
                      ((lambda (j7392 k7393 f7394)
                         (letrec*
                          ((g7943
                            (lambda (g7390 g7391)
                              (letrec*
                               ((g7944
                                 (letrec*
                                  ((x7945
                                    (letrec*
                                     ((x7947
                                       (begin
                                         (write '(funapp 631 44))
                                         (display "\n")
                                         (vector?/c j7392 k7393 g7390)))
                                      (x7946
                                       (begin
                                         (write '(funapp 632 44))
                                         (display "\n")
                                         (integer?/c j7392 k7393 g7391))))
                                     (begin
                                       (write '(funapp 633 36))
                                       (display "\n")
                                       (f7394 x7947 x7946)))))
                                  (begin
                                    (write '(funapp 634 33))
                                    (display "\n")
                                    (any/c j7392 k7393 x7945)))))
                               g7944))))
                          g7943))
                       xj7388
                       xk7389
                       (lambda (vec i v)
                         (letrec*
                          ((g7942
                            (begin
                              (write '(funapp 640 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7942))))))
                  g7941)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7948
                     (if cnd
                       (begin (write '(funapp 645 35)) (display "\n") '())
                       (begin
                         (write '(funapp 645 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7948)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7949
                     (letrec*
                      ((x7950
                        (letrec*
                         ((x7951
                           (begin
                             (write '(funapp 652 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 652 58))
                           (display "\n")
                           (cdr x7951)))))
                      (begin
                        (write '(funapp 653 23))
                        (display "\n")
                        (cdr x7950)))))
                   g7949)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7952
                     (letrec*
                      ((x7955
                        (begin
                          (write '(funapp 659 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 659 62))
                        (display "\n")
                        (assert x7955))))
                    (g7953
                     (letrec*
                      ((x7956
                        (begin
                          (write '(funapp 660 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 660 57))
                        (display "\n")
                        (assert x7956))))
                    (g7954
                     (letrec*
                      ((x-cnd7957
                        (begin
                          (write '(funapp 663 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7957
                        (begin (write '(funapp 665 24)) (display "\n") '())
                        (letrec*
                         ((x7960
                           (letrec*
                            ((x7961
                              (begin
                                (write '(funapp 667 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 667 61))
                              (display "\n")
                              (f x7961))))
                          (x7958
                           (letrec*
                            ((x7959
                              (begin
                                (write '(funapp 668 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 668 61))
                              (display "\n")
                              (map f x7959)))))
                         (begin
                           (write '(funapp 669 26))
                           (display "\n")
                           (cons x7960 x7958)))))))
                   g7954)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7962
                     (letrec*
                      ((x7963
                        (begin
                          (write '(funapp 674 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 674 55))
                        (display "\n")
                        (cdr x7963)))))
                   g7962)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7964
                     (letrec*
                      ((x7965
                        (letrec*
                         ((x7966
                           (letrec*
                            ((x7967
                              (begin
                                (write '(funapp 683 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 683 61))
                              (display "\n")
                              (car x7967)))))
                         (begin
                           (write '(funapp 684 26))
                           (display "\n")
                           (cdr x7966)))))
                      (begin
                        (write '(funapp 685 23))
                        (display "\n")
                        (car x7965)))))
                   g7964)))
               (cdadar
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
                                (write '(funapp 694 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 694 61))
                              (display "\n")
                              (cdr x7971)))))
                         (begin
                           (write '(funapp 695 26))
                           (display "\n")
                           (car x7970)))))
                      (begin
                        (write '(funapp 696 23))
                        (display "\n")
                        (cdr x7969)))))
                   g7968)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7972
                     (letrec*
                      ((x7975
                        (begin
                          (write '(funapp 702 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 702 60))
                        (display "\n")
                        (assert x7975))))
                    (g7973
                     (letrec*
                      ((x7976
                        (begin
                          (write '(funapp 704 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 704 59))
                        (display "\n")
                        (assert x7976))))
                    (g7974
                     (letrec*
                      ((output-port
                        (begin
                          (write '(funapp 707 37))
                          (display "\n")
                          (open-output-file filename)))
                       (res
                        (begin
                          (write '(funapp 708 29))
                          (display "\n")
                          (proc output-port))))
                      (letrec*
                       ((g7977
                         (begin
                           (write '(funapp 710 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7978 res))
                       g7978))))
                   g7974)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7979
                     (letrec*
                      ((x7980
                        (letrec*
                         ((x7981
                           (begin
                             (write '(funapp 718 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 718 58))
                           (display "\n")
                           (cdr x7981)))))
                      (begin
                        (write '(funapp 719 23))
                        (display "\n")
                        (car x7980)))))
                   g7979)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7982
                     (letrec*
                      ((x7983
                        (letrec*
                         ((x7984
                           (letrec*
                            ((x7985
                              (begin
                                (write '(funapp 728 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 728 61))
                              (display "\n")
                              (car x7985)))))
                         (begin
                           (write '(funapp 729 26))
                           (display "\n")
                           (car x7984)))))
                      (begin
                        (write '(funapp 730 23))
                        (display "\n")
                        (cdr x7983)))))
                   g7982)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7986
                     (letrec*
                      ((x7988
                        (begin
                          (write '(funapp 735 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 735 57))
                        (display "\n")
                        (assert x7988))))
                    (g7987
                     (letrec*
                      ((x-cnd7989
                        (begin
                          (write '(funapp 738 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7989
                        #f
                        (letrec*
                         ((x-cnd7990
                           (letrec*
                            ((x7991
                              (begin
                                (write '(funapp 743 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 743 56))
                              (display "\n")
                              (eq? x7991 k)))))
                         (if x-cnd7990
                           (begin
                             (write '(funapp 745 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7992
                              (begin
                                (write '(funapp 746 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 746 55))
                              (display "\n")
                              (assq k x7992)))))))))
                   g7987)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7993
                     (letrec*
                      ((x7994
                        (begin
                          (write '(funapp 751 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 751 60))
                        (display "\n")
                        (= 0 x7994)))))
                   g7993)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7995
                     (letrec*
                      ((x7997
                        (begin
                          (write '(funapp 756 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 756 57))
                        (display "\n")
                        (assert x7997))))
                    (g7996
                     (letrec*
                      ((x-cnd7998
                        (begin
                          (write '(funapp 759 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7998
                        ""
                        (letrec*
                         ((x8001
                           (letrec*
                            ((x8002
                              (begin
                                (write '(funapp 764 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 764 55))
                              (display "\n")
                              (char->string x8002))))
                          (x7999
                           (letrec*
                            ((x8000
                              (begin
                                (write '(funapp 766 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 766 55))
                              (display "\n")
                              (list->string x8000)))))
                         (begin
                           (write '(funapp 767 26))
                           (display "\n")
                           (string-append x8001 x7999)))))))
                   g7996)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8003
                     (letrec*
                      ((x8006
                        (begin
                          (write '(funapp 772 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 772 58))
                        (display "\n")
                        (assert x8006))))
                    (g8004
                     (letrec*
                      ((x8007
                        (begin
                          (write '(funapp 773 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 773 58))
                        (display "\n")
                        (assert x8007))))
                    (g8005
                     (letrec*
                      ((val7247
                        (begin
                          (write '(funapp 776 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g8008
                         (if val7247
                           val7247
                           (begin
                             (write '(funapp 778 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g8008))))
                   g8005)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g8009
                     (letrec*
                      ((x8010
                        (letrec*
                         ((x8011
                           (letrec*
                            ((x8012
                              (begin
                                (write '(funapp 788 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 788 61))
                              (display "\n")
                              (cdr x8012)))))
                         (begin
                           (write '(funapp 789 26))
                           (display "\n")
                           (cdr x8011)))))
                      (begin
                        (write '(funapp 790 23))
                        (display "\n")
                        (cdr x8010)))))
                   g8009)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g8013
                     (letrec*
                      ((x8016
                        (begin
                          (write '(funapp 795 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 795 57))
                        (display "\n")
                        (assert x8016))))
                    (g8014
                     (letrec*
                      ((x8017
                        (begin
                          (write '(funapp 796 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 796 57))
                        (display "\n")
                        (assert x8017))))
                    (g8015
                     (letrec*
                      ((x-cnd8018
                        (begin
                          (write '(funapp 799 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd8018
                        x
                        (letrec*
                         ((x8020
                           (begin
                             (write '(funapp 803 34))
                             (display "\n")
                             (cdr x)))
                          (x8019
                           (begin
                             (write '(funapp 803 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 804 26))
                           (display "\n")
                           (list-tail x8020 x8019)))))))
                   g8015)))
               (halt
                (lambda ()
                  (letrec*
                   ((g8021
                     (begin (write '(funapp 806 49)) (display "\n") '())))
                   g8021)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g8022
                     (letrec*
                      ((x-cnd8023
                        (letrec*
                         ((x8024 #\a))
                         (begin
                           (write '(funapp 813 48))
                           (display "\n")
                           (char-ci>=? c x8024)))))
                      (if x-cnd8023
                        (letrec*
                         ((x8025 #\z))
                         (begin
                           (write '(funapp 815 48))
                           (display "\n")
                           (char-ci<=? c x8025)))
                        #f))))
                   g8022)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g8026
                     (letrec*
                      ((val7248
                        (letrec*
                         ((x8027
                           (begin
                             (write '(funapp 824 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 824 62))
                           (display "\n")
                           (= x8027 9)))))
                      (letrec*
                       ((g8028
                         (if val7248
                           val7248
                           (letrec*
                            ((val7249
                              (letrec*
                               ((x8029
                                 (begin
                                   (write '(funapp 832 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 833 32))
                                 (display "\n")
                                 (= x8029 10)))))
                            (letrec*
                             ((g8030
                               (if val7249
                                 val7249
                                 (letrec*
                                  ((x8031
                                    (begin
                                      (write '(funapp 839 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 840 35))
                                    (display "\n")
                                    (= x8031 32))))))
                             g8030)))))
                       g8028))))
                   g8026)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g8032
                     (letrec*
                      ((x8033
                        (letrec*
                         ((x8034
                           (begin
                             (write '(funapp 849 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 849 58))
                           (display "\n")
                           (cdr x8034)))))
                      (begin
                        (write '(funapp 850 23))
                        (display "\n")
                        (cdr x8033)))))
                   g8032)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g8035
                     (letrec*
                      ((x8037
                        (begin
                          (write '(funapp 855 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 855 59))
                        (display "\n")
                        (assert x8037))))
                    (g8036
                     (begin (write '(funapp 856 28)) (display "\n") (> x 0))))
                   g8036)))
               ($pc (begin (write '(funapp 858 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g8038 #f)) g8038)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g8039
                     (letrec*
                      ((x8040
                        (begin
                          (write '(funapp 864 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 864 55))
                        (display "\n")
                        (cdr x8040)))))
                   g8039)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g8041
                     (letrec*
                      ((x8043
                        (begin
                          (write '(funapp 869 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 869 59))
                        (display "\n")
                        (assert x8043))))
                    (g8042
                     (letrec*
                      ((x-cnd8044
                        (begin
                          (write '(funapp 872 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd8044
                        (begin
                          (write '(funapp 873 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 873 49))
                          (display "\n")
                          (floor x))))))
                   g8042)))
               ($cmp (begin (write '(funapp 875 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g8045
                     (letrec*
                      ((val7250
                        (begin
                          (write '(funapp 881 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g8046
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x-cnd8047
                                 (begin
                                   (write '(funapp 889 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd8047
                                 (begin
                                   (write '(funapp 890 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g8048
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((val7252
                                    (letrec*
                                     ((x-cnd8049
                                       (begin
                                         (write '(funapp 898 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd8049
                                       (letrec*
                                        ((x-cnd8050
                                          (begin
                                            (write '(funapp 901 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd8050
                                          (begin
                                            (write '(funapp 902 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g8051
                                     (if val7252
                                       val7252
                                       (letrec*
                                        ((val7253
                                          (letrec*
                                           ((x-cnd8052
                                             (begin
                                               (write '(funapp 911 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd8052
                                             (letrec*
                                              ((x-cnd8053
                                                (begin
                                                  (write '(funapp 914 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd8053
                                                (letrec*
                                                 ((x-cnd8054
                                                   (letrec*
                                                    ((x8056
                                                      (begin
                                                        (write
                                                         '(funapp 919 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x8055
                                                      (begin
                                                        (write
                                                         '(funapp 920 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 921 53))
                                                      (display "\n")
                                                      (equal? x8056 x8055)))))
                                                 (if x-cnd8054
                                                   (letrec*
                                                    ((x8058
                                                      (begin
                                                        (write
                                                         '(funapp 924 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x8057
                                                      (begin
                                                        (write
                                                         '(funapp 925 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 926 53))
                                                      (display "\n")
                                                      (equal? x8058 x8057)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g8059
                                           (if val7253
                                             val7253
                                             (letrec*
                                              ((x-cnd8060
                                                (begin
                                                  (write '(funapp 935 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd8060
                                                (letrec*
                                                 ((x-cnd8061
                                                   (begin
                                                     (write '(funapp 938 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd8061
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 941 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g8062
                                                       (letrec*
                                                        ((x-cnd8063
                                                          (letrec*
                                                           ((x8064
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  948
                                                                  62))
                                                               (display "\n")
                                                               (vector-length
                                                                b))))
                                                           (begin
                                                             (write
                                                              '(funapp 950 60))
                                                             (display "\n")
                                                             (= x8064 n)))))
                                                        (if x-cnd8063
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g8065
                                                                  (letrec*
                                                                   ((val7254
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          959
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (=
                                                                        i
                                                                        n))))
                                                                   (letrec*
                                                                    ((g8066
                                                                      (if val7254
                                                                        val7254
                                                                        (letrec*
                                                                         ((x-cnd8067
                                                                           (letrec*
                                                                            ((x8069
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   968
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 a
                                                                                 i)))
                                                                             (x8068
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   972
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 b
                                                                                 i))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 975
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (equal?
                                                                               x8069
                                                                               x8068)))))
                                                                         (if x-cnd8067
                                                                           (letrec*
                                                                            ((x8070
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   981
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (+
                                                                                 i
                                                                                 1))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 984
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (loop
                                                                               x8070)))
                                                                           #f)))))
                                                                    g8066))))
                                                                g8065))))
                                                           (letrec*
                                                            ((g8071
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   990
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g8071))
                                                          #f))))
                                                     g8062))
                                                   #f))
                                                #f)))))
                                         g8059)))))
                                   g8051)))))
                             g8048)))))
                       g8046))))
                   g8045)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g8072
                     (letrec*
                      ((x8073
                        (letrec*
                         ((x8074
                           (letrec*
                            ((x8075
                              (begin
                                (write '(funapp 1008 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1008 61))
                              (display "\n")
                              (car x8075)))))
                         (begin
                           (write '(funapp 1009 26))
                           (display "\n")
                           (car x8074)))))
                      (begin
                        (write '(funapp 1010 23))
                        (display "\n")
                        (cdr x8073)))))
                   g8072)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g8076
                     (letrec*
                      ((x8077
                        (letrec*
                         ((x8078
                           (letrec*
                            ((x8079
                              (begin
                                (write '(funapp 1019 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1019 61))
                              (display "\n")
                              (cdr x8079)))))
                         (begin
                           (write '(funapp 1020 26))
                           (display "\n")
                           (car x8078)))))
                      (begin
                        (write '(funapp 1021 23))
                        (display "\n")
                        (car x8077)))))
                   g8076)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g8080
                     (begin
                       (write '(funapp 1023 53))
                       (display "\n")
                       (eq? x y))))
                   g8080)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g8081
                     (letrec*
                      ((x8084
                        (begin
                          (write '(funapp 1028 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1028 60))
                        (display "\n")
                        (assert x8084))))
                    (g8082
                     (letrec*
                      ((x8085
                        (begin
                          (write '(funapp 1030 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1030 59))
                        (display "\n")
                        (assert x8085))))
                    (g8083
                     (letrec*
                      ((input-port
                        (begin
                          (write '(funapp 1033 36))
                          (display "\n")
                          (open-input-file filename)))
                       (res
                        (begin
                          (write '(funapp 1034 29))
                          (display "\n")
                          (proc input-port))))
                      (letrec*
                       ((g8086
                         (begin
                           (write '(funapp 1036 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g8087 res))
                       g8087))))
                   g8083)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g8088
                     (begin
                       (write '(funapp 1039 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1039 57))
                          (display "\n")
                          '())))))
                   g8088)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8089
                     (letrec*
                      ((x8092
                        (begin
                          (write '(funapp 1043 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1043 58))
                        (display "\n")
                        (assert x8092))))
                    (g8090
                     (letrec*
                      ((x8093
                        (begin
                          (write '(funapp 1044 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1044 58))
                        (display "\n")
                        (assert x8093))))
                    (g8091
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1047 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g8094
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1049 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g8094))))
                   g8091)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g8095
                     (letrec*
                      ((x8096
                        (letrec*
                         ((x8097
                           (begin
                             (write '(funapp 1057 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1057 58))
                           (display "\n")
                           (car x8097)))))
                      (begin
                        (write '(funapp 1058 23))
                        (display "\n")
                        (cdr x8096)))))
                   g8095)))
               (cdaddr
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
                                (write '(funapp 1067 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1067 61))
                              (display "\n")
                              (cdr x8101)))))
                         (begin
                           (write '(funapp 1068 26))
                           (display "\n")
                           (car x8100)))))
                      (begin
                        (write '(funapp 1069 23))
                        (display "\n")
                        (cdr x8099)))))
                   g8098)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g8102
                     (letrec*
                      ((x8103
                        (letrec*
                         ((x8104
                           (begin
                             (write '(funapp 1077 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1077 58))
                           (display "\n")
                           (cdr x8104)))))
                      (begin
                        (write '(funapp 1078 23))
                        (display "\n")
                        (car x8103)))))
                   g8102)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g8105
                     (letrec*
                      ((x8106
                        (letrec*
                         ((x8107
                           (begin
                             (write '(funapp 1085 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1085 58))
                           (display "\n")
                           (car x8107)))))
                      (begin
                        (write '(funapp 1086 23))
                        (display "\n")
                        (car x8106)))))
                   g8105)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g8108
                     (letrec*
                      ((x8111
                        (begin
                          (write '(funapp 1091 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1091 58))
                        (display "\n")
                        (assert x8111))))
                    (g8109
                     (letrec*
                      ((x8112
                        (begin
                          (write '(funapp 1092 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1092 58))
                        (display "\n")
                        (assert x8112))))
                    (g8110
                     (letrec*
                      ((x8113
                        (begin
                          (write '(funapp 1093 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1093 66))
                        (display "\n")
                        (not x8113)))))
                   g8110)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g8114
                     (letrec*
                      ((x8115
                        (letrec*
                         ((x8116
                           (letrec*
                            ((x8117
                              (begin
                                (write '(funapp 1103 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1103 61))
                              (display "\n")
                              (car x8117)))))
                         (begin
                           (write '(funapp 1104 26))
                           (display "\n")
                           (car x8116)))))
                      (begin
                        (write '(funapp 1105 23))
                        (display "\n")
                        (car x8115)))))
                   g8114)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g8118
                     (letrec*
                      ((x8120
                        (begin
                          (write '(funapp 1110 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1110 59))
                        (display "\n")
                        (assert x8120))))
                    (g8119
                     (begin (write '(funapp 1111 28)) (display "\n") (< x 0))))
                   g8119)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g8121
                     (begin
                       (write '(funapp 1113 53))
                       (display "\n")
                       (memq e l))))
                   g8121)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g8122
                     (letrec*
                      ((x8123
                        (letrec*
                         ((x8124
                           (begin
                             (write '(funapp 1119 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1119 58))
                           (display "\n")
                           (car x8124)))))
                      (begin
                        (write '(funapp 1120 23))
                        (display "\n")
                        (car x8123)))))
                   g8122)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g8125
                     (begin (write '(funapp 1122 51)) (display "\n") '())))
                   g8125)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g8126
                     (letrec*
                      ((x8128
                        (begin
                          (write '(funapp 1126 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1126 57))
                        (display "\n")
                        (assert x8128))))
                    (g8127
                     (letrec*
                      ((x-cnd8129
                        (begin
                          (write '(funapp 1129 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8129
                        (begin (write '(funapp 1131 24)) (display "\n") '())
                        (letrec*
                         ((x8132
                           (letrec*
                            ((x8133
                              (begin
                                (write '(funapp 1133 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1133 61))
                              (display "\n")
                              (reverse x8133))))
                          (x8130
                           (letrec*
                            ((x8131
                              (begin
                                (write '(funapp 1134 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1134 61))
                              (display "\n")
                              (list x8131)))))
                         (begin
                           (write '(funapp 1135 26))
                           (display "\n")
                           (append x8132 x8130)))))))
                   g8127)))
               (caaadr
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
                                (write '(funapp 1144 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1144 61))
                              (display "\n")
                              (car x8137)))))
                         (begin
                           (write '(funapp 1145 26))
                           (display "\n")
                           (car x8136)))))
                      (begin
                        (write '(funapp 1146 23))
                        (display "\n")
                        (car x8135)))))
                   g8134)))
               (cddadr
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
                                (write '(funapp 1155 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1155 61))
                              (display "\n")
                              (car x8141)))))
                         (begin
                           (write '(funapp 1156 26))
                           (display "\n")
                           (cdr x8140)))))
                      (begin
                        (write '(funapp 1157 23))
                        (display "\n")
                        (cdr x8139)))))
                   g8138)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g8142
                     (letrec*
                      ((x8144
                        (begin
                          (write '(funapp 1162 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1162 59))
                        (display "\n")
                        (assert x8144))))
                    (g8143
                     (letrec*
                      ((x8145
                        (begin
                          (write '(funapp 1163 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1163 60))
                        (display "\n")
                        (= 1 x8145)))))
                   g8143)))
               (caadar
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
                                (write '(funapp 1172 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1172 61))
                              (display "\n")
                              (cdr x8149)))))
                         (begin
                           (write '(funapp 1173 26))
                           (display "\n")
                           (car x8148)))))
                      (begin
                        (write '(funapp 1174 23))
                        (display "\n")
                        (car x8147)))))
                   g8146)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g8150
                     (letrec*
                      ((x8153
                        (begin
                          (write '(funapp 1180 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1180 59))
                        (display "\n")
                        (assert x8153))))
                    (g8151
                     (letrec*
                      ((x8154
                        (begin
                          (write '(funapp 1181 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1181 60))
                        (display "\n")
                        (assert x8154))))
                    (g8152
                     (letrec*
                      ((x-cnd8155
                        (begin
                          (write '(funapp 1184 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd8155
                        (letrec*
                         ((g8156
                           (begin
                             (write '(funapp 1186 42))
                             (display "\n")
                             (proc))))
                         g8156)
                        (letrec*
                         ((x-cnd8157
                           (letrec*
                            ((x8158
                              (begin
                                (write '(funapp 1189 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1189 58))
                              (display "\n")
                              (null? x8158)))))
                         (if x-cnd8157
                           (letrec*
                            ((g8159
                              (letrec*
                               ((x8160
                                 (begin
                                   (write '(funapp 1193 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1193 61))
                                 (display "\n")
                                 (proc x8160)))))
                            g8159)
                           (letrec*
                            ((x-cnd8161
                              (letrec*
                               ((x8162
                                 (begin
                                   (write '(funapp 1197 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1197 62))
                                 (display "\n")
                                 (null? x8162)))))
                            (if x-cnd8161
                              (letrec*
                               ((g8163
                                 (letrec*
                                  ((x8165
                                    (begin
                                      (write '(funapp 1202 43))
                                      (display "\n")
                                      (car args)))
                                   (x8164
                                    (begin
                                      (write '(funapp 1202 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1203 35))
                                    (display "\n")
                                    (proc x8165 x8164)))))
                               g8163)
                              (letrec*
                               ((x-cnd8166
                                 (letrec*
                                  ((x8167
                                    (begin
                                      (write '(funapp 1208 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1209 35))
                                    (display "\n")
                                    (null? x8167)))))
                               (if x-cnd8166
                                 (letrec*
                                  ((g8168
                                    (letrec*
                                     ((x8171
                                       (begin
                                         (write '(funapp 1214 46))
                                         (display "\n")
                                         (car args)))
                                      (x8170
                                       (begin
                                         (write '(funapp 1215 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x8169
                                       (begin
                                         (write '(funapp 1216 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1217 38))
                                       (display "\n")
                                       (proc x8171 x8170 x8169)))))
                                  g8168)
                                 (letrec*
                                  ((x-cnd8172
                                    (letrec*
                                     ((x8173
                                       (begin
                                         (write '(funapp 1222 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1223 38))
                                       (display "\n")
                                       (null? x8173)))))
                                  (if x-cnd8172
                                    (letrec*
                                     ((g8174
                                       (letrec*
                                        ((x8178
                                          (begin
                                            (write '(funapp 1228 49))
                                            (display "\n")
                                            (car args)))
                                         (x8177
                                          (begin
                                            (write '(funapp 1229 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x8176
                                          (begin
                                            (write '(funapp 1230 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x8175
                                          (begin
                                            (write '(funapp 1231 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1232 41))
                                          (display "\n")
                                          (proc x8178 x8177 x8176 x8175)))))
                                     g8174)
                                    (letrec*
                                     ((x-cnd8179
                                       (letrec*
                                        ((x8180
                                          (letrec*
                                           ((x8181
                                             (begin
                                               (write '(funapp 1239 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1240 44))
                                             (display "\n")
                                             (cdr x8181)))))
                                        (begin
                                          (write '(funapp 1241 41))
                                          (display "\n")
                                          (null? x8180)))))
                                     (if x-cnd8179
                                       (letrec*
                                        ((g8182
                                          (letrec*
                                           ((x8188
                                             (begin
                                               (write '(funapp 1246 52))
                                               (display "\n")
                                               (car args)))
                                            (x8187
                                             (begin
                                               (write '(funapp 1247 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x8186
                                             (begin
                                               (write '(funapp 1248 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x8185
                                             (begin
                                               (write '(funapp 1249 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x8183
                                             (letrec*
                                              ((x8184
                                                (begin
                                                  (write '(funapp 1252 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1253 47))
                                                (display "\n")
                                                (car x8184)))))
                                           (begin
                                             (write '(funapp 1254 44))
                                             (display "\n")
                                             (proc
                                              x8188
                                              x8187
                                              x8186
                                              x8185
                                              x8183)))))
                                        g8182)
                                       (letrec*
                                        ((x-cnd8189
                                          (letrec*
                                           ((x8190
                                             (letrec*
                                              ((x8191
                                                (begin
                                                  (write '(funapp 1266 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1267 47))
                                                (display "\n")
                                                (cddr x8191)))))
                                           (begin
                                             (write '(funapp 1268 44))
                                             (display "\n")
                                             (null? x8190)))))
                                        (if x-cnd8189
                                          (letrec*
                                           ((g8192
                                             (letrec*
                                              ((x8200
                                                (begin
                                                  (write '(funapp 1273 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x8199
                                                (begin
                                                  (write '(funapp 1274 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x8198
                                                (begin
                                                  (write '(funapp 1275 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x8197
                                                (begin
                                                  (write '(funapp 1276 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x8195
                                                (letrec*
                                                 ((x8196
                                                   (begin
                                                     (write '(funapp 1279 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1280 50))
                                                   (display "\n")
                                                   (car x8196))))
                                               (x8193
                                                (letrec*
                                                 ((x8194
                                                   (begin
                                                     (write '(funapp 1283 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1284 50))
                                                   (display "\n")
                                                   (cadr x8194)))))
                                              (begin
                                                (write '(funapp 1285 47))
                                                (display "\n")
                                                (proc
                                                 x8200
                                                 x8199
                                                 x8198
                                                 x8197
                                                 x8195
                                                 x8193)))))
                                           g8192)
                                          (letrec*
                                           ((x-cnd8201
                                             (letrec*
                                              ((x8202
                                                (letrec*
                                                 ((x8203
                                                   (begin
                                                     (write '(funapp 1298 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1299 50))
                                                   (display "\n")
                                                   (cdddr x8203)))))
                                              (begin
                                                (write '(funapp 1300 47))
                                                (display "\n")
                                                (null? x8202)))))
                                           (if x-cnd8201
                                             (letrec*
                                              ((g8204
                                                (letrec*
                                                 ((x8214
                                                   (begin
                                                     (write '(funapp 1305 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x8213
                                                   (begin
                                                     (write '(funapp 1306 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x8212
                                                   (begin
                                                     (write '(funapp 1307 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x8211
                                                   (begin
                                                     (write '(funapp 1308 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x8209
                                                   (letrec*
                                                    ((x8210
                                                      (begin
                                                        (write
                                                         '(funapp 1311 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1312 53))
                                                      (display "\n")
                                                      (car x8210))))
                                                  (x8207
                                                   (letrec*
                                                    ((x8208
                                                      (begin
                                                        (write
                                                         '(funapp 1315 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1316 53))
                                                      (display "\n")
                                                      (cadr x8208))))
                                                  (x8205
                                                   (letrec*
                                                    ((x8206
                                                      (begin
                                                        (write
                                                         '(funapp 1319 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1320 53))
                                                      (display "\n")
                                                      (caddr x8206)))))
                                                 (begin
                                                   (write '(funapp 1321 50))
                                                   (display "\n")
                                                   (proc
                                                    x8214
                                                    x8213
                                                    x8212
                                                    x8211
                                                    x8209
                                                    x8207
                                                    x8205)))))
                                              g8204)
                                             (letrec*
                                              ((g8215
                                                (begin
                                                  (write '(funapp 1332 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g8215)))))))))))))))))))
                   g8152)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g8216
                     (letrec*
                      ((x8218
                        (begin
                          (write '(funapp 1338 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1338 57))
                        (display "\n")
                        (assert x8218))))
                    (g8217
                     (letrec*
                      ((x-cnd8219
                        (begin
                          (write '(funapp 1341 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8219
                        #f
                        (letrec*
                         ((x-cnd8220
                           (letrec*
                            ((x8221
                              (begin
                                (write '(funapp 1346 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1346 55))
                              (display "\n")
                              (equal? x8221 e)))))
                         (if x-cnd8220
                           l
                           (letrec*
                            ((x8222
                              (begin
                                (write '(funapp 1349 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1349 55))
                              (display "\n")
                              (member e x8222)))))))))
                   g8217)))
               (cddddr
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
                                (write '(funapp 1358 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1358 61))
                              (display "\n")
                              (cdr x8226)))))
                         (begin
                           (write '(funapp 1359 26))
                           (display "\n")
                           (cdr x8225)))))
                      (begin
                        (write '(funapp 1360 23))
                        (display "\n")
                        (cdr x8224)))))
                   g8223)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g8227
                     (letrec*
                      ((x8228
                        (letrec*
                         ((x8229
                           (letrec*
                            ((x8230
                              (begin
                                (write '(funapp 1369 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1369 61))
                              (display "\n")
                              (cdr x8230)))))
                         (begin
                           (write '(funapp 1370 26))
                           (display "\n")
                           (cdr x8229)))))
                      (begin
                        (write '(funapp 1371 23))
                        (display "\n")
                        (car x8228)))))
                   g8227)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g8231
                     (begin
                       (write '(funapp 1373 53))
                       (display "\n")
                       (random 42))))
                   g8231)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g8232
                     (letrec*
                      ((x8234
                        (begin
                          (write '(funapp 1377 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1377 59))
                        (display "\n")
                        (assert x8234))))
                    (g8233
                     (begin (write '(funapp 1378 28)) (display "\n") (= x 0))))
                   g8233)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8235
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1385 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g8236
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1387 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8236))))
                   g8235)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g8237
                     (letrec*
                      ((x8238
                        (begin
                          (write '(funapp 1393 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1393 55))
                        (display "\n")
                        (car x8238)))))
                   g8237)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g8239
                     (letrec*
                      ((val7257
                        (letrec*
                         ((x-cnd8240
                           (begin
                             (write '(funapp 1403 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8240
                           (letrec*
                            ((x8241
                              (begin
                                (write '(funapp 1405 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1405 55))
                              (display "\n")
                              (list? x8241)))
                           #f))))
                      (letrec*
                       ((g8242
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1408 52))
                             (display "\n")
                             (null? l)))))
                       g8242))))
                   g8239)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g8243
                     (letrec*
                      ((x8244
                        (letrec*
                         ((x8245
                           (letrec*
                            ((x8246
                              (begin
                                (write '(funapp 1418 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1418 61))
                              (display "\n")
                              (car x8246)))))
                         (begin
                           (write '(funapp 1419 26))
                           (display "\n")
                           (cdr x8245)))))
                      (begin
                        (write '(funapp 1420 23))
                        (display "\n")
                        (cdr x8244)))))
                   g8243)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g8247
                     (letrec*
                      ((x-cnd8248
                        (letrec*
                         ((x8249 #\0))
                         (begin
                           (write '(funapp 1427 58))
                           (display "\n")
                           (char<=? x8249 c)))))
                      (if x-cnd8248
                        (letrec*
                         ((x8250 #\9))
                         (begin
                           (write '(funapp 1429 48))
                           (display "\n")
                           (char<=? c x8250)))
                        #f))))
                   g8247)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g8251
                     (letrec*
                      ((x8253
                        (begin
                          (write '(funapp 1436 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1436 57))
                        (display "\n")
                        (assert x8253))))
                    (g8252
                     (letrec*
                      ((x-cnd8254
                        (begin
                          (write '(funapp 1439 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8254
                        #f
                        (letrec*
                         ((x-cnd8255
                           (letrec*
                            ((x8256
                              (begin
                                (write '(funapp 1444 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1444 56))
                              (display "\n")
                              (eqv? x8256 k)))))
                         (if x-cnd8255
                           (begin
                             (write '(funapp 1446 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8257
                              (begin
                                (write '(funapp 1447 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1447 55))
                              (display "\n")
                              (assq k x8257)))))))))
                   g8252)))
               (not (lambda (x) (letrec* ((g8258 (if x #f #t))) g8258)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g8259
                     (begin
                       (write '(funapp 1451 50))
                       (display "\n")
                       (append l1 l2))))
                   g8259)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g8260
                     (letrec*
                      ((x8262
                        (begin
                          (write '(funapp 1455 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1455 57))
                        (display "\n")
                        (assert x8262))))
                    (g8261
                     (letrec*
                      ((x-cnd8263
                        (begin
                          (write '(funapp 1458 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8263
                        #f
                        (letrec*
                         ((x-cnd8264
                           (letrec*
                            ((x8265
                              (begin
                                (write '(funapp 1463 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1463 55))
                              (display "\n")
                              (eq? x8265 e)))))
                         (if x-cnd8264
                           l
                           (letrec*
                            ((x8266
                              (begin
                                (write '(funapp 1466 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1466 55))
                              (display "\n")
                              (memq e x8266)))))))))
                   g8261)))
               (cadaar
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
                                (write '(funapp 1475 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1475 61))
                              (display "\n")
                              (car x8270)))))
                         (begin
                           (write '(funapp 1476 26))
                           (display "\n")
                           (cdr x8269)))))
                      (begin
                        (write '(funapp 1477 23))
                        (display "\n")
                        (car x8268)))))
                   g8267)))
               (length
                (lambda (l)
                  (letrec*
                   ((g8271
                     (letrec*
                      ((x8273
                        (begin
                          (write '(funapp 1482 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1482 57))
                        (display "\n")
                        (assert x8273))))
                    (g8272
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g8274
                             (letrec*
                              ((x-cnd8275
                                (begin
                                  (write '(funapp 1490 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd8275
                                0
                                (letrec*
                                 ((x8276
                                   (letrec*
                                    ((x8277
                                      (begin
                                        (write '(funapp 1495 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1495 63))
                                      (display "\n")
                                      (rec x8277)))))
                                 (begin
                                   (write '(funapp 1496 34))
                                   (display "\n")
                                   (+ 1 x8276)))))))
                           g8274))))
                      (letrec*
                       ((g8278
                         (begin
                           (write '(funapp 1498 40))
                           (display "\n")
                           (rec l))))
                       g8278))))
                   g8272)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8279
                     (letrec*
                      ((x8282
                        (begin
                          (write '(funapp 1503 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1503 58))
                        (display "\n")
                        (assert x8282))))
                    (g8280
                     (letrec*
                      ((x8283
                        (begin
                          (write '(funapp 1504 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1504 58))
                        (display "\n")
                        (assert x8283))))
                    (g8281
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1507 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g8284
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1509 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8284))))
                   g8281)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g8285
                     (letrec*
                      ((x8286
                        (begin
                          (write '(funapp 1515 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1515 65))
                        (display "\n")
                        (not x8286)))))
                   g8285)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g8287
                     (letrec*
                      ((x8288
                        (letrec*
                         ((x8289
                           (begin
                             (write '(funapp 1522 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1522 58))
                           (display "\n")
                           (car x8289)))))
                      (begin
                        (write '(funapp 1523 23))
                        (display "\n")
                        (cdr x8288)))))
                   g8287)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g8290
                     (letrec*
                      ((x8292
                        (begin
                          (write '(funapp 1528 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1528 57))
                        (display "\n")
                        (assert x8292))))
                    (g8291
                     (letrec*
                      ((x-cnd8293
                        (begin
                          (write '(funapp 1531 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8293
                        #f
                        (letrec*
                         ((x-cnd8294
                           (letrec*
                            ((x8295
                              (begin
                                (write '(funapp 1536 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1536 56))
                              (display "\n")
                              (equal? x8295 k)))))
                         (if x-cnd8294
                           (begin
                             (write '(funapp 1538 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8296
                              (begin
                                (write '(funapp 1539 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1539 55))
                              (display "\n")
                              (assoc k x8296)))))))))
                   g8291)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g8297
                     (letrec*
                      ((x8298
                        (begin
                          (write '(funapp 1544 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1544 55))
                        (display "\n")
                        (car x8298)))))
                   g8297)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g8299
                     (letrec*
                      ((x8302
                        (begin
                          (write '(funapp 1549 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1549 58))
                        (display "\n")
                        (assert x8302))))
                    (g8300
                     (letrec*
                      ((x8303
                        (begin
                          (write '(funapp 1550 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1550 58))
                        (display "\n")
                        (assert x8303))))
                    (g8301
                     (letrec*
                      ((x8304
                        (begin
                          (write '(funapp 1551 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1551 63))
                        (display "\n")
                        (not x8304)))))
                   g8301)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8305
                     (letrec*
                      ((val7259
                        (begin
                          (write '(funapp 1558 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g8306
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1560 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8306))))
                   g8305)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g8307
                     (letrec*
                      ((x8310
                        (begin
                          (write '(funapp 1566 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1566 62))
                        (display "\n")
                        (assert x8310))))
                    (g8308
                     (letrec*
                      ((x8311
                        (begin
                          (write '(funapp 1567 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1567 57))
                        (display "\n")
                        (assert x8311))))
                    (g8309
                     (letrec*
                      ((x-cnd8312
                        (begin
                          (write '(funapp 1570 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8312
                        #t
                        (letrec*
                         ((x-cnd8313
                           (begin
                             (write '(funapp 1574 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8313
                           (letrec*
                            ((g8314
                              (letrec*
                               ((x8316
                                 (begin
                                   (write '(funapp 1577 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1577 64))
                                 (display "\n")
                                 (f x8316))))
                             (g8315
                              (letrec*
                               ((x8317
                                 (begin
                                   (write '(funapp 1579 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1579 58))
                                 (display "\n")
                                 (for-each f x8317)))))
                            g8315)
                           (begin
                             (write '(funapp 1581 27))
                             (display "\n")
                             '())))))))
                   g8309)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g8318
                     (letrec*
                      ((x8320
                        (begin
                          (write '(funapp 1586 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1586 59))
                        (display "\n")
                        (assert x8320))))
                    (g8319
                     (letrec*
                      ((x-cnd8321
                        (begin
                          (write '(funapp 1588 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd8321
                        (begin
                          (write '(funapp 1588 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g8319)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8322
                     (letrec*
                      ((x8325
                        (begin
                          (write '(funapp 1593 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1593 58))
                        (display "\n")
                        (assert x8325))))
                    (g8323
                     (letrec*
                      ((x8326
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1594 58))
                        (display "\n")
                        (assert x8326))))
                    (g8324
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1597 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g8327
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1599 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8327))))
                   g8324)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g8328
                     (letrec*
                      ((x8329
                        (letrec*
                         ((x8330
                           (letrec*
                            ((x8331
                              (begin
                                (write '(funapp 1609 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1609 61))
                              (display "\n")
                              (cdr x8331)))))
                         (begin
                           (write '(funapp 1610 26))
                           (display "\n")
                           (cdr x8330)))))
                      (begin
                        (write '(funapp 1611 23))
                        (display "\n")
                        (car x8329)))))
                   g8328)))
               (newline (lambda () (letrec* ((g8332 #f)) g8332)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g8333
                     (letrec*
                      ((x8335
                        (letrec*
                         ((x8336
                           (begin
                             (write '(funapp 1619 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1619 58))
                           (display "\n")
                           (abs x8336))))
                       (x8334
                        (begin
                          (write '(funapp 1620 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1621 23))
                        (display "\n")
                        (/ x8335 x8334)))))
                   g8333)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g8337
                     (letrec*
                      ((x8341
                        (begin
                          (write '(funapp 1627 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1627 57))
                        (display "\n")
                        (assert x8341))))
                    (g8338
                     (letrec*
                      ((x8342
                        (begin
                          (write '(funapp 1628 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1628 63))
                        (display "\n")
                        (assert x8342))))
                    (g8339
                     (letrec*
                      ((x8343
                        (letrec*
                         ((x8344
                           (begin
                             (write '(funapp 1631 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1631 61))
                           (display "\n")
                           (< index x8344)))))
                      (begin
                        (write '(funapp 1632 23))
                        (display "\n")
                        (assert x8343))))
                    (g8340
                     (letrec*
                      ((x-cnd8345
                        (begin
                          (write '(funapp 1635 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8345
                        (begin
                          (write '(funapp 1637 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8347
                           (begin
                             (write '(funapp 1639 34))
                             (display "\n")
                             (cdr l)))
                          (x8346
                           (begin
                             (write '(funapp 1639 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1640 26))
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
                          (write '(funapp 1647 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8349
                        a
                        (letrec*
                         ((x8350
                           (begin
                             (write '(funapp 1650 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1650 57))
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
                                (write '(funapp 1661 37))
                                (display "\n")
                                (orig-cons
                                 color7750
                                 (begin
                                   (write '(funapp 1661 57))
                                   (display "\n")
                                   '())))))
                            (begin
                              (write '(funapp 1662 29))
                              (display "\n")
                              (orig-cons y7749 x8354)))))
                         (begin
                           (write '(funapp 1663 26))
                           (display "\n")
                           (orig-cons x7748 x8353)))))
                      (begin
                        (write '(funapp 1664 23))
                        (display "\n")
                        (orig-cons
                         (begin
                           (write '(funapp 1664 33))
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
                          (write '(funapp 1670 39))
                          (display "\n")
                          (car block7747))))
                      (begin
                        (write '(funapp 1670 57))
                        (display "\n")
                        (eq?
                         x8356
                         (begin
                           (write '(funapp 1670 67))
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
                          (write '(funapp 1676 39))
                          (display "\n")
                          (orig-cdr block))))
                      (begin
                        (write '(funapp 1676 58))
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
                             (write '(funapp 1684 42))
                             (display "\n")
                             (orig-cdr block))))
                         (begin
                           (write '(funapp 1684 61))
                           (display "\n")
                           (orig-cdr x8361)))))
                      (begin
                        (write '(funapp 1685 23))
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
                                (write '(funapp 1696 37))
                                (display "\n")
                                (orig-cdr block))))
                            (begin
                              (write '(funapp 1697 29))
                              (display "\n")
                              (orig-cdr x8365)))))
                         (begin
                           (write '(funapp 1698 26))
                           (display "\n")
                           (orig-cdr x8364)))))
                      (begin
                        (write '(funapp 1699 23))
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
                             (write '(funapp 1708 34))
                             (display "\n")
                             (orig-cons
                              blocks7756
                              (begin
                                (write '(funapp 1708 55))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1709 26))
                           (display "\n")
                           (orig-cons center7755 x8368)))))
                      (begin
                        (write '(funapp 1710 23))
                        (display "\n")
                        (orig-cons
                         (begin
                           (write '(funapp 1710 33))
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
                          (write '(funapp 1716 39))
                          (display "\n")
                          (car tetra7754))))
                      (begin
                        (write '(funapp 1716 57))
                        (display "\n")
                        (eq?
                         x8370
                         (begin
                           (write '(funapp 1716 67))
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
                          (write '(funapp 1722 39))
                          (display "\n")
                          (orig-cdr tetra))))
                      (begin
                        (write '(funapp 1722 58))
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
                             (write '(funapp 1730 42))
                             (display "\n")
                             (orig-cdr tetra))))
                         (begin
                           (write '(funapp 1730 61))
                           (display "\n")
                           (orig-cdr x8375)))))
                      (begin
                        (write '(funapp 1731 23))
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
                             (write '(funapp 1740 34))
                             (display "\n")
                             (orig-cons
                              blocks7761
                              (begin
                                (write '(funapp 1740 55))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1741 26))
                           (display "\n")
                           (orig-cons tetra7760 x8378)))))
                      (begin
                        (write '(funapp 1742 23))
                        (display "\n")
                        (orig-cons
                         (begin
                           (write '(funapp 1742 33))
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
                          (write '(funapp 1748 39))
                          (display "\n")
                          (car world7759))))
                      (begin
                        (write '(funapp 1748 57))
                        (display "\n")
                        (eq?
                         x8380
                         (begin
                           (write '(funapp 1748 67))
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
                          (write '(funapp 1754 39))
                          (display "\n")
                          (orig-cdr world))))
                      (begin
                        (write '(funapp 1754 58))
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
                             (write '(funapp 1762 42))
                             (display "\n")
                             (orig-cdr world))))
                         (begin
                           (write '(funapp 1762 61))
                           (display "\n")
                           (orig-cdr x8385)))))
                      (begin
                        (write '(funapp 1763 23))
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
                             (write '(funapp 1772 34))
                             (display "\n")
                             (orig-cons
                              y7766
                              (begin
                                (write '(funapp 1772 50))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1773 26))
                           (display "\n")
                           (orig-cons x7765 x8388)))))
                      (begin
                        (write '(funapp 1774 23))
                        (display "\n")
                        (orig-cons
                         (begin (write '(funapp 1774 33)) (display "\n") 'posn)
                         x8387)))))
                   g8386)))
               (posn?
                (lambda (posn7764)
                  (letrec*
                   ((g8389
                     (letrec*
                      ((x8390
                        (begin
                          (write '(funapp 1780 39))
                          (display "\n")
                          (car posn7764))))
                      (begin
                        (write '(funapp 1780 56))
                        (display "\n")
                        (eq?
                         x8390
                         (begin
                           (write '(funapp 1780 66))
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
                          (write '(funapp 1786 39))
                          (display "\n")
                          (orig-cdr posn))))
                      (begin
                        (write '(funapp 1786 57))
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
                             (write '(funapp 1794 42))
                             (display "\n")
                             (orig-cdr posn))))
                         (begin
                           (write '(funapp 1794 60))
                           (display "\n")
                           (orig-cdr x8395)))))
                      (begin
                        (write '(funapp 1795 23))
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
                                (write '(funapp 1807 37))
                                (display "\n")
                                (orig-cdr v7395))))
                            (begin
                              (write '(funapp 1808 29))
                              (display "\n")
                              (orig-car x8398)))))
                         (begin
                           (write '(funapp 1809 26))
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
                                       (write '(funapp 1819 44))
                                       (display "\n")
                                       (orig-cdr v7395))))
                                   (begin
                                     (write '(funapp 1820 36))
                                     (display "\n")
                                     (orig-cdr x8402)))))
                                (begin
                                  (write '(funapp 1821 33))
                                  (display "\n")
                                  (orig-car x8401)))))
                             (begin
                               (write '(funapp 1822 30))
                               (display "\n")
                               (real?/c j7396 k7397 x8400)))))
                          (letrec*
                           ((g8403
                             (letrec*
                              ((x8404
                                (letrec*
                                 ((x8405
                                   (begin
                                     (write '(funapp 1828 42))
                                     (display "\n")
                                     (cons
                                      checked7399
                                      (begin
                                        (write '(funapp 1828 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1829 34))
                                   (display "\n")
                                   (cons checked7398 x8405)))))
                              (begin
                                (write '(funapp 1830 31))
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
                                (write '(funapp 1843 37))
                                (display "\n")
                                (orig-cdr v7401))))
                            (begin
                              (write '(funapp 1844 29))
                              (display "\n")
                              (orig-car x8408)))))
                         (begin
                           (write '(funapp 1845 26))
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
                                       (write '(funapp 1855 44))
                                       (display "\n")
                                       (orig-cdr v7401))))
                                   (begin
                                     (write '(funapp 1856 36))
                                     (display "\n")
                                     (orig-cdr x8412)))))
                                (begin
                                  (write '(funapp 1857 33))
                                  (display "\n")
                                  (orig-car x8411)))))
                             (begin
                               (write '(funapp 1858 30))
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
                                              (write '(funapp 1870 51))
                                              (display "\n")
                                              (orig-cdr v7401))))
                                          (begin
                                            (write '(funapp 1871 43))
                                            (display "\n")
                                            (orig-cdr x8417)))))
                                       (begin
                                         (write '(funapp 1872 40))
                                         (display "\n")
                                         (orig-cdr x8416)))))
                                    (begin
                                      (write '(funapp 1873 37))
                                      (display "\n")
                                      (orig-car x8415)))))
                                 (begin
                                   (write '(funapp 1874 34))
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
                                            (write '(funapp 1882 49))
                                            (display "\n")
                                            (cons
                                             checked7406
                                             (begin
                                               (write '(funapp 1882 66))
                                               (display "\n")
                                               '())))))
                                        (begin
                                          (write '(funapp 1883 41))
                                          (display "\n")
                                          (cons checked7405 x8421)))))
                                     (begin
                                       (write '(funapp 1884 38))
                                       (display "\n")
                                       (cons checked7404 x8420)))))
                                  (begin
                                    (write '(funapp 1885 35))
                                    (display "\n")
                                    (cons block x8419)))))
                               g8418))))
                           g8413))))
                       g8409))))
                   g8406)))
               (BSET/C
                (begin
                  (write '(funapp 1890 24))
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
                                (write '(funapp 1900 37))
                                (display "\n")
                                (orig-cdr v7408))))
                            (begin
                              (write '(funapp 1901 29))
                              (display "\n")
                              (orig-car x8424)))))
                         (begin
                           (write '(funapp 1902 26))
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
                                       (write '(funapp 1912 44))
                                       (display "\n")
                                       (orig-cdr v7408))))
                                   (begin
                                     (write '(funapp 1913 36))
                                     (display "\n")
                                     (orig-cdr x8428)))))
                                (begin
                                  (write '(funapp 1914 33))
                                  (display "\n")
                                  (orig-car x8427)))))
                             (begin
                               (write '(funapp 1915 30))
                               (display "\n")
                               (BSET/C j7409 k7410 x8426)))))
                          (letrec*
                           ((g8429
                             (letrec*
                              ((x8430
                                (letrec*
                                 ((x8431
                                   (begin
                                     (write '(funapp 1921 42))
                                     (display "\n")
                                     (cons
                                      checked7412
                                      (begin
                                        (write '(funapp 1921 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1922 34))
                                   (display "\n")
                                   (cons checked7411 x8431)))))
                              (begin
                                (write '(funapp 1923 31))
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
                                (write '(funapp 1936 37))
                                (display "\n")
                                (orig-cdr v7414))))
                            (begin
                              (write '(funapp 1937 29))
                              (display "\n")
                              (orig-car x8434)))))
                         (begin
                           (write '(funapp 1938 26))
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
                                       (write '(funapp 1948 44))
                                       (display "\n")
                                       (orig-cdr v7414))))
                                   (begin
                                     (write '(funapp 1949 36))
                                     (display "\n")
                                     (orig-cdr x8438)))))
                                (begin
                                  (write '(funapp 1950 33))
                                  (display "\n")
                                  (orig-car x8437)))))
                             (begin
                               (write '(funapp 1951 30))
                               (display "\n")
                               (BSET/C j7415 k7416 x8436)))))
                          (letrec*
                           ((g8439
                             (letrec*
                              ((x8440
                                (letrec*
                                 ((x8441
                                   (begin
                                     (write '(funapp 1957 42))
                                     (display "\n")
                                     (cons
                                      checked7418
                                      (begin
                                        (write '(funapp 1957 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1958 34))
                                   (display "\n")
                                   (cons checked7417 x8441)))))
                              (begin
                                (write '(funapp 1959 31))
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
                             (write '(funapp 1970 34))
                             (display "\n")
                             (posn-x p1)))
                          (x8444
                           (begin
                             (write '(funapp 1970 54))
                             (display "\n")
                             (posn-x p2))))
                         (begin
                           (write '(funapp 1971 26))
                           (display "\n")
                           (= x8445 x8444)))))
                      (if x-cnd8443
                        (letrec*
                         ((x8447
                           (begin
                             (write '(funapp 1974 34))
                             (display "\n")
                             (posn-y p1)))
                          (x8446
                           (begin
                             (write '(funapp 1974 54))
                             (display "\n")
                             (posn-y p2))))
                         (begin
                           (write '(funapp 1975 26))
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
                             (write '(funapp 1988 34))
                             (display "\n")
                             (block-x b1)))
                          (x8450
                           (begin
                             (write '(funapp 1988 55))
                             (display "\n")
                             (block-x b2))))
                         (begin
                           (write '(funapp 1989 26))
                           (display "\n")
                           (= x8451 x8450)))))
                      (if x-cnd8449
                        (letrec*
                         ((x8453
                           (begin
                             (write '(funapp 1992 34))
                             (display "\n")
                             (block-y b1)))
                          (x8452
                           (begin
                             (write '(funapp 1992 55))
                             (display "\n")
                             (block-y b2))))
                         (begin
                           (write '(funapp 1993 26))
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
                             (write '(funapp 2001 48))
                             (display "\n")
                             (block-x b))))
                         (begin
                           (write '(funapp 2001 62))
                           (display "\n")
                           (+ dx x8459))))
                       (x8456
                        (letrec*
                         ((x8457
                           (begin
                             (write '(funapp 2002 48))
                             (display "\n")
                             (block-y b))))
                         (begin
                           (write '(funapp 2002 62))
                           (display "\n")
                           (+ dy x8457))))
                       (x8455
                        (begin
                          (write '(funapp 2003 31))
                          (display "\n")
                          (block-color b))))
                      (begin
                        (write '(funapp 2004 23))
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
                             (write '(funapp 2013 34))
                             (display "\n")
                             (posn-x c)))
                          (x8468
                           (letrec*
                            ((x8470
                              (begin
                                (write '(funapp 2016 37))
                                (display "\n")
                                (posn-y c)))
                             (x8469
                              (begin
                                (write '(funapp 2016 56))
                                (display "\n")
                                (block-y b))))
                            (begin
                              (write '(funapp 2017 29))
                              (display "\n")
                              (- x8470 x8469)))))
                         (begin
                           (write '(funapp 2018 26))
                           (display "\n")
                           (+ x8471 x8468))))
                       (x8462
                        (letrec*
                         ((x8466
                           (begin
                             (write '(funapp 2021 34))
                             (display "\n")
                             (posn-y c)))
                          (x8463
                           (letrec*
                            ((x8465
                              (begin
                                (write '(funapp 2024 37))
                                (display "\n")
                                (block-x b)))
                             (x8464
                              (begin
                                (write '(funapp 2024 57))
                                (display "\n")
                                (posn-x c))))
                            (begin
                              (write '(funapp 2025 29))
                              (display "\n")
                              (- x8465 x8464)))))
                         (begin
                           (write '(funapp 2026 26))
                           (display "\n")
                           (+ x8466 x8463))))
                       (x8461
                        (begin
                          (write '(funapp 2027 31))
                          (display "\n")
                          (block-color b))))
                      (begin
                        (write '(funapp 2028 23))
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
                             (write '(funapp 2037 34))
                             (display "\n")
                             (block-rotate-ccw c b))))
                         (begin
                           (write '(funapp 2038 26))
                           (display "\n")
                           (block-rotate-ccw c x8474)))))
                      (begin
                        (write '(funapp 2039 23))
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
                          (write '(funapp 2046 35))
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
                                   (write '(funapp 2052 54))
                                   (display "\n")
                                   (car xs))))
                               (begin
                                 (write '(funapp 2052 65))
                                 (display "\n")
                                 (p? x8482))))
                             (x8479
                              (letrec*
                               ((x8480
                                 (begin
                                   (write '(funapp 2054 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 2054 59))
                                 (display "\n")
                                 (ormap p? x8480)))))
                            (begin
                              (write '(funapp 2055 29))
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
                          (write '(funapp 2063 35))
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
                                   (write '(funapp 2069 54))
                                   (display "\n")
                                   (car xs))))
                               (begin
                                 (write '(funapp 2069 65))
                                 (display "\n")
                                 (p? x8490))))
                             (x8487
                              (letrec*
                               ((x8488
                                 (begin
                                   (write '(funapp 2071 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 2071 59))
                                 (display "\n")
                                 (andmap p? x8488)))))
                            (begin
                              (write '(funapp 2072 29))
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
                          (write '(funapp 2080 35))
                          (display "\n")
                          (null? xs))))
                      (if x-cnd8492
                        (letrec* ((g8493 null)) g8493)
                        (letrec*
                         ((x-cnd8494
                           (letrec*
                            ((x8495
                              (begin
                                (write '(funapp 2084 55))
                                (display "\n")
                                (car xs))))
                            (begin
                              (write '(funapp 2084 66))
                              (display "\n")
                              (p? x8495)))))
                         (if x-cnd8494
                           (letrec*
                            ((g8496
                              (letrec*
                               ((x8499
                                 (begin
                                   (write '(funapp 2089 40))
                                   (display "\n")
                                   (car xs)))
                                (x8497
                                 (letrec*
                                  ((x8498
                                    (begin
                                      (write '(funapp 2092 43))
                                      (display "\n")
                                      (cdr xs))))
                                  (begin
                                    (write '(funapp 2093 35))
                                    (display "\n")
                                    (filter p? x8498)))))
                               (begin
                                 (write '(funapp 2094 32))
                                 (display "\n")
                                 (cons x8499 x8497)))))
                            g8496)
                           (letrec*
                            ((g8500
                              (letrec*
                               ((x8501
                                 (begin
                                   (write '(funapp 2098 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 2098 59))
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
                          (write '(funapp 2106 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8503
                        (letrec* ((g8504 r)) g8504)
                        (letrec*
                         ((g8505
                           (letrec*
                            ((x8508
                              (begin
                                (write '(funapp 2112 37))
                                (display "\n")
                                (car l)))
                             (x8506
                              (letrec*
                               ((x8507
                                 (begin
                                   (write '(funapp 2114 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 2114 58))
                                 (display "\n")
                                 (append x8507 r)))))
                            (begin
                              (write '(funapp 2115 29))
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
                          (write '(funapp 2123 35))
                          (display "\n")
                          (null? xs))))
                      (if x-cnd8510
                        (letrec* ((g8511 a)) g8511)
                        (letrec*
                         ((g8512
                           (letrec*
                            ((x8515
                              (begin
                                (write '(funapp 2129 37))
                                (display "\n")
                                (car xs)))
                             (x8513
                              (letrec*
                               ((x8514
                                 (begin
                                   (write '(funapp 2131 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 2131 59))
                                 (display "\n")
                                 (foldr f a x8514)))))
                            (begin
                              (write '(funapp 2132 29))
                              (display "\n")
                              (f x8515 x8513)))))
                         g8512)))))
                   g8509)))
               (blocks-contains?
                (lambda (bs b)
                  (letrec*
                   ((g8516
                     (begin
                       (write '(funapp 2139 22))
                       (display "\n")
                       (ormap
                        (lambda (c)
                          (letrec*
                           ((g8517
                             (begin
                               (write '(funapp 2140 52))
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
                       (write '(funapp 2147 22))
                       (display "\n")
                       (andmap
                        (lambda (b)
                          (letrec*
                           ((g8519
                             (begin
                               (write '(funapp 2149 42))
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
                          (write '(funapp 2157 35))
                          (display "\n")
                          (blocks-subset? bs1 bs2))))
                      (if x-cnd8521
                        (begin
                          (write '(funapp 2158 37))
                          (display "\n")
                          (blocks-subset? bs2 bs1))
                        #f))))
                   g8520)))
               (blocks-intersect
                (lambda (bs1 bs2)
                  (letrec*
                   ((g8522
                     (begin
                       (write '(funapp 2164 22))
                       (display "\n")
                       (filter
                        (lambda (b)
                          (letrec*
                           ((g8523
                             (begin
                               (write '(funapp 2166 42))
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
                       (write '(funapp 2170 47))
                       (display "\n")
                       (length bs))))
                   g8524)))
               (blocks-move
                (lambda (dx dy bs)
                  (letrec*
                   ((g8525
                     (begin
                       (write '(funapp 2175 22))
                       (display "\n")
                       (map
                        (lambda (b)
                          (letrec*
                           ((g8526
                             (begin
                               (write '(funapp 2177 42))
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
                       (write '(funapp 2184 22))
                       (display "\n")
                       (map
                        (lambda (b)
                          (letrec*
                           ((g8528
                             (begin
                               (write '(funapp 2186 42))
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
                       (write '(funapp 2193 22))
                       (display "\n")
                       (map
                        (lambda (b)
                          (letrec*
                           ((g8530
                             (begin
                               (write '(funapp 2195 42))
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
                       (write '(funapp 2202 22))
                       (display "\n")
                       (map
                        (lambda (b)
                          (letrec*
                           ((g8532
                             (letrec*
                              ((x8534
                                (begin
                                  (write '(funapp 2207 37))
                                  (display "\n")
                                  (block-x b)))
                               (x8533
                                (begin
                                  (write '(funapp 2207 57))
                                  (display "\n")
                                  (block-y b))))
                              (begin
                                (write '(funapp 2208 29))
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
                       (write '(funapp 2216 22))
                       (display "\n")
                       (filter
                        (lambda (b)
                          (letrec*
                           ((g8536
                             (letrec*
                              ((x8537
                                (begin
                                  (write '(funapp 2219 51))
                                  (display "\n")
                                  (block-y b))))
                              (begin
                                (write '(funapp 2219 65))
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
                             (write '(funapp 2230 34))
                             (display "\n")
                             (blocks-row bs i))))
                         (begin
                           (write '(funapp 2231 26))
                           (display "\n")
                           (blocks-count x8540)))))
                      (begin
                        (write '(funapp 2232 23))
                        (display "\n")
                        (= board-width x8539)))))
                   g8538)))
               (blocks-overflow?
                (lambda (bs)
                  (letrec*
                   ((g8541
                     (begin
                       (write '(funapp 2238 22))
                       (display "\n")
                       (ormap
                        (lambda (b)
                          (letrec*
                           ((g8542
                             (letrec*
                              ((x8543
                                (begin
                                  (write '(funapp 2241 51))
                                  (display "\n")
                                  (block-y b))))
                              (begin
                                (write '(funapp 2241 65))
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
                       (write '(funapp 2249 22))
                       (display "\n")
                       (foldr
                        (lambda (b bs)
                          (letrec*
                           ((g8545
                             (letrec*
                              ((x-cnd8546
                                (begin
                                  (write '(funapp 2254 41))
                                  (display "\n")
                                  (blocks-contains? bs b))))
                              (if x-cnd8546
                                (letrec* ((g8547 bs)) g8547)
                                (letrec*
                                 ((g8548
                                   (begin
                                     (write '(funapp 2257 48))
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
                       (write '(funapp 2266 22))
                       (display "\n")
                       (foldr
                        (lambda (b n)
                          (letrec*
                           ((g8550
                             (letrec*
                              ((x8551
                                (begin
                                  (write '(funapp 2270 45))
                                  (display "\n")
                                  (block-y b))))
                              (begin
                                (write '(funapp 2270 59))
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
                       (write '(funapp 2279 22))
                       (display "\n")
                       (foldr
                        (lambda (b n)
                          (letrec*
                           ((g8553
                             (letrec*
                              ((x8554
                                (begin
                                  (write '(funapp 2283 45))
                                  (display "\n")
                                  (block-x b))))
                              (begin
                                (write '(funapp 2283 59))
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
                       (write '(funapp 2292 22))
                       (display "\n")
                       (foldr
                        (lambda (b n)
                          (letrec*
                           ((g8556
                             (letrec*
                              ((x8557
                                (begin
                                  (write '(funapp 2296 45))
                                  (display "\n")
                                  (block-x b))))
                              (begin
                                (write '(funapp 2296 59))
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
                       (write '(funapp 2303 36))
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
                          (write '(funapp 2309 35))
                          (display "\n")
                          (< i 0))))
                      (if x-cnd8560
                        (letrec* ((g8561 empty)) g8561)
                        (letrec*
                         ((x-cnd8562
                           (begin
                             (write '(funapp 2313 38))
                             (display "\n")
                             (full-row? bs i))))
                         (if x-cnd8562
                           (letrec*
                            ((g8563
                              (letrec*
                               ((x8565
                                 (begin
                                   (write '(funapp 2318 40))
                                   (display "\n")
                                   (sub1 i)))
                                (x8564
                                 (begin
                                   (write '(funapp 2318 57))
                                   (display "\n")
                                   (add1 offset))))
                               (begin
                                 (write '(funapp 2319 32))
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
                                      (write '(funapp 2326 43))
                                      (display "\n")
                                      (sub1 i))))
                                  (begin
                                    (write '(funapp 2327 35))
                                    (display "\n")
                                    (elim-row bs x8570 offset))))
                                (x8567
                                 (letrec*
                                  ((x8568
                                    (begin
                                      (write '(funapp 2330 43))
                                      (display "\n")
                                      (blocks-row bs i))))
                                  (begin
                                    (write '(funapp 2331 35))
                                    (display "\n")
                                    (blocks-move 0 offset x8568)))))
                               (begin
                                 (write '(funapp 2332 32))
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
                                   (write '(funapp 2346 40))
                                   (display "\n")
                                   (tetra-center t))))
                               (begin
                                 (write '(funapp 2347 32))
                                 (display "\n")
                                 (posn-x x8580)))))
                            (begin
                              (write '(funapp 2348 29))
                              (display "\n")
                              (+ dx x8579))))
                          (x8575
                           (letrec*
                            ((x8576
                              (letrec*
                               ((x8577
                                 (begin
                                   (write '(funapp 2353 40))
                                   (display "\n")
                                   (tetra-center t))))
                               (begin
                                 (write '(funapp 2354 32))
                                 (display "\n")
                                 (posn-y x8577)))))
                            (begin
                              (write '(funapp 2355 29))
                              (display "\n")
                              (+ dy x8576)))))
                         (begin
                           (write '(funapp 2356 26))
                           (display "\n")
                           (posn x8578 x8575))))
                       (x8572
                        (letrec*
                         ((x8573
                           (begin
                             (write '(funapp 2359 34))
                             (display "\n")
                             (tetra-blocks t))))
                         (begin
                           (write '(funapp 2360 26))
                           (display "\n")
                           (blocks-move dx dy x8573)))))
                      (begin
                        (write '(funapp 2361 23))
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
                          (write '(funapp 2368 31))
                          (display "\n")
                          (tetra-center t)))
                       (x8582
                        (letrec*
                         ((x8584
                           (begin
                             (write '(funapp 2371 34))
                             (display "\n")
                             (tetra-center t)))
                          (x8583
                           (begin
                             (write '(funapp 2371 59))
                             (display "\n")
                             (tetra-blocks t))))
                         (begin
                           (write '(funapp 2372 26))
                           (display "\n")
                           (blocks-rotate-ccw x8584 x8583)))))
                      (begin
                        (write '(funapp 2373 23))
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
                          (write '(funapp 2380 31))
                          (display "\n")
                          (tetra-center t)))
                       (x8587
                        (letrec*
                         ((x8589
                           (begin
                             (write '(funapp 2383 34))
                             (display "\n")
                             (tetra-center t)))
                          (x8588
                           (begin
                             (write '(funapp 2383 59))
                             (display "\n")
                             (tetra-blocks t))))
                         (begin
                           (write '(funapp 2384 26))
                           (display "\n")
                           (blocks-rotate-cw x8589 x8588)))))
                      (begin
                        (write '(funapp 2385 23))
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
                                (write '(funapp 2396 37))
                                (display "\n")
                                (tetra-blocks t))))
                            (begin
                              (write '(funapp 2397 29))
                              (display "\n")
                              (blocks-intersect x8594 bs)))))
                         (begin
                           (write '(funapp 2398 26))
                           (display "\n")
                           (false? x8593)))))
                      (begin
                        (write '(funapp 2399 23))
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
                          (write '(funapp 2406 31))
                          (display "\n")
                          (tetra-center t)))
                       (x8596
                        (letrec*
                         ((x8597
                           (begin
                             (write '(funapp 2409 34))
                             (display "\n")
                             (tetra-blocks t))))
                         (begin
                           (write '(funapp 2410 26))
                           (display "\n")
                           (blocks-change-color x8597 c)))))
                      (begin
                        (write '(funapp 2411 23))
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
                             (write '(funapp 2420 34))
                             (display "\n")
                             (posn xc yc)))
                          (x8601
                           (letrec*
                            ((x8605
                              (begin
                                (write '(funapp 2423 37))
                                (display "\n")
                                (block x1 y1 color)))
                             (x8604
                              (begin
                                (write '(funapp 2424 37))
                                (display "\n")
                                (block x2 y2 color)))
                             (x8603
                              (begin
                                (write '(funapp 2425 37))
                                (display "\n")
                                (block x3 y3 color)))
                             (x8602
                              (begin
                                (write '(funapp 2426 37))
                                (display "\n")
                                (block x4 y4 color))))
                            (begin
                              (write '(funapp 2427 29))
                              (display "\n")
                              (list x8605 x8604 x8603 x8602)))))
                         (begin
                           (write '(funapp 2428 26))
                           (display "\n")
                           (tetra x8606 x8601)))))
                      (begin
                        (write '(funapp 2429 23))
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
                          (write '(funapp 2436 31))
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
                                   (write '(funapp 2443 40))
                                   (display "\n")
                                   (world-tetra w))))
                               (begin
                                 (write '(funapp 2444 32))
                                 (display "\n")
                                 (tetra-blocks x8612))))
                             (x8610
                              (begin
                                (write '(funapp 2445 37))
                                (display "\n")
                                (world-blocks w))))
                            (begin
                              (write '(funapp 2446 29))
                              (display "\n")
                              (blocks-union x8611 x8610)))))
                         (begin
                           (write '(funapp 2447 26))
                           (display "\n")
                           (eliminate-full-rows x8609)))))
                      (begin
                        (write '(funapp 2448 23))
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
                          (write '(funapp 2455 35))
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
                                      (write '(funapp 2465 43))
                                      (display "\n")
                                      (world-tetra w))))
                                  (begin
                                    (write '(funapp 2466 35))
                                    (display "\n")
                                    (tetra-move 0 1 x8621))))
                                (x8619
                                 (begin
                                   (write '(funapp 2467 40))
                                   (display "\n")
                                   (world-blocks w))))
                               (begin
                                 (write '(funapp 2468 32))
                                 (display "\n")
                                 (world x8620 x8619)))))
                            (begin
                              (write '(funapp 2469 29))
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
                             (write '(funapp 2479 34))
                             (display "\n")
                             (world-tetra w))))
                         (begin
                           (write '(funapp 2480 26))
                           (display "\n")
                           (tetra-move 0 1 x8625))))
                       (x8623
                        (begin
                          (write '(funapp 2481 31))
                          (display "\n")
                          (world-blocks w))))
                      (begin
                        (write '(funapp 2482 23))
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
                                (write '(funapp 2493 37))
                                (display "\n")
                                (world-tetra w))))
                            (begin
                              (write '(funapp 2494 29))
                              (display "\n")
                              (tetra-blocks x8630)))))
                         (begin
                           (write '(funapp 2495 26))
                           (display "\n")
                           (blocks-max-y x8629))))
                       (x8627
                        (begin
                          (write '(funapp 2496 31))
                          (display "\n")
                          (sub1 board-height))))
                      (begin
                        (write '(funapp 2497 23))
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
                          (write '(funapp 2504 33))
                          (display "\n")
                          (landed-on-blocks? w))))
                      (letrec*
                       ((g8632
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 2506 52))
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
                          (write '(funapp 2514 35))
                          (display "\n")
                          (landed? w))))
                      (if x-cnd8634
                        (letrec*
                         ((g8635
                           (begin
                             (write '(funapp 2516 42))
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
                                   (write '(funapp 2522 40))
                                   (display "\n")
                                   (world-tetra w))))
                               (begin
                                 (write '(funapp 2523 32))
                                 (display "\n")
                                 (tetra-move 0 1 x8639))))
                             (x8637
                              (begin
                                (write '(funapp 2524 37))
                                (display "\n")
                                (world-blocks w))))
                            (begin
                              (write '(funapp 2525 29))
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
                                   (write '(funapp 2539 40))
                                   (display "\n")
                                   (tetra-blocks new-tetra))))
                               (begin
                                 (write '(funapp 2540 32))
                                 (display "\n")
                                 (blocks-min-x x8649)))))
                            (begin
                              (write '(funapp 2541 29))
                              (display "\n")
                              (< x8648 0))))
                          (x8644
                           (letrec*
                            ((x8645
                              (letrec*
                               ((x8646
                                 (begin
                                   (write '(funapp 2546 40))
                                   (display "\n")
                                   (tetra-blocks new-tetra))))
                               (begin
                                 (write '(funapp 2547 32))
                                 (display "\n")
                                 (blocks-max-x x8646)))))
                            (begin
                              (write '(funapp 2548 29))
                              (display "\n")
                              (>= x8645 board-width))))
                          (x8642
                           (letrec*
                            ((x8643
                              (begin
                                (write '(funapp 2551 37))
                                (display "\n")
                                (world-blocks w))))
                            (begin
                              (write '(funapp 2552 29))
                              (display "\n")
                              (tetra-overlaps-blocks? new-tetra x8643)))))
                         (begin
                           (write '(funapp 2553 26))
                           (display "\n")
                           (or x8647 x8644 x8642)))))
                      (if x-cnd8641
                        (letrec* ((g8650 w)) g8650)
                        (letrec*
                         ((g8651
                           (letrec*
                            ((x8652
                              (begin
                                (write '(funapp 2559 37))
                                (display "\n")
                                (world-blocks w))))
                            (begin
                              (write '(funapp 2560 29))
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
                             (write '(funapp 2570 34))
                             (display "\n")
                             (world-tetra w))))
                         (begin
                           (write '(funapp 2571 26))
                           (display "\n")
                           (tetra-move dx dy x8655)))))
                      (begin
                        (write '(funapp 2572 23))
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
                             (write '(funapp 2581 34))
                             (display "\n")
                             (world-tetra w))))
                         (begin
                           (write '(funapp 2582 26))
                           (display "\n")
                           (tetra-rotate-ccw x8658)))))
                      (begin
                        (write '(funapp 2583 23))
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
                             (write '(funapp 2592 34))
                             (display "\n")
                             (world-tetra w))))
                         (begin
                           (write '(funapp 2593 26))
                           (display "\n")
                           (tetra-rotate-cw x8661)))))
                      (begin
                        (write '(funapp 2594 23))
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
                                (write '(funapp 2605 37))
                                (display "\n")
                                (world-jump-down w))))
                            (begin
                              (write '(funapp 2606 29))
                              (display "\n")
                              (world-tetra x8665)))))
                         (begin
                           (write '(funapp 2607 26))
                           (display "\n")
                           (tetra-change-color
                            x8664
                            (begin
                              (write '(funapp 2607 51))
                              (display "\n")
                              'gray))))))
                      (begin
                        (write '(funapp 2608 23))
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
                          (write '(funapp 2615 35))
                          (display "\n")
                          (equal? k "left"))))
                      (if x-cnd8667
                        (letrec*
                         ((g8668
                           (begin
                             (write '(funapp 2617 42))
                             (display "\n")
                             (world-move neg-1 0 w))))
                         g8668)
                        (letrec*
                         ((x-cnd8669
                           (begin
                             (write '(funapp 2619 38))
                             (display "\n")
                             (equal? k "right"))))
                         (if x-cnd8669
                           (letrec*
                            ((g8670
                              (begin
                                (write '(funapp 2621 45))
                                (display "\n")
                                (world-move 1 0 w))))
                            g8670)
                           (letrec*
                            ((x-cnd8671
                              (begin
                                (write '(funapp 2623 41))
                                (display "\n")
                                (equal? k "down"))))
                            (if x-cnd8671
                              (letrec*
                               ((g8672
                                 (begin
                                   (write '(funapp 2625 48))
                                   (display "\n")
                                   (world-jump-down w))))
                               g8672)
                              (letrec*
                               ((x-cnd8673
                                 (begin
                                   (write '(funapp 2627 44))
                                   (display "\n")
                                   (equal? k "a"))))
                               (if x-cnd8673
                                 (letrec*
                                  ((g8674
                                    (begin
                                      (write '(funapp 2629 51))
                                      (display "\n")
                                      (world-rotate-ccw w))))
                                  g8674)
                                 (letrec*
                                  ((x-cnd8675
                                    (begin
                                      (write '(funapp 2631 47))
                                      (display "\n")
                                      (equal? k "s"))))
                                  (if x-cnd8675
                                    (letrec*
                                     ((g8676
                                       (begin
                                         (write '(funapp 2634 46))
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
                       (write '(funapp 2639 45))
                       (display "\n")
                       (orig-cons
                        (begin (write '(funapp 2639 55)) (display "\n") 'image)
                        (begin
                          (write '(funapp 2639 62))
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
                          (write '(funapp 2644 39))
                          (display "\n")
                          (car image7769))))
                      (begin
                        (write '(funapp 2644 57))
                        (display "\n")
                        (eq?
                         x8680
                         (begin
                           (write '(funapp 2644 67))
                           (display "\n")
                           'image))))))
                   g8679)))
               (image/c
                (lambda (j7421 k7422 v7420)
                  (letrec*
                   ((g8681
                     (begin
                       (write '(funapp 2648 36))
                       (display "\n")
                       (cons
                        image
                        (begin
                          (write '(funapp 2648 47))
                          (display "\n")
                          '())))))
                   g8681)))
               (overlay
                (lambda (i₁ i₂)
                  (letrec*
                   ((g8682
                     (begin (write '(funapp 2649 58)) (display "\n") (image))))
                   g8682)))
               (circle
                (lambda (r m c)
                  (letrec*
                   ((g8683
                     (begin (write '(funapp 2650 57)) (display "\n") (image))))
                   g8683)))
               (rectangle
                (lambda (w h m c)
                  (letrec*
                   ((g8684
                     (begin (write '(funapp 2651 62)) (display "\n") (image))))
                   g8684)))
               (place-image
                (lambda (i₁ r c i₂)
                  (letrec*
                   ((g8685
                     (begin (write '(funapp 2653 54)) (display "\n") (image))))
                   g8685)))
               (empty-scene
                (lambda (w h)
                  (letrec*
                   ((g8686
                     (begin (write '(funapp 2654 60)) (display "\n") (image))))
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
                             (write '(funapp 2660 52))
                             (display "\n")
                             (cdr xs))))
                         (begin
                           (write '(funapp 2660 63))
                           (display "\n")
                           (null? x8689)))))
                      (if x-cnd8688
                        (letrec*
                         ((g8690
                           (begin
                             (write '(funapp 2662 42))
                             (display "\n")
                             (car xs))))
                         g8690)
                        (letrec*
                         ((g8691
                           (letrec*
                            ((x8692
                              (begin
                                (write '(funapp 2666 37))
                                (display "\n")
                                (cdr xs))))
                            (begin
                              (write '(funapp 2667 29))
                              (display "\n")
                              (list-pick-random x8692)))))
                         g8691)))))
                   g8687)))
               (neg-1
                (begin (write '(funapp 2670 23)) (display "\n") (random 10)))
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
                                   (write '(funapp 2682 40))
                                   (display "\n")
                                   (world-tetra w))))
                               (begin
                                 (write '(funapp 2683 32))
                                 (display "\n")
                                 (tetra-blocks x8703))))
                             (x8699
                              (letrec*
                               ((x8701
                                 (begin
                                   (write '(funapp 2686 40))
                                   (display "\n")
                                   (ghost-blocks w)))
                                (x8700
                                 (begin
                                   (write '(funapp 2687 40))
                                   (display "\n")
                                   (world-blocks w))))
                               (begin
                                 (write '(funapp 2688 32))
                                 (display "\n")
                                 (append x8701 x8700)))))
                            (begin
                              (write '(funapp 2689 29))
                              (display "\n")
                              (append x8702 x8699)))))
                         (begin
                           (write '(funapp 2690 26))
                           (display "\n")
                           (blocks->image x8698))))
                       (x8694
                        (letrec*
                         ((x8696
                           (begin
                             (write '(funapp 2693 34))
                             (display "\n")
                             (* board-width block-size)))
                          (x8695
                           (begin
                             (write '(funapp 2694 34))
                             (display "\n")
                             (* board-height block-size))))
                         (begin
                           (write '(funapp 2695 26))
                           (display "\n")
                           (empty-scene x8696 x8695)))))
                      (begin
                        (write '(funapp 2696 23))
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
                                (write '(funapp 2707 37))
                                (display "\n")
                                (* board-width block-size))))
                            (begin
                              (write '(funapp 2708 29))
                              (display "\n")
                              (add1 x8709))))
                          (x8706
                           (letrec*
                            ((x8707
                              (begin
                                (write '(funapp 2711 37))
                                (display "\n")
                                (* board-height block-size))))
                            (begin
                              (write '(funapp 2712 29))
                              (display "\n")
                              (add1 x8707)))))
                         (begin
                           (write '(funapp 2713 26))
                           (display "\n")
                           (empty-scene x8708 x8706)))))
                      (begin
                        (write '(funapp 2714 23))
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
                                      (write '(funapp 2720 49))
                                      (display "\n")
                                      (block-y b))))
                                  (begin
                                    (write '(funapp 2720 63))
                                    (display "\n")
                                    (<= 0 x8712)))))
                               (if x-cnd8711
                                 (letrec*
                                  ((g8713
                                    (begin
                                      (write '(funapp 2722 49))
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
                             (write '(funapp 2735 34))
                             (display "\n")
                             (add1 block-size)))
                          (x8721
                           (begin
                             (write '(funapp 2736 34))
                             (display "\n")
                             (add1 block-size)))
                          (x8720
                           (begin
                             (write '(funapp 2737 34))
                             (display "\n")
                             (block-color b))))
                         (begin
                           (write '(funapp 2738 26))
                           (display "\n")
                           (rectangle
                            x8722
                            x8721
                            (begin
                              (write '(funapp 2738 48))
                              (display "\n")
                              'solid)
                            x8720))))
                       (x8716
                        (letrec*
                         ((x8718
                           (begin
                             (write '(funapp 2741 34))
                             (display "\n")
                             (add1 block-size)))
                          (x8717
                           (begin
                             (write '(funapp 2741 60))
                             (display "\n")
                             (add1 block-size))))
                         (begin
                           (write '(funapp 2742 26))
                           (display "\n")
                           (rectangle
                            x8718
                            x8717
                            (begin
                              (write '(funapp 2742 48))
                              (display "\n")
                              'outline)
                            (begin
                              (write '(funapp 2742 57))
                              (display "\n")
                              'black))))))
                      (begin
                        (write '(funapp 2743 23))
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
                          (write '(funapp 2750 31))
                          (display "\n")
                          (block->image b)))
                       (x8728
                        (letrec*
                         ((x8730
                           (letrec*
                            ((x8731
                              (begin
                                (write '(funapp 2755 37))
                                (display "\n")
                                (block-x b))))
                            (begin
                              (write '(funapp 2756 29))
                              (display "\n")
                              (* x8731 block-size))))
                          (x8729
                           (begin
                             (write '(funapp 2757 34))
                             (display "\n")
                             (/ block-size 2))))
                         (begin
                           (write '(funapp 2758 26))
                           (display "\n")
                           (+ x8730 x8729))))
                       (x8724
                        (letrec*
                         ((x8726
                           (letrec*
                            ((x8727
                              (begin
                                (write '(funapp 2763 37))
                                (display "\n")
                                (block-y b))))
                            (begin
                              (write '(funapp 2764 29))
                              (display "\n")
                              (* x8727 block-size))))
                          (x8725
                           (begin
                             (write '(funapp 2765 34))
                             (display "\n")
                             (/ block-size 2))))
                         (begin
                           (write '(funapp 2766 26))
                           (display "\n")
                           (+ x8726 x8725)))))
                      (begin
                        (write '(funapp 2767 23))
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
                          (write '(funapp 2774 31))
                          (display "\n")
                          (list-pick-random tetras))))
                      (begin
                        (write '(funapp 2775 23))
                        (display "\n")
                        (world x8734 null)))))
                   g8733))))
              (letrec*
               ((g8735
                 (begin
                   (write '(funapp 2779 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 2780 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8746
                          (letrec*
                           ((xj7424
                             (begin
                               (write '(funapp 2784 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2784 37))
                                  (display "\n")
                                  'module))))
                            (xk7425
                             (begin
                               (write '(funapp 2784 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2784 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8747
                              (begin
                                (write '(funapp 2787 27))
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
                                                   (write '(funapp 2796 50))
                                                   (display "\n")
                                                   (POSN/C j7428 k7429 g7426)))
                                                (x8751
                                                 (begin
                                                   (write '(funapp 2797 50))
                                                   (display "\n")
                                                   (POSN/C
                                                    j7428
                                                    k7429
                                                    g7427))))
                                               (begin
                                                 (write '(funapp 2798 42))
                                                 (display "\n")
                                                 (f7430 x8752 x8751)))))
                                            (begin
                                              (write '(funapp 2799 39))
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
                                   (write '(funapp 2812 56))
                                   (display "\n")
                                   (cons
                                    x8744
                                    (begin
                                      (write '(funapp 2812 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2813 27))
                                (display "\n")
                                (cons x8745 x8743)))))
                           (begin
                             (write '(funapp 2814 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2814 29))
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
                                   (write '(funapp 2821 56))
                                   (display "\n")
                                   (cons
                                    x8739
                                    (begin
                                      (write '(funapp 2821 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2822 27))
                                (display "\n")
                                (cons x8740 x8738)))))
                           (begin
                             (write '(funapp 2823 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2823 29))
                                (display "\n")
                                'posn)
                              x8737)))))
                        (begin
                          (write '(funapp 2824 21))
                          (display "\n")
                          (x8746 x8741 x8736)))
                       (letrec*
                        ((xj7431
                          (begin
                            (write '(funapp 2826 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2826 34))
                               (display "\n")
                               'module))))
                         (xk7432
                          (begin
                            (write '(funapp 2826 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2826 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8753
                           (begin
                             (write '(funapp 2827 38))
                             (display "\n")
                             (any/c xj7431 xk7432 COLOR/C))))
                         g8753))
                       (letrec*
                        ((xj7433
                          (begin
                            (write '(funapp 2829 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2829 34))
                               (display "\n")
                               'module))))
                         (xk7434
                          (begin
                            (write '(funapp 2829 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2829 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8754
                           (begin
                             (write '(funapp 2830 38))
                             (display "\n")
                             (any/c xj7433 xk7434 POSN/C))))
                         g8754))
                       (letrec*
                        ((xj7435
                          (begin
                            (write '(funapp 2832 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2832 34))
                               (display "\n")
                               'module))))
                         (xk7436
                          (begin
                            (write '(funapp 2832 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2832 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8755
                           (begin
                             (write '(funapp 2833 38))
                             (display "\n")
                             (any/c xj7435 xk7436 BLOCK/C))))
                         g8755))
                       (letrec*
                        ((xj7437
                          (begin
                            (write '(funapp 2835 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2835 34))
                               (display "\n")
                               'module))))
                         (xk7438
                          (begin
                            (write '(funapp 2835 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2835 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8756
                           (begin
                             (write '(funapp 2836 38))
                             (display "\n")
                             (any/c xj7437 xk7438 TETRA/C))))
                         g8756))
                       (letrec*
                        ((xj7439
                          (begin
                            (write '(funapp 2838 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2838 34))
                               (display "\n")
                               'module))))
                         (xk7440
                          (begin
                            (write '(funapp 2838 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2838 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8757
                           (begin
                             (write '(funapp 2839 38))
                             (display "\n")
                             (any/c xj7439 xk7440 WORLD/C))))
                         g8757))
                       (letrec*
                        ((xj7441
                          (begin
                            (write '(funapp 2841 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2841 34))
                               (display "\n")
                               'module))))
                         (xk7442
                          (begin
                            (write '(funapp 2841 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2841 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8758
                           (begin
                             (write '(funapp 2842 38))
                             (display "\n")
                             (any/c xj7441 xk7442 BSET/C))))
                         g8758))
                       (letrec*
                        ((xj7443
                          (begin
                            (write '(funapp 2844 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2844 34))
                               (display "\n")
                               'module))))
                         (xk7444
                          (begin
                            (write '(funapp 2844 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2844 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8759
                           (begin
                             (write '(funapp 2846 30))
                             (display "\n")
                             (integer?/c xj7443 xk7444 block-size))))
                         g8759))
                       (letrec*
                        ((xj7445
                          (begin
                            (write '(funapp 2849 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2849 34))
                               (display "\n")
                               'module))))
                         (xk7446
                          (begin
                            (write '(funapp 2849 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2849 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8760
                           (begin
                             (write '(funapp 2851 30))
                             (display "\n")
                             (integer?/c xj7445 xk7446 board-width))))
                         g8760))
                       (letrec*
                        ((xj7447
                          (begin
                            (write '(funapp 2854 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2854 34))
                               (display "\n")
                               'module))))
                         (xk7448
                          (begin
                            (write '(funapp 2854 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 2854 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8761
                           (begin
                             (write '(funapp 2856 30))
                             (display "\n")
                             (integer?/c xj7447 xk7448 board-height))))
                         g8761))
                       (letrec*
                        ((x8774
                          (letrec*
                           ((xj7449
                             (begin
                               (write '(funapp 2861 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2861 37))
                                  (display "\n")
                                  'module))))
                            (xk7450
                             (begin
                               (write '(funapp 2861 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2861 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8775
                              (begin
                                (write '(funapp 2864 27))
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
                                                   (write '(funapp 2873 50))
                                                   (display "\n")
                                                   (POSN/C j7453 k7454 g7451)))
                                                (x8779
                                                 (begin
                                                   (write '(funapp 2874 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7453
                                                    k7454
                                                    g7452))))
                                               (begin
                                                 (write '(funapp 2875 42))
                                                 (display "\n")
                                                 (f7455 x8780 x8779)))))
                                            (begin
                                              (write '(funapp 2876 39))
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
                                   (write '(funapp 2889 56))
                                   (display "\n")
                                   (cons
                                    x8772
                                    (begin
                                      (write '(funapp 2889 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2890 27))
                                (display "\n")
                                (cons x8773 x8771)))))
                           (begin
                             (write '(funapp 2891 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2891 29))
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
                                      (write '(funapp 2901 59))
                                      (display "\n")
                                      (cons
                                       x8766
                                       (begin
                                         (write '(funapp 2901 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 2902 30))
                                   (display "\n")
                                   (cons x8767 x8765)))))
                              (begin
                                (write '(funapp 2903 27))
                                (display "\n")
                                (cons x8768 x8764)))))
                           (begin
                             (write '(funapp 2904 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2904 29))
                                (display "\n")
                                'block)
                              x8763)))))
                        (begin
                          (write '(funapp 2905 21))
                          (display "\n")
                          (x8774 x8769 x8762)))
                       (letrec*
                        ((x8793
                          (letrec*
                           ((xj7456
                             (begin
                               (write '(funapp 2909 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2909 37))
                                  (display "\n")
                                  'module))))
                            (xk7457
                             (begin
                               (write '(funapp 2909 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2909 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8794
                              (begin
                                (write '(funapp 2912 27))
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
                                                   (write '(funapp 2921 50))
                                                   (display "\n")
                                                   (POSN/C j7460 k7461 g7458)))
                                                (x8798
                                                 (begin
                                                   (write '(funapp 2922 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7460
                                                    k7461
                                                    g7459))))
                                               (begin
                                                 (write '(funapp 2923 42))
                                                 (display "\n")
                                                 (f7462 x8799 x8798)))))
                                            (begin
                                              (write '(funapp 2924 39))
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
                                   (write '(funapp 2937 56))
                                   (display "\n")
                                   (cons
                                    x8791
                                    (begin
                                      (write '(funapp 2937 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 2938 27))
                                (display "\n")
                                (cons x8792 x8790)))))
                           (begin
                             (write '(funapp 2939 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2939 29))
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
                                      (write '(funapp 2949 59))
                                      (display "\n")
                                      (cons
                                       x8785
                                       (begin
                                         (write '(funapp 2949 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 2950 30))
                                   (display "\n")
                                   (cons x8786 x8784)))))
                              (begin
                                (write '(funapp 2951 27))
                                (display "\n")
                                (cons x8787 x8783)))))
                           (begin
                             (write '(funapp 2952 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2952 29))
                                (display "\n")
                                'block)
                              x8782)))))
                        (begin
                          (write '(funapp 2953 21))
                          (display "\n")
                          (x8793 x8788 x8781)))
                       (letrec*
                        ((x8814
                          (letrec*
                           ((xj7463
                             (begin
                               (write '(funapp 2957 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2957 37))
                                  (display "\n")
                                  'module))))
                            (xk7464
                             (begin
                               (write '(funapp 2957 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 2957 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8815
                              (begin
                                (write '(funapp 2960 27))
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
                                                   (write '(funapp 2969 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7467
                                                    k7468
                                                    g7465)))
                                                (x8819
                                                 (begin
                                                   (write '(funapp 2970 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7467
                                                    k7468
                                                    g7466))))
                                               (begin
                                                 (write '(funapp 2971 42))
                                                 (display "\n")
                                                 (f7469 x8820 x8819)))))
                                            (begin
                                              (write '(funapp 2972 39))
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
                                      (write '(funapp 2988 59))
                                      (display "\n")
                                      (cons
                                       x8811
                                       (begin
                                         (write '(funapp 2988 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 2989 30))
                                   (display "\n")
                                   (cons x8812 x8810)))))
                              (begin
                                (write '(funapp 2990 27))
                                (display "\n")
                                (cons x8813 x8809)))))
                           (begin
                             (write '(funapp 2991 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 2991 29))
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
                                      (write '(funapp 3001 59))
                                      (display "\n")
                                      (cons
                                       x8804
                                       (begin
                                         (write '(funapp 3001 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 3002 30))
                                   (display "\n")
                                   (cons x8805 x8803)))))
                              (begin
                                (write '(funapp 3003 27))
                                (display "\n")
                                (cons x8806 x8802)))))
                           (begin
                             (write '(funapp 3004 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3004 29))
                                (display "\n")
                                'block)
                              x8801)))))
                        (begin
                          (write '(funapp 3005 21))
                          (display "\n")
                          (x8814 x8807 x8800)))
                       (letrec*
                        ((x8830
                          (letrec*
                           ((xj7470
                             (begin
                               (write '(funapp 3009 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3009 37))
                                  (display "\n")
                                  'module))))
                            (xk7471
                             (begin
                               (write '(funapp 3009 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3009 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8831
                              (begin
                                (write '(funapp 3012 27))
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
                                                   (write '(funapp 3021 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7475
                                                    k7476
                                                    g7472)))
                                                (x8836
                                                 (begin
                                                   (write '(funapp 3022 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7475
                                                    k7476
                                                    g7473)))
                                                (x8835
                                                 (begin
                                                   (write '(funapp 3023 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7475
                                                    k7476
                                                    g7474))))
                                               (begin
                                                 (write '(funapp 3024 42))
                                                 (display "\n")
                                                 (f7477 x8837 x8836 x8835)))))
                                            (begin
                                              (write '(funapp 3025 39))
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
                                      (write '(funapp 3043 59))
                                      (display "\n")
                                      (cons
                                       x8825
                                       (begin
                                         (write '(funapp 3043 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 3044 30))
                                   (display "\n")
                                   (cons x8826 x8824)))))
                              (begin
                                (write '(funapp 3045 27))
                                (display "\n")
                                (cons x8827 x8823)))))
                           (begin
                             (write '(funapp 3046 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3046 29))
                                (display "\n")
                                'block)
                              x8822)))))
                        (begin
                          (write '(funapp 3047 21))
                          (display "\n")
                          (x8830 x8829 x8828 x8821)))
                       (letrec*
                        ((x8846
                          (letrec*
                           ((xj7478
                             (begin
                               (write '(funapp 3051 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3051 37))
                                  (display "\n")
                                  'module))))
                            (xk7479
                             (begin
                               (write '(funapp 3051 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3051 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8847
                              (begin
                                (write '(funapp 3054 27))
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
                                                   (write '(funapp 3063 50))
                                                   (display "\n")
                                                   (BSET/C j7482 k7483 g7480)))
                                                (x8851
                                                 (begin
                                                   (write '(funapp 3064 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7482
                                                    k7483
                                                    g7481))))
                                               (begin
                                                 (write '(funapp 3065 42))
                                                 (display "\n")
                                                 (f7484 x8852 x8851)))))
                                            (begin
                                              (write '(funapp 3066 39))
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
                                      (write '(funapp 3083 59))
                                      (display "\n")
                                      (cons
                                       x8842
                                       (begin
                                         (write '(funapp 3083 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 3084 30))
                                   (display "\n")
                                   (cons x8843 x8841)))))
                              (begin
                                (write '(funapp 3085 27))
                                (display "\n")
                                (cons x8844 x8840)))))
                           (begin
                             (write '(funapp 3086 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3086 29))
                                (display "\n")
                                'block)
                              x8839)))))
                        (begin
                          (write '(funapp 3087 21))
                          (display "\n")
                          (x8846 x8845 x8838)))
                       (letrec*
                        ((x8855
                          (letrec*
                           ((xj7485
                             (begin
                               (write '(funapp 3091 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3091 37))
                                  (display "\n")
                                  'module))))
                            (xk7486
                             (begin
                               (write '(funapp 3091 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3091 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8856
                              (begin
                                (write '(funapp 3094 27))
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
                                                   (write '(funapp 3103 50))
                                                   (display "\n")
                                                   (BSET/C j7489 k7490 g7487)))
                                                (x8860
                                                 (begin
                                                   (write '(funapp 3104 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7489
                                                    k7490
                                                    g7488))))
                                               (begin
                                                 (write '(funapp 3105 42))
                                                 (display "\n")
                                                 (f7491 x8861 x8860)))))
                                            (begin
                                              (write '(funapp 3106 39))
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
                          (write '(funapp 3115 21))
                          (display "\n")
                          (x8855 x8854 x8853)))
                       (letrec*
                        ((x8864
                          (letrec*
                           ((xj7492
                             (begin
                               (write '(funapp 3119 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3119 37))
                                  (display "\n")
                                  'module))))
                            (xk7493
                             (begin
                               (write '(funapp 3119 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3119 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8865
                              (begin
                                (write '(funapp 3122 27))
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
                                                   (write '(funapp 3131 50))
                                                   (display "\n")
                                                   (BSET/C j7496 k7497 g7494)))
                                                (x8869
                                                 (begin
                                                   (write '(funapp 3132 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7496
                                                    k7497
                                                    g7495))))
                                               (begin
                                                 (write '(funapp 3133 42))
                                                 (display "\n")
                                                 (f7498 x8870 x8869)))))
                                            (begin
                                              (write '(funapp 3134 39))
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
                          (write '(funapp 3143 21))
                          (display "\n")
                          (x8864 x8863 x8862)))
                       (letrec*
                        ((x8873
                          (letrec*
                           ((xj7499
                             (begin
                               (write '(funapp 3147 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3147 37))
                                  (display "\n")
                                  'module))))
                            (xk7500
                             (begin
                               (write '(funapp 3147 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3147 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8874
                              (begin
                                (write '(funapp 3150 27))
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
                                                   (write '(funapp 3159 50))
                                                   (display "\n")
                                                   (BSET/C j7503 k7504 g7501)))
                                                (x8878
                                                 (begin
                                                   (write '(funapp 3160 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7503
                                                    k7504
                                                    g7502))))
                                               (begin
                                                 (write '(funapp 3161 42))
                                                 (display "\n")
                                                 (f7505 x8879 x8878)))))
                                            (begin
                                              (write '(funapp 3162 39))
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
                          (write '(funapp 3171 21))
                          (display "\n")
                          (x8873 x8872 x8871)))
                       (letrec*
                        ((x8881
                          (letrec*
                           ((xj7506
                             (begin
                               (write '(funapp 3175 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3175 37))
                                  (display "\n")
                                  'module))))
                            (xk7507
                             (begin
                               (write '(funapp 3175 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3175 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8882
                              (begin
                                (write '(funapp 3178 27))
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
                                                   (write '(funapp 3187 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7509
                                                    k7510
                                                    g7508))))
                                               (begin
                                                 (write '(funapp 3188 42))
                                                 (display "\n")
                                                 (f7511 x8886)))))
                                            (begin
                                              (write '(funapp 3189 39))
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
                          (write '(funapp 3197 21))
                          (display "\n")
                          (x8881 x8880)))
                       (letrec*
                        ((x8888
                          (letrec*
                           ((xj7512
                             (begin
                               (write '(funapp 3201 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3201 37))
                                  (display "\n")
                                  'module))))
                            (xk7513
                             (begin
                               (write '(funapp 3201 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3201 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8889
                              (begin
                                (write '(funapp 3204 27))
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
                                                   (write '(funapp 3213 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7515
                                                    k7516
                                                    g7514))))
                                               (begin
                                                 (write '(funapp 3214 42))
                                                 (display "\n")
                                                 (f7517 x8893)))))
                                            (begin
                                              (write '(funapp 3215 39))
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
                          (write '(funapp 3223 21))
                          (display "\n")
                          (x8888 x8887)))
                       (letrec*
                        ((x8897
                          (letrec*
                           ((xj7518
                             (begin
                               (write '(funapp 3227 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3227 37))
                                  (display "\n")
                                  'module))))
                            (xk7519
                             (begin
                               (write '(funapp 3227 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3227 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8898
                              (begin
                                (write '(funapp 3230 27))
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
                                                   (write '(funapp 3239 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7523
                                                    k7524
                                                    g7520)))
                                                (x8903
                                                 (begin
                                                   (write '(funapp 3240 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7523
                                                    k7524
                                                    g7521)))
                                                (x8902
                                                 (begin
                                                   (write '(funapp 3241 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7523
                                                    k7524
                                                    g7522))))
                                               (begin
                                                 (write '(funapp 3242 42))
                                                 (display "\n")
                                                 (f7525 x8904 x8903 x8902)))))
                                            (begin
                                              (write '(funapp 3243 39))
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
                          (write '(funapp 3253 21))
                          (display "\n")
                          (x8897 x8896 x8895 x8894)))
                       (letrec*
                        ((x8911
                          (letrec*
                           ((xj7526
                             (begin
                               (write '(funapp 3257 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3257 37))
                                  (display "\n")
                                  'module))))
                            (xk7527
                             (begin
                               (write '(funapp 3257 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3257 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8912
                              (begin
                                (write '(funapp 3260 27))
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
                                                   (write '(funapp 3269 50))
                                                   (display "\n")
                                                   (POSN/C j7530 k7531 g7528)))
                                                (x8916
                                                 (begin
                                                   (write '(funapp 3270 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7530
                                                    k7531
                                                    g7529))))
                                               (begin
                                                 (write '(funapp 3271 42))
                                                 (display "\n")
                                                 (f7532 x8917 x8916)))))
                                            (begin
                                              (write '(funapp 3272 39))
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
                                   (write '(funapp 3285 56))
                                   (display "\n")
                                   (cons
                                    x8909
                                    (begin
                                      (write '(funapp 3285 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3286 27))
                                (display "\n")
                                (cons x8910 x8908)))))
                           (begin
                             (write '(funapp 3287 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3287 29))
                                (display "\n")
                                'posn)
                              x8907))))
                         (x8905 (input)))
                        (begin
                          (write '(funapp 3289 21))
                          (display "\n")
                          (x8911 x8906 x8905)))
                       (letrec*
                        ((x8924
                          (letrec*
                           ((xj7533
                             (begin
                               (write '(funapp 3293 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3293 37))
                                  (display "\n")
                                  'module))))
                            (xk7534
                             (begin
                               (write '(funapp 3293 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3293 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8925
                              (begin
                                (write '(funapp 3296 27))
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
                                                   (write '(funapp 3305 50))
                                                   (display "\n")
                                                   (POSN/C j7537 k7538 g7535)))
                                                (x8929
                                                 (begin
                                                   (write '(funapp 3306 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7537
                                                    k7538
                                                    g7536))))
                                               (begin
                                                 (write '(funapp 3307 42))
                                                 (display "\n")
                                                 (f7539 x8930 x8929)))))
                                            (begin
                                              (write '(funapp 3308 39))
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
                                   (write '(funapp 3321 56))
                                   (display "\n")
                                   (cons
                                    x8922
                                    (begin
                                      (write '(funapp 3321 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3322 27))
                                (display "\n")
                                (cons x8923 x8921)))))
                           (begin
                             (write '(funapp 3323 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3323 29))
                                (display "\n")
                                'posn)
                              x8920))))
                         (x8918 (input)))
                        (begin
                          (write '(funapp 3325 21))
                          (display "\n")
                          (x8924 x8919 x8918)))
                       (letrec*
                        ((x8933
                          (letrec*
                           ((xj7540
                             (begin
                               (write '(funapp 3329 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3329 37))
                                  (display "\n")
                                  'module))))
                            (xk7541
                             (begin
                               (write '(funapp 3329 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3329 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8934
                              (begin
                                (write '(funapp 3332 27))
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
                                                   (write '(funapp 3341 50))
                                                   (display "\n")
                                                   (BSET/C j7544 k7545 g7542)))
                                                (x8938
                                                 (begin
                                                   (write '(funapp 3342 50))
                                                   (display "\n")
                                                   (COLOR/C
                                                    j7544
                                                    k7545
                                                    g7543))))
                                               (begin
                                                 (write '(funapp 3343 42))
                                                 (display "\n")
                                                 (f7546 x8939 x8938)))))
                                            (begin
                                              (write '(funapp 3344 39))
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
                          (write '(funapp 3353 21))
                          (display "\n")
                          (x8933 x8932 x8931)))
                       (letrec*
                        ((x8942
                          (letrec*
                           ((xj7547
                             (begin
                               (write '(funapp 3357 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3357 37))
                                  (display "\n")
                                  'module))))
                            (xk7548
                             (begin
                               (write '(funapp 3357 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3357 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8943
                              (begin
                                (write '(funapp 3360 27))
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
                                                   (write '(funapp 3369 50))
                                                   (display "\n")
                                                   (BSET/C j7551 k7552 g7549)))
                                                (x8947
                                                 (begin
                                                   (write '(funapp 3370 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7551
                                                    k7552
                                                    g7550))))
                                               (begin
                                                 (write '(funapp 3371 42))
                                                 (display "\n")
                                                 (f7553 x8948 x8947)))))
                                            (begin
                                              (write '(funapp 3372 39))
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
                          (write '(funapp 3381 21))
                          (display "\n")
                          (x8942 x8941 x8940)))
                       (letrec*
                        ((x8951
                          (letrec*
                           ((xj7554
                             (begin
                               (write '(funapp 3385 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3385 37))
                                  (display "\n")
                                  'module))))
                            (xk7555
                             (begin
                               (write '(funapp 3385 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3385 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8952
                              (begin
                                (write '(funapp 3388 27))
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
                                                   (write '(funapp 3397 50))
                                                   (display "\n")
                                                   (BSET/C j7558 k7559 g7556)))
                                                (x8956
                                                 (begin
                                                   (write '(funapp 3398 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7558
                                                    k7559
                                                    g7557))))
                                               (begin
                                                 (write '(funapp 3399 42))
                                                 (display "\n")
                                                 (f7560 x8957 x8956)))))
                                            (begin
                                              (write '(funapp 3400 39))
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
                          (write '(funapp 3409 21))
                          (display "\n")
                          (x8951 x8950 x8949)))
                       (letrec*
                        ((x8960
                          (letrec*
                           ((xj7561
                             (begin
                               (write '(funapp 3413 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3413 37))
                                  (display "\n")
                                  'module))))
                            (xk7562
                             (begin
                               (write '(funapp 3413 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3413 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8961
                              (begin
                                (write '(funapp 3416 27))
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
                                                   (write '(funapp 3425 50))
                                                   (display "\n")
                                                   (BSET/C j7565 k7566 g7563)))
                                                (x8965
                                                 (begin
                                                   (write '(funapp 3426 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7565
                                                    k7566
                                                    g7564))))
                                               (begin
                                                 (write '(funapp 3427 42))
                                                 (display "\n")
                                                 (f7567 x8966 x8965)))))
                                            (begin
                                              (write '(funapp 3428 39))
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
                          (write '(funapp 3437 21))
                          (display "\n")
                          (x8960 x8959 x8958)))
                       (letrec*
                        ((x8968
                          (letrec*
                           ((xj7568
                             (begin
                               (write '(funapp 3441 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3441 37))
                                  (display "\n")
                                  'module))))
                            (xk7569
                             (begin
                               (write '(funapp 3441 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3441 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8969
                              (begin
                                (write '(funapp 3444 27))
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
                                                   (write '(funapp 3453 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7571
                                                    k7572
                                                    g7570))))
                                               (begin
                                                 (write '(funapp 3454 42))
                                                 (display "\n")
                                                 (f7573 x8973)))))
                                            (begin
                                              (write '(funapp 3455 39))
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
                          (write '(funapp 3463 21))
                          (display "\n")
                          (x8968 x8967)))
                       (letrec*
                        ((x8975
                          (letrec*
                           ((xj7574
                             (begin
                               (write '(funapp 3467 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3467 37))
                                  (display "\n")
                                  'module))))
                            (xk7575
                             (begin
                               (write '(funapp 3467 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3467 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8976
                              (begin
                                (write '(funapp 3470 27))
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
                                                   (write '(funapp 3479 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7577
                                                    k7578
                                                    g7576))))
                                               (begin
                                                 (write '(funapp 3480 42))
                                                 (display "\n")
                                                 (f7579 x8980)))))
                                            (begin
                                              (write '(funapp 3481 39))
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
                          (write '(funapp 3489 21))
                          (display "\n")
                          (x8975 x8974)))
                       (letrec*
                        ((x8982
                          (letrec*
                           ((xj7580
                             (begin
                               (write '(funapp 3493 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3493 37))
                                  (display "\n")
                                  'module))))
                            (xk7581
                             (begin
                               (write '(funapp 3493 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3493 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8983
                              (begin
                                (write '(funapp 3496 27))
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
                                                   (write '(funapp 3505 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7583
                                                    k7584
                                                    g7582))))
                                               (begin
                                                 (write '(funapp 3506 42))
                                                 (display "\n")
                                                 (f7585 x8987)))))
                                            (begin
                                              (write '(funapp 3507 39))
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
                          (write '(funapp 3515 21))
                          (display "\n")
                          (x8982 x8981)))
                       (letrec*
                        ((x8989
                          (letrec*
                           ((xj7586
                             (begin
                               (write '(funapp 3519 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3519 37))
                                  (display "\n")
                                  'module))))
                            (xk7587
                             (begin
                               (write '(funapp 3519 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3519 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8990
                              (begin
                                (write '(funapp 3522 27))
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
                                                   (write '(funapp 3531 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7589
                                                    k7590
                                                    g7588))))
                                               (begin
                                                 (write '(funapp 3532 42))
                                                 (display "\n")
                                                 (f7591 x8994)))))
                                            (begin
                                              (write '(funapp 3533 39))
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
                          (write '(funapp 3541 21))
                          (display "\n")
                          (x8989 x8988)))
                       (letrec*
                        ((x9006
                          (letrec*
                           ((xj7592
                             (begin
                               (write '(funapp 3545 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3545 37))
                                  (display "\n")
                                  'module))))
                            (xk7593
                             (begin
                               (write '(funapp 3545 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3545 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9007
                              (begin
                                (write '(funapp 3548 27))
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
                                                   (write '(funapp 3558 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7597
                                                    k7598
                                                    g7594)))
                                                (x9012
                                                 (begin
                                                   (write '(funapp 3560 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7597
                                                    k7598
                                                    g7595)))
                                                (x9011
                                                 (begin
                                                   (write '(funapp 3561 50))
                                                   (display "\n")
                                                   (TETRA/C
                                                    j7597
                                                    k7598
                                                    g7596))))
                                               (begin
                                                 (write '(funapp 3562 42))
                                                 (display "\n")
                                                 (f7599 x9013 x9012 x9011)))))
                                            (begin
                                              (write '(funapp 3563 39))
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
                                         (write '(funapp 3584 36))
                                         (display "\n")
                                         (cons
                                          x9002
                                          (begin
                                            (write '(funapp 3584 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3585 33))
                                      (display "\n")
                                      (cons x9003 x9001)))))
                                 (begin
                                   (write '(funapp 3586 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3586 35))
                                      (display "\n")
                                      'posn)
                                    x9000))))
                               (x8997
                                (letrec*
                                 ((x8998 (input)))
                                 (begin
                                   (write '(funapp 3588 56))
                                   (display "\n")
                                   (cons
                                    x8998
                                    (begin
                                      (write '(funapp 3588 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3589 27))
                                (display "\n")
                                (cons x8999 x8997)))))
                           (begin
                             (write '(funapp 3590 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3590 29))
                                (display "\n")
                                'tetra)
                              x8996)))))
                        (begin
                          (write '(funapp 3591 21))
                          (display "\n")
                          (x9006 x9005 x9004 x8995)))
                       (letrec*
                        ((x9023
                          (letrec*
                           ((xj7600
                             (begin
                               (write '(funapp 3595 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3595 37))
                                  (display "\n")
                                  'module))))
                            (xk7601
                             (begin
                               (write '(funapp 3595 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3595 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9024
                              (begin
                                (write '(funapp 3598 27))
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
                                                   (write '(funapp 3607 50))
                                                   (display "\n")
                                                   (TETRA/C
                                                    j7603
                                                    k7604
                                                    g7602))))
                                               (begin
                                                 (write '(funapp 3608 42))
                                                 (display "\n")
                                                 (f7605 x9028)))))
                                            (begin
                                              (write '(funapp 3609 39))
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
                                         (write '(funapp 3628 36))
                                         (display "\n")
                                         (cons
                                          x9021
                                          (begin
                                            (write '(funapp 3628 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3629 33))
                                      (display "\n")
                                      (cons x9022 x9020)))))
                                 (begin
                                   (write '(funapp 3630 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3630 35))
                                      (display "\n")
                                      'posn)
                                    x9019))))
                               (x9016
                                (letrec*
                                 ((x9017 (input)))
                                 (begin
                                   (write '(funapp 3632 56))
                                   (display "\n")
                                   (cons
                                    x9017
                                    (begin
                                      (write '(funapp 3632 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3633 27))
                                (display "\n")
                                (cons x9018 x9016)))))
                           (begin
                             (write '(funapp 3634 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3634 29))
                                (display "\n")
                                'tetra)
                              x9015)))))
                        (begin
                          (write '(funapp 3635 21))
                          (display "\n")
                          (x9023 x9014)))
                       (letrec*
                        ((x9038
                          (letrec*
                           ((xj7606
                             (begin
                               (write '(funapp 3639 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3639 37))
                                  (display "\n")
                                  'module))))
                            (xk7607
                             (begin
                               (write '(funapp 3639 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3639 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9039
                              (begin
                                (write '(funapp 3642 27))
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
                                                   (write '(funapp 3651 50))
                                                   (display "\n")
                                                   (TETRA/C
                                                    j7609
                                                    k7610
                                                    g7608))))
                                               (begin
                                                 (write '(funapp 3652 42))
                                                 (display "\n")
                                                 (f7611 x9043)))))
                                            (begin
                                              (write '(funapp 3653 39))
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
                                         (write '(funapp 3672 36))
                                         (display "\n")
                                         (cons
                                          x9036
                                          (begin
                                            (write '(funapp 3672 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3673 33))
                                      (display "\n")
                                      (cons x9037 x9035)))))
                                 (begin
                                   (write '(funapp 3674 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3674 35))
                                      (display "\n")
                                      'posn)
                                    x9034))))
                               (x9031
                                (letrec*
                                 ((x9032 (input)))
                                 (begin
                                   (write '(funapp 3676 56))
                                   (display "\n")
                                   (cons
                                    x9032
                                    (begin
                                      (write '(funapp 3676 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3677 27))
                                (display "\n")
                                (cons x9033 x9031)))))
                           (begin
                             (write '(funapp 3678 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3678 29))
                                (display "\n")
                                'tetra)
                              x9030)))))
                        (begin
                          (write '(funapp 3679 21))
                          (display "\n")
                          (x9038 x9029)))
                       (letrec*
                        ((x9054
                          (letrec*
                           ((xj7612
                             (begin
                               (write '(funapp 3683 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3683 37))
                                  (display "\n")
                                  'module))))
                            (xk7613
                             (begin
                               (write '(funapp 3683 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3683 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9055
                              (begin
                                (write '(funapp 3686 27))
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
                                                   (write '(funapp 3695 50))
                                                   (display "\n")
                                                   (TETRA/C
                                                    j7616
                                                    k7617
                                                    g7614)))
                                                (x9059
                                                 (begin
                                                   (write '(funapp 3696 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7616
                                                    k7617
                                                    g7615))))
                                               (begin
                                                 (write '(funapp 3697 42))
                                                 (display "\n")
                                                 (f7618 x9060 x9059)))))
                                            (begin
                                              (write '(funapp 3698 39))
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
                                         (write '(funapp 3717 36))
                                         (display "\n")
                                         (cons
                                          x9052
                                          (begin
                                            (write '(funapp 3717 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3718 33))
                                      (display "\n")
                                      (cons x9053 x9051)))))
                                 (begin
                                   (write '(funapp 3719 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3719 35))
                                      (display "\n")
                                      'posn)
                                    x9050))))
                               (x9047
                                (letrec*
                                 ((x9048 (input)))
                                 (begin
                                   (write '(funapp 3721 56))
                                   (display "\n")
                                   (cons
                                    x9048
                                    (begin
                                      (write '(funapp 3721 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3722 27))
                                (display "\n")
                                (cons x9049 x9047)))))
                           (begin
                             (write '(funapp 3723 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3723 29))
                                (display "\n")
                                'tetra)
                              x9046))))
                         (x9044 (input)))
                        (begin
                          (write '(funapp 3725 21))
                          (display "\n")
                          (x9054 x9045 x9044)))
                       (letrec*
                        ((x9072
                          (letrec*
                           ((xj7619
                             (begin
                               (write '(funapp 3729 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3729 37))
                                  (display "\n")
                                  'module))))
                            (xk7620
                             (begin
                               (write '(funapp 3729 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3729 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9073
                              (begin
                                (write '(funapp 3732 27))
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
                                                   (write '(funapp 3751 50))
                                                   (display "\n")
                                                   (COLOR/C
                                                    j7632
                                                    k7633
                                                    g7621)))
                                                (x9086
                                                 (begin
                                                   (write '(funapp 3752 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7632
                                                    k7633
                                                    g7622)))
                                                (x9085
                                                 (begin
                                                   (write '(funapp 3753 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7632
                                                    k7633
                                                    g7623)))
                                                (x9084
                                                 (begin
                                                   (write '(funapp 3755 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7632
                                                    k7633
                                                    g7624)))
                                                (x9083
                                                 (begin
                                                   (write '(funapp 3757 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7632
                                                    k7633
                                                    g7625)))
                                                (x9082
                                                 (begin
                                                   (write '(funapp 3759 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7632
                                                    k7633
                                                    g7626)))
                                                (x9081
                                                 (begin
                                                   (write '(funapp 3761 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7632
                                                    k7633
                                                    g7627)))
                                                (x9080
                                                 (begin
                                                   (write '(funapp 3763 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7632
                                                    k7633
                                                    g7628)))
                                                (x9079
                                                 (begin
                                                   (write '(funapp 3765 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7632
                                                    k7633
                                                    g7629)))
                                                (x9078
                                                 (begin
                                                   (write '(funapp 3767 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7632
                                                    k7633
                                                    g7630)))
                                                (x9077
                                                 (begin
                                                   (write '(funapp 3769 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7632
                                                    k7633
                                                    g7631))))
                                               (begin
                                                 (write '(funapp 3770 42))
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
                                              (write '(funapp 3782 39))
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
                          (write '(funapp 3800 21))
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
                               (write '(funapp 3815 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3815 37))
                                  (display "\n")
                                  'module))))
                            (xk7636
                             (begin
                               (write '(funapp 3815 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3815 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9099
                              (begin
                                (write '(funapp 3818 27))
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
                                                   (write '(funapp 3827 50))
                                                   (display "\n")
                                                   (TETRA/C
                                                    j7639
                                                    k7640
                                                    g7637)))
                                                (x9103
                                                 (begin
                                                   (write '(funapp 3828 50))
                                                   (display "\n")
                                                   (COLOR/C
                                                    j7639
                                                    k7640
                                                    g7638))))
                                               (begin
                                                 (write '(funapp 3829 42))
                                                 (display "\n")
                                                 (f7641 x9104 x9103)))))
                                            (begin
                                              (write '(funapp 3830 39))
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
                                         (write '(funapp 3849 36))
                                         (display "\n")
                                         (cons
                                          x9096
                                          (begin
                                            (write '(funapp 3849 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3850 33))
                                      (display "\n")
                                      (cons x9097 x9095)))))
                                 (begin
                                   (write '(funapp 3851 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3851 35))
                                      (display "\n")
                                      'posn)
                                    x9094))))
                               (x9091
                                (letrec*
                                 ((x9092 (input)))
                                 (begin
                                   (write '(funapp 3853 56))
                                   (display "\n")
                                   (cons
                                    x9092
                                    (begin
                                      (write '(funapp 3853 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3854 27))
                                (display "\n")
                                (cons x9093 x9091)))))
                           (begin
                             (write '(funapp 3855 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3855 29))
                                (display "\n")
                                'tetra)
                              x9090))))
                         (x9088 (input)))
                        (begin
                          (write '(funapp 3857 21))
                          (display "\n")
                          (x9098 x9089 x9088)))
                       (letrec*
                        ((x9119
                          (letrec*
                           ((xj7642
                             (begin
                               (write '(funapp 3861 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3861 37))
                                  (display "\n")
                                  'module))))
                            (xk7643
                             (begin
                               (write '(funapp 3861 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3861 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9120
                              (begin
                                (write '(funapp 3864 27))
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
                                                   (write '(funapp 3873 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7646
                                                    k7647
                                                    g7644)))
                                                (x9124
                                                 (begin
                                                   (write '(funapp 3875 44))
                                                   (display "\n")
                                                   (string?/c
                                                    j7646
                                                    k7647
                                                    g7645))))
                                               (begin
                                                 (write '(funapp 3876 42))
                                                 (display "\n")
                                                 (f7648 x9125 x9124)))))
                                            (begin
                                              (write '(funapp 3877 39))
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
                                               (write '(funapp 3900 42))
                                               (display "\n")
                                               (cons
                                                x9117
                                                (begin
                                                  (write '(funapp 3900 53))
                                                  (display "\n")
                                                  '()))))))
                                          (begin
                                            (write '(funapp 3901 39))
                                            (display "\n")
                                            (cons x9118 x9116)))))
                                       (begin
                                         (write '(funapp 3902 36))
                                         (display "\n")
                                         (cons
                                          (begin
                                            (write '(funapp 3902 41))
                                            (display "\n")
                                            'posn)
                                          x9115))))
                                     (x9112
                                      (letrec*
                                       ((x9113 (input)))
                                       (begin
                                         (write '(funapp 3906 36))
                                         (display "\n")
                                         (cons
                                          x9113
                                          (begin
                                            (write '(funapp 3906 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3907 33))
                                      (display "\n")
                                      (cons x9114 x9112)))))
                                 (begin
                                   (write '(funapp 3908 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3908 35))
                                      (display "\n")
                                      'tetra)
                                    x9111))))
                               (x9108
                                (letrec*
                                 ((x9109 (input)))
                                 (begin
                                   (write '(funapp 3910 56))
                                   (display "\n")
                                   (cons
                                    x9109
                                    (begin
                                      (write '(funapp 3910 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3911 27))
                                (display "\n")
                                (cons x9110 x9108)))))
                           (begin
                             (write '(funapp 3912 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3912 29))
                                (display "\n")
                                'world)
                              x9107))))
                         (x9105 (input)))
                        (begin
                          (write '(funapp 3914 21))
                          (display "\n")
                          (x9119 x9106 x9105)))
                       (letrec*
                        ((x9140
                          (letrec*
                           ((xj7649
                             (begin
                               (write '(funapp 3918 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3918 37))
                                  (display "\n")
                                  'module))))
                            (xk7650
                             (begin
                               (write '(funapp 3918 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3918 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9141
                              (begin
                                (write '(funapp 3921 27))
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
                                                   (write '(funapp 3930 50))
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
                                                          '(funapp 3935 56))
                                                         (display "\n")
                                                         (listof TETRA/C))))
                                                     (begin
                                                       (write
                                                        '(funapp 3936 48))
                                                       (display "\n")
                                                       (and/c
                                                        cons?/c
                                                        x9147)))))
                                                  (begin
                                                    (write '(funapp 3937 45))
                                                    (display "\n")
                                                    (x9146
                                                     j7653
                                                     k7654
                                                     g7652)))))
                                               (begin
                                                 (write '(funapp 3938 42))
                                                 (display "\n")
                                                 (f7655 x9148 x9145)))))
                                            (begin
                                              (write '(funapp 3939 39))
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
                                               (write '(funapp 3962 42))
                                               (display "\n")
                                               (cons
                                                x9138
                                                (begin
                                                  (write '(funapp 3962 53))
                                                  (display "\n")
                                                  '()))))))
                                          (begin
                                            (write '(funapp 3963 39))
                                            (display "\n")
                                            (cons x9139 x9137)))))
                                       (begin
                                         (write '(funapp 3964 36))
                                         (display "\n")
                                         (cons
                                          (begin
                                            (write '(funapp 3964 41))
                                            (display "\n")
                                            'posn)
                                          x9136))))
                                     (x9133
                                      (letrec*
                                       ((x9134 (input)))
                                       (begin
                                         (write '(funapp 3968 36))
                                         (display "\n")
                                         (cons
                                          x9134
                                          (begin
                                            (write '(funapp 3968 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3969 33))
                                      (display "\n")
                                      (cons x9135 x9133)))))
                                 (begin
                                   (write '(funapp 3970 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3970 35))
                                      (display "\n")
                                      'tetra)
                                    x9132))))
                               (x9129
                                (letrec*
                                 ((x9130 (input)))
                                 (begin
                                   (write '(funapp 3972 56))
                                   (display "\n")
                                   (cons
                                    x9130
                                    (begin
                                      (write '(funapp 3972 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3973 27))
                                (display "\n")
                                (cons x9131 x9129)))))
                           (begin
                             (write '(funapp 3974 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3974 29))
                                (display "\n")
                                'world)
                              x9128))))
                         (x9126 (input)))
                        (begin
                          (write '(funapp 3976 21))
                          (display "\n")
                          (x9140 x9127 x9126)))
                       (letrec*
                        ((x9162
                          (letrec*
                           ((xj7656
                             (begin
                               (write '(funapp 3980 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3980 37))
                                  (display "\n")
                                  'module))))
                            (xk7657
                             (begin
                               (write '(funapp 3980 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 3980 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9163
                              (begin
                                (write '(funapp 3983 27))
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
                                                   (write '(funapp 3992 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7659
                                                    k7660
                                                    g7658))))
                                               (begin
                                                 (write '(funapp 3993 42))
                                                 (display "\n")
                                                 (f7661 x9167)))))
                                            (begin
                                              (write '(funapp 3994 39))
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
                                               (write '(funapp 4017 42))
                                               (display "\n")
                                               (cons
                                                x9160
                                                (begin
                                                  (write '(funapp 4017 53))
                                                  (display "\n")
                                                  '()))))))
                                          (begin
                                            (write '(funapp 4018 39))
                                            (display "\n")
                                            (cons x9161 x9159)))))
                                       (begin
                                         (write '(funapp 4019 36))
                                         (display "\n")
                                         (cons
                                          (begin
                                            (write '(funapp 4019 41))
                                            (display "\n")
                                            'posn)
                                          x9158))))
                                     (x9155
                                      (letrec*
                                       ((x9156 (input)))
                                       (begin
                                         (write '(funapp 4023 36))
                                         (display "\n")
                                         (cons
                                          x9156
                                          (begin
                                            (write '(funapp 4023 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 4024 33))
                                      (display "\n")
                                      (cons x9157 x9155)))))
                                 (begin
                                   (write '(funapp 4025 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 4025 35))
                                      (display "\n")
                                      'tetra)
                                    x9154))))
                               (x9151
                                (letrec*
                                 ((x9152 (input)))
                                 (begin
                                   (write '(funapp 4027 56))
                                   (display "\n")
                                   (cons
                                    x9152
                                    (begin
                                      (write '(funapp 4027 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 4028 27))
                                (display "\n")
                                (cons x9153 x9151)))))
                           (begin
                             (write '(funapp 4029 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 4029 29))
                                (display "\n")
                                'world)
                              x9150)))))
                        (begin
                          (write '(funapp 4030 21))
                          (display "\n")
                          (x9162 x9149)))
                       (letrec*
                        ((x9169
                          (letrec*
                           ((xj7662
                             (begin
                               (write '(funapp 4034 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4034 37))
                                  (display "\n")
                                  'module))))
                            (xk7663
                             (begin
                               (write '(funapp 4034 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4034 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9170
                              (begin
                                (write '(funapp 4037 27))
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
                                                   (write '(funapp 4046 50))
                                                   (display "\n")
                                                   (any/c j7665 k7666 g7664))))
                                               (begin
                                                 (write '(funapp 4047 42))
                                                 (display "\n")
                                                 (f7667 x9174)))))
                                            (begin
                                              (write '(funapp 4048 39))
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
                          (write '(funapp 4056 21))
                          (display "\n")
                          (x9169 x9168)))
                       (letrec*
                        ((x9177
                          (letrec*
                           ((xj7668
                             (begin
                               (write '(funapp 4060 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4060 37))
                                  (display "\n")
                                  'module))))
                            (xk7669
                             (begin
                               (write '(funapp 4060 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4060 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9178
                              (begin
                                (write '(funapp 4063 27))
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
                                                   (write '(funapp 4072 50))
                                                   (display "\n")
                                                   (image? j7672 k7673 g7670)))
                                                (x9182
                                                 (begin
                                                   (write '(funapp 4073 50))
                                                   (display "\n")
                                                   (image?
                                                    j7672
                                                    k7673
                                                    g7671))))
                                               (begin
                                                 (write '(funapp 4074 42))
                                                 (display "\n")
                                                 (f7674 x9183 x9182)))))
                                            (begin
                                              (write '(funapp 4075 39))
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
                          (write '(funapp 4084 21))
                          (display "\n")
                          (x9177 x9176 x9175)))
                       (letrec*
                        ((x9187
                          (letrec*
                           ((xj7675
                             (begin
                               (write '(funapp 4088 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4088 37))
                                  (display "\n")
                                  'module))))
                            (xk7676
                             (begin
                               (write '(funapp 4088 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4088 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9188
                              (begin
                                (write '(funapp 4091 27))
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
                                                   (write '(funapp 4100 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7680
                                                    k7681
                                                    g7677)))
                                                (x9193
                                                 (begin
                                                   (write '(funapp 4101 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7680
                                                    k7681
                                                    g7678)))
                                                (x9192
                                                 (begin
                                                   (write '(funapp 4103 44))
                                                   (display "\n")
                                                   (string?/c
                                                    j7680
                                                    k7681
                                                    g7679))))
                                               (begin
                                                 (write '(funapp 4104 42))
                                                 (display "\n")
                                                 (f7682 x9194 x9193 x9192)))))
                                            (begin
                                              (write '(funapp 4105 39))
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
                          (write '(funapp 4115 21))
                          (display "\n")
                          (x9187 x9186 x9185 x9184)))
                       (letrec*
                        ((x9199
                          (letrec*
                           ((xj7683
                             (begin
                               (write '(funapp 4119 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4119 37))
                                  (display "\n")
                                  'module))))
                            (xk7684
                             (begin
                               (write '(funapp 4119 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4119 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9200
                              (begin
                                (write '(funapp 4122 27))
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
                                                   (write '(funapp 4131 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7689
                                                    k7690
                                                    g7685)))
                                                (x9206
                                                 (begin
                                                   (write '(funapp 4132 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7689
                                                    k7690
                                                    g7686)))
                                                (x9205
                                                 (begin
                                                   (write '(funapp 4133 50))
                                                   (display "\n")
                                                   (COLOR/C
                                                    j7689
                                                    k7690
                                                    g7687)))
                                                (x9204
                                                 (begin
                                                   (write '(funapp 4134 50))
                                                   (display "\n")
                                                   (COLOR/C
                                                    j7689
                                                    k7690
                                                    g7688))))
                                               (begin
                                                 (write '(funapp 4135 42))
                                                 (display "\n")
                                                 (f7691
                                                  x9207
                                                  x9206
                                                  x9205
                                                  x9204)))))
                                            (begin
                                              (write '(funapp 4136 39))
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
                          (write '(funapp 4147 21))
                          (display "\n")
                          (x9199 x9198 x9197 x9196 x9195)))
                       (letrec*
                        ((x9212
                          (letrec*
                           ((xj7692
                             (begin
                               (write '(funapp 4151 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4151 37))
                                  (display "\n")
                                  'module))))
                            (xk7693
                             (begin
                               (write '(funapp 4151 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4151 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9213
                              (begin
                                (write '(funapp 4154 27))
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
                                                   (write '(funapp 4163 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7698
                                                    k7699
                                                    g7694)))
                                                (x9219
                                                 (begin
                                                   (write '(funapp 4164 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7698
                                                    k7699
                                                    g7695)))
                                                (x9218
                                                 (begin
                                                   (write '(funapp 4165 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7698
                                                    k7699
                                                    g7696)))
                                                (x9217
                                                 (begin
                                                   (write '(funapp 4166 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7698
                                                    k7699
                                                    g7697))))
                                               (begin
                                                 (write '(funapp 4167 42))
                                                 (display "\n")
                                                 (f7700
                                                  x9220
                                                  x9219
                                                  x9218
                                                  x9217)))))
                                            (begin
                                              (write '(funapp 4168 39))
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
                            (write '(funapp 4175 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 4175 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 4175 41))
                               (display "\n")
                               '()))))
                         (x9210 (input))
                         (x9209 (input))
                         (x9208
                          (begin
                            (write '(funapp 4178 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 4178 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 4178 41))
                               (display "\n")
                               '())))))
                        (begin
                          (write '(funapp 4179 21))
                          (display "\n")
                          (x9212 x9211 x9210 x9209 x9208)))
                       (letrec*
                        ((x9223
                          (letrec*
                           ((xj7701
                             (begin
                               (write '(funapp 4183 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4183 37))
                                  (display "\n")
                                  'module))))
                            (xk7702
                             (begin
                               (write '(funapp 4183 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4183 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9224
                              (begin
                                (write '(funapp 4186 27))
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
                                                   (write '(funapp 4195 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7705
                                                    k7706
                                                    g7703)))
                                                (x9228
                                                 (begin
                                                   (write '(funapp 4196 50))
                                                   (display "\n")
                                                   (real?/c
                                                    j7705
                                                    k7706
                                                    g7704))))
                                               (begin
                                                 (write '(funapp 4197 42))
                                                 (display "\n")
                                                 (f7707 x9229 x9228)))))
                                            (begin
                                              (write '(funapp 4198 39))
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
                          (write '(funapp 4207 21))
                          (display "\n")
                          (x9223 x9222 x9221)))
                       (letrec*
                        ((x9231
                          (letrec*
                           ((xj7708
                             (begin
                               (write '(funapp 4211 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4211 37))
                                  (display "\n")
                                  'module))))
                            (xk7709
                             (begin
                               (write '(funapp 4211 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4211 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9232
                              (begin
                                (write '(funapp 4214 27))
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
                                                          '(funapp 4227 56))
                                                         (display "\n")
                                                         (listof TETRA/C))))
                                                     (begin
                                                       (write
                                                        '(funapp 4228 48))
                                                       (display "\n")
                                                       (and/c
                                                        cons?/c
                                                        x9238)))))
                                                  (begin
                                                    (write '(funapp 4229 45))
                                                    (display "\n")
                                                    (x9237
                                                     j7711
                                                     k7712
                                                     g7710)))))
                                               (begin
                                                 (write '(funapp 4230 42))
                                                 (display "\n")
                                                 (f7713 x9236)))))
                                            (begin
                                              (write '(funapp 4231 39))
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
                          (write '(funapp 4239 21))
                          (display "\n")
                          (x9231 x9230)))
                       (letrec*
                        ((xj7714
                          (begin
                            (write '(funapp 4241 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 4241 34))
                               (display "\n")
                               'module))))
                         (xk7715
                          (begin
                            (write '(funapp 4241 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 4241 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g9239
                           (begin
                             (write '(funapp 4242 38))
                             (display "\n")
                             (integer?/c xj7714 xk7715 neg-1))))
                         g9239))
                       (letrec*
                        ((x9253
                          (letrec*
                           ((xj7716
                             (begin
                               (write '(funapp 4246 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4246 37))
                                  (display "\n")
                                  'module))))
                            (xk7717
                             (begin
                               (write '(funapp 4246 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4246 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9254
                              (begin
                                (write '(funapp 4249 27))
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
                                                   (write '(funapp 4258 50))
                                                   (display "\n")
                                                   (WORLD/C
                                                    j7719
                                                    k7720
                                                    g7718))))
                                               (begin
                                                 (write '(funapp 4259 42))
                                                 (display "\n")
                                                 (f7721 x9258)))))
                                            (begin
                                              (write '(funapp 4260 39))
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
                                               (write '(funapp 4283 42))
                                               (display "\n")
                                               (cons
                                                x9251
                                                (begin
                                                  (write '(funapp 4283 53))
                                                  (display "\n")
                                                  '()))))))
                                          (begin
                                            (write '(funapp 4284 39))
                                            (display "\n")
                                            (cons x9252 x9250)))))
                                       (begin
                                         (write '(funapp 4285 36))
                                         (display "\n")
                                         (cons
                                          (begin
                                            (write '(funapp 4285 41))
                                            (display "\n")
                                            'posn)
                                          x9249))))
                                     (x9246
                                      (letrec*
                                       ((x9247 (input)))
                                       (begin
                                         (write '(funapp 4289 36))
                                         (display "\n")
                                         (cons
                                          x9247
                                          (begin
                                            (write '(funapp 4289 47))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 4290 33))
                                      (display "\n")
                                      (cons x9248 x9246)))))
                                 (begin
                                   (write '(funapp 4291 30))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 4291 35))
                                      (display "\n")
                                      'tetra)
                                    x9245))))
                               (x9242
                                (letrec*
                                 ((x9243 (input)))
                                 (begin
                                   (write '(funapp 4293 56))
                                   (display "\n")
                                   (cons
                                    x9243
                                    (begin
                                      (write '(funapp 4293 67))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 4294 27))
                                (display "\n")
                                (cons x9244 x9242)))))
                           (begin
                             (write '(funapp 4295 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 4295 29))
                                (display "\n")
                                'world)
                              x9241)))))
                        (begin
                          (write '(funapp 4296 21))
                          (display "\n")
                          (x9253 x9240)))
                       (letrec*
                        ((x9260
                          (letrec*
                           ((xj7722
                             (begin
                               (write '(funapp 4300 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4300 37))
                                  (display "\n")
                                  'module))))
                            (xk7723
                             (begin
                               (write '(funapp 4300 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4300 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9261
                              (begin
                                (write '(funapp 4303 27))
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
                                                   (write '(funapp 4312 50))
                                                   (display "\n")
                                                   (BSET/C
                                                    j7725
                                                    k7726
                                                    g7724))))
                                               (begin
                                                 (write '(funapp 4313 42))
                                                 (display "\n")
                                                 (f7727 x9265)))))
                                            (begin
                                              (write '(funapp 4314 39))
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
                          (write '(funapp 4322 21))
                          (display "\n")
                          (x9260 x9259)))
                       (letrec*
                        ((x9273
                          (letrec*
                           ((xj7728
                             (begin
                               (write '(funapp 4326 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4326 37))
                                  (display "\n")
                                  'module))))
                            (xk7729
                             (begin
                               (write '(funapp 4326 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4326 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9274
                              (begin
                                (write '(funapp 4329 27))
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
                                                   (write '(funapp 4338 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7731
                                                    k7732
                                                    g7730))))
                                               (begin
                                                 (write '(funapp 4339 42))
                                                 (display "\n")
                                                 (f7733 x9278)))))
                                            (begin
                                              (write '(funapp 4340 39))
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
                                      (write '(funapp 4356 59))
                                      (display "\n")
                                      (cons
                                       x9270
                                       (begin
                                         (write '(funapp 4356 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 4357 30))
                                   (display "\n")
                                   (cons x9271 x9269)))))
                              (begin
                                (write '(funapp 4358 27))
                                (display "\n")
                                (cons x9272 x9268)))))
                           (begin
                             (write '(funapp 4359 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 4359 29))
                                (display "\n")
                                'block)
                              x9267)))))
                        (begin
                          (write '(funapp 4360 21))
                          (display "\n")
                          (x9273 x9266)))
                       (letrec*
                        ((x9287
                          (letrec*
                           ((xj7734
                             (begin
                               (write '(funapp 4364 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4364 37))
                                  (display "\n")
                                  'module))))
                            (xk7735
                             (begin
                               (write '(funapp 4364 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4364 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9288
                              (begin
                                (write '(funapp 4367 27))
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
                                                   (write '(funapp 4376 50))
                                                   (display "\n")
                                                   (BLOCK/C
                                                    j7738
                                                    k7739
                                                    g7736)))
                                                (x9292
                                                 (begin
                                                   (write '(funapp 4377 50))
                                                   (display "\n")
                                                   (image/c
                                                    j7738
                                                    k7739
                                                    g7737))))
                                               (begin
                                                 (write '(funapp 4378 42))
                                                 (display "\n")
                                                 (f7740 x9293 x9292)))))
                                            (begin
                                              (write '(funapp 4379 39))
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
                                      (write '(funapp 4395 59))
                                      (display "\n")
                                      (cons
                                       x9284
                                       (begin
                                         (write '(funapp 4395 70))
                                         (display "\n")
                                         '()))))))
                                 (begin
                                   (write '(funapp 4396 30))
                                   (display "\n")
                                   (cons x9285 x9283)))))
                              (begin
                                (write '(funapp 4397 27))
                                (display "\n")
                                (cons x9286 x9282)))))
                           (begin
                             (write '(funapp 4398 24))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 4398 29))
                                (display "\n")
                                'block)
                              x9281))))
                         (x9279
                          (begin
                            (write '(funapp 4399 29))
                            (display "\n")
                            (cons
                             (begin
                               (write '(funapp 4399 34))
                               (display "\n")
                               'image)
                             (begin
                               (write '(funapp 4399 41))
                               (display "\n")
                               '())))))
                        (begin
                          (write '(funapp 4400 21))
                          (display "\n")
                          (x9287 x9280 x9279)))
                       (letrec*
                        ((x9295
                          (letrec*
                           ((xj7741
                             (begin
                               (write '(funapp 4404 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4404 37))
                                  (display "\n")
                                  'module))))
                            (xk7742
                             (begin
                               (write '(funapp 4404 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 4404 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g9296
                              (begin
                                (write '(funapp 4407 27))
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
                                                          '(funapp 4420 56))
                                                         (display "\n")
                                                         (listof TETRA/C))))
                                                     (begin
                                                       (write
                                                        '(funapp 4421 48))
                                                       (display "\n")
                                                       (and/c
                                                        cons?/c
                                                        x9302)))))
                                                  (begin
                                                    (write '(funapp 4422 45))
                                                    (display "\n")
                                                    (x9301
                                                     j7744
                                                     k7745
                                                     g7743)))))
                                               (begin
                                                 (write '(funapp 4423 42))
                                                 (display "\n")
                                                 (f7746 x9300)))))
                                            (begin
                                              (write '(funapp 4424 39))
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
                          (write '(funapp 4432 21))
                          (display "\n")
                          (x9295 x9294)))))))))
               g8735))))
           g7797))))
       g7781)))
    g7780)))
