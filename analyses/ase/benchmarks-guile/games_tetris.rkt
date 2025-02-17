(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7721 #t)) g7721)))
    (meta (lambda (v) (letrec* ((g7722 v)) g7722)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7723
          (letrec*
           ((g7724
             (letrec*
              ((x-e7725 lst))
              (letrec*
               ((v1742 x-e7725))
               (cond
                ((begin (write '(funapp 21 18)) (display "\n") (null? v1742))
                 (letrec* () #f))
                ((begin (write '(funapp 22 18)) (display "\n") (and #t #t))
                 (letrec*
                  ((v1
                    (begin (write '(funapp 24 24)) (display "\n") (car v1742)))
                   (vs
                    (begin
                      (write '(funapp 24 41))
                      (display "\n")
                      (cdr v1742))))
                  (letrec*
                   ((x-cnd7726
                     (begin
                       (write '(funapp 26 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7726
                     #t
                     (begin
                       (write '(funapp 27 37))
                       (display "\n")
                       (member v vs))))))
                (else
                 (begin
                   (write '(funapp 28 23))
                   (display "\n")
                   (error "no match found"))))))))
           g7724)))
        g7723)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7727 (lambda (v) (letrec* ((g7728 v)) g7728)))) g7727)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7729
          (letrec*
           ((x7730 (begin (write '(funapp 37 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 37 52)) (display "\n") (not x7730)))))
        g7729))))
   (letrec*
    ((g7731
      (letrec*
       ((g7732
         (letrec*
          ((orig-+ +)
           (orig-- -)
           (orig-* *)
           (orig-/ /)
           (orig-car car)
           (orig-cdr cdr)
           (orig-cons cons)
           (orig-vector-ref vector-ref)
           (orig-vector-set vector-set!))
          (letrec*
           ((g7733 (begin (write '(funapp 53 19)) (display "\n") '()))
            (g7734
             (letrec*
              ((empty (begin (write '(funapp 56 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7735
                     (lambda (k j lst)
                       (letrec*
                        ((g7736
                          (begin
                            (write '(funapp 64 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7737
                                  (begin
                                    (write '(funapp 66 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7737))
                             lst))))
                        g7736))))
                   g7735)))
               (real?/c
                (lambda (g7260 g7261 g7262)
                  (letrec*
                   ((g7738
                     (letrec*
                      ((x-cnd7739
                        (begin
                          (write '(funapp 75 35))
                          (display "\n")
                          (real? g7262))))
                      (if x-cnd7739
                        g7262
                        (begin
                          (write '(blame g7260 76 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7260)))))))
                   g7738)))
               (boolean?/c
                (lambda (g7263 g7264 g7265)
                  (letrec*
                   ((g7740
                     (letrec*
                      ((x-cnd7741
                        (begin
                          (write '(funapp 83 35))
                          (display "\n")
                          (boolean? g7265))))
                      (if x-cnd7741
                        g7265
                        (begin
                          (write '(blame g7263 84 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7263)))))))
                   g7740)))
               (number?/c
                (lambda (g7266 g7267 g7268)
                  (letrec*
                   ((g7742
                     (letrec*
                      ((x-cnd7743
                        (begin
                          (write '(funapp 91 35))
                          (display "\n")
                          (number? g7268))))
                      (if x-cnd7743
                        g7268
                        (begin
                          (write '(blame g7266 92 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7266)))))))
                   g7742)))
               (any/c
                (lambda (g7269 g7270 g7271)
                  (letrec*
                   ((g7744
                     (letrec*
                      ((x-cnd7745
                        (begin
                          (write '(funapp 100 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7746 #t)) g7746)) g7271))))
                      (if x-cnd7745
                        g7271
                        (begin
                          (write '(blame g7269 101 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7269)))))))
                   g7744)))
               (any?/c
                (lambda (g7272 g7273 g7274)
                  (letrec*
                   ((g7747
                     (letrec*
                      ((x-cnd7748
                        (begin
                          (write '(funapp 109 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7749 #t)) g7749)) g7274))))
                      (if x-cnd7748
                        g7274
                        (begin
                          (write '(blame g7272 110 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7272)))))))
                   g7747)))
               (cons?/c
                (lambda (g7275 g7276 g7277)
                  (letrec*
                   ((g7750
                     (letrec*
                      ((x-cnd7751
                        (begin
                          (write '(funapp 117 35))
                          (display "\n")
                          (pair? g7277))))
                      (if x-cnd7751
                        g7277
                        (begin
                          (write '(blame g7275 118 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7275)))))))
                   g7750)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7278 g7279 g7280)
                  (letrec*
                   ((g7752
                     (letrec*
                      ((x-cnd7753
                        (begin
                          (write '(funapp 126 35))
                          (display "\n")
                          (pair? g7280))))
                      (if x-cnd7753
                        g7280
                        (begin
                          (write '(blame g7278 127 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7278)))))))
                   g7752)))
               (integer?/c
                (lambda (g7281 g7282 g7283)
                  (letrec*
                   ((g7754
                     (letrec*
                      ((x-cnd7755
                        (begin
                          (write '(funapp 134 35))
                          (display "\n")
                          (integer? g7283))))
                      (if x-cnd7755
                        g7283
                        (begin
                          (write '(blame g7281 135 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7281)))))))
                   g7754)))
               (symbol?/c
                (lambda (g7284 g7285 g7286)
                  (letrec*
                   ((g7756
                     (letrec*
                      ((x-cnd7757
                        (begin
                          (write '(funapp 142 35))
                          (display "\n")
                          (symbol? g7286))))
                      (if x-cnd7757
                        g7286
                        (begin
                          (write '(blame g7284 143 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7284)))))))
                   g7756)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7758
                     (lambda (k j v)
                       (letrec*
                        ((g7759
                          (letrec*
                           ((x-cnd7760
                             (begin
                               (write '(funapp 153 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7760
                             (begin
                               (write '(funapp 154 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7759))))
                   g7758)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7761
                     (lambda (k j v)
                       (letrec*
                        ((g7762
                          (letrec*
                           ((x-cnd7763
                             (begin
                               (write '(funapp 165 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7763
                             (begin
                               (write '(funapp 167 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7767
                                (letrec*
                                 ((x7768
                                   (begin
                                     (write '(funapp 171 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 172 34))
                                   (display "\n")
                                   (contract k j x7768))))
                               (x7764
                                (letrec*
                                 ((x7766
                                   (begin
                                     (write '(funapp 175 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7765
                                   (begin
                                     (write '(funapp 175 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 176 34))
                                   (display "\n")
                                   (x7766 k j x7765)))))
                              (begin
                                (write '(funapp 177 31))
                                (display "\n")
                                (orig-cons x7767 x7764)))))))
                        g7762))))
                   g7761)))
               (any? (lambda (v) (letrec* ((g7769 #t)) g7769)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7770
                     (letrec*
                      ((x7771
                        (begin
                          (write '(funapp 184 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 184 55))
                        (display "\n")
                        (not x7771)))))
                   g7770)))
               (nonzero?/c
                (lambda (g7287 g7288 g7289)
                  (letrec*
                   ((g7772
                     (letrec*
                      ((x-cnd7773
                        (begin
                          (write '(funapp 192 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7774
                                (letrec*
                                 ((x7775
                                   (begin
                                     (write '(funapp 194 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 194 64))
                                   (display "\n")
                                   (not x7775)))))
                              g7774))
                           g7289))))
                      (if x-cnd7773
                        g7289
                        (begin
                          (write '(blame g7287 199 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7287)))))))
                   g7772)))
               (meta (lambda (v) (letrec* ((g7776 v)) g7776)))
               (+
                (letrec*
                 ((xj7290
                   (begin (write '(funapp 204 26)) (display "\n") 'server))
                  (xk7291
                   (begin (write '(funapp 204 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7777
                    (begin
                      (write '(funapp 207 21))
                      (display "\n")
                      ((lambda (j7294 k7295 f7296)
                         (letrec*
                          ((g7779
                            (lambda (g7292 g7293)
                              (letrec*
                               ((g7780
                                 (letrec*
                                  ((x7781
                                    (letrec*
                                     ((x7783
                                       (begin
                                         (write '(funapp 216 44))
                                         (display "\n")
                                         (number?/c j7294 k7295 g7292)))
                                      (x7782
                                       (begin
                                         (write '(funapp 217 44))
                                         (display "\n")
                                         (number?/c j7294 k7295 g7293))))
                                     (begin
                                       (write '(funapp 218 36))
                                       (display "\n")
                                       (f7296 x7783 x7782)))))
                                  (begin
                                    (write '(funapp 219 33))
                                    (display "\n")
                                    (number?/c j7294 k7295 x7781)))))
                               g7780))))
                          g7779))
                       xj7290
                       xk7291
                       (lambda (a b)
                         (letrec*
                          ((g7778
                            (begin
                              (write '(funapp 224 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7778))))))
                  g7777)))
               (-
                (letrec*
                 ((xj7297
                   (begin (write '(funapp 228 26)) (display "\n") 'server))
                  (xk7298
                   (begin (write '(funapp 228 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7784
                    (begin
                      (write '(funapp 231 21))
                      (display "\n")
                      ((lambda (j7301 k7302 f7303)
                         (letrec*
                          ((g7786
                            (lambda (g7299 g7300)
                              (letrec*
                               ((g7787
                                 (letrec*
                                  ((x7788
                                    (letrec*
                                     ((x7790
                                       (begin
                                         (write '(funapp 240 44))
                                         (display "\n")
                                         (number?/c j7301 k7302 g7299)))
                                      (x7789
                                       (begin
                                         (write '(funapp 241 44))
                                         (display "\n")
                                         (number?/c j7301 k7302 g7300))))
                                     (begin
                                       (write '(funapp 242 36))
                                       (display "\n")
                                       (f7303 x7790 x7789)))))
                                  (begin
                                    (write '(funapp 243 33))
                                    (display "\n")
                                    (number?/c j7301 k7302 x7788)))))
                               g7787))))
                          g7786))
                       xj7297
                       xk7298
                       (lambda (a b)
                         (letrec*
                          ((g7785
                            (begin
                              (write '(funapp 248 53))
                              (display "\n")
                              (orig-- a b))))
                          g7785))))))
                  g7784)))
               (*
                (letrec*
                 ((xj7304
                   (begin (write '(funapp 252 26)) (display "\n") 'server))
                  (xk7305
                   (begin (write '(funapp 252 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7791
                    (begin
                      (write '(funapp 255 21))
                      (display "\n")
                      ((lambda (j7308 k7309 f7310)
                         (letrec*
                          ((g7793
                            (lambda (g7306 g7307)
                              (letrec*
                               ((g7794
                                 (letrec*
                                  ((x7795
                                    (letrec*
                                     ((x7797
                                       (begin
                                         (write '(funapp 264 44))
                                         (display "\n")
                                         (number?/c j7308 k7309 g7306)))
                                      (x7796
                                       (begin
                                         (write '(funapp 265 44))
                                         (display "\n")
                                         (number?/c j7308 k7309 g7307))))
                                     (begin
                                       (write '(funapp 266 36))
                                       (display "\n")
                                       (f7310 x7797 x7796)))))
                                  (begin
                                    (write '(funapp 267 33))
                                    (display "\n")
                                    (number?/c j7308 k7309 x7795)))))
                               g7794))))
                          g7793))
                       xj7304
                       xk7305
                       (lambda (a b)
                         (letrec*
                          ((g7792
                            (begin
                              (write '(funapp 272 53))
                              (display "\n")
                              (orig-* a b))))
                          g7792))))))
                  g7791)))
               (/
                (letrec*
                 ((xj7311
                   (begin (write '(funapp 276 26)) (display "\n") 'server))
                  (xk7312
                   (begin (write '(funapp 276 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7798
                    (begin
                      (write '(funapp 279 21))
                      (display "\n")
                      ((lambda (j7315 k7316 f7317)
                         (letrec*
                          ((g7800
                            (lambda (g7313 g7314)
                              (letrec*
                               ((g7801
                                 (letrec*
                                  ((x7802
                                    (letrec*
                                     ((x7804
                                       (begin
                                         (write '(funapp 288 44))
                                         (display "\n")
                                         (number?/c j7315 k7316 g7313)))
                                      (x7803
                                       (begin
                                         (write '(funapp 289 44))
                                         (display "\n")
                                         (number?/c j7315 k7316 g7314))))
                                     (begin
                                       (write '(funapp 290 36))
                                       (display "\n")
                                       (f7317 x7804 x7803)))))
                                  (begin
                                    (write '(funapp 291 33))
                                    (display "\n")
                                    (number?/c j7315 k7316 x7802)))))
                               g7801))))
                          g7800))
                       xj7311
                       xk7312
                       (lambda (a b)
                         (letrec*
                          ((g7799
                            (begin
                              (write '(funapp 296 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7799))))))
                  g7798)))
               (car
                (letrec*
                 ((xj7318
                   (begin (write '(funapp 300 26)) (display "\n") 'server))
                  (xk7319
                   (begin (write '(funapp 300 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7805
                    (begin
                      (write '(funapp 303 21))
                      (display "\n")
                      ((lambda (j7321 k7322 f7323)
                         (letrec*
                          ((g7807
                            (lambda (g7320)
                              (letrec*
                               ((g7808
                                 (letrec*
                                  ((x7809
                                    (letrec*
                                     ((x7810
                                       (begin
                                         (write '(funapp 312 44))
                                         (display "\n")
                                         (pair?/c j7321 k7322 g7320))))
                                     (begin
                                       (write '(funapp 313 36))
                                       (display "\n")
                                       (f7323 x7810)))))
                                  (begin
                                    (write '(funapp 314 33))
                                    (display "\n")
                                    (any/c j7321 k7322 x7809)))))
                               g7808))))
                          g7807))
                       xj7318
                       xk7319
                       (lambda (p)
                         (letrec*
                          ((g7806
                            (begin
                              (write '(funapp 319 51))
                              (display "\n")
                              (orig-car p))))
                          g7806))))))
                  g7805)))
               (cdr
                (letrec*
                 ((xj7324
                   (begin (write '(funapp 323 26)) (display "\n") 'server))
                  (xk7325
                   (begin (write '(funapp 323 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7811
                    (begin
                      (write '(funapp 326 21))
                      (display "\n")
                      ((lambda (j7327 k7328 f7329)
                         (letrec*
                          ((g7813
                            (lambda (g7326)
                              (letrec*
                               ((g7814
                                 (letrec*
                                  ((x7815
                                    (letrec*
                                     ((x7816
                                       (begin
                                         (write '(funapp 335 44))
                                         (display "\n")
                                         (pair?/c j7327 k7328 g7326))))
                                     (begin
                                       (write '(funapp 336 36))
                                       (display "\n")
                                       (f7329 x7816)))))
                                  (begin
                                    (write '(funapp 337 33))
                                    (display "\n")
                                    (any/c j7327 k7328 x7815)))))
                               g7814))))
                          g7813))
                       xj7324
                       xk7325
                       (lambda (p)
                         (letrec*
                          ((g7812
                            (begin
                              (write '(funapp 342 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7812))))))
                  g7811)))
               (cons
                (letrec*
                 ((xj7330
                   (begin (write '(funapp 346 26)) (display "\n") 'server))
                  (xk7331
                   (begin (write '(funapp 346 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7817
                    (begin
                      (write '(funapp 349 21))
                      (display "\n")
                      ((lambda (j7334 k7335 f7336)
                         (letrec*
                          ((g7819
                            (lambda (g7332 g7333)
                              (letrec*
                               ((g7820
                                 (letrec*
                                  ((x7821
                                    (letrec*
                                     ((x7823
                                       (begin
                                         (write '(funapp 358 44))
                                         (display "\n")
                                         (any/c j7334 k7335 g7332)))
                                      (x7822
                                       (begin
                                         (write '(funapp 359 44))
                                         (display "\n")
                                         (any/c j7334 k7335 g7333))))
                                     (begin
                                       (write '(funapp 360 36))
                                       (display "\n")
                                       (f7336 x7823 x7822)))))
                                  (begin
                                    (write '(funapp 361 33))
                                    (display "\n")
                                    (pair?/c j7334 k7335 x7821)))))
                               g7820))))
                          g7819))
                       xj7330
                       xk7331
                       (lambda (a b)
                         (letrec*
                          ((g7818
                            (begin
                              (write '(funapp 367 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7818))))))
                  g7817)))
               (vector-ref
                (letrec*
                 ((xj7337
                   (begin (write '(funapp 371 26)) (display "\n") 'server))
                  (xk7338
                   (begin (write '(funapp 371 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7824
                    (begin
                      (write '(funapp 374 21))
                      (display "\n")
                      ((lambda (j7340 k7341 f7342)
                         (letrec*
                          ((g7826
                            (lambda (g7339)
                              (letrec*
                               ((g7827
                                 (letrec*
                                  ((x7828
                                    (letrec*
                                     ((x7829
                                       (begin
                                         (write '(funapp 383 44))
                                         (display "\n")
                                         (vector?/c j7340 k7341 g7339))))
                                     (begin
                                       (write '(funapp 384 36))
                                       (display "\n")
                                       (f7342 x7829)))))
                                  (begin
                                    (write '(funapp 385 33))
                                    (display "\n")
                                    (integer?/c j7340 k7341 x7828)))))
                               g7827))))
                          g7826))
                       xj7337
                       xk7338
                       (lambda (v i)
                         (letrec*
                          ((g7825
                            (begin
                              (write '(funapp 391 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7825))))))
                  g7824)))
               (vector-set!
                (letrec*
                 ((xj7343
                   (begin (write '(funapp 395 26)) (display "\n") 'server))
                  (xk7344
                   (begin (write '(funapp 395 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7830
                    (begin
                      (write '(funapp 398 21))
                      (display "\n")
                      ((lambda (j7347 k7348 f7349)
                         (letrec*
                          ((g7832
                            (lambda (g7345 g7346)
                              (letrec*
                               ((g7833
                                 (letrec*
                                  ((x7834
                                    (letrec*
                                     ((x7836
                                       (begin
                                         (write '(funapp 407 44))
                                         (display "\n")
                                         (vector?/c j7347 k7348 g7345)))
                                      (x7835
                                       (begin
                                         (write '(funapp 408 44))
                                         (display "\n")
                                         (integer?/c j7347 k7348 g7346))))
                                     (begin
                                       (write '(funapp 409 36))
                                       (display "\n")
                                       (f7349 x7836 x7835)))))
                                  (begin
                                    (write '(funapp 410 33))
                                    (display "\n")
                                    (any/c j7347 k7348 x7834)))))
                               g7833))))
                          g7832))
                       xj7343
                       xk7344
                       (lambda (vec i v)
                         (letrec*
                          ((g7831
                            (begin
                              (write '(funapp 416 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7831))))))
                  g7830)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7837
                     (if cnd
                       (begin (write '(funapp 421 35)) (display "\n") '())
                       (begin
                         (write '(funapp 421 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7837)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7838
                     (letrec*
                      ((x7839
                        (letrec*
                         ((x7840
                           (begin
                             (write '(funapp 428 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 428 58))
                           (display "\n")
                           (cdr x7840)))))
                      (begin
                        (write '(funapp 429 23))
                        (display "\n")
                        (cdr x7839)))))
                   g7838)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7841
                     (letrec*
                      ((x7844
                        (begin
                          (write '(funapp 435 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 435 62))
                        (display "\n")
                        (assert x7844))))
                    (g7842
                     (letrec*
                      ((x7845
                        (begin
                          (write '(funapp 436 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 436 57))
                        (display "\n")
                        (assert x7845))))
                    (g7843
                     (letrec*
                      ((x-cnd7846
                        (begin
                          (write '(funapp 439 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7846
                        (begin (write '(funapp 441 24)) (display "\n") '())
                        (letrec*
                         ((x7849
                           (letrec*
                            ((x7850
                              (begin
                                (write '(funapp 443 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 443 61))
                              (display "\n")
                              (f x7850))))
                          (x7847
                           (letrec*
                            ((x7848
                              (begin
                                (write '(funapp 444 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 444 61))
                              (display "\n")
                              (map f x7848)))))
                         (begin
                           (write '(funapp 445 26))
                           (display "\n")
                           (cons x7849 x7847)))))))
                   g7843)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7851
                     (letrec*
                      ((x7852
                        (begin
                          (write '(funapp 450 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 450 55))
                        (display "\n")
                        (cdr x7852)))))
                   g7851)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7853
                     (letrec*
                      ((x7854
                        (letrec*
                         ((x7855
                           (letrec*
                            ((x7856
                              (begin
                                (write '(funapp 459 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 459 61))
                              (display "\n")
                              (car x7856)))))
                         (begin
                           (write '(funapp 460 26))
                           (display "\n")
                           (cdr x7855)))))
                      (begin
                        (write '(funapp 461 23))
                        (display "\n")
                        (car x7854)))))
                   g7853)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7857
                     (letrec*
                      ((x7858
                        (letrec*
                         ((x7859
                           (letrec*
                            ((x7860
                              (begin
                                (write '(funapp 470 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 470 61))
                              (display "\n")
                              (cdr x7860)))))
                         (begin
                           (write '(funapp 471 26))
                           (display "\n")
                           (car x7859)))))
                      (begin
                        (write '(funapp 472 23))
                        (display "\n")
                        (cdr x7858)))))
                   g7857)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7861
                     (letrec*
                      ((x7864
                        (begin
                          (write '(funapp 478 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 478 60))
                        (display "\n")
                        (assert x7864))))
                    (g7862
                     (letrec*
                      ((x7865
                        (begin
                          (write '(funapp 480 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 480 59))
                        (display "\n")
                        (assert x7865))))
                    (g7863
                     (letrec*
                      ((output-port
                        (begin
                          (write '(funapp 483 37))
                          (display "\n")
                          (open-output-file filename)))
                       (res
                        (begin
                          (write '(funapp 484 29))
                          (display "\n")
                          (proc output-port))))
                      (letrec*
                       ((g7866
                         (begin
                           (write '(funapp 486 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7867 res))
                       g7867))))
                   g7863)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7868
                     (letrec*
                      ((x7869
                        (letrec*
                         ((x7870
                           (begin
                             (write '(funapp 494 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 494 58))
                           (display "\n")
                           (cdr x7870)))))
                      (begin
                        (write '(funapp 495 23))
                        (display "\n")
                        (car x7869)))))
                   g7868)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7871
                     (letrec*
                      ((x7872
                        (letrec*
                         ((x7873
                           (letrec*
                            ((x7874
                              (begin
                                (write '(funapp 504 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 504 61))
                              (display "\n")
                              (car x7874)))))
                         (begin
                           (write '(funapp 505 26))
                           (display "\n")
                           (car x7873)))))
                      (begin
                        (write '(funapp 506 23))
                        (display "\n")
                        (cdr x7872)))))
                   g7871)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7875
                     (letrec*
                      ((x7877
                        (begin
                          (write '(funapp 511 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 511 57))
                        (display "\n")
                        (assert x7877))))
                    (g7876
                     (letrec*
                      ((x-cnd7878
                        (begin
                          (write '(funapp 514 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7878
                        #f
                        (letrec*
                         ((x-cnd7879
                           (letrec*
                            ((x7880
                              (begin
                                (write '(funapp 519 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 519 56))
                              (display "\n")
                              (eq? x7880 k)))))
                         (if x-cnd7879
                           (begin
                             (write '(funapp 521 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7881
                              (begin
                                (write '(funapp 522 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 522 55))
                              (display "\n")
                              (assq k x7881)))))))))
                   g7876)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7882
                     (letrec*
                      ((x7883
                        (begin
                          (write '(funapp 527 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 527 60))
                        (display "\n")
                        (= 0 x7883)))))
                   g7882)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7884
                     (letrec*
                      ((x7886
                        (begin
                          (write '(funapp 532 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 532 57))
                        (display "\n")
                        (assert x7886))))
                    (g7885
                     (letrec*
                      ((x-cnd7887
                        (begin
                          (write '(funapp 535 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7887
                        ""
                        (letrec*
                         ((x7890
                           (letrec*
                            ((x7891
                              (begin
                                (write '(funapp 540 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 540 55))
                              (display "\n")
                              (char->string x7891))))
                          (x7888
                           (letrec*
                            ((x7889
                              (begin
                                (write '(funapp 542 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 542 55))
                              (display "\n")
                              (list->string x7889)))))
                         (begin
                           (write '(funapp 543 26))
                           (display "\n")
                           (string-append x7890 x7888)))))))
                   g7885)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7892
                     (letrec*
                      ((x7895
                        (begin
                          (write '(funapp 548 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 548 58))
                        (display "\n")
                        (assert x7895))))
                    (g7893
                     (letrec*
                      ((x7896
                        (begin
                          (write '(funapp 549 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 549 58))
                        (display "\n")
                        (assert x7896))))
                    (g7894
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 552 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7897
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 554 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7897))))
                   g7894)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7898
                     (letrec*
                      ((x7899
                        (letrec*
                         ((x7900
                           (letrec*
                            ((x7901
                              (begin
                                (write '(funapp 564 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 564 61))
                              (display "\n")
                              (cdr x7901)))))
                         (begin
                           (write '(funapp 565 26))
                           (display "\n")
                           (cdr x7900)))))
                      (begin
                        (write '(funapp 566 23))
                        (display "\n")
                        (cdr x7899)))))
                   g7898)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7902
                     (letrec*
                      ((x7905
                        (begin
                          (write '(funapp 571 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 571 57))
                        (display "\n")
                        (assert x7905))))
                    (g7903
                     (letrec*
                      ((x7906
                        (begin
                          (write '(funapp 572 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 572 57))
                        (display "\n")
                        (assert x7906))))
                    (g7904
                     (letrec*
                      ((x-cnd7907
                        (begin
                          (write '(funapp 575 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7907
                        x
                        (letrec*
                         ((x7909
                           (begin
                             (write '(funapp 579 34))
                             (display "\n")
                             (cdr x)))
                          (x7908
                           (begin
                             (write '(funapp 579 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 580 26))
                           (display "\n")
                           (list-tail x7909 x7908)))))))
                   g7904)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7910
                     (begin (write '(funapp 582 49)) (display "\n") '())))
                   g7910)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7911
                     (letrec*
                      ((x-cnd7912
                        (letrec*
                         ((x7913 #\a))
                         (begin
                           (write '(funapp 589 48))
                           (display "\n")
                           (char-ci>=? c x7913)))))
                      (if x-cnd7912
                        (letrec*
                         ((x7914 #\z))
                         (begin
                           (write '(funapp 591 48))
                           (display "\n")
                           (char-ci<=? c x7914)))
                        #f))))
                   g7911)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7915
                     (letrec*
                      ((x7917
                        (begin
                          (write '(funapp 597 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 597 59))
                        (display "\n")
                        (assert x7917))))
                    (g7916
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 600 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7918
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 606 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7919 (if val7243 val7243 #f)))
                             g7919)))))
                       g7918))))
                   g7916)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7920
                     (letrec*
                      ((val7244
                        (letrec*
                         ((x7921
                           (begin
                             (write '(funapp 618 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 618 62))
                           (display "\n")
                           (= x7921 9)))))
                      (letrec*
                       ((g7922
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (letrec*
                               ((x7923
                                 (begin
                                   (write '(funapp 626 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 627 32))
                                 (display "\n")
                                 (= x7923 10)))))
                            (letrec*
                             ((g7924
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7925
                                    (begin
                                      (write '(funapp 633 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 634 35))
                                    (display "\n")
                                    (= x7925 32))))))
                             g7924)))))
                       g7922))))
                   g7920)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7926
                     (letrec*
                      ((x7927
                        (letrec*
                         ((x7928
                           (begin
                             (write '(funapp 643 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 643 58))
                           (display "\n")
                           (cdr x7928)))))
                      (begin
                        (write '(funapp 644 23))
                        (display "\n")
                        (cdr x7927)))))
                   g7926)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7929
                     (letrec*
                      ((x7931
                        (begin
                          (write '(funapp 649 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 649 59))
                        (display "\n")
                        (assert x7931))))
                    (g7930
                     (begin (write '(funapp 650 28)) (display "\n") (> x 0))))
                   g7930)))
               ($pc (begin (write '(funapp 652 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7932 #f)) g7932)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7933
                     (letrec*
                      ((x7934
                        (begin
                          (write '(funapp 658 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 658 55))
                        (display "\n")
                        (cdr x7934)))))
                   g7933)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7935
                     (letrec*
                      ((x7937
                        (begin
                          (write '(funapp 663 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 663 59))
                        (display "\n")
                        (assert x7937))))
                    (g7936
                     (letrec*
                      ((x-cnd7938
                        (begin
                          (write '(funapp 666 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7938
                        (begin
                          (write '(funapp 667 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 667 49))
                          (display "\n")
                          (floor x))))))
                   g7936)))
               ($cmp (begin (write '(funapp 669 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7939
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 675 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7940
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x-cnd7941
                                 (begin
                                   (write '(funapp 683 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7941
                                 (begin
                                   (write '(funapp 684 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7942
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x-cnd7943
                                       (begin
                                         (write '(funapp 692 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7943
                                       (letrec*
                                        ((x-cnd7944
                                          (begin
                                            (write '(funapp 695 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7944
                                          (begin
                                            (write '(funapp 696 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7945
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x-cnd7946
                                             (begin
                                               (write '(funapp 705 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7946
                                             (letrec*
                                              ((x-cnd7947
                                                (begin
                                                  (write '(funapp 708 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7947
                                                (letrec*
                                                 ((x-cnd7948
                                                   (letrec*
                                                    ((x7950
                                                      (begin
                                                        (write
                                                         '(funapp 713 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7949
                                                      (begin
                                                        (write
                                                         '(funapp 714 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 715 53))
                                                      (display "\n")
                                                      (equal? x7950 x7949)))))
                                                 (if x-cnd7948
                                                   (letrec*
                                                    ((x7952
                                                      (begin
                                                        (write
                                                         '(funapp 718 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7951
                                                      (begin
                                                        (write
                                                         '(funapp 719 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 720 53))
                                                      (display "\n")
                                                      (equal? x7952 x7951)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7953
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x-cnd7954
                                                (begin
                                                  (write '(funapp 729 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7954
                                                (letrec*
                                                 ((x-cnd7955
                                                   (begin
                                                     (write '(funapp 732 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7955
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 735 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7956
                                                       (letrec*
                                                        ((x-cnd7957
                                                          (letrec*
                                                           ((x7958
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  742
                                                                  62))
                                                               (display "\n")
                                                               (vector-length
                                                                b))))
                                                           (begin
                                                             (write
                                                              '(funapp 744 60))
                                                             (display "\n")
                                                             (= x7958 n)))))
                                                        (if x-cnd7957
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7959
                                                                  (letrec*
                                                                   ((val7250
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          753
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (=
                                                                        i
                                                                        n))))
                                                                   (letrec*
                                                                    ((g7960
                                                                      (if val7250
                                                                        val7250
                                                                        (letrec*
                                                                         ((x-cnd7961
                                                                           (letrec*
                                                                            ((x7963
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   762
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 a
                                                                                 i)))
                                                                             (x7962
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   766
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 b
                                                                                 i))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 769
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (equal?
                                                                               x7963
                                                                               x7962)))))
                                                                         (if x-cnd7961
                                                                           (letrec*
                                                                            ((x7964
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   775
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (+
                                                                                 i
                                                                                 1))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 778
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (loop
                                                                               x7964)))
                                                                           #f)))))
                                                                    g7960))))
                                                                g7959))))
                                                           (letrec*
                                                            ((g7965
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   784
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7965))
                                                          #f))))
                                                     g7956))
                                                   #f))
                                                #f)))))
                                         g7953)))))
                                   g7945)))))
                             g7942)))))
                       g7940))))
                   g7939)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7966
                     (letrec*
                      ((x7967
                        (letrec*
                         ((x7968
                           (letrec*
                            ((x7969
                              (begin
                                (write '(funapp 802 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 802 61))
                              (display "\n")
                              (car x7969)))))
                         (begin
                           (write '(funapp 803 26))
                           (display "\n")
                           (car x7968)))))
                      (begin
                        (write '(funapp 804 23))
                        (display "\n")
                        (cdr x7967)))))
                   g7966)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7970
                     (letrec*
                      ((x7971
                        (letrec*
                         ((x7972
                           (letrec*
                            ((x7973
                              (begin
                                (write '(funapp 813 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 813 61))
                              (display "\n")
                              (cdr x7973)))))
                         (begin
                           (write '(funapp 814 26))
                           (display "\n")
                           (car x7972)))))
                      (begin
                        (write '(funapp 815 23))
                        (display "\n")
                        (car x7971)))))
                   g7970)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7974
                     (begin
                       (write '(funapp 817 53))
                       (display "\n")
                       (eq? x y))))
                   g7974)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7975
                     (letrec*
                      ((x7977
                        (begin
                          (write '(funapp 821 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 821 59))
                        (display "\n")
                        (assert x7977))))
                    (g7976
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 824 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7978
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (begin
                                (write '(funapp 830 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7979 (if val7252 val7252 #f)))
                             g7979)))))
                       g7978))))
                   g7976)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7980
                     (letrec*
                      ((x7983
                        (begin
                          (write '(funapp 840 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 840 60))
                        (display "\n")
                        (assert x7983))))
                    (g7981
                     (letrec*
                      ((x7984
                        (begin
                          (write '(funapp 842 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 842 59))
                        (display "\n")
                        (assert x7984))))
                    (g7982
                     (letrec*
                      ((input-port
                        (begin
                          (write '(funapp 845 36))
                          (display "\n")
                          (open-input-file filename)))
                       (res
                        (begin
                          (write '(funapp 846 29))
                          (display "\n")
                          (proc input-port))))
                      (letrec*
                       ((g7985
                         (begin
                           (write '(funapp 848 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7986 res))
                       g7986))))
                   g7982)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7987
                     (begin
                       (write '(funapp 851 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 851 57)) (display "\n") '())))))
                   g7987)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7988
                     (letrec*
                      ((x7991
                        (begin
                          (write '(funapp 855 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 855 58))
                        (display "\n")
                        (assert x7991))))
                    (g7989
                     (letrec*
                      ((x7992
                        (begin
                          (write '(funapp 856 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 856 58))
                        (display "\n")
                        (assert x7992))))
                    (g7990
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 859 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7993
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 861 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7993))))
                   g7990)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7994
                     (letrec*
                      ((x7995
                        (letrec*
                         ((x7996
                           (begin
                             (write '(funapp 869 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 869 58))
                           (display "\n")
                           (car x7996)))))
                      (begin
                        (write '(funapp 870 23))
                        (display "\n")
                        (cdr x7995)))))
                   g7994)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7997
                     (letrec*
                      ((x7998
                        (letrec*
                         ((x7999
                           (letrec*
                            ((x8000
                              (begin
                                (write '(funapp 879 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 879 61))
                              (display "\n")
                              (cdr x8000)))))
                         (begin
                           (write '(funapp 880 26))
                           (display "\n")
                           (car x7999)))))
                      (begin
                        (write '(funapp 881 23))
                        (display "\n")
                        (cdr x7998)))))
                   g7997)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g8001
                     (letrec*
                      ((x8002
                        (letrec*
                         ((x8003
                           (begin
                             (write '(funapp 889 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 889 58))
                           (display "\n")
                           (cdr x8003)))))
                      (begin
                        (write '(funapp 890 23))
                        (display "\n")
                        (car x8002)))))
                   g8001)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g8004
                     (letrec*
                      ((x8005
                        (letrec*
                         ((x8006
                           (begin
                             (write '(funapp 897 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 897 58))
                           (display "\n")
                           (car x8006)))))
                      (begin
                        (write '(funapp 898 23))
                        (display "\n")
                        (car x8005)))))
                   g8004)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g8007
                     (letrec*
                      ((x8010
                        (begin
                          (write '(funapp 903 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 903 58))
                        (display "\n")
                        (assert x8010))))
                    (g8008
                     (letrec*
                      ((x8011
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 904 58))
                        (display "\n")
                        (assert x8011))))
                    (g8009
                     (letrec*
                      ((x8012
                        (begin
                          (write '(funapp 905 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 905 66))
                        (display "\n")
                        (not x8012)))))
                   g8009)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g8013
                     (letrec*
                      ((x8014
                        (letrec*
                         ((x8015
                           (letrec*
                            ((x8016
                              (begin
                                (write '(funapp 915 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 915 61))
                              (display "\n")
                              (car x8016)))))
                         (begin
                           (write '(funapp 916 26))
                           (display "\n")
                           (car x8015)))))
                      (begin
                        (write '(funapp 917 23))
                        (display "\n")
                        (car x8014)))))
                   g8013)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g8017
                     (letrec*
                      ((x8019
                        (begin
                          (write '(funapp 922 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 922 59))
                        (display "\n")
                        (assert x8019))))
                    (g8018
                     (begin (write '(funapp 923 28)) (display "\n") (< x 0))))
                   g8018)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g8020
                     (begin
                       (write '(funapp 925 53))
                       (display "\n")
                       (memq e l))))
                   g8020)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g8021
                     (letrec*
                      ((x8022
                        (letrec*
                         ((x8023
                           (begin
                             (write '(funapp 931 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 931 58))
                           (display "\n")
                           (car x8023)))))
                      (begin
                        (write '(funapp 932 23))
                        (display "\n")
                        (car x8022)))))
                   g8021)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g8024
                     (begin (write '(funapp 934 51)) (display "\n") '())))
                   g8024)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g8025
                     (letrec*
                      ((x8027
                        (begin
                          (write '(funapp 938 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 938 57))
                        (display "\n")
                        (assert x8027))))
                    (g8026
                     (letrec*
                      ((x-cnd8028
                        (begin
                          (write '(funapp 941 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8028
                        (begin (write '(funapp 943 24)) (display "\n") '())
                        (letrec*
                         ((x8031
                           (letrec*
                            ((x8032
                              (begin
                                (write '(funapp 945 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 945 61))
                              (display "\n")
                              (reverse x8032))))
                          (x8029
                           (letrec*
                            ((x8030
                              (begin
                                (write '(funapp 946 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 946 61))
                              (display "\n")
                              (list x8030)))))
                         (begin
                           (write '(funapp 947 26))
                           (display "\n")
                           (append x8031 x8029)))))))
                   g8026)))
               (caaadr
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
                                (write '(funapp 956 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 956 61))
                              (display "\n")
                              (car x8036)))))
                         (begin
                           (write '(funapp 957 26))
                           (display "\n")
                           (car x8035)))))
                      (begin
                        (write '(funapp 958 23))
                        (display "\n")
                        (car x8034)))))
                   g8033)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g8037
                     (letrec*
                      ((x8038
                        (letrec*
                         ((x8039
                           (letrec*
                            ((x8040
                              (begin
                                (write '(funapp 967 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 967 61))
                              (display "\n")
                              (car x8040)))))
                         (begin
                           (write '(funapp 968 26))
                           (display "\n")
                           (cdr x8039)))))
                      (begin
                        (write '(funapp 969 23))
                        (display "\n")
                        (cdr x8038)))))
                   g8037)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g8041
                     (letrec*
                      ((x8043
                        (begin
                          (write '(funapp 974 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 974 59))
                        (display "\n")
                        (assert x8043))))
                    (g8042
                     (letrec*
                      ((x8044
                        (begin
                          (write '(funapp 975 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 975 60))
                        (display "\n")
                        (= 1 x8044)))))
                   g8042)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g8045
                     (letrec*
                      ((x8046
                        (letrec*
                         ((x8047
                           (letrec*
                            ((x8048
                              (begin
                                (write '(funapp 984 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 984 61))
                              (display "\n")
                              (cdr x8048)))))
                         (begin
                           (write '(funapp 985 26))
                           (display "\n")
                           (car x8047)))))
                      (begin
                        (write '(funapp 986 23))
                        (display "\n")
                        (car x8046)))))
                   g8045)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g8049
                     (letrec*
                      ((x8052
                        (begin
                          (write '(funapp 992 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 992 59))
                        (display "\n")
                        (assert x8052))))
                    (g8050
                     (letrec*
                      ((x8053
                        (begin
                          (write '(funapp 993 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 993 60))
                        (display "\n")
                        (assert x8053))))
                    (g8051
                     (letrec*
                      ((x-cnd8054
                        (begin
                          (write '(funapp 996 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd8054
                        (letrec*
                         ((g8055
                           (begin
                             (write '(funapp 998 42))
                             (display "\n")
                             (proc))))
                         g8055)
                        (letrec*
                         ((x-cnd8056
                           (letrec*
                            ((x8057
                              (begin
                                (write '(funapp 1001 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1001 58))
                              (display "\n")
                              (null? x8057)))))
                         (if x-cnd8056
                           (letrec*
                            ((g8058
                              (letrec*
                               ((x8059
                                 (begin
                                   (write '(funapp 1005 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1005 61))
                                 (display "\n")
                                 (proc x8059)))))
                            g8058)
                           (letrec*
                            ((x-cnd8060
                              (letrec*
                               ((x8061
                                 (begin
                                   (write '(funapp 1009 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1009 62))
                                 (display "\n")
                                 (null? x8061)))))
                            (if x-cnd8060
                              (letrec*
                               ((g8062
                                 (letrec*
                                  ((x8064
                                    (begin
                                      (write '(funapp 1014 43))
                                      (display "\n")
                                      (car args)))
                                   (x8063
                                    (begin
                                      (write '(funapp 1014 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1015 35))
                                    (display "\n")
                                    (proc x8064 x8063)))))
                               g8062)
                              (letrec*
                               ((x-cnd8065
                                 (letrec*
                                  ((x8066
                                    (begin
                                      (write '(funapp 1020 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1021 35))
                                    (display "\n")
                                    (null? x8066)))))
                               (if x-cnd8065
                                 (letrec*
                                  ((g8067
                                    (letrec*
                                     ((x8070
                                       (begin
                                         (write '(funapp 1026 46))
                                         (display "\n")
                                         (car args)))
                                      (x8069
                                       (begin
                                         (write '(funapp 1027 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x8068
                                       (begin
                                         (write '(funapp 1028 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1029 38))
                                       (display "\n")
                                       (proc x8070 x8069 x8068)))))
                                  g8067)
                                 (letrec*
                                  ((x-cnd8071
                                    (letrec*
                                     ((x8072
                                       (begin
                                         (write '(funapp 1034 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1035 38))
                                       (display "\n")
                                       (null? x8072)))))
                                  (if x-cnd8071
                                    (letrec*
                                     ((g8073
                                       (letrec*
                                        ((x8077
                                          (begin
                                            (write '(funapp 1040 49))
                                            (display "\n")
                                            (car args)))
                                         (x8076
                                          (begin
                                            (write '(funapp 1041 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x8075
                                          (begin
                                            (write '(funapp 1042 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x8074
                                          (begin
                                            (write '(funapp 1043 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1044 41))
                                          (display "\n")
                                          (proc x8077 x8076 x8075 x8074)))))
                                     g8073)
                                    (letrec*
                                     ((x-cnd8078
                                       (letrec*
                                        ((x8079
                                          (letrec*
                                           ((x8080
                                             (begin
                                               (write '(funapp 1051 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1052 44))
                                             (display "\n")
                                             (cdr x8080)))))
                                        (begin
                                          (write '(funapp 1053 41))
                                          (display "\n")
                                          (null? x8079)))))
                                     (if x-cnd8078
                                       (letrec*
                                        ((g8081
                                          (letrec*
                                           ((x8087
                                             (begin
                                               (write '(funapp 1058 52))
                                               (display "\n")
                                               (car args)))
                                            (x8086
                                             (begin
                                               (write '(funapp 1059 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x8085
                                             (begin
                                               (write '(funapp 1060 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x8084
                                             (begin
                                               (write '(funapp 1061 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x8082
                                             (letrec*
                                              ((x8083
                                                (begin
                                                  (write '(funapp 1064 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1065 47))
                                                (display "\n")
                                                (car x8083)))))
                                           (begin
                                             (write '(funapp 1066 44))
                                             (display "\n")
                                             (proc
                                              x8087
                                              x8086
                                              x8085
                                              x8084
                                              x8082)))))
                                        g8081)
                                       (letrec*
                                        ((x-cnd8088
                                          (letrec*
                                           ((x8089
                                             (letrec*
                                              ((x8090
                                                (begin
                                                  (write '(funapp 1078 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1079 47))
                                                (display "\n")
                                                (cddr x8090)))))
                                           (begin
                                             (write '(funapp 1080 44))
                                             (display "\n")
                                             (null? x8089)))))
                                        (if x-cnd8088
                                          (letrec*
                                           ((g8091
                                             (letrec*
                                              ((x8099
                                                (begin
                                                  (write '(funapp 1085 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x8098
                                                (begin
                                                  (write '(funapp 1086 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x8097
                                                (begin
                                                  (write '(funapp 1087 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x8096
                                                (begin
                                                  (write '(funapp 1088 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x8094
                                                (letrec*
                                                 ((x8095
                                                   (begin
                                                     (write '(funapp 1091 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1092 50))
                                                   (display "\n")
                                                   (car x8095))))
                                               (x8092
                                                (letrec*
                                                 ((x8093
                                                   (begin
                                                     (write '(funapp 1095 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1096 50))
                                                   (display "\n")
                                                   (cadr x8093)))))
                                              (begin
                                                (write '(funapp 1097 47))
                                                (display "\n")
                                                (proc
                                                 x8099
                                                 x8098
                                                 x8097
                                                 x8096
                                                 x8094
                                                 x8092)))))
                                           g8091)
                                          (letrec*
                                           ((x-cnd8100
                                             (letrec*
                                              ((x8101
                                                (letrec*
                                                 ((x8102
                                                   (begin
                                                     (write '(funapp 1110 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1111 50))
                                                   (display "\n")
                                                   (cdddr x8102)))))
                                              (begin
                                                (write '(funapp 1112 47))
                                                (display "\n")
                                                (null? x8101)))))
                                           (if x-cnd8100
                                             (letrec*
                                              ((g8103
                                                (letrec*
                                                 ((x8113
                                                   (begin
                                                     (write '(funapp 1117 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x8112
                                                   (begin
                                                     (write '(funapp 1118 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x8111
                                                   (begin
                                                     (write '(funapp 1119 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x8110
                                                   (begin
                                                     (write '(funapp 1120 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x8108
                                                   (letrec*
                                                    ((x8109
                                                      (begin
                                                        (write
                                                         '(funapp 1123 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1124 53))
                                                      (display "\n")
                                                      (car x8109))))
                                                  (x8106
                                                   (letrec*
                                                    ((x8107
                                                      (begin
                                                        (write
                                                         '(funapp 1127 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1128 53))
                                                      (display "\n")
                                                      (cadr x8107))))
                                                  (x8104
                                                   (letrec*
                                                    ((x8105
                                                      (begin
                                                        (write
                                                         '(funapp 1131 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1132 53))
                                                      (display "\n")
                                                      (caddr x8105)))))
                                                 (begin
                                                   (write '(funapp 1133 50))
                                                   (display "\n")
                                                   (proc
                                                    x8113
                                                    x8112
                                                    x8111
                                                    x8110
                                                    x8108
                                                    x8106
                                                    x8104)))))
                                              g8103)
                                             (letrec*
                                              ((g8114
                                                (begin
                                                  (write '(funapp 1144 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g8114)))))))))))))))))))
                   g8051)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g8115
                     (letrec*
                      ((x8117
                        (begin
                          (write '(funapp 1150 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1150 57))
                        (display "\n")
                        (assert x8117))))
                    (g8116
                     (letrec*
                      ((x-cnd8118
                        (begin
                          (write '(funapp 1153 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8118
                        #f
                        (letrec*
                         ((x-cnd8119
                           (letrec*
                            ((x8120
                              (begin
                                (write '(funapp 1158 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1158 55))
                              (display "\n")
                              (equal? x8120 e)))))
                         (if x-cnd8119
                           l
                           (letrec*
                            ((x8121
                              (begin
                                (write '(funapp 1161 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1161 55))
                              (display "\n")
                              (member e x8121)))))))))
                   g8116)))
               (cddddr
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
                                (write '(funapp 1170 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1170 61))
                              (display "\n")
                              (cdr x8125)))))
                         (begin
                           (write '(funapp 1171 26))
                           (display "\n")
                           (cdr x8124)))))
                      (begin
                        (write '(funapp 1172 23))
                        (display "\n")
                        (cdr x8123)))))
                   g8122)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g8126
                     (letrec*
                      ((x8127
                        (letrec*
                         ((x8128
                           (letrec*
                            ((x8129
                              (begin
                                (write '(funapp 1181 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1181 61))
                              (display "\n")
                              (cdr x8129)))))
                         (begin
                           (write '(funapp 1182 26))
                           (display "\n")
                           (cdr x8128)))))
                      (begin
                        (write '(funapp 1183 23))
                        (display "\n")
                        (car x8127)))))
                   g8126)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g8130
                     (begin
                       (write '(funapp 1185 53))
                       (display "\n")
                       (random 42))))
                   g8130)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g8131
                     (letrec*
                      ((x8133
                        (begin
                          (write '(funapp 1189 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1189 59))
                        (display "\n")
                        (assert x8133))))
                    (g8132
                     (begin (write '(funapp 1190 28)) (display "\n") (= x 0))))
                   g8132)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8134
                     (letrec*
                      ((val7254
                        (begin
                          (write '(funapp 1197 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g8135
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1199 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8135))))
                   g8134)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g8136
                     (letrec*
                      ((x8137
                        (begin
                          (write '(funapp 1205 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1205 55))
                        (display "\n")
                        (car x8137)))))
                   g8136)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g8138
                     (letrec*
                      ((val7255
                        (letrec*
                         ((x-cnd8139
                           (begin
                             (write '(funapp 1215 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8139
                           (letrec*
                            ((x8140
                              (begin
                                (write '(funapp 1217 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1217 55))
                              (display "\n")
                              (list? x8140)))
                           #f))))
                      (letrec*
                       ((g8141
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1220 52))
                             (display "\n")
                             (null? l)))))
                       g8141))))
                   g8138)))
               (cddaar
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
                                (write '(funapp 1230 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1230 61))
                              (display "\n")
                              (car x8145)))))
                         (begin
                           (write '(funapp 1231 26))
                           (display "\n")
                           (cdr x8144)))))
                      (begin
                        (write '(funapp 1232 23))
                        (display "\n")
                        (cdr x8143)))))
                   g8142)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g8146
                     (letrec*
                      ((x-cnd8147
                        (letrec*
                         ((x8148 #\0))
                         (begin
                           (write '(funapp 1239 58))
                           (display "\n")
                           (char<=? x8148 c)))))
                      (if x-cnd8147
                        (letrec*
                         ((x8149 #\9))
                         (begin
                           (write '(funapp 1241 48))
                           (display "\n")
                           (char<=? c x8149)))
                        #f))))
                   g8146)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g8150
                     (letrec*
                      ((x8152
                        (begin
                          (write '(funapp 1248 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1248 57))
                        (display "\n")
                        (assert x8152))))
                    (g8151
                     (letrec*
                      ((x-cnd8153
                        (begin
                          (write '(funapp 1251 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8153
                        #f
                        (letrec*
                         ((x-cnd8154
                           (letrec*
                            ((x8155
                              (begin
                                (write '(funapp 1256 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1256 56))
                              (display "\n")
                              (eqv? x8155 k)))))
                         (if x-cnd8154
                           (begin
                             (write '(funapp 1258 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8156
                              (begin
                                (write '(funapp 1259 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1259 55))
                              (display "\n")
                              (assq k x8156)))))))))
                   g8151)))
               (not (lambda (x) (letrec* ((g8157 (if x #f #t))) g8157)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g8158
                     (begin
                       (write '(funapp 1263 50))
                       (display "\n")
                       (append l1 l2))))
                   g8158)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g8159
                     (letrec*
                      ((x8161
                        (begin
                          (write '(funapp 1267 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1267 57))
                        (display "\n")
                        (assert x8161))))
                    (g8160
                     (letrec*
                      ((x-cnd8162
                        (begin
                          (write '(funapp 1270 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8162
                        #f
                        (letrec*
                         ((x-cnd8163
                           (letrec*
                            ((x8164
                              (begin
                                (write '(funapp 1275 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1275 55))
                              (display "\n")
                              (eq? x8164 e)))))
                         (if x-cnd8163
                           l
                           (letrec*
                            ((x8165
                              (begin
                                (write '(funapp 1278 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1278 55))
                              (display "\n")
                              (memq e x8165)))))))))
                   g8160)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g8166
                     (letrec*
                      ((x8167
                        (letrec*
                         ((x8168
                           (letrec*
                            ((x8169
                              (begin
                                (write '(funapp 1287 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1287 61))
                              (display "\n")
                              (car x8169)))))
                         (begin
                           (write '(funapp 1288 26))
                           (display "\n")
                           (cdr x8168)))))
                      (begin
                        (write '(funapp 1289 23))
                        (display "\n")
                        (car x8167)))))
                   g8166)))
               (length
                (lambda (l)
                  (letrec*
                   ((g8170
                     (letrec*
                      ((x8172
                        (begin
                          (write '(funapp 1294 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1294 57))
                        (display "\n")
                        (assert x8172))))
                    (g8171
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g8173
                             (letrec*
                              ((x-cnd8174
                                (begin
                                  (write '(funapp 1302 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd8174
                                0
                                (letrec*
                                 ((x8175
                                   (letrec*
                                    ((x8176
                                      (begin
                                        (write '(funapp 1307 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1307 63))
                                      (display "\n")
                                      (rec x8176)))))
                                 (begin
                                   (write '(funapp 1308 34))
                                   (display "\n")
                                   (+ 1 x8175)))))))
                           g8173))))
                      (letrec*
                       ((g8177
                         (begin
                           (write '(funapp 1310 40))
                           (display "\n")
                           (rec l))))
                       g8177))))
                   g8171)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8178
                     (letrec*
                      ((x8181
                        (begin
                          (write '(funapp 1315 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1315 58))
                        (display "\n")
                        (assert x8181))))
                    (g8179
                     (letrec*
                      ((x8182
                        (begin
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1316 58))
                        (display "\n")
                        (assert x8182))))
                    (g8180
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1319 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g8183
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1321 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8183))))
                   g8180)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g8184
                     (letrec*
                      ((x8185
                        (begin
                          (write '(funapp 1327 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1327 65))
                        (display "\n")
                        (not x8185)))))
                   g8184)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g8186
                     (letrec*
                      ((x8187
                        (letrec*
                         ((x8188
                           (begin
                             (write '(funapp 1334 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1334 58))
                           (display "\n")
                           (car x8188)))))
                      (begin
                        (write '(funapp 1335 23))
                        (display "\n")
                        (cdr x8187)))))
                   g8186)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g8189
                     (letrec*
                      ((x8191
                        (begin
                          (write '(funapp 1340 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1340 57))
                        (display "\n")
                        (assert x8191))))
                    (g8190
                     (letrec*
                      ((x-cnd8192
                        (begin
                          (write '(funapp 1343 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8192
                        #f
                        (letrec*
                         ((x-cnd8193
                           (letrec*
                            ((x8194
                              (begin
                                (write '(funapp 1348 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1348 56))
                              (display "\n")
                              (equal? x8194 k)))))
                         (if x-cnd8193
                           (begin
                             (write '(funapp 1350 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8195
                              (begin
                                (write '(funapp 1351 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1351 55))
                              (display "\n")
                              (assoc k x8195)))))))))
                   g8190)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g8196
                     (letrec*
                      ((x8197
                        (begin
                          (write '(funapp 1356 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1356 55))
                        (display "\n")
                        (car x8197)))))
                   g8196)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g8198
                     (letrec*
                      ((x8201
                        (begin
                          (write '(funapp 1361 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1361 58))
                        (display "\n")
                        (assert x8201))))
                    (g8199
                     (letrec*
                      ((x8202
                        (begin
                          (write '(funapp 1362 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1362 58))
                        (display "\n")
                        (assert x8202))))
                    (g8200
                     (letrec*
                      ((x8203
                        (begin
                          (write '(funapp 1363 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1363 63))
                        (display "\n")
                        (not x8203)))))
                   g8200)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8204
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1370 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g8205
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1372 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8205))))
                   g8204)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g8206
                     (letrec*
                      ((x8209
                        (begin
                          (write '(funapp 1378 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1378 62))
                        (display "\n")
                        (assert x8209))))
                    (g8207
                     (letrec*
                      ((x8210
                        (begin
                          (write '(funapp 1379 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1379 57))
                        (display "\n")
                        (assert x8210))))
                    (g8208
                     (letrec*
                      ((x-cnd8211
                        (begin
                          (write '(funapp 1382 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8211
                        #t
                        (letrec*
                         ((x-cnd8212
                           (begin
                             (write '(funapp 1386 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8212
                           (letrec*
                            ((g8213
                              (letrec*
                               ((x8215
                                 (begin
                                   (write '(funapp 1389 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1389 64))
                                 (display "\n")
                                 (f x8215))))
                             (g8214
                              (letrec*
                               ((x8216
                                 (begin
                                   (write '(funapp 1391 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1391 58))
                                 (display "\n")
                                 (for-each f x8216)))))
                            g8214)
                           (begin
                             (write '(funapp 1393 27))
                             (display "\n")
                             '())))))))
                   g8208)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g8217
                     (letrec*
                      ((x8219
                        (begin
                          (write '(funapp 1398 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1398 59))
                        (display "\n")
                        (assert x8219))))
                    (g8218
                     (letrec*
                      ((x-cnd8220
                        (begin
                          (write '(funapp 1400 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd8220
                        (begin
                          (write '(funapp 1400 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g8218)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8221
                     (letrec*
                      ((x8224
                        (begin
                          (write '(funapp 1405 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1405 58))
                        (display "\n")
                        (assert x8224))))
                    (g8222
                     (letrec*
                      ((x8225
                        (begin
                          (write '(funapp 1406 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1406 58))
                        (display "\n")
                        (assert x8225))))
                    (g8223
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1409 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g8226
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1411 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8226))))
                   g8223)))
               (caddar
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
                                (write '(funapp 1421 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1421 61))
                              (display "\n")
                              (cdr x8230)))))
                         (begin
                           (write '(funapp 1422 26))
                           (display "\n")
                           (cdr x8229)))))
                      (begin
                        (write '(funapp 1423 23))
                        (display "\n")
                        (car x8228)))))
                   g8227)))
               (newline (lambda () (letrec* ((g8231 #f)) g8231)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g8232
                     (letrec*
                      ((x8234
                        (letrec*
                         ((x8235
                           (begin
                             (write '(funapp 1431 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1431 58))
                           (display "\n")
                           (abs x8235))))
                       (x8233
                        (begin
                          (write '(funapp 1432 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1433 23))
                        (display "\n")
                        (/ x8234 x8233)))))
                   g8232)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g8236
                     (letrec*
                      ((x8238
                        (begin
                          (write '(funapp 1439 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1439 59))
                        (display "\n")
                        (assert x8238))))
                    (g8237
                     (letrec*
                      ((x8239
                        (begin
                          (write '(funapp 1440 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1440 56))
                        (display "\n")
                        (not x8239)))))
                   g8237)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g8240
                     (letrec*
                      ((x8244
                        (begin
                          (write '(funapp 1445 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1445 57))
                        (display "\n")
                        (assert x8244))))
                    (g8241
                     (letrec*
                      ((x8245
                        (begin
                          (write '(funapp 1446 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1446 63))
                        (display "\n")
                        (assert x8245))))
                    (g8242
                     (letrec*
                      ((x8246
                        (letrec*
                         ((x8247
                           (begin
                             (write '(funapp 1449 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1449 61))
                           (display "\n")
                           (< index x8247)))))
                      (begin
                        (write '(funapp 1450 23))
                        (display "\n")
                        (assert x8246))))
                    (g8243
                     (letrec*
                      ((x-cnd8248
                        (begin
                          (write '(funapp 1453 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8248
                        (begin
                          (write '(funapp 1455 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8250
                           (begin
                             (write '(funapp 1457 34))
                             (display "\n")
                             (cdr l)))
                          (x8249
                           (begin
                             (write '(funapp 1457 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1458 26))
                           (display "\n")
                           (list-ref x8250 x8249)))))))
                   g8243)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8251
                     (letrec*
                      ((x-cnd8252
                        (begin
                          (write '(funapp 1465 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8252
                        a
                        (letrec*
                         ((x8253
                           (begin
                             (write '(funapp 1468 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1468 57))
                           (display "\n")
                           (gcd b x8253)))))))
                   g8251)))
               (block
                (lambda (x7699 y7700 color7701)
                  (letrec*
                   ((g8254
                     (letrec*
                      ((x8255
                        (letrec*
                         ((x8256
                           (letrec*
                            ((x8257
                              (begin
                                (write '(funapp 1479 37))
                                (display "\n")
                                (cons
                                 color7701
                                 (begin
                                   (write '(funapp 1479 52))
                                   (display "\n")
                                   '())))))
                            (begin
                              (write '(funapp 1480 29))
                              (display "\n")
                              (cons y7700 x8257)))))
                         (begin
                           (write '(funapp 1481 26))
                           (display "\n")
                           (cons x7699 x8256)))))
                      (begin
                        (write '(funapp 1482 23))
                        (display "\n")
                        (cons
                         (begin
                           (write '(funapp 1482 28))
                           (display "\n")
                           'block)
                         x8255)))))
                   g8254)))
               (block?
                (lambda (block7698)
                  (letrec*
                   ((g8258
                     (letrec*
                      ((x8259
                        (begin
                          (write '(funapp 1488 39))
                          (display "\n")
                          (car block7698))))
                      (begin
                        (write '(funapp 1488 57))
                        (display "\n")
                        (eq?
                         x8259
                         (begin
                           (write '(funapp 1488 67))
                           (display "\n")
                           'block))))))
                   g8258)))
               (block-x
                (lambda (block)
                  (letrec*
                   ((g8260
                     (letrec*
                      ((x8261
                        (begin
                          (write '(funapp 1493 45))
                          (display "\n")
                          (cdr block))))
                      (begin
                        (write '(funapp 1493 59))
                        (display "\n")
                        (car x8261)))))
                   g8260)))
               (block-y
                (lambda (block)
                  (letrec*
                   ((g8262
                     (letrec*
                      ((x8263
                        (letrec*
                         ((x8264
                           (begin
                             (write '(funapp 1500 48))
                             (display "\n")
                             (cdr block))))
                         (begin
                           (write '(funapp 1500 62))
                           (display "\n")
                           (cdr x8264)))))
                      (begin
                        (write '(funapp 1501 23))
                        (display "\n")
                        (car x8263)))))
                   g8262)))
               (block-color
                (lambda (block)
                  (letrec*
                   ((g8265
                     (letrec*
                      ((x8266
                        (letrec*
                         ((x8267
                           (letrec*
                            ((x8268
                              (begin
                                (write '(funapp 1510 51))
                                (display "\n")
                                (cdr block))))
                            (begin
                              (write '(funapp 1510 65))
                              (display "\n")
                              (cdr x8268)))))
                         (begin
                           (write '(funapp 1511 26))
                           (display "\n")
                           (cdr x8267)))))
                      (begin
                        (write '(funapp 1512 23))
                        (display "\n")
                        (car x8266)))))
                   g8265)))
               (tetra
                (lambda (center7706 blocks7707)
                  (letrec*
                   ((g8269
                     (letrec*
                      ((x8270
                        (letrec*
                         ((x8271
                           (begin
                             (write '(funapp 1521 34))
                             (display "\n")
                             (cons
                              blocks7707
                              (begin
                                (write '(funapp 1521 50))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1522 26))
                           (display "\n")
                           (cons center7706 x8271)))))
                      (begin
                        (write '(funapp 1523 23))
                        (display "\n")
                        (cons
                         (begin
                           (write '(funapp 1523 28))
                           (display "\n")
                           'tetra)
                         x8270)))))
                   g8269)))
               (tetra?
                (lambda (tetra7705)
                  (letrec*
                   ((g8272
                     (letrec*
                      ((x8273
                        (begin
                          (write '(funapp 1529 39))
                          (display "\n")
                          (car tetra7705))))
                      (begin
                        (write '(funapp 1529 57))
                        (display "\n")
                        (eq?
                         x8273
                         (begin
                           (write '(funapp 1529 67))
                           (display "\n")
                           'tetra))))))
                   g8272)))
               (tetra-center
                (lambda (tetra)
                  (letrec*
                   ((g8274
                     (letrec*
                      ((x8275
                        (begin
                          (write '(funapp 1534 45))
                          (display "\n")
                          (cdr tetra))))
                      (begin
                        (write '(funapp 1534 59))
                        (display "\n")
                        (car x8275)))))
                   g8274)))
               (tetra-blocks
                (lambda (tetra)
                  (letrec*
                   ((g8276
                     (letrec*
                      ((x8277
                        (letrec*
                         ((x8278
                           (begin
                             (write '(funapp 1541 48))
                             (display "\n")
                             (cdr tetra))))
                         (begin
                           (write '(funapp 1541 62))
                           (display "\n")
                           (cdr x8278)))))
                      (begin
                        (write '(funapp 1542 23))
                        (display "\n")
                        (car x8277)))))
                   g8276)))
               (world
                (lambda (tetra7711 blocks7712)
                  (letrec*
                   ((g8279
                     (letrec*
                      ((x8280
                        (letrec*
                         ((x8281
                           (begin
                             (write '(funapp 1551 34))
                             (display "\n")
                             (cons
                              blocks7712
                              (begin
                                (write '(funapp 1551 50))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1552 26))
                           (display "\n")
                           (cons tetra7711 x8281)))))
                      (begin
                        (write '(funapp 1553 23))
                        (display "\n")
                        (cons
                         (begin
                           (write '(funapp 1553 28))
                           (display "\n")
                           'world)
                         x8280)))))
                   g8279)))
               (world?
                (lambda (world7710)
                  (letrec*
                   ((g8282
                     (letrec*
                      ((x8283
                        (begin
                          (write '(funapp 1559 39))
                          (display "\n")
                          (car world7710))))
                      (begin
                        (write '(funapp 1559 57))
                        (display "\n")
                        (eq?
                         x8283
                         (begin
                           (write '(funapp 1559 67))
                           (display "\n")
                           'world))))))
                   g8282)))
               (world-tetra
                (lambda (world)
                  (letrec*
                   ((g8284
                     (letrec*
                      ((x8285
                        (begin
                          (write '(funapp 1564 45))
                          (display "\n")
                          (cdr world))))
                      (begin
                        (write '(funapp 1564 59))
                        (display "\n")
                        (car x8285)))))
                   g8284)))
               (world-blocks
                (lambda (world)
                  (letrec*
                   ((g8286
                     (letrec*
                      ((x8287
                        (letrec*
                         ((x8288
                           (begin
                             (write '(funapp 1571 48))
                             (display "\n")
                             (cdr world))))
                         (begin
                           (write '(funapp 1571 62))
                           (display "\n")
                           (cdr x8288)))))
                      (begin
                        (write '(funapp 1572 23))
                        (display "\n")
                        (car x8287)))))
                   g8286)))
               (posn
                (lambda (x7716 y7717)
                  (letrec*
                   ((g8289
                     (letrec*
                      ((x8290
                        (letrec*
                         ((x8291
                           (begin
                             (write '(funapp 1581 34))
                             (display "\n")
                             (cons
                              y7717
                              (begin
                                (write '(funapp 1581 45))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1582 26))
                           (display "\n")
                           (cons x7716 x8291)))))
                      (begin
                        (write '(funapp 1583 23))
                        (display "\n")
                        (cons
                         (begin (write '(funapp 1583 28)) (display "\n") 'posn)
                         x8290)))))
                   g8289)))
               (posn?
                (lambda (posn7715)
                  (letrec*
                   ((g8292
                     (letrec*
                      ((x8293
                        (begin
                          (write '(funapp 1589 39))
                          (display "\n")
                          (car posn7715))))
                      (begin
                        (write '(funapp 1589 56))
                        (display "\n")
                        (eq?
                         x8293
                         (begin
                           (write '(funapp 1589 66))
                           (display "\n")
                           'posn))))))
                   g8292)))
               (posn-x
                (lambda (posn)
                  (letrec*
                   ((g8294
                     (letrec*
                      ((x8295
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (cdr posn))))
                      (begin
                        (write '(funapp 1594 58))
                        (display "\n")
                        (car x8295)))))
                   g8294)))
               (posn-y
                (lambda (posn)
                  (letrec*
                   ((g8296
                     (letrec*
                      ((x8297
                        (letrec*
                         ((x8298
                           (begin
                             (write '(funapp 1601 48))
                             (display "\n")
                             (cdr posn))))
                         (begin
                           (write '(funapp 1601 61))
                           (display "\n")
                           (cdr x8298)))))
                      (begin
                        (write '(funapp 1602 23))
                        (display "\n")
                        (car x8297)))))
                   g8296)))
               (COLOR/C symbol?/c)
               (POSN/C
                (lambda (j7351 k7352 v7350)
                  (letrec*
                   ((g8299
                     (letrec*
                      ((checked7353
                        (letrec*
                         ((x8300
                           (letrec*
                            ((x8301
                              (begin
                                (write '(funapp 1612 51))
                                (display "\n")
                                (cdr v7350))))
                            (begin
                              (write '(funapp 1612 65))
                              (display "\n")
                              (car x8301)))))
                         (begin
                           (write '(funapp 1613 26))
                           (display "\n")
                           (real?/c j7351 k7352 x8300)))))
                      (letrec*
                       ((g8302
                         (letrec*
                          ((checked7354
                            (letrec*
                             ((x8303
                               (letrec*
                                ((x8304
                                  (letrec*
                                   ((x8305
                                     (begin
                                       (write '(funapp 1622 52))
                                       (display "\n")
                                       (cdr v7350))))
                                   (begin
                                     (write '(funapp 1622 66))
                                     (display "\n")
                                     (cdr x8305)))))
                                (begin
                                  (write '(funapp 1623 33))
                                  (display "\n")
                                  (car x8304)))))
                             (begin
                               (write '(funapp 1624 30))
                               (display "\n")
                               (real?/c j7351 k7352 x8303)))))
                          (letrec*
                           ((g8306
                             (letrec*
                              ((x8307
                                (letrec*
                                 ((x8308
                                   (begin
                                     (write '(funapp 1630 42))
                                     (display "\n")
                                     (cons
                                      checked7354
                                      (begin
                                        (write '(funapp 1630 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1631 34))
                                   (display "\n")
                                   (cons checked7353 x8308)))))
                              (begin
                                (write '(funapp 1632 31))
                                (display "\n")
                                (cons posn x8307)))))
                           g8306))))
                       g8302))))
                   g8299)))
               (BLOCK/C
                (lambda (j7357 k7358 v7356)
                  (letrec*
                   ((g8309
                     (letrec*
                      ((checked7359
                        (letrec*
                         ((x8310
                           (letrec*
                            ((x8311
                              (begin
                                (write '(funapp 1643 51))
                                (display "\n")
                                (cdr v7356))))
                            (begin
                              (write '(funapp 1643 65))
                              (display "\n")
                              (car x8311)))))
                         (begin
                           (write '(funapp 1644 26))
                           (display "\n")
                           (real?/c j7357 k7358 x8310)))))
                      (letrec*
                       ((g8312
                         (letrec*
                          ((checked7360
                            (letrec*
                             ((x8313
                               (letrec*
                                ((x8314
                                  (letrec*
                                   ((x8315
                                     (begin
                                       (write '(funapp 1653 52))
                                       (display "\n")
                                       (cdr v7356))))
                                   (begin
                                     (write '(funapp 1653 66))
                                     (display "\n")
                                     (cdr x8315)))))
                                (begin
                                  (write '(funapp 1654 33))
                                  (display "\n")
                                  (car x8314)))))
                             (begin
                               (write '(funapp 1655 30))
                               (display "\n")
                               (real?/c j7357 k7358 x8313)))))
                          (letrec*
                           ((g8316
                             (letrec*
                              ((checked7361
                                (letrec*
                                 ((x8317
                                   (letrec*
                                    ((x8318
                                      (letrec*
                                       ((x8319
                                         (letrec*
                                          ((x8320
                                            (begin
                                              (write '(funapp 1667 51))
                                              (display "\n")
                                              (cdr v7356))))
                                          (begin
                                            (write '(funapp 1668 43))
                                            (display "\n")
                                            (cdr x8320)))))
                                       (begin
                                         (write '(funapp 1669 40))
                                         (display "\n")
                                         (cdr x8319)))))
                                    (begin
                                      (write '(funapp 1670 37))
                                      (display "\n")
                                      (car x8318)))))
                                 (begin
                                   (write '(funapp 1671 34))
                                   (display "\n")
                                   (COLOR/C j7357 k7358 x8317)))))
                              (letrec*
                               ((g8321
                                 (letrec*
                                  ((x8322
                                    (letrec*
                                     ((x8323
                                       (letrec*
                                        ((x8324
                                          (begin
                                            (write '(funapp 1679 49))
                                            (display "\n")
                                            (cons
                                             checked7361
                                             (begin
                                               (write '(funapp 1679 66))
                                               (display "\n")
                                               '())))))
                                        (begin
                                          (write '(funapp 1680 41))
                                          (display "\n")
                                          (cons checked7360 x8324)))))
                                     (begin
                                       (write '(funapp 1681 38))
                                       (display "\n")
                                       (cons checked7359 x8323)))))
                                  (begin
                                    (write '(funapp 1682 35))
                                    (display "\n")
                                    (cons block x8322)))))
                               g8321))))
                           g8316))))
                       g8312))))
                   g8309)))
               (BSET/C
                (begin
                  (write '(funapp 1687 24))
                  (display "\n")
                  (listof BLOCK/C)))
               (TETRA/C
                (lambda (j7364 k7365 v7363)
                  (letrec*
                   ((g8325
                     (letrec*
                      ((checked7366
                        (letrec*
                         ((x8326
                           (letrec*
                            ((x8327
                              (begin
                                (write '(funapp 1695 51))
                                (display "\n")
                                (cdr v7363))))
                            (begin
                              (write '(funapp 1695 65))
                              (display "\n")
                              (car x8327)))))
                         (begin
                           (write '(funapp 1696 26))
                           (display "\n")
                           (POSN/C j7364 k7365 x8326)))))
                      (letrec*
                       ((g8328
                         (letrec*
                          ((checked7367
                            (letrec*
                             ((x8329
                               (letrec*
                                ((x8330
                                  (letrec*
                                   ((x8331
                                     (begin
                                       (write '(funapp 1705 52))
                                       (display "\n")
                                       (cdr v7363))))
                                   (begin
                                     (write '(funapp 1705 66))
                                     (display "\n")
                                     (cdr x8331)))))
                                (begin
                                  (write '(funapp 1706 33))
                                  (display "\n")
                                  (car x8330)))))
                             (begin
                               (write '(funapp 1707 30))
                               (display "\n")
                               (BSET/C j7364 k7365 x8329)))))
                          (letrec*
                           ((g8332
                             (letrec*
                              ((x8333
                                (letrec*
                                 ((x8334
                                   (begin
                                     (write '(funapp 1713 42))
                                     (display "\n")
                                     (cons
                                      checked7367
                                      (begin
                                        (write '(funapp 1713 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1714 34))
                                   (display "\n")
                                   (cons checked7366 x8334)))))
                              (begin
                                (write '(funapp 1715 31))
                                (display "\n")
                                (cons tetra x8333)))))
                           g8332))))
                       g8328))))
                   g8325)))
               (WORLD/C
                (lambda (j7370 k7371 v7369)
                  (letrec*
                   ((g8335
                     (letrec*
                      ((checked7372
                        (letrec*
                         ((x8336
                           (letrec*
                            ((x8337
                              (begin
                                (write '(funapp 1726 51))
                                (display "\n")
                                (cdr v7369))))
                            (begin
                              (write '(funapp 1726 65))
                              (display "\n")
                              (car x8337)))))
                         (begin
                           (write '(funapp 1727 26))
                           (display "\n")
                           (TETRA/C j7370 k7371 x8336)))))
                      (letrec*
                       ((g8338
                         (letrec*
                          ((checked7373
                            (letrec*
                             ((x8339
                               (letrec*
                                ((x8340
                                  (letrec*
                                   ((x8341
                                     (begin
                                       (write '(funapp 1736 52))
                                       (display "\n")
                                       (cdr v7369))))
                                   (begin
                                     (write '(funapp 1736 66))
                                     (display "\n")
                                     (cdr x8341)))))
                                (begin
                                  (write '(funapp 1737 33))
                                  (display "\n")
                                  (car x8340)))))
                             (begin
                               (write '(funapp 1738 30))
                               (display "\n")
                               (BSET/C j7370 k7371 x8339)))))
                          (letrec*
                           ((g8342
                             (letrec*
                              ((x8343
                                (letrec*
                                 ((x8344
                                   (begin
                                     (write '(funapp 1744 42))
                                     (display "\n")
                                     (cons
                                      checked7373
                                      (begin
                                        (write '(funapp 1744 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1745 34))
                                   (display "\n")
                                   (cons checked7372 x8344)))))
                              (begin
                                (write '(funapp 1746 31))
                                (display "\n")
                                (cons world x8343)))))
                           g8342))))
                       g8338))))
                   g8335)))
               (posn=?
                (lambda (p1 p2)
                  (letrec*
                   ((g8345
                     (letrec*
                      ((x-cnd8346
                        (letrec*
                         ((x8348
                           (begin
                             (write '(funapp 1757 34))
                             (display "\n")
                             (posn-x p1)))
                          (x8347
                           (begin
                             (write '(funapp 1757 54))
                             (display "\n")
                             (posn-x p2))))
                         (begin
                           (write '(funapp 1758 26))
                           (display "\n")
                           (= x8348 x8347)))))
                      (if x-cnd8346
                        (letrec*
                         ((x8350
                           (begin
                             (write '(funapp 1761 34))
                             (display "\n")
                             (posn-y p1)))
                          (x8349
                           (begin
                             (write '(funapp 1761 54))
                             (display "\n")
                             (posn-y p2))))
                         (begin
                           (write '(funapp 1762 26))
                           (display "\n")
                           (= x8350 x8349)))
                        #f))))
                   g8345)))
               (block-size 20)
               (board-height 20)
               (board-width 10)
               (block=?
                (lambda (b1 b2)
                  (letrec*
                   ((g8351
                     (letrec*
                      ((x-cnd8352
                        (letrec*
                         ((x8354
                           (begin
                             (write '(funapp 1775 34))
                             (display "\n")
                             (block-x b1)))
                          (x8353
                           (begin
                             (write '(funapp 1775 55))
                             (display "\n")
                             (block-x b2))))
                         (begin
                           (write '(funapp 1776 26))
                           (display "\n")
                           (= x8354 x8353)))))
                      (if x-cnd8352
                        (letrec*
                         ((x8356
                           (begin
                             (write '(funapp 1779 34))
                             (display "\n")
                             (block-y b1)))
                          (x8355
                           (begin
                             (write '(funapp 1779 55))
                             (display "\n")
                             (block-y b2))))
                         (begin
                           (write '(funapp 1780 26))
                           (display "\n")
                           (= x8356 x8355)))
                        #f))))
                   g8351)))
               (block-move
                (lambda (dx dy b)
                  (letrec*
                   ((g8357
                     (letrec*
                      ((x8361
                        (letrec*
                         ((x8362
                           (begin
                             (write '(funapp 1788 48))
                             (display "\n")
                             (block-x b))))
                         (begin
                           (write '(funapp 1788 62))
                           (display "\n")
                           (+ dx x8362))))
                       (x8359
                        (letrec*
                         ((x8360
                           (begin
                             (write '(funapp 1789 48))
                             (display "\n")
                             (block-y b))))
                         (begin
                           (write '(funapp 1789 62))
                           (display "\n")
                           (+ dy x8360))))
                       (x8358
                        (begin
                          (write '(funapp 1790 31))
                          (display "\n")
                          (block-color b))))
                      (begin
                        (write '(funapp 1791 23))
                        (display "\n")
                        (block x8361 x8359 x8358)))))
                   g8357)))
               (block-rotate-ccw
                (lambda (c b)
                  (letrec*
                   ((g8363
                     (letrec*
                      ((x8370
                        (letrec*
                         ((x8374
                           (begin
                             (write '(funapp 1800 34))
                             (display "\n")
                             (posn-x c)))
                          (x8371
                           (letrec*
                            ((x8373
                              (begin
                                (write '(funapp 1803 37))
                                (display "\n")
                                (posn-y c)))
                             (x8372
                              (begin
                                (write '(funapp 1803 56))
                                (display "\n")
                                (block-y b))))
                            (begin
                              (write '(funapp 1804 29))
                              (display "\n")
                              (- x8373 x8372)))))
                         (begin
                           (write '(funapp 1805 26))
                           (display "\n")
                           (+ x8374 x8371))))
                       (x8365
                        (letrec*
                         ((x8369
                           (begin
                             (write '(funapp 1808 34))
                             (display "\n")
                             (posn-y c)))
                          (x8366
                           (letrec*
                            ((x8368
                              (begin
                                (write '(funapp 1811 37))
                                (display "\n")
                                (block-x b)))
                             (x8367
                              (begin
                                (write '(funapp 1811 57))
                                (display "\n")
                                (posn-x c))))
                            (begin
                              (write '(funapp 1812 29))
                              (display "\n")
                              (- x8368 x8367)))))
                         (begin
                           (write '(funapp 1813 26))
                           (display "\n")
                           (+ x8369 x8366))))
                       (x8364
                        (begin
                          (write '(funapp 1814 31))
                          (display "\n")
                          (block-color b))))
                      (begin
                        (write '(funapp 1815 23))
                        (display "\n")
                        (block x8370 x8365 x8364)))))
                   g8363)))
               (block-rotate-cw
                (lambda (c b)
                  (letrec*
                   ((g8375
                     (letrec*
                      ((x8376
                        (letrec*
                         ((x8377
                           (begin
                             (write '(funapp 1824 34))
                             (display "\n")
                             (block-rotate-ccw c b))))
                         (begin
                           (write '(funapp 1825 26))
                           (display "\n")
                           (block-rotate-ccw c x8377)))))
                      (begin
                        (write '(funapp 1826 23))
                        (display "\n")
                        (block-rotate-ccw c x8376)))))
                   g8375)))
               (ormap
                (lambda (p? xs)
                  (letrec*
                   ((g8378
                     (letrec*
                      ((x-cnd8379
                        (begin
                          (write '(funapp 1833 35))
                          (display "\n")
                          (null? xs))))
                      (if x-cnd8379
                        (letrec* ((g8380 #f)) g8380)
                        (letrec*
                         ((g8381
                           (letrec*
                            ((x8384
                              (letrec*
                               ((x8385
                                 (begin
                                   (write '(funapp 1839 54))
                                   (display "\n")
                                   (car xs))))
                               (begin
                                 (write '(funapp 1839 65))
                                 (display "\n")
                                 (p? x8385))))
                             (x8382
                              (letrec*
                               ((x8383
                                 (begin
                                   (write '(funapp 1841 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 1841 59))
                                 (display "\n")
                                 (ormap p? x8383)))))
                            (begin
                              (write '(funapp 1842 29))
                              (display "\n")
                              (or x8384 x8382)))))
                         g8381)))))
                   g8378)))
               (andmap
                (lambda (p? xs)
                  (letrec*
                   ((g8386
                     (letrec*
                      ((x-cnd8387
                        (begin
                          (write '(funapp 1850 35))
                          (display "\n")
                          (null? xs))))
                      (if x-cnd8387
                        (letrec* ((g8388 #t)) g8388)
                        (letrec*
                         ((g8389
                           (letrec*
                            ((x8392
                              (letrec*
                               ((x8393
                                 (begin
                                   (write '(funapp 1856 54))
                                   (display "\n")
                                   (car xs))))
                               (begin
                                 (write '(funapp 1856 65))
                                 (display "\n")
                                 (p? x8393))))
                             (x8390
                              (letrec*
                               ((x8391
                                 (begin
                                   (write '(funapp 1858 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 1858 59))
                                 (display "\n")
                                 (andmap p? x8391)))))
                            (begin
                              (write '(funapp 1859 29))
                              (display "\n")
                              (and x8392 x8390)))))
                         g8389)))))
                   g8386)))
               (filter
                (lambda (p? xs)
                  (letrec*
                   ((g8394
                     (letrec*
                      ((x-cnd8395
                        (begin
                          (write '(funapp 1867 35))
                          (display "\n")
                          (null? xs))))
                      (if x-cnd8395
                        (letrec* ((g8396 null)) g8396)
                        (letrec*
                         ((x-cnd8397
                           (letrec*
                            ((x8398
                              (begin
                                (write '(funapp 1871 55))
                                (display "\n")
                                (car xs))))
                            (begin
                              (write '(funapp 1871 66))
                              (display "\n")
                              (p? x8398)))))
                         (if x-cnd8397
                           (letrec*
                            ((g8399
                              (letrec*
                               ((x8402
                                 (begin
                                   (write '(funapp 1876 40))
                                   (display "\n")
                                   (car xs)))
                                (x8400
                                 (letrec*
                                  ((x8401
                                    (begin
                                      (write '(funapp 1879 43))
                                      (display "\n")
                                      (cdr xs))))
                                  (begin
                                    (write '(funapp 1880 35))
                                    (display "\n")
                                    (filter p? x8401)))))
                               (begin
                                 (write '(funapp 1881 32))
                                 (display "\n")
                                 (cons x8402 x8400)))))
                            g8399)
                           (letrec*
                            ((g8403
                              (letrec*
                               ((x8404
                                 (begin
                                   (write '(funapp 1885 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 1885 59))
                                 (display "\n")
                                 (filter p? x8404)))))
                            g8403)))))))
                   g8394)))
               (append
                (lambda (l r)
                  (letrec*
                   ((g8405
                     (letrec*
                      ((x-cnd8406
                        (begin
                          (write '(funapp 1893 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8406
                        (letrec* ((g8407 r)) g8407)
                        (letrec*
                         ((g8408
                           (letrec*
                            ((x8411
                              (begin
                                (write '(funapp 1899 37))
                                (display "\n")
                                (car l)))
                             (x8409
                              (letrec*
                               ((x8410
                                 (begin
                                   (write '(funapp 1901 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1901 58))
                                 (display "\n")
                                 (append x8410 r)))))
                            (begin
                              (write '(funapp 1902 29))
                              (display "\n")
                              (cons x8411 x8409)))))
                         g8408)))))
                   g8405)))
               (foldr
                (lambda (f a xs)
                  (letrec*
                   ((g8412
                     (letrec*
                      ((x-cnd8413
                        (begin
                          (write '(funapp 1910 35))
                          (display "\n")
                          (null? xs))))
                      (if x-cnd8413
                        (letrec* ((g8414 a)) g8414)
                        (letrec*
                         ((g8415
                           (letrec*
                            ((x8418
                              (begin
                                (write '(funapp 1916 37))
                                (display "\n")
                                (car xs)))
                             (x8416
                              (letrec*
                               ((x8417
                                 (begin
                                   (write '(funapp 1918 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 1918 59))
                                 (display "\n")
                                 (foldr f a x8417)))))
                            (begin
                              (write '(funapp 1919 29))
                              (display "\n")
                              (f x8418 x8416)))))
                         g8415)))))
                   g8412)))
               (blocks-contains?
                (lambda (bs b)
                  (letrec*
                   ((g8419
                     (letrec*
                      ((x8420
                        (letrec*
                         ((x8422
                           (begin
                             (write '(funapp 1929 34))
                             (display "\n")
                             (c)))
                          (x8421
                           (begin
                             (write '(funapp 1929 46))
                             (display "\n")
                             (block=? b c))))
                         (begin
                           (write '(funapp 1930 26))
                           (display "\n")
                           (λ x8422 x8421)))))
                      (begin
                        (write '(funapp 1931 23))
                        (display "\n")
                        (ormap x8420 bs)))))
                   g8419)))
               (blocks-subset?
                (lambda (bs1 bs2)
                  (letrec*
                   ((g8423
                     (letrec*
                      ((x8424
                        (letrec*
                         ((x8426
                           (begin
                             (write '(funapp 1940 34))
                             (display "\n")
                             (b)))
                          (x8425
                           (begin
                             (write '(funapp 1940 46))
                             (display "\n")
                             (blocks-contains? bs2 b))))
                         (begin
                           (write '(funapp 1941 26))
                           (display "\n")
                           (λ x8426 x8425)))))
                      (begin
                        (write '(funapp 1942 23))
                        (display "\n")
                        (andmap x8424 bs1)))))
                   g8423)))
               (blocks=?
                (lambda (bs1 bs2)
                  (letrec*
                   ((g8427
                     (letrec*
                      ((x-cnd8428
                        (begin
                          (write '(funapp 1949 35))
                          (display "\n")
                          (blocks-subset? bs1 bs2))))
                      (if x-cnd8428
                        (begin
                          (write '(funapp 1950 37))
                          (display "\n")
                          (blocks-subset? bs2 bs1))
                        #f))))
                   g8427)))
               (blocks-intersect
                (lambda (bs1 bs2)
                  (letrec*
                   ((g8429
                     (letrec*
                      ((x8430
                        (letrec*
                         ((x8432
                           (begin
                             (write '(funapp 1959 34))
                             (display "\n")
                             (b)))
                          (x8431
                           (begin
                             (write '(funapp 1959 46))
                             (display "\n")
                             (blocks-contains? bs2 b))))
                         (begin
                           (write '(funapp 1960 26))
                           (display "\n")
                           (λ x8432 x8431)))))
                      (begin
                        (write '(funapp 1961 23))
                        (display "\n")
                        (filter x8430 bs1)))))
                   g8429)))
               (blocks-count
                (lambda (bs)
                  (letrec*
                   ((g8433
                     (begin
                       (write '(funapp 1964 47))
                       (display "\n")
                       (length bs))))
                   g8433)))
               (blocks-move
                (lambda (dx dy bs)
                  (letrec*
                   ((g8434
                     (letrec*
                      ((x8435
                        (letrec*
                         ((x8437
                           (begin
                             (write '(funapp 1972 34))
                             (display "\n")
                             (b)))
                          (x8436
                           (begin
                             (write '(funapp 1972 46))
                             (display "\n")
                             (block-move dx dy b))))
                         (begin
                           (write '(funapp 1973 26))
                           (display "\n")
                           (λ x8437 x8436)))))
                      (begin
                        (write '(funapp 1974 23))
                        (display "\n")
                        (map x8435 bs)))))
                   g8434)))
               (blocks-rotate-ccw
                (lambda (c bs)
                  (letrec*
                   ((g8438
                     (letrec*
                      ((x8439
                        (letrec*
                         ((x8441
                           (begin
                             (write '(funapp 1983 34))
                             (display "\n")
                             (b)))
                          (x8440
                           (begin
                             (write '(funapp 1983 46))
                             (display "\n")
                             (block-rotate-ccw c b))))
                         (begin
                           (write '(funapp 1984 26))
                           (display "\n")
                           (λ x8441 x8440)))))
                      (begin
                        (write '(funapp 1985 23))
                        (display "\n")
                        (map x8439 bs)))))
                   g8438)))
               (blocks-rotate-cw
                (lambda (c bs)
                  (letrec*
                   ((g8442
                     (letrec*
                      ((x8443
                        (letrec*
                         ((x8445
                           (begin
                             (write '(funapp 1994 34))
                             (display "\n")
                             (b)))
                          (x8444
                           (begin
                             (write '(funapp 1994 46))
                             (display "\n")
                             (block-rotate-cw c b))))
                         (begin
                           (write '(funapp 1995 26))
                           (display "\n")
                           (λ x8445 x8444)))))
                      (begin
                        (write '(funapp 1996 23))
                        (display "\n")
                        (map x8443 bs)))))
                   g8442)))
               (blocks-change-color
                (lambda (bs c)
                  (letrec*
                   ((g8446
                     (letrec*
                      ((x8447
                        (letrec*
                         ((x8451
                           (begin
                             (write '(funapp 2005 34))
                             (display "\n")
                             (b)))
                          (x8448
                           (letrec*
                            ((x8450
                              (begin
                                (write '(funapp 2008 37))
                                (display "\n")
                                (block-x b)))
                             (x8449
                              (begin
                                (write '(funapp 2008 57))
                                (display "\n")
                                (block-y b))))
                            (begin
                              (write '(funapp 2009 29))
                              (display "\n")
                              (block x8450 x8449 c)))))
                         (begin
                           (write '(funapp 2010 26))
                           (display "\n")
                           (λ x8451 x8448)))))
                      (begin
                        (write '(funapp 2011 23))
                        (display "\n")
                        (map x8447 bs)))))
                   g8446)))
               (blocks-row
                (lambda (bs i)
                  (letrec*
                   ((g8452
                     (letrec*
                      ((x8453
                        (letrec*
                         ((x8456
                           (begin
                             (write '(funapp 2020 34))
                             (display "\n")
                             (b)))
                          (x8454
                           (letrec*
                            ((x8455
                              (begin
                                (write '(funapp 2021 51))
                                (display "\n")
                                (block-y b))))
                            (begin
                              (write '(funapp 2021 65))
                              (display "\n")
                              (= i x8455)))))
                         (begin
                           (write '(funapp 2022 26))
                           (display "\n")
                           (λ x8456 x8454)))))
                      (begin
                        (write '(funapp 2023 23))
                        (display "\n")
                        (filter x8453 bs)))))
                   g8452)))
               (full-row?
                (lambda (bs i)
                  (letrec*
                   ((g8457
                     (letrec*
                      ((x8458
                        (letrec*
                         ((x8459
                           (begin
                             (write '(funapp 2032 34))
                             (display "\n")
                             (blocks-row bs i))))
                         (begin
                           (write '(funapp 2033 26))
                           (display "\n")
                           (blocks-count x8459)))))
                      (begin
                        (write '(funapp 2034 23))
                        (display "\n")
                        (= board-width x8458)))))
                   g8457)))
               (blocks-overflow?
                (lambda (bs)
                  (letrec*
                   ((g8460
                     (letrec*
                      ((x8461
                        (letrec*
                         ((x8464
                           (begin
                             (write '(funapp 2043 34))
                             (display "\n")
                             (b)))
                          (x8462
                           (letrec*
                            ((x8463
                              (begin
                                (write '(funapp 2044 51))
                                (display "\n")
                                (block-y b))))
                            (begin
                              (write '(funapp 2044 65))
                              (display "\n")
                              (<= x8463 0)))))
                         (begin
                           (write '(funapp 2045 26))
                           (display "\n")
                           (λ x8464 x8462)))))
                      (begin
                        (write '(funapp 2046 23))
                        (display "\n")
                        (ormap x8461 bs)))))
                   g8460)))
               (blocks-union
                (lambda (bs1 bs2)
                  (letrec*
                   ((g8465
                     (letrec*
                      ((x8466
                        (letrec*
                         ((x8471
                           (begin
                             (write '(funapp 2055 34))
                             (display "\n")
                             (b bs)))
                          (x8467
                           (letrec*
                            ((x-cnd8468
                              (begin
                                (write '(funapp 2058 41))
                                (display "\n")
                                (blocks-contains? bs b))))
                            (if x-cnd8468
                              (letrec* ((g8469 bs)) g8469)
                              (letrec*
                               ((g8470
                                 (begin
                                   (write '(funapp 2061 48))
                                   (display "\n")
                                   (cons b bs))))
                               g8470)))))
                         (begin
                           (write '(funapp 2062 26))
                           (display "\n")
                           (λ x8471 x8467)))))
                      (begin
                        (write '(funapp 2063 23))
                        (display "\n")
                        (foldr x8466 bs2 bs1)))))
                   g8465)))
               (blocks-max-y
                (lambda (bs)
                  (letrec*
                   ((g8472
                     (letrec*
                      ((x8473
                        (letrec*
                         ((x8476
                           (begin
                             (write '(funapp 2072 34))
                             (display "\n")
                             (b n)))
                          (x8474
                           (letrec*
                            ((x8475
                              (begin
                                (write '(funapp 2074 45))
                                (display "\n")
                                (block-y b))))
                            (begin
                              (write '(funapp 2074 59))
                              (display "\n")
                              (max x8475 n)))))
                         (begin
                           (write '(funapp 2075 26))
                           (display "\n")
                           (λ x8476 x8474)))))
                      (begin
                        (write '(funapp 2076 23))
                        (display "\n")
                        (foldr x8473 0 bs)))))
                   g8472)))
               (blocks-min-x
                (lambda (bs)
                  (letrec*
                   ((g8477
                     (letrec*
                      ((x8478
                        (letrec*
                         ((x8481
                           (begin
                             (write '(funapp 2085 34))
                             (display "\n")
                             (b n)))
                          (x8479
                           (letrec*
                            ((x8480
                              (begin
                                (write '(funapp 2087 45))
                                (display "\n")
                                (block-x b))))
                            (begin
                              (write '(funapp 2087 59))
                              (display "\n")
                              (min x8480 n)))))
                         (begin
                           (write '(funapp 2088 26))
                           (display "\n")
                           (λ x8481 x8479)))))
                      (begin
                        (write '(funapp 2089 23))
                        (display "\n")
                        (foldr x8478 board-width bs)))))
                   g8477)))
               (blocks-max-x
                (lambda (bs)
                  (letrec*
                   ((g8482
                     (letrec*
                      ((x8483
                        (letrec*
                         ((x8486
                           (begin
                             (write '(funapp 2098 34))
                             (display "\n")
                             (b n)))
                          (x8484
                           (letrec*
                            ((x8485
                              (begin
                                (write '(funapp 2100 45))
                                (display "\n")
                                (block-x b))))
                            (begin
                              (write '(funapp 2100 59))
                              (display "\n")
                              (max x8485 n)))))
                         (begin
                           (write '(funapp 2101 26))
                           (display "\n")
                           (λ x8486 x8484)))))
                      (begin
                        (write '(funapp 2102 23))
                        (display "\n")
                        (foldr x8483 0 bs)))))
                   g8482)))
               (eliminate-full-rows
                (lambda (bs)
                  (letrec*
                   ((g8487
                     (begin
                       (write '(funapp 2106 36))
                       (display "\n")
                       (elim-row bs board-height 0))))
                   g8487)))
               (elim-row
                (lambda (bs i offset)
                  (letrec*
                   ((g8488
                     (letrec*
                      ((x-cnd8489
                        (begin
                          (write '(funapp 2112 35))
                          (display "\n")
                          (< i 0))))
                      (if x-cnd8489
                        (letrec* ((g8490 empty)) g8490)
                        (letrec*
                         ((x-cnd8491
                           (begin
                             (write '(funapp 2116 38))
                             (display "\n")
                             (full-row? bs i))))
                         (if x-cnd8491
                           (letrec*
                            ((g8492
                              (letrec*
                               ((x8494
                                 (begin
                                   (write '(funapp 2121 40))
                                   (display "\n")
                                   (sub1 i)))
                                (x8493
                                 (begin
                                   (write '(funapp 2121 57))
                                   (display "\n")
                                   (add1 offset))))
                               (begin
                                 (write '(funapp 2122 32))
                                 (display "\n")
                                 (elim-row bs x8494 x8493)))))
                            g8492)
                           (letrec*
                            ((g8495
                              (letrec*
                               ((x8498
                                 (letrec*
                                  ((x8499
                                    (begin
                                      (write '(funapp 2129 43))
                                      (display "\n")
                                      (sub1 i))))
                                  (begin
                                    (write '(funapp 2130 35))
                                    (display "\n")
                                    (elim-row bs x8499 offset))))
                                (x8496
                                 (letrec*
                                  ((x8497
                                    (begin
                                      (write '(funapp 2133 43))
                                      (display "\n")
                                      (blocks-row bs i))))
                                  (begin
                                    (write '(funapp 2134 35))
                                    (display "\n")
                                    (blocks-move 0 offset x8497)))))
                               (begin
                                 (write '(funapp 2135 32))
                                 (display "\n")
                                 (blocks-union x8498 x8496)))))
                            g8495)))))))
                   g8488)))
               (tetra-move
                (lambda (dx dy t)
                  (letrec*
                   ((g8500
                     (letrec*
                      ((x8503
                        (letrec*
                         ((x8507
                           (letrec*
                            ((x8508
                              (letrec*
                               ((x8509
                                 (begin
                                   (write '(funapp 2149 40))
                                   (display "\n")
                                   (tetra-center t))))
                               (begin
                                 (write '(funapp 2150 32))
                                 (display "\n")
                                 (posn-x x8509)))))
                            (begin
                              (write '(funapp 2151 29))
                              (display "\n")
                              (+ dx x8508))))
                          (x8504
                           (letrec*
                            ((x8505
                              (letrec*
                               ((x8506
                                 (begin
                                   (write '(funapp 2156 40))
                                   (display "\n")
                                   (tetra-center t))))
                               (begin
                                 (write '(funapp 2157 32))
                                 (display "\n")
                                 (posn-y x8506)))))
                            (begin
                              (write '(funapp 2158 29))
                              (display "\n")
                              (+ dy x8505)))))
                         (begin
                           (write '(funapp 2159 26))
                           (display "\n")
                           (posn x8507 x8504))))
                       (x8501
                        (letrec*
                         ((x8502
                           (begin
                             (write '(funapp 2162 34))
                             (display "\n")
                             (tetra-blocks t))))
                         (begin
                           (write '(funapp 2163 26))
                           (display "\n")
                           (blocks-move dx dy x8502)))))
                      (begin
                        (write '(funapp 2164 23))
                        (display "\n")
                        (tetra x8503 x8501)))))
                   g8500)))
               (tetra-rotate-ccw
                (lambda (t)
                  (letrec*
                   ((g8510
                     (letrec*
                      ((x8514
                        (begin
                          (write '(funapp 2171 31))
                          (display "\n")
                          (tetra-center t)))
                       (x8511
                        (letrec*
                         ((x8513
                           (begin
                             (write '(funapp 2174 34))
                             (display "\n")
                             (tetra-center t)))
                          (x8512
                           (begin
                             (write '(funapp 2174 59))
                             (display "\n")
                             (tetra-blocks t))))
                         (begin
                           (write '(funapp 2175 26))
                           (display "\n")
                           (blocks-rotate-ccw x8513 x8512)))))
                      (begin
                        (write '(funapp 2176 23))
                        (display "\n")
                        (tetra x8514 x8511)))))
                   g8510)))
               (tetra-rotate-cw
                (lambda (t)
                  (letrec*
                   ((g8515
                     (letrec*
                      ((x8519
                        (begin
                          (write '(funapp 2183 31))
                          (display "\n")
                          (tetra-center t)))
                       (x8516
                        (letrec*
                         ((x8518
                           (begin
                             (write '(funapp 2186 34))
                             (display "\n")
                             (tetra-center t)))
                          (x8517
                           (begin
                             (write '(funapp 2186 59))
                             (display "\n")
                             (tetra-blocks t))))
                         (begin
                           (write '(funapp 2187 26))
                           (display "\n")
                           (blocks-rotate-cw x8518 x8517)))))
                      (begin
                        (write '(funapp 2188 23))
                        (display "\n")
                        (tetra x8519 x8516)))))
                   g8515)))
               (tetra-overlaps-blocks?
                (lambda (t bs)
                  (letrec*
                   ((g8520
                     (letrec*
                      ((x8521
                        (letrec*
                         ((x8522
                           (letrec*
                            ((x8523
                              (begin
                                (write '(funapp 2199 37))
                                (display "\n")
                                (tetra-blocks t))))
                            (begin
                              (write '(funapp 2200 29))
                              (display "\n")
                              (blocks-intersect x8523 bs)))))
                         (begin
                           (write '(funapp 2201 26))
                           (display "\n")
                           (false? x8522)))))
                      (begin
                        (write '(funapp 2202 23))
                        (display "\n")
                        (false? x8521)))))
                   g8520)))
               (tetra-change-color
                (lambda (t c)
                  (letrec*
                   ((g8524
                     (letrec*
                      ((x8527
                        (begin
                          (write '(funapp 2209 31))
                          (display "\n")
                          (tetra-center t)))
                       (x8525
                        (letrec*
                         ((x8526
                           (begin
                             (write '(funapp 2212 34))
                             (display "\n")
                             (tetra-blocks t))))
                         (begin
                           (write '(funapp 2213 26))
                           (display "\n")
                           (blocks-change-color x8526 c)))))
                      (begin
                        (write '(funapp 2214 23))
                        (display "\n")
                        (tetra x8527 x8525)))))
                   g8524)))
               (build-tetra-blocks
                (lambda (color xc yc x1 y1 x2 y2 x3 y3 x4 y4)
                  (letrec*
                   ((g8528
                     (letrec*
                      ((x8529
                        (letrec*
                         ((x8535
                           (begin
                             (write '(funapp 2223 34))
                             (display "\n")
                             (posn xc yc)))
                          (x8530
                           (letrec*
                            ((x8534
                              (begin
                                (write '(funapp 2226 37))
                                (display "\n")
                                (block x1 y1 color)))
                             (x8533
                              (begin
                                (write '(funapp 2227 37))
                                (display "\n")
                                (block x2 y2 color)))
                             (x8532
                              (begin
                                (write '(funapp 2228 37))
                                (display "\n")
                                (block x3 y3 color)))
                             (x8531
                              (begin
                                (write '(funapp 2229 37))
                                (display "\n")
                                (block x4 y4 color))))
                            (begin
                              (write '(funapp 2230 29))
                              (display "\n")
                              (list x8534 x8533 x8532 x8531)))))
                         (begin
                           (write '(funapp 2231 26))
                           (display "\n")
                           (tetra x8535 x8530)))))
                      (begin
                        (write '(funapp 2232 23))
                        (display "\n")
                        (tetra-move 3 0 x8529)))))
                   g8528)))
               (touchdown
                (lambda (w tetras)
                  (letrec*
                   ((g8536
                     (letrec*
                      ((x8542
                        (begin
                          (write '(funapp 2239 31))
                          (display "\n")
                          (list-pick-random tetras)))
                       (x8537
                        (letrec*
                         ((x8538
                           (letrec*
                            ((x8540
                              (letrec*
                               ((x8541
                                 (begin
                                   (write '(funapp 2246 40))
                                   (display "\n")
                                   (world-tetra w))))
                               (begin
                                 (write '(funapp 2247 32))
                                 (display "\n")
                                 (tetra-blocks x8541))))
                             (x8539
                              (begin
                                (write '(funapp 2248 37))
                                (display "\n")
                                (world-blocks w))))
                            (begin
                              (write '(funapp 2249 29))
                              (display "\n")
                              (blocks-union x8540 x8539)))))
                         (begin
                           (write '(funapp 2250 26))
                           (display "\n")
                           (eliminate-full-rows x8538)))))
                      (begin
                        (write '(funapp 2251 23))
                        (display "\n")
                        (world x8542 x8537)))))
                   g8536)))
               (world-jump-down
                (lambda (w)
                  (letrec*
                   ((g8543
                     (letrec*
                      ((x-cnd8544
                        (begin
                          (write '(funapp 2258 35))
                          (display "\n")
                          (landed? w))))
                      (if x-cnd8544
                        (letrec* ((g8545 w)) g8545)
                        (letrec*
                         ((g8546
                           (letrec*
                            ((x8547
                              (letrec*
                               ((x8549
                                 (letrec*
                                  ((x8550
                                    (begin
                                      (write '(funapp 2268 43))
                                      (display "\n")
                                      (world-tetra w))))
                                  (begin
                                    (write '(funapp 2269 35))
                                    (display "\n")
                                    (tetra-move 0 1 x8550))))
                                (x8548
                                 (begin
                                   (write '(funapp 2270 40))
                                   (display "\n")
                                   (world-blocks w))))
                               (begin
                                 (write '(funapp 2271 32))
                                 (display "\n")
                                 (world x8549 x8548)))))
                            (begin
                              (write '(funapp 2272 29))
                              (display "\n")
                              (world-jump-down x8547)))))
                         g8546)))))
                   g8543)))
               (landed-on-blocks?
                (lambda (w)
                  (letrec*
                   ((g8551
                     (letrec*
                      ((x8553
                        (letrec*
                         ((x8554
                           (begin
                             (write '(funapp 2282 34))
                             (display "\n")
                             (world-tetra w))))
                         (begin
                           (write '(funapp 2283 26))
                           (display "\n")
                           (tetra-move 0 1 x8554))))
                       (x8552
                        (begin
                          (write '(funapp 2284 31))
                          (display "\n")
                          (world-blocks w))))
                      (begin
                        (write '(funapp 2285 23))
                        (display "\n")
                        (tetra-overlaps-blocks? x8553 x8552)))))
                   g8551)))
               (landed-on-floor?
                (lambda (w)
                  (letrec*
                   ((g8555
                     (letrec*
                      ((x8557
                        (letrec*
                         ((x8558
                           (letrec*
                            ((x8559
                              (begin
                                (write '(funapp 2296 37))
                                (display "\n")
                                (world-tetra w))))
                            (begin
                              (write '(funapp 2297 29))
                              (display "\n")
                              (tetra-blocks x8559)))))
                         (begin
                           (write '(funapp 2298 26))
                           (display "\n")
                           (blocks-max-y x8558))))
                       (x8556
                        (begin
                          (write '(funapp 2299 31))
                          (display "\n")
                          (sub1 board-height))))
                      (begin
                        (write '(funapp 2300 23))
                        (display "\n")
                        (= x8557 x8556)))))
                   g8555)))
               (landed?
                (lambda (w)
                  (letrec*
                   ((g8560
                     (letrec*
                      ((val7259
                        (begin
                          (write '(funapp 2307 33))
                          (display "\n")
                          (landed-on-blocks? w))))
                      (letrec*
                       ((g8561
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 2309 52))
                             (display "\n")
                             (landed-on-floor? w)))))
                       g8561))))
                   g8560)))
               (next-world
                (lambda (w tetras)
                  (letrec*
                   ((g8562
                     (letrec*
                      ((x-cnd8563
                        (begin
                          (write '(funapp 2317 35))
                          (display "\n")
                          (landed? w))))
                      (if x-cnd8563
                        (letrec*
                         ((g8564
                           (begin
                             (write '(funapp 2319 42))
                             (display "\n")
                             (touchdown w tetras))))
                         g8564)
                        (letrec*
                         ((g8565
                           (letrec*
                            ((x8567
                              (letrec*
                               ((x8568
                                 (begin
                                   (write '(funapp 2325 40))
                                   (display "\n")
                                   (world-tetra w))))
                               (begin
                                 (write '(funapp 2326 32))
                                 (display "\n")
                                 (tetra-move 0 1 x8568))))
                             (x8566
                              (begin
                                (write '(funapp 2327 37))
                                (display "\n")
                                (world-blocks w))))
                            (begin
                              (write '(funapp 2328 29))
                              (display "\n")
                              (world x8567 x8566)))))
                         g8565)))))
                   g8562)))
               (try-new-tetra
                (lambda (w new-tetra)
                  (letrec*
                   ((g8569
                     (letrec*
                      ((x-cnd8570
                        (letrec*
                         ((x8576
                           (letrec*
                            ((x8577
                              (letrec*
                               ((x8578
                                 (begin
                                   (write '(funapp 2342 40))
                                   (display "\n")
                                   (tetra-blocks new-tetra))))
                               (begin
                                 (write '(funapp 2343 32))
                                 (display "\n")
                                 (blocks-min-x x8578)))))
                            (begin
                              (write '(funapp 2344 29))
                              (display "\n")
                              (< x8577 0))))
                          (x8573
                           (letrec*
                            ((x8574
                              (letrec*
                               ((x8575
                                 (begin
                                   (write '(funapp 2349 40))
                                   (display "\n")
                                   (tetra-blocks new-tetra))))
                               (begin
                                 (write '(funapp 2350 32))
                                 (display "\n")
                                 (blocks-max-x x8575)))))
                            (begin
                              (write '(funapp 2351 29))
                              (display "\n")
                              (>= x8574 board-width))))
                          (x8571
                           (letrec*
                            ((x8572
                              (begin
                                (write '(funapp 2354 37))
                                (display "\n")
                                (world-blocks w))))
                            (begin
                              (write '(funapp 2355 29))
                              (display "\n")
                              (tetra-overlaps-blocks? new-tetra x8572)))))
                         (begin
                           (write '(funapp 2356 26))
                           (display "\n")
                           (or x8576 x8573 x8571)))))
                      (if x-cnd8570
                        (letrec* ((g8579 w)) g8579)
                        (letrec*
                         ((g8580
                           (letrec*
                            ((x8581
                              (begin
                                (write '(funapp 2362 37))
                                (display "\n")
                                (world-blocks w))))
                            (begin
                              (write '(funapp 2363 29))
                              (display "\n")
                              (world new-tetra x8581)))))
                         g8580)))))
                   g8569)))
               (world-move
                (lambda (dx dy w)
                  (letrec*
                   ((g8582
                     (letrec*
                      ((x8583
                        (letrec*
                         ((x8584
                           (begin
                             (write '(funapp 2373 34))
                             (display "\n")
                             (world-tetra w))))
                         (begin
                           (write '(funapp 2374 26))
                           (display "\n")
                           (tetra-move dx dy x8584)))))
                      (begin
                        (write '(funapp 2375 23))
                        (display "\n")
                        (try-new-tetra w x8583)))))
                   g8582)))
               (world-rotate-ccw
                (lambda (w)
                  (letrec*
                   ((g8585
                     (letrec*
                      ((x8586
                        (letrec*
                         ((x8587
                           (begin
                             (write '(funapp 2384 34))
                             (display "\n")
                             (world-tetra w))))
                         (begin
                           (write '(funapp 2385 26))
                           (display "\n")
                           (tetra-rotate-ccw x8587)))))
                      (begin
                        (write '(funapp 2386 23))
                        (display "\n")
                        (try-new-tetra w x8586)))))
                   g8585)))
               (world-rotate-cw
                (lambda (w)
                  (letrec*
                   ((g8588
                     (letrec*
                      ((x8589
                        (letrec*
                         ((x8590
                           (begin
                             (write '(funapp 2395 34))
                             (display "\n")
                             (world-tetra w))))
                         (begin
                           (write '(funapp 2396 26))
                           (display "\n")
                           (tetra-rotate-cw x8590)))))
                      (begin
                        (write '(funapp 2397 23))
                        (display "\n")
                        (try-new-tetra w x8589)))))
                   g8588)))
               (ghost-blocks
                (lambda (w)
                  (letrec*
                   ((g8591
                     (letrec*
                      ((x8592
                        (letrec*
                         ((x8593
                           (letrec*
                            ((x8594
                              (begin
                                (write '(funapp 2408 37))
                                (display "\n")
                                (world-jump-down w))))
                            (begin
                              (write '(funapp 2409 29))
                              (display "\n")
                              (world-tetra x8594)))))
                         (begin
                           (write '(funapp 2410 26))
                           (display "\n")
                           (tetra-change-color
                            x8593
                            (begin
                              (write '(funapp 2410 51))
                              (display "\n")
                              'gray))))))
                      (begin
                        (write '(funapp 2411 23))
                        (display "\n")
                        (tetra-blocks x8592)))))
                   g8591)))
               (world-key-move
                (lambda (w k)
                  (letrec*
                   ((g8595
                     (letrec*
                      ((x-cnd8596
                        (begin
                          (write '(funapp 2418 35))
                          (display "\n")
                          (equal? k "left"))))
                      (if x-cnd8596
                        (letrec*
                         ((g8597
                           (begin
                             (write '(funapp 2420 42))
                             (display "\n")
                             (world-move neg-1 0 w))))
                         g8597)
                        (letrec*
                         ((x-cnd8598
                           (begin
                             (write '(funapp 2422 38))
                             (display "\n")
                             (equal? k "right"))))
                         (if x-cnd8598
                           (letrec*
                            ((g8599
                              (begin
                                (write '(funapp 2424 45))
                                (display "\n")
                                (world-move 1 0 w))))
                            g8599)
                           (letrec*
                            ((x-cnd8600
                              (begin
                                (write '(funapp 2426 41))
                                (display "\n")
                                (equal? k "down"))))
                            (if x-cnd8600
                              (letrec*
                               ((g8601
                                 (begin
                                   (write '(funapp 2428 48))
                                   (display "\n")
                                   (world-jump-down w))))
                               g8601)
                              (letrec*
                               ((x-cnd8602
                                 (begin
                                   (write '(funapp 2430 44))
                                   (display "\n")
                                   (equal? k "a"))))
                               (if x-cnd8602
                                 (letrec*
                                  ((g8603
                                    (begin
                                      (write '(funapp 2432 51))
                                      (display "\n")
                                      (world-rotate-ccw w))))
                                  g8603)
                                 (letrec*
                                  ((x-cnd8604
                                    (begin
                                      (write '(funapp 2434 47))
                                      (display "\n")
                                      (equal? k "s"))))
                                  (if x-cnd8604
                                    (letrec*
                                     ((g8605
                                       (begin
                                         (write '(funapp 2437 46))
                                         (display "\n")
                                         (world-rotate-cw w))))
                                     g8605)
                                    (letrec* ((g8606 w)) g8606)))))))))))))
                   g8595)))
               (image
                (lambda ()
                  (letrec*
                   ((g8607
                     (begin
                       (write '(funapp 2441 51))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2441 56)) (display "\n") 'image)
                        (begin
                          (write '(funapp 2441 63))
                          (display "\n")
                          '())))))
                   g8607)))
               (image?
                (lambda (image7720)
                  (letrec*
                   ((g8608
                     (letrec*
                      ((x8609
                        (begin
                          (write '(funapp 2446 39))
                          (display "\n")
                          (car image7720))))
                      (begin
                        (write '(funapp 2446 57))
                        (display "\n")
                        (eq?
                         x8609
                         (begin
                           (write '(funapp 2446 67))
                           (display "\n")
                           'image))))))
                   g8608)))
               (overlay
                (lambda (i₁ i₂)
                  (letrec*
                   ((g8610
                     (begin (write '(funapp 2448 58)) (display "\n") (image))))
                   g8610)))
               (circle
                (lambda (r m c)
                  (letrec*
                   ((g8611
                     (begin (write '(funapp 2449 57)) (display "\n") (image))))
                   g8611)))
               (rectangle
                (lambda (w h m c)
                  (letrec*
                   ((g8612
                     (begin (write '(funapp 2450 62)) (display "\n") (image))))
                   g8612)))
               (place-image
                (lambda (i₁ r c i₂)
                  (letrec*
                   ((g8613
                     (begin (write '(funapp 2452 54)) (display "\n") (image))))
                   g8613)))
               (empty-scene
                (lambda (w h)
                  (letrec*
                   ((g8614
                     (begin (write '(funapp 2453 60)) (display "\n") (image))))
                   g8614)))
               (list-pick-random
                (lambda (xs)
                  (letrec*
                   ((g8615
                     (letrec*
                      ((x-cnd8616
                        (letrec*
                         ((x8617
                           (begin
                             (write '(funapp 2459 52))
                             (display "\n")
                             (cdr xs))))
                         (begin
                           (write '(funapp 2459 63))
                           (display "\n")
                           (null? x8617)))))
                      (if x-cnd8616
                        (letrec*
                         ((g8618
                           (begin
                             (write '(funapp 2461 42))
                             (display "\n")
                             (car xs))))
                         g8618)
                        (letrec*
                         ((g8619
                           (letrec*
                            ((x8620
                              (begin
                                (write '(funapp 2465 37))
                                (display "\n")
                                (cdr xs))))
                            (begin
                              (write '(funapp 2466 29))
                              (display "\n")
                              (list-pick-random x8620)))))
                         g8619)))))
                   g8615)))
               (neg-1
                (begin (write '(funapp 2469 23)) (display "\n") (random 10)))
               (world->image
                (lambda (w)
                  (letrec*
                   ((g8621
                     (letrec*
                      ((x8625
                        (letrec*
                         ((x8626
                           (letrec*
                            ((x8630
                              (letrec*
                               ((x8631
                                 (begin
                                   (write '(funapp 2481 40))
                                   (display "\n")
                                   (world-tetra w))))
                               (begin
                                 (write '(funapp 2482 32))
                                 (display "\n")
                                 (tetra-blocks x8631))))
                             (x8627
                              (letrec*
                               ((x8629
                                 (begin
                                   (write '(funapp 2485 40))
                                   (display "\n")
                                   (ghost-blocks w)))
                                (x8628
                                 (begin
                                   (write '(funapp 2486 40))
                                   (display "\n")
                                   (world-blocks w))))
                               (begin
                                 (write '(funapp 2487 32))
                                 (display "\n")
                                 (append x8629 x8628)))))
                            (begin
                              (write '(funapp 2488 29))
                              (display "\n")
                              (append x8630 x8627)))))
                         (begin
                           (write '(funapp 2489 26))
                           (display "\n")
                           (blocks->image x8626))))
                       (x8622
                        (letrec*
                         ((x8624
                           (begin
                             (write '(funapp 2492 34))
                             (display "\n")
                             (* board-width block-size)))
                          (x8623
                           (begin
                             (write '(funapp 2493 34))
                             (display "\n")
                             (* board-height block-size))))
                         (begin
                           (write '(funapp 2494 26))
                           (display "\n")
                           (empty-scene x8624 x8623)))))
                      (begin
                        (write '(funapp 2495 23))
                        (display "\n")
                        (place-image x8625 0 0 x8622)))))
                   g8621)))
               (blocks->image
                (lambda (bs)
                  (letrec*
                   ((g8632
                     (letrec*
                      ((x8638
                        (letrec*
                         ((x8644
                           (begin
                             (write '(funapp 2504 34))
                             (display "\n")
                             (b img)))
                          (x8639
                           (letrec*
                            ((x-cnd8640
                              (letrec*
                               ((x8641
                                 (begin
                                   (write '(funapp 2508 48))
                                   (display "\n")
                                   (block-y b))))
                               (begin
                                 (write '(funapp 2508 62))
                                 (display "\n")
                                 (<= 0 x8641)))))
                            (if x-cnd8640
                              (letrec*
                               ((g8642
                                 (begin
                                   (write '(funapp 2510 48))
                                   (display "\n")
                                   (place-block b img))))
                               g8642)
                              (letrec* ((g8643 img)) g8643)))))
                         (begin
                           (write '(funapp 2512 26))
                           (display "\n")
                           (λ x8644 x8639))))
                       (x8633
                        (letrec*
                         ((x8636
                           (letrec*
                            ((x8637
                              (begin
                                (write '(funapp 2517 37))
                                (display "\n")
                                (* board-width block-size))))
                            (begin
                              (write '(funapp 2518 29))
                              (display "\n")
                              (add1 x8637))))
                          (x8634
                           (letrec*
                            ((x8635
                              (begin
                                (write '(funapp 2521 37))
                                (display "\n")
                                (* board-height block-size))))
                            (begin
                              (write '(funapp 2522 29))
                              (display "\n")
                              (add1 x8635)))))
                         (begin
                           (write '(funapp 2523 26))
                           (display "\n")
                           (empty-scene x8636 x8634)))))
                      (begin
                        (write '(funapp 2524 23))
                        (display "\n")
                        (foldr x8638 x8633 bs)))))
                   g8632)))
               (block->image
                (lambda (b)
                  (letrec*
                   ((g8645
                     (letrec*
                      ((x8649
                        (letrec*
                         ((x8652
                           (begin
                             (write '(funapp 2533 34))
                             (display "\n")
                             (add1 block-size)))
                          (x8651
                           (begin
                             (write '(funapp 2534 34))
                             (display "\n")
                             (add1 block-size)))
                          (x8650
                           (begin
                             (write '(funapp 2535 34))
                             (display "\n")
                             (block-color b))))
                         (begin
                           (write '(funapp 2536 26))
                           (display "\n")
                           (rectangle
                            x8652
                            x8651
                            (begin
                              (write '(funapp 2536 48))
                              (display "\n")
                              'solid)
                            x8650))))
                       (x8646
                        (letrec*
                         ((x8648
                           (begin
                             (write '(funapp 2539 34))
                             (display "\n")
                             (add1 block-size)))
                          (x8647
                           (begin
                             (write '(funapp 2539 60))
                             (display "\n")
                             (add1 block-size))))
                         (begin
                           (write '(funapp 2540 26))
                           (display "\n")
                           (rectangle
                            x8648
                            x8647
                            (begin
                              (write '(funapp 2540 48))
                              (display "\n")
                              'outline)
                            (begin
                              (write '(funapp 2540 57))
                              (display "\n")
                              'black))))))
                      (begin
                        (write '(funapp 2541 23))
                        (display "\n")
                        (overlay x8649 x8646)))))
                   g8645)))
               (place-block
                (lambda (b scene)
                  (letrec*
                   ((g8653
                     (letrec*
                      ((x8662
                        (begin
                          (write '(funapp 2548 31))
                          (display "\n")
                          (block->image b)))
                       (x8658
                        (letrec*
                         ((x8660
                           (letrec*
                            ((x8661
                              (begin
                                (write '(funapp 2553 37))
                                (display "\n")
                                (block-x b))))
                            (begin
                              (write '(funapp 2554 29))
                              (display "\n")
                              (* x8661 block-size))))
                          (x8659
                           (begin
                             (write '(funapp 2555 34))
                             (display "\n")
                             (/ block-size 2))))
                         (begin
                           (write '(funapp 2556 26))
                           (display "\n")
                           (+ x8660 x8659))))
                       (x8654
                        (letrec*
                         ((x8656
                           (letrec*
                            ((x8657
                              (begin
                                (write '(funapp 2561 37))
                                (display "\n")
                                (block-y b))))
                            (begin
                              (write '(funapp 2562 29))
                              (display "\n")
                              (* x8657 block-size))))
                          (x8655
                           (begin
                             (write '(funapp 2563 34))
                             (display "\n")
                             (/ block-size 2))))
                         (begin
                           (write '(funapp 2564 26))
                           (display "\n")
                           (+ x8656 x8655)))))
                      (begin
                        (write '(funapp 2565 23))
                        (display "\n")
                        (place-image x8662 x8658 x8654 scene)))))
                   g8653)))
               (world0
                (lambda (tetras)
                  (letrec*
                   ((g8663
                     (letrec*
                      ((x8664
                        (begin
                          (write '(funapp 2572 31))
                          (display "\n")
                          (list-pick-random tetras))))
                      (begin
                        (write '(funapp 2573 23))
                        (display "\n")
                        (world x8664 null)))))
                   g8663))))
              (letrec*
               ((g8665
                 (letrec*
                  ((x8728
                    (letrec*
                     ((xj7375
                       (letrec*
                        ((x8729
                          (begin
                            (write '(funapp 2580 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 2580 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 2580 61))
                             (display "\n")
                             'module)
                           x8729))))
                      (xk7376
                       (letrec*
                        ((x8730
                          (begin
                            (write '(funapp 2582 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 2582 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 2582 54))
                             (display "\n")
                             'importer)
                           x8730)))))
                     (letrec*
                      ((g8731
                        (begin
                          (write '(funapp 2585 25))
                          (display "\n")
                          ((lambda (j7379 k7380 f7381)
                             (letrec*
                              ((g8732
                                (lambda (g7377 g7378)
                                  (letrec*
                                   ((g8733
                                     (letrec*
                                      ((x8734
                                        (letrec*
                                         ((x8736
                                           (begin
                                             (write '(funapp 2594 48))
                                             (display "\n")
                                             (POSN/C j7379 k7380 g7377)))
                                          (x8735
                                           (begin
                                             (write '(funapp 2595 48))
                                             (display "\n")
                                             (POSN/C j7379 k7380 g7378))))
                                         (begin
                                           (write '(funapp 2596 40))
                                           (display "\n")
                                           (f7381 x8736 x8735)))))
                                      (begin
                                        (write '(funapp 2597 37))
                                        (display "\n")
                                        (boolean?/c j7379 k7380 x8734)))))
                                   g8733))))
                              g8732))
                           xj7375
                           xk7376
                           posn=?))))
                      g8731)))
                   (x8723
                    (letrec*
                     ((x8724
                       (letrec*
                        ((x8727 (input))
                         (x8725
                          (letrec*
                           ((x8726 (input)))
                           (begin
                             (write '(funapp 2609 60))
                             (display "\n")
                             (cons
                              x8726
                              (begin
                                (write '(funapp 2609 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2610 25))
                          (display "\n")
                          (cons x8727 x8725)))))
                     (begin
                       (write '(funapp 2611 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2611 27)) (display "\n") 'posn)
                        x8724))))
                   (x8718
                    (letrec*
                     ((x8719
                       (letrec*
                        ((x8722 (input))
                         (x8720
                          (letrec*
                           ((x8721 (input)))
                           (begin
                             (write '(funapp 2617 60))
                             (display "\n")
                             (cons
                              x8721
                              (begin
                                (write '(funapp 2617 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2618 25))
                          (display "\n")
                          (cons x8722 x8720)))))
                     (begin
                       (write '(funapp 2619 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2619 27)) (display "\n") 'posn)
                        x8719)))))
                  (begin
                    (write '(funapp 2620 19))
                    (display "\n")
                    (x8728 x8723 x8718))))
                (g8666
                 (letrec*
                  ((xj7382
                    (letrec*
                     ((x8737
                       (begin (write '(funapp 2623 45)) (display "\n") (loc))))
                     (begin
                       (write '(funapp 2623 53))
                       (display "\n")
                       (cons
                        (begin
                          (write '(funapp 2623 58))
                          (display "\n")
                          'module)
                        x8737))))
                   (xk7383
                    (letrec*
                     ((x8738
                       (begin (write '(funapp 2624 45)) (display "\n") (loc))))
                     (begin
                       (write '(funapp 2624 53))
                       (display "\n")
                       (cons
                        (begin
                          (write '(funapp 2624 58))
                          (display "\n")
                          'importer)
                        x8738)))))
                  (letrec*
                   ((g8739
                     (begin
                       (write '(funapp 2625 36))
                       (display "\n")
                       (any/c xj7382 xk7383 COLOR/C))))
                   g8739)))
                (g8667
                 (letrec*
                  ((xj7384
                    (letrec*
                     ((x8740
                       (begin (write '(funapp 2628 45)) (display "\n") (loc))))
                     (begin
                       (write '(funapp 2628 53))
                       (display "\n")
                       (cons
                        (begin
                          (write '(funapp 2628 58))
                          (display "\n")
                          'module)
                        x8740))))
                   (xk7385
                    (letrec*
                     ((x8741
                       (begin (write '(funapp 2629 45)) (display "\n") (loc))))
                     (begin
                       (write '(funapp 2629 53))
                       (display "\n")
                       (cons
                        (begin
                          (write '(funapp 2629 58))
                          (display "\n")
                          'importer)
                        x8741)))))
                  (letrec*
                   ((g8742
                     (begin
                       (write '(funapp 2630 36))
                       (display "\n")
                       (any/c xj7384 xk7385 POSN/C))))
                   g8742)))
                (g8668
                 (letrec*
                  ((xj7386
                    (letrec*
                     ((x8743
                       (begin (write '(funapp 2633 45)) (display "\n") (loc))))
                     (begin
                       (write '(funapp 2633 53))
                       (display "\n")
                       (cons
                        (begin
                          (write '(funapp 2633 58))
                          (display "\n")
                          'module)
                        x8743))))
                   (xk7387
                    (letrec*
                     ((x8744
                       (begin (write '(funapp 2634 45)) (display "\n") (loc))))
                     (begin
                       (write '(funapp 2634 53))
                       (display "\n")
                       (cons
                        (begin
                          (write '(funapp 2634 58))
                          (display "\n")
                          'importer)
                        x8744)))))
                  (letrec*
                   ((g8745
                     (begin
                       (write '(funapp 2635 36))
                       (display "\n")
                       (any/c xj7386 xk7387 BLOCK/C))))
                   g8745)))
                (g8669
                 (letrec*
                  ((xj7388
                    (letrec*
                     ((x8746
                       (begin (write '(funapp 2638 45)) (display "\n") (loc))))
                     (begin
                       (write '(funapp 2638 53))
                       (display "\n")
                       (cons
                        (begin
                          (write '(funapp 2638 58))
                          (display "\n")
                          'module)
                        x8746))))
                   (xk7389
                    (letrec*
                     ((x8747
                       (begin (write '(funapp 2639 45)) (display "\n") (loc))))
                     (begin
                       (write '(funapp 2639 53))
                       (display "\n")
                       (cons
                        (begin
                          (write '(funapp 2639 58))
                          (display "\n")
                          'importer)
                        x8747)))))
                  (letrec*
                   ((g8748
                     (begin
                       (write '(funapp 2640 36))
                       (display "\n")
                       (any/c xj7388 xk7389 TETRA/C))))
                   g8748)))
                (g8670
                 (letrec*
                  ((xj7390
                    (letrec*
                     ((x8749
                       (begin (write '(funapp 2643 45)) (display "\n") (loc))))
                     (begin
                       (write '(funapp 2643 53))
                       (display "\n")
                       (cons
                        (begin
                          (write '(funapp 2643 58))
                          (display "\n")
                          'module)
                        x8749))))
                   (xk7391
                    (letrec*
                     ((x8750
                       (begin (write '(funapp 2644 45)) (display "\n") (loc))))
                     (begin
                       (write '(funapp 2644 53))
                       (display "\n")
                       (cons
                        (begin
                          (write '(funapp 2644 58))
                          (display "\n")
                          'importer)
                        x8750)))))
                  (letrec*
                   ((g8751
                     (begin
                       (write '(funapp 2645 36))
                       (display "\n")
                       (any/c xj7390 xk7391 WORLD/C))))
                   g8751)))
                (g8671
                 (letrec*
                  ((xj7392
                    (letrec*
                     ((x8752
                       (begin (write '(funapp 2648 45)) (display "\n") (loc))))
                     (begin
                       (write '(funapp 2648 53))
                       (display "\n")
                       (cons
                        (begin
                          (write '(funapp 2648 58))
                          (display "\n")
                          'module)
                        x8752))))
                   (xk7393
                    (letrec*
                     ((x8753
                       (begin (write '(funapp 2649 45)) (display "\n") (loc))))
                     (begin
                       (write '(funapp 2649 53))
                       (display "\n")
                       (cons
                        (begin
                          (write '(funapp 2649 58))
                          (display "\n")
                          'importer)
                        x8753)))))
                  (letrec*
                   ((g8754
                     (begin
                       (write '(funapp 2650 36))
                       (display "\n")
                       (any/c xj7392 xk7393 BSET/C))))
                   g8754)))
                (g8672
                 (letrec*
                  ((xj7394
                    (letrec*
                     ((x8755
                       (begin (write '(funapp 2653 45)) (display "\n") (loc))))
                     (begin
                       (write '(funapp 2653 53))
                       (display "\n")
                       (cons
                        (begin
                          (write '(funapp 2653 58))
                          (display "\n")
                          'module)
                        x8755))))
                   (xk7395
                    (letrec*
                     ((x8756
                       (begin (write '(funapp 2654 45)) (display "\n") (loc))))
                     (begin
                       (write '(funapp 2654 53))
                       (display "\n")
                       (cons
                        (begin
                          (write '(funapp 2654 58))
                          (display "\n")
                          'importer)
                        x8756)))))
                  (letrec*
                   ((g8757
                     (begin
                       (write '(funapp 2656 28))
                       (display "\n")
                       (integer?/c xj7394 xk7395 block-size))))
                   g8757)))
                (g8673
                 (letrec*
                  ((xj7396
                    (letrec*
                     ((x8758
                       (begin (write '(funapp 2660 45)) (display "\n") (loc))))
                     (begin
                       (write '(funapp 2660 53))
                       (display "\n")
                       (cons
                        (begin
                          (write '(funapp 2660 58))
                          (display "\n")
                          'module)
                        x8758))))
                   (xk7397
                    (letrec*
                     ((x8759
                       (begin (write '(funapp 2661 45)) (display "\n") (loc))))
                     (begin
                       (write '(funapp 2661 53))
                       (display "\n")
                       (cons
                        (begin
                          (write '(funapp 2661 58))
                          (display "\n")
                          'importer)
                        x8759)))))
                  (letrec*
                   ((g8760
                     (begin
                       (write '(funapp 2663 28))
                       (display "\n")
                       (integer?/c xj7396 xk7397 board-width))))
                   g8760)))
                (g8674
                 (letrec*
                  ((xj7398
                    (letrec*
                     ((x8761
                       (begin (write '(funapp 2667 45)) (display "\n") (loc))))
                     (begin
                       (write '(funapp 2667 53))
                       (display "\n")
                       (cons
                        (begin
                          (write '(funapp 2667 58))
                          (display "\n")
                          'module)
                        x8761))))
                   (xk7399
                    (letrec*
                     ((x8762
                       (begin (write '(funapp 2668 45)) (display "\n") (loc))))
                     (begin
                       (write '(funapp 2668 53))
                       (display "\n")
                       (cons
                        (begin
                          (write '(funapp 2668 58))
                          (display "\n")
                          'importer)
                        x8762)))))
                  (letrec*
                   ((g8763
                     (begin
                       (write '(funapp 2670 28))
                       (display "\n")
                       (integer?/c xj7398 xk7399 board-height))))
                   g8763)))
                (g8675
                 (letrec*
                  ((x8776
                    (letrec*
                     ((xj7400
                       (letrec*
                        ((x8777
                          (begin
                            (write '(funapp 2676 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 2676 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 2676 61))
                             (display "\n")
                             'module)
                           x8777))))
                      (xk7401
                       (letrec*
                        ((x8778
                          (begin
                            (write '(funapp 2678 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 2678 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 2678 54))
                             (display "\n")
                             'importer)
                           x8778)))))
                     (letrec*
                      ((g8779
                        (begin
                          (write '(funapp 2681 25))
                          (display "\n")
                          ((lambda (j7404 k7405 f7406)
                             (letrec*
                              ((g8780
                                (lambda (g7402 g7403)
                                  (letrec*
                                   ((g8781
                                     (letrec*
                                      ((x8782
                                        (letrec*
                                         ((x8784
                                           (begin
                                             (write '(funapp 2690 48))
                                             (display "\n")
                                             (POSN/C j7404 k7405 g7402)))
                                          (x8783
                                           (begin
                                             (write '(funapp 2691 48))
                                             (display "\n")
                                             (BLOCK/C j7404 k7405 g7403))))
                                         (begin
                                           (write '(funapp 2692 40))
                                           (display "\n")
                                           (f7406 x8784 x8783)))))
                                      (begin
                                        (write '(funapp 2693 37))
                                        (display "\n")
                                        (BLOCK/C j7404 k7405 x8782)))))
                                   g8781))))
                              g8780))
                           xj7400
                           xk7401
                           block-rotate-ccw))))
                      g8779)))
                   (x8771
                    (letrec*
                     ((x8772
                       (letrec*
                        ((x8775 (input))
                         (x8773
                          (letrec*
                           ((x8774 (input)))
                           (begin
                             (write '(funapp 2705 60))
                             (display "\n")
                             (cons
                              x8774
                              (begin
                                (write '(funapp 2705 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2706 25))
                          (display "\n")
                          (cons x8775 x8773)))))
                     (begin
                       (write '(funapp 2707 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2707 27)) (display "\n") 'posn)
                        x8772))))
                   (x8764
                    (letrec*
                     ((x8765
                       (letrec*
                        ((x8770 (input))
                         (x8766
                          (letrec*
                           ((x8769 (input))
                            (x8767
                             (letrec*
                              ((x8768 (input)))
                              (begin
                                (write '(funapp 2717 57))
                                (display "\n")
                                (cons
                                 x8768
                                 (begin
                                   (write '(funapp 2717 68))
                                   (display "\n")
                                   '()))))))
                           (begin
                             (write '(funapp 2718 28))
                             (display "\n")
                             (cons x8769 x8767)))))
                        (begin
                          (write '(funapp 2719 25))
                          (display "\n")
                          (cons x8770 x8766)))))
                     (begin
                       (write '(funapp 2720 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2720 27)) (display "\n") 'block)
                        x8765)))))
                  (begin
                    (write '(funapp 2721 19))
                    (display "\n")
                    (x8776 x8771 x8764))))
                (g8676
                 (letrec*
                  ((x8797
                    (letrec*
                     ((xj7407
                       (letrec*
                        ((x8798
                          (begin
                            (write '(funapp 2726 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 2726 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 2726 61))
                             (display "\n")
                             'module)
                           x8798))))
                      (xk7408
                       (letrec*
                        ((x8799
                          (begin
                            (write '(funapp 2728 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 2728 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 2728 54))
                             (display "\n")
                             'importer)
                           x8799)))))
                     (letrec*
                      ((g8800
                        (begin
                          (write '(funapp 2731 25))
                          (display "\n")
                          ((lambda (j7411 k7412 f7413)
                             (letrec*
                              ((g8801
                                (lambda (g7409 g7410)
                                  (letrec*
                                   ((g8802
                                     (letrec*
                                      ((x8803
                                        (letrec*
                                         ((x8805
                                           (begin
                                             (write '(funapp 2740 48))
                                             (display "\n")
                                             (POSN/C j7411 k7412 g7409)))
                                          (x8804
                                           (begin
                                             (write '(funapp 2741 48))
                                             (display "\n")
                                             (BLOCK/C j7411 k7412 g7410))))
                                         (begin
                                           (write '(funapp 2742 40))
                                           (display "\n")
                                           (f7413 x8805 x8804)))))
                                      (begin
                                        (write '(funapp 2743 37))
                                        (display "\n")
                                        (BLOCK/C j7411 k7412 x8803)))))
                                   g8802))))
                              g8801))
                           xj7407
                           xk7408
                           block-rotate-cw))))
                      g8800)))
                   (x8792
                    (letrec*
                     ((x8793
                       (letrec*
                        ((x8796 (input))
                         (x8794
                          (letrec*
                           ((x8795 (input)))
                           (begin
                             (write '(funapp 2755 60))
                             (display "\n")
                             (cons
                              x8795
                              (begin
                                (write '(funapp 2755 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2756 25))
                          (display "\n")
                          (cons x8796 x8794)))))
                     (begin
                       (write '(funapp 2757 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2757 27)) (display "\n") 'posn)
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
                                (write '(funapp 2767 57))
                                (display "\n")
                                (cons
                                 x8789
                                 (begin
                                   (write '(funapp 2767 68))
                                   (display "\n")
                                   '()))))))
                           (begin
                             (write '(funapp 2768 28))
                             (display "\n")
                             (cons x8790 x8788)))))
                        (begin
                          (write '(funapp 2769 25))
                          (display "\n")
                          (cons x8791 x8787)))))
                     (begin
                       (write '(funapp 2770 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2770 27)) (display "\n") 'block)
                        x8786)))))
                  (begin
                    (write '(funapp 2771 19))
                    (display "\n")
                    (x8797 x8792 x8785))))
                (g8677
                 (letrec*
                  ((x8820
                    (letrec*
                     ((xj7414
                       (letrec*
                        ((x8821
                          (begin
                            (write '(funapp 2776 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 2776 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 2776 61))
                             (display "\n")
                             'module)
                           x8821))))
                      (xk7415
                       (letrec*
                        ((x8822
                          (begin
                            (write '(funapp 2778 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 2778 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 2778 54))
                             (display "\n")
                             'importer)
                           x8822)))))
                     (letrec*
                      ((g8823
                        (begin
                          (write '(funapp 2781 25))
                          (display "\n")
                          ((lambda (j7418 k7419 f7420)
                             (letrec*
                              ((g8824
                                (lambda (g7416 g7417)
                                  (letrec*
                                   ((g8825
                                     (letrec*
                                      ((x8826
                                        (letrec*
                                         ((x8828
                                           (begin
                                             (write '(funapp 2790 48))
                                             (display "\n")
                                             (BLOCK/C j7418 k7419 g7416)))
                                          (x8827
                                           (begin
                                             (write '(funapp 2791 48))
                                             (display "\n")
                                             (BLOCK/C j7418 k7419 g7417))))
                                         (begin
                                           (write '(funapp 2792 40))
                                           (display "\n")
                                           (f7420 x8828 x8827)))))
                                      (begin
                                        (write '(funapp 2793 37))
                                        (display "\n")
                                        (boolean?/c j7418 k7419 x8826)))))
                                   g8825))))
                              g8824))
                           xj7414
                           xk7415
                           block=?))))
                      g8823)))
                   (x8813
                    (letrec*
                     ((x8814
                       (letrec*
                        ((x8819 (input))
                         (x8815
                          (letrec*
                           ((x8818 (input))
                            (x8816
                             (letrec*
                              ((x8817 (input)))
                              (begin
                                (write '(funapp 2809 57))
                                (display "\n")
                                (cons
                                 x8817
                                 (begin
                                   (write '(funapp 2809 68))
                                   (display "\n")
                                   '()))))))
                           (begin
                             (write '(funapp 2810 28))
                             (display "\n")
                             (cons x8818 x8816)))))
                        (begin
                          (write '(funapp 2811 25))
                          (display "\n")
                          (cons x8819 x8815)))))
                     (begin
                       (write '(funapp 2812 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2812 27)) (display "\n") 'block)
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
                                (write '(funapp 2822 57))
                                (display "\n")
                                (cons
                                 x8810
                                 (begin
                                   (write '(funapp 2822 68))
                                   (display "\n")
                                   '()))))))
                           (begin
                             (write '(funapp 2823 28))
                             (display "\n")
                             (cons x8811 x8809)))))
                        (begin
                          (write '(funapp 2824 25))
                          (display "\n")
                          (cons x8812 x8808)))))
                     (begin
                       (write '(funapp 2825 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2825 27)) (display "\n") 'block)
                        x8807)))))
                  (begin
                    (write '(funapp 2826 19))
                    (display "\n")
                    (x8820 x8813 x8806))))
                (g8678
                 (letrec*
                  ((x8838
                    (letrec*
                     ((xj7421
                       (letrec*
                        ((x8839
                          (begin
                            (write '(funapp 2831 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 2831 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 2831 61))
                             (display "\n")
                             'module)
                           x8839))))
                      (xk7422
                       (letrec*
                        ((x8840
                          (begin
                            (write '(funapp 2833 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 2833 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 2833 54))
                             (display "\n")
                             'importer)
                           x8840)))))
                     (letrec*
                      ((g8841
                        (begin
                          (write '(funapp 2836 25))
                          (display "\n")
                          ((lambda (j7426 k7427 f7428)
                             (letrec*
                              ((g8842
                                (lambda (g7423 g7424 g7425)
                                  (letrec*
                                   ((g8843
                                     (letrec*
                                      ((x8844
                                        (letrec*
                                         ((x8847
                                           (begin
                                             (write '(funapp 2845 48))
                                             (display "\n")
                                             (real?/c j7426 k7427 g7423)))
                                          (x8846
                                           (begin
                                             (write '(funapp 2846 48))
                                             (display "\n")
                                             (real?/c j7426 k7427 g7424)))
                                          (x8845
                                           (begin
                                             (write '(funapp 2847 48))
                                             (display "\n")
                                             (BLOCK/C j7426 k7427 g7425))))
                                         (begin
                                           (write '(funapp 2848 40))
                                           (display "\n")
                                           (f7428 x8847 x8846 x8845)))))
                                      (begin
                                        (write '(funapp 2849 37))
                                        (display "\n")
                                        (BLOCK/C j7426 k7427 x8844)))))
                                   g8843))))
                              g8842))
                           xj7421
                           xk7422
                           block-move))))
                      g8841)))
                   (x8837 (input))
                   (x8836 (input))
                   (x8829
                    (letrec*
                     ((x8830
                       (letrec*
                        ((x8835 (input))
                         (x8831
                          (letrec*
                           ((x8834 (input))
                            (x8832
                             (letrec*
                              ((x8833 (input)))
                              (begin
                                (write '(funapp 2867 57))
                                (display "\n")
                                (cons
                                 x8833
                                 (begin
                                   (write '(funapp 2867 68))
                                   (display "\n")
                                   '()))))))
                           (begin
                             (write '(funapp 2868 28))
                             (display "\n")
                             (cons x8834 x8832)))))
                        (begin
                          (write '(funapp 2869 25))
                          (display "\n")
                          (cons x8835 x8831)))))
                     (begin
                       (write '(funapp 2870 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2870 27)) (display "\n") 'block)
                        x8830)))))
                  (begin
                    (write '(funapp 2871 19))
                    (display "\n")
                    (x8838 x8837 x8836 x8829))))
                (g8679
                 (letrec*
                  ((x8856
                    (letrec*
                     ((xj7429
                       (letrec*
                        ((x8857
                          (begin
                            (write '(funapp 2876 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 2876 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 2876 61))
                             (display "\n")
                             'module)
                           x8857))))
                      (xk7430
                       (letrec*
                        ((x8858
                          (begin
                            (write '(funapp 2878 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 2878 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 2878 54))
                             (display "\n")
                             'importer)
                           x8858)))))
                     (letrec*
                      ((g8859
                        (begin
                          (write '(funapp 2881 25))
                          (display "\n")
                          ((lambda (j7433 k7434 f7435)
                             (letrec*
                              ((g8860
                                (lambda (g7431 g7432)
                                  (letrec*
                                   ((g8861
                                     (letrec*
                                      ((x8862
                                        (letrec*
                                         ((x8864
                                           (begin
                                             (write '(funapp 2890 48))
                                             (display "\n")
                                             (BSET/C j7433 k7434 g7431)))
                                          (x8863
                                           (begin
                                             (write '(funapp 2891 48))
                                             (display "\n")
                                             (BLOCK/C j7433 k7434 g7432))))
                                         (begin
                                           (write '(funapp 2892 40))
                                           (display "\n")
                                           (f7435 x8864 x8863)))))
                                      (begin
                                        (write '(funapp 2893 37))
                                        (display "\n")
                                        (boolean?/c j7433 k7434 x8862)))))
                                   g8861))))
                              g8860))
                           xj7429
                           xk7430
                           blocks-contains?))))
                      g8859)))
                   (x8855 (input))
                   (x8848
                    (letrec*
                     ((x8849
                       (letrec*
                        ((x8854 (input))
                         (x8850
                          (letrec*
                           ((x8853 (input))
                            (x8851
                             (letrec*
                              ((x8852 (input)))
                              (begin
                                (write '(funapp 2910 57))
                                (display "\n")
                                (cons
                                 x8852
                                 (begin
                                   (write '(funapp 2910 68))
                                   (display "\n")
                                   '()))))))
                           (begin
                             (write '(funapp 2911 28))
                             (display "\n")
                             (cons x8853 x8851)))))
                        (begin
                          (write '(funapp 2912 25))
                          (display "\n")
                          (cons x8854 x8850)))))
                     (begin
                       (write '(funapp 2913 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2913 27)) (display "\n") 'block)
                        x8849)))))
                  (begin
                    (write '(funapp 2914 19))
                    (display "\n")
                    (x8856 x8855 x8848))))
                (g8680
                 (letrec*
                  ((x8867
                    (letrec*
                     ((xj7436
                       (letrec*
                        ((x8868
                          (begin
                            (write '(funapp 2919 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 2919 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 2919 61))
                             (display "\n")
                             'module)
                           x8868))))
                      (xk7437
                       (letrec*
                        ((x8869
                          (begin
                            (write '(funapp 2921 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 2921 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 2921 54))
                             (display "\n")
                             'importer)
                           x8869)))))
                     (letrec*
                      ((g8870
                        (begin
                          (write '(funapp 2924 25))
                          (display "\n")
                          ((lambda (j7440 k7441 f7442)
                             (letrec*
                              ((g8871
                                (lambda (g7438 g7439)
                                  (letrec*
                                   ((g8872
                                     (letrec*
                                      ((x8873
                                        (letrec*
                                         ((x8875
                                           (begin
                                             (write '(funapp 2933 48))
                                             (display "\n")
                                             (BSET/C j7440 k7441 g7438)))
                                          (x8874
                                           (begin
                                             (write '(funapp 2934 48))
                                             (display "\n")
                                             (BSET/C j7440 k7441 g7439))))
                                         (begin
                                           (write '(funapp 2935 40))
                                           (display "\n")
                                           (f7442 x8875 x8874)))))
                                      (begin
                                        (write '(funapp 2936 37))
                                        (display "\n")
                                        (boolean?/c j7440 k7441 x8873)))))
                                   g8872))))
                              g8871))
                           xj7436
                           xk7437
                           blocks=?))))
                      g8870)))
                   (x8866 (input))
                   (x8865 (input)))
                  (begin
                    (write '(funapp 2945 19))
                    (display "\n")
                    (x8867 x8866 x8865))))
                (g8681
                 (letrec*
                  ((x8878
                    (letrec*
                     ((xj7443
                       (letrec*
                        ((x8879
                          (begin
                            (write '(funapp 2950 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 2950 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 2950 61))
                             (display "\n")
                             'module)
                           x8879))))
                      (xk7444
                       (letrec*
                        ((x8880
                          (begin
                            (write '(funapp 2952 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 2952 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 2952 54))
                             (display "\n")
                             'importer)
                           x8880)))))
                     (letrec*
                      ((g8881
                        (begin
                          (write '(funapp 2955 25))
                          (display "\n")
                          ((lambda (j7447 k7448 f7449)
                             (letrec*
                              ((g8882
                                (lambda (g7445 g7446)
                                  (letrec*
                                   ((g8883
                                     (letrec*
                                      ((x8884
                                        (letrec*
                                         ((x8886
                                           (begin
                                             (write '(funapp 2964 48))
                                             (display "\n")
                                             (BSET/C j7447 k7448 g7445)))
                                          (x8885
                                           (begin
                                             (write '(funapp 2965 48))
                                             (display "\n")
                                             (BSET/C j7447 k7448 g7446))))
                                         (begin
                                           (write '(funapp 2966 40))
                                           (display "\n")
                                           (f7449 x8886 x8885)))))
                                      (begin
                                        (write '(funapp 2967 37))
                                        (display "\n")
                                        (boolean?/c j7447 k7448 x8884)))))
                                   g8883))))
                              g8882))
                           xj7443
                           xk7444
                           blocks-subset?))))
                      g8881)))
                   (x8877 (input))
                   (x8876 (input)))
                  (begin
                    (write '(funapp 2976 19))
                    (display "\n")
                    (x8878 x8877 x8876))))
                (g8682
                 (letrec*
                  ((x8889
                    (letrec*
                     ((xj7450
                       (letrec*
                        ((x8890
                          (begin
                            (write '(funapp 2981 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 2981 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 2981 61))
                             (display "\n")
                             'module)
                           x8890))))
                      (xk7451
                       (letrec*
                        ((x8891
                          (begin
                            (write '(funapp 2983 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 2983 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 2983 54))
                             (display "\n")
                             'importer)
                           x8891)))))
                     (letrec*
                      ((g8892
                        (begin
                          (write '(funapp 2986 25))
                          (display "\n")
                          ((lambda (j7454 k7455 f7456)
                             (letrec*
                              ((g8893
                                (lambda (g7452 g7453)
                                  (letrec*
                                   ((g8894
                                     (letrec*
                                      ((x8895
                                        (letrec*
                                         ((x8897
                                           (begin
                                             (write '(funapp 2995 48))
                                             (display "\n")
                                             (BSET/C j7454 k7455 g7452)))
                                          (x8896
                                           (begin
                                             (write '(funapp 2996 48))
                                             (display "\n")
                                             (BSET/C j7454 k7455 g7453))))
                                         (begin
                                           (write '(funapp 2997 40))
                                           (display "\n")
                                           (f7456 x8897 x8896)))))
                                      (begin
                                        (write '(funapp 2998 37))
                                        (display "\n")
                                        (BSET/C j7454 k7455 x8895)))))
                                   g8894))))
                              g8893))
                           xj7450
                           xk7451
                           blocks-intersect))))
                      g8892)))
                   (x8888 (input))
                   (x8887 (input)))
                  (begin
                    (write '(funapp 3007 19))
                    (display "\n")
                    (x8889 x8888 x8887))))
                (g8683
                 (letrec*
                  ((x8899
                    (letrec*
                     ((xj7457
                       (letrec*
                        ((x8900
                          (begin
                            (write '(funapp 3012 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 3012 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 3012 61))
                             (display "\n")
                             'module)
                           x8900))))
                      (xk7458
                       (letrec*
                        ((x8901
                          (begin
                            (write '(funapp 3014 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 3014 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 3014 54))
                             (display "\n")
                             'importer)
                           x8901)))))
                     (letrec*
                      ((g8902
                        (begin
                          (write '(funapp 3017 25))
                          (display "\n")
                          ((lambda (j7460 k7461 f7462)
                             (letrec*
                              ((g8903
                                (lambda (g7459)
                                  (letrec*
                                   ((g8904
                                     (letrec*
                                      ((x8905
                                        (letrec*
                                         ((x8906
                                           (begin
                                             (write '(funapp 3026 48))
                                             (display "\n")
                                             (BSET/C j7460 k7461 g7459))))
                                         (begin
                                           (write '(funapp 3027 40))
                                           (display "\n")
                                           (f7462 x8906)))))
                                      (begin
                                        (write '(funapp 3028 37))
                                        (display "\n")
                                        (real?/c j7460 k7461 x8905)))))
                                   g8904))))
                              g8903))
                           xj7457
                           xk7458
                           blocks-count))))
                      g8902)))
                   (x8898 (input)))
                  (begin
                    (write '(funapp 3036 19))
                    (display "\n")
                    (x8899 x8898))))
                (g8684
                 (letrec*
                  ((x8908
                    (letrec*
                     ((xj7463
                       (letrec*
                        ((x8909
                          (begin
                            (write '(funapp 3041 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 3041 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 3041 61))
                             (display "\n")
                             'module)
                           x8909))))
                      (xk7464
                       (letrec*
                        ((x8910
                          (begin
                            (write '(funapp 3043 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 3043 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 3043 54))
                             (display "\n")
                             'importer)
                           x8910)))))
                     (letrec*
                      ((g8911
                        (begin
                          (write '(funapp 3046 25))
                          (display "\n")
                          ((lambda (j7466 k7467 f7468)
                             (letrec*
                              ((g8912
                                (lambda (g7465)
                                  (letrec*
                                   ((g8913
                                     (letrec*
                                      ((x8914
                                        (letrec*
                                         ((x8915
                                           (begin
                                             (write '(funapp 3055 48))
                                             (display "\n")
                                             (BSET/C j7466 k7467 g7465))))
                                         (begin
                                           (write '(funapp 3056 40))
                                           (display "\n")
                                           (f7468 x8915)))))
                                      (begin
                                        (write '(funapp 3057 37))
                                        (display "\n")
                                        (boolean?/c j7466 k7467 x8914)))))
                                   g8913))))
                              g8912))
                           xj7463
                           xk7464
                           blocks-overflow?))))
                      g8911)))
                   (x8907 (input)))
                  (begin
                    (write '(funapp 3065 19))
                    (display "\n")
                    (x8908 x8907))))
                (g8685
                 (letrec*
                  ((x8919
                    (letrec*
                     ((xj7469
                       (letrec*
                        ((x8920
                          (begin
                            (write '(funapp 3070 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 3070 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 3070 61))
                             (display "\n")
                             'module)
                           x8920))))
                      (xk7470
                       (letrec*
                        ((x8921
                          (begin
                            (write '(funapp 3072 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 3072 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 3072 54))
                             (display "\n")
                             'importer)
                           x8921)))))
                     (letrec*
                      ((g8922
                        (begin
                          (write '(funapp 3075 25))
                          (display "\n")
                          ((lambda (j7474 k7475 f7476)
                             (letrec*
                              ((g8923
                                (lambda (g7471 g7472 g7473)
                                  (letrec*
                                   ((g8924
                                     (letrec*
                                      ((x8925
                                        (letrec*
                                         ((x8928
                                           (begin
                                             (write '(funapp 3084 48))
                                             (display "\n")
                                             (real?/c j7474 k7475 g7471)))
                                          (x8927
                                           (begin
                                             (write '(funapp 3085 48))
                                             (display "\n")
                                             (real?/c j7474 k7475 g7472)))
                                          (x8926
                                           (begin
                                             (write '(funapp 3086 48))
                                             (display "\n")
                                             (BSET/C j7474 k7475 g7473))))
                                         (begin
                                           (write '(funapp 3087 40))
                                           (display "\n")
                                           (f7476 x8928 x8927 x8926)))))
                                      (begin
                                        (write '(funapp 3088 37))
                                        (display "\n")
                                        (BSET/C j7474 k7475 x8925)))))
                                   g8924))))
                              g8923))
                           xj7469
                           xk7470
                           blocks-move))))
                      g8922)))
                   (x8918 (input))
                   (x8917 (input))
                   (x8916 (input)))
                  (begin
                    (write '(funapp 3098 19))
                    (display "\n")
                    (x8919 x8918 x8917 x8916))))
                (g8686
                 (letrec*
                  ((x8935
                    (letrec*
                     ((xj7477
                       (letrec*
                        ((x8936
                          (begin
                            (write '(funapp 3103 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 3103 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 3103 61))
                             (display "\n")
                             'module)
                           x8936))))
                      (xk7478
                       (letrec*
                        ((x8937
                          (begin
                            (write '(funapp 3105 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 3105 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 3105 54))
                             (display "\n")
                             'importer)
                           x8937)))))
                     (letrec*
                      ((g8938
                        (begin
                          (write '(funapp 3108 25))
                          (display "\n")
                          ((lambda (j7481 k7482 f7483)
                             (letrec*
                              ((g8939
                                (lambda (g7479 g7480)
                                  (letrec*
                                   ((g8940
                                     (letrec*
                                      ((x8941
                                        (letrec*
                                         ((x8943
                                           (begin
                                             (write '(funapp 3117 48))
                                             (display "\n")
                                             (POSN/C j7481 k7482 g7479)))
                                          (x8942
                                           (begin
                                             (write '(funapp 3118 48))
                                             (display "\n")
                                             (BSET/C j7481 k7482 g7480))))
                                         (begin
                                           (write '(funapp 3119 40))
                                           (display "\n")
                                           (f7483 x8943 x8942)))))
                                      (begin
                                        (write '(funapp 3120 37))
                                        (display "\n")
                                        (BSET/C j7481 k7482 x8941)))))
                                   g8940))))
                              g8939))
                           xj7477
                           xk7478
                           blocks-rotate-cw))))
                      g8938)))
                   (x8930
                    (letrec*
                     ((x8931
                       (letrec*
                        ((x8934 (input))
                         (x8932
                          (letrec*
                           ((x8933 (input)))
                           (begin
                             (write '(funapp 3132 60))
                             (display "\n")
                             (cons
                              x8933
                              (begin
                                (write '(funapp 3132 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 3133 25))
                          (display "\n")
                          (cons x8934 x8932)))))
                     (begin
                       (write '(funapp 3134 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 3134 27)) (display "\n") 'posn)
                        x8931))))
                   (x8929 (input)))
                  (begin
                    (write '(funapp 3136 19))
                    (display "\n")
                    (x8935 x8930 x8929))))
                (g8687
                 (letrec*
                  ((x8950
                    (letrec*
                     ((xj7484
                       (letrec*
                        ((x8951
                          (begin
                            (write '(funapp 3141 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 3141 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 3141 61))
                             (display "\n")
                             'module)
                           x8951))))
                      (xk7485
                       (letrec*
                        ((x8952
                          (begin
                            (write '(funapp 3143 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 3143 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 3143 54))
                             (display "\n")
                             'importer)
                           x8952)))))
                     (letrec*
                      ((g8953
                        (begin
                          (write '(funapp 3146 25))
                          (display "\n")
                          ((lambda (j7488 k7489 f7490)
                             (letrec*
                              ((g8954
                                (lambda (g7486 g7487)
                                  (letrec*
                                   ((g8955
                                     (letrec*
                                      ((x8956
                                        (letrec*
                                         ((x8958
                                           (begin
                                             (write '(funapp 3155 48))
                                             (display "\n")
                                             (POSN/C j7488 k7489 g7486)))
                                          (x8957
                                           (begin
                                             (write '(funapp 3156 48))
                                             (display "\n")
                                             (BSET/C j7488 k7489 g7487))))
                                         (begin
                                           (write '(funapp 3157 40))
                                           (display "\n")
                                           (f7490 x8958 x8957)))))
                                      (begin
                                        (write '(funapp 3158 37))
                                        (display "\n")
                                        (BSET/C j7488 k7489 x8956)))))
                                   g8955))))
                              g8954))
                           xj7484
                           xk7485
                           blocks-rotate-ccw))))
                      g8953)))
                   (x8945
                    (letrec*
                     ((x8946
                       (letrec*
                        ((x8949 (input))
                         (x8947
                          (letrec*
                           ((x8948 (input)))
                           (begin
                             (write '(funapp 3170 60))
                             (display "\n")
                             (cons
                              x8948
                              (begin
                                (write '(funapp 3170 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 3171 25))
                          (display "\n")
                          (cons x8949 x8947)))))
                     (begin
                       (write '(funapp 3172 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 3172 27)) (display "\n") 'posn)
                        x8946))))
                   (x8944 (input)))
                  (begin
                    (write '(funapp 3174 19))
                    (display "\n")
                    (x8950 x8945 x8944))))
                (g8688
                 (letrec*
                  ((x8961
                    (letrec*
                     ((xj7491
                       (letrec*
                        ((x8962
                          (begin
                            (write '(funapp 3179 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 3179 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 3179 61))
                             (display "\n")
                             'module)
                           x8962))))
                      (xk7492
                       (letrec*
                        ((x8963
                          (begin
                            (write '(funapp 3181 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 3181 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 3181 54))
                             (display "\n")
                             'importer)
                           x8963)))))
                     (letrec*
                      ((g8964
                        (begin
                          (write '(funapp 3184 25))
                          (display "\n")
                          ((lambda (j7495 k7496 f7497)
                             (letrec*
                              ((g8965
                                (lambda (g7493 g7494)
                                  (letrec*
                                   ((g8966
                                     (letrec*
                                      ((x8967
                                        (letrec*
                                         ((x8969
                                           (begin
                                             (write '(funapp 3193 48))
                                             (display "\n")
                                             (BSET/C j7495 k7496 g7493)))
                                          (x8968
                                           (begin
                                             (write '(funapp 3194 48))
                                             (display "\n")
                                             (COLOR/C j7495 k7496 g7494))))
                                         (begin
                                           (write '(funapp 3195 40))
                                           (display "\n")
                                           (f7497 x8969 x8968)))))
                                      (begin
                                        (write '(funapp 3196 37))
                                        (display "\n")
                                        (BSET/C j7495 k7496 x8967)))))
                                   g8966))))
                              g8965))
                           xj7491
                           xk7492
                           blocks-change-color))))
                      g8964)))
                   (x8960 (input))
                   (x8959 (input)))
                  (begin
                    (write '(funapp 3205 19))
                    (display "\n")
                    (x8961 x8960 x8959))))
                (g8689
                 (letrec*
                  ((x8972
                    (letrec*
                     ((xj7498
                       (letrec*
                        ((x8973
                          (begin
                            (write '(funapp 3210 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 3210 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 3210 61))
                             (display "\n")
                             'module)
                           x8973))))
                      (xk7499
                       (letrec*
                        ((x8974
                          (begin
                            (write '(funapp 3212 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 3212 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 3212 54))
                             (display "\n")
                             'importer)
                           x8974)))))
                     (letrec*
                      ((g8975
                        (begin
                          (write '(funapp 3215 25))
                          (display "\n")
                          ((lambda (j7502 k7503 f7504)
                             (letrec*
                              ((g8976
                                (lambda (g7500 g7501)
                                  (letrec*
                                   ((g8977
                                     (letrec*
                                      ((x8978
                                        (letrec*
                                         ((x8980
                                           (begin
                                             (write '(funapp 3224 48))
                                             (display "\n")
                                             (BSET/C j7502 k7503 g7500)))
                                          (x8979
                                           (begin
                                             (write '(funapp 3225 48))
                                             (display "\n")
                                             (real?/c j7502 k7503 g7501))))
                                         (begin
                                           (write '(funapp 3226 40))
                                           (display "\n")
                                           (f7504 x8980 x8979)))))
                                      (begin
                                        (write '(funapp 3227 37))
                                        (display "\n")
                                        (BSET/C j7502 k7503 x8978)))))
                                   g8977))))
                              g8976))
                           xj7498
                           xk7499
                           blocks-row))))
                      g8975)))
                   (x8971 (input))
                   (x8970 (input)))
                  (begin
                    (write '(funapp 3236 19))
                    (display "\n")
                    (x8972 x8971 x8970))))
                (g8690
                 (letrec*
                  ((x8983
                    (letrec*
                     ((xj7505
                       (letrec*
                        ((x8984
                          (begin
                            (write '(funapp 3241 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 3241 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 3241 61))
                             (display "\n")
                             'module)
                           x8984))))
                      (xk7506
                       (letrec*
                        ((x8985
                          (begin
                            (write '(funapp 3243 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 3243 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 3243 54))
                             (display "\n")
                             'importer)
                           x8985)))))
                     (letrec*
                      ((g8986
                        (begin
                          (write '(funapp 3246 25))
                          (display "\n")
                          ((lambda (j7509 k7510 f7511)
                             (letrec*
                              ((g8987
                                (lambda (g7507 g7508)
                                  (letrec*
                                   ((g8988
                                     (letrec*
                                      ((x8989
                                        (letrec*
                                         ((x8991
                                           (begin
                                             (write '(funapp 3255 48))
                                             (display "\n")
                                             (BSET/C j7509 k7510 g7507)))
                                          (x8990
                                           (begin
                                             (write '(funapp 3256 48))
                                             (display "\n")
                                             (real?/c j7509 k7510 g7508))))
                                         (begin
                                           (write '(funapp 3257 40))
                                           (display "\n")
                                           (f7511 x8991 x8990)))))
                                      (begin
                                        (write '(funapp 3258 37))
                                        (display "\n")
                                        (boolean?/c j7509 k7510 x8989)))))
                                   g8988))))
                              g8987))
                           xj7505
                           xk7506
                           full-row?))))
                      g8986)))
                   (x8982 (input))
                   (x8981 (input)))
                  (begin
                    (write '(funapp 3267 19))
                    (display "\n")
                    (x8983 x8982 x8981))))
                (g8691
                 (letrec*
                  ((x8994
                    (letrec*
                     ((xj7512
                       (letrec*
                        ((x8995
                          (begin
                            (write '(funapp 3272 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 3272 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 3272 61))
                             (display "\n")
                             'module)
                           x8995))))
                      (xk7513
                       (letrec*
                        ((x8996
                          (begin
                            (write '(funapp 3274 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 3274 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 3274 54))
                             (display "\n")
                             'importer)
                           x8996)))))
                     (letrec*
                      ((g8997
                        (begin
                          (write '(funapp 3277 25))
                          (display "\n")
                          ((lambda (j7516 k7517 f7518)
                             (letrec*
                              ((g8998
                                (lambda (g7514 g7515)
                                  (letrec*
                                   ((g8999
                                     (letrec*
                                      ((x9000
                                        (letrec*
                                         ((x9002
                                           (begin
                                             (write '(funapp 3286 48))
                                             (display "\n")
                                             (BSET/C j7516 k7517 g7514)))
                                          (x9001
                                           (begin
                                             (write '(funapp 3287 48))
                                             (display "\n")
                                             (BSET/C j7516 k7517 g7515))))
                                         (begin
                                           (write '(funapp 3288 40))
                                           (display "\n")
                                           (f7518 x9002 x9001)))))
                                      (begin
                                        (write '(funapp 3289 37))
                                        (display "\n")
                                        (BSET/C j7516 k7517 x9000)))))
                                   g8999))))
                              g8998))
                           xj7512
                           xk7513
                           blocks-union))))
                      g8997)))
                   (x8993 (input))
                   (x8992 (input)))
                  (begin
                    (write '(funapp 3298 19))
                    (display "\n")
                    (x8994 x8993 x8992))))
                (g8692
                 (letrec*
                  ((x9004
                    (letrec*
                     ((xj7519
                       (letrec*
                        ((x9005
                          (begin
                            (write '(funapp 3303 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 3303 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 3303 61))
                             (display "\n")
                             'module)
                           x9005))))
                      (xk7520
                       (letrec*
                        ((x9006
                          (begin
                            (write '(funapp 3305 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 3305 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 3305 54))
                             (display "\n")
                             'importer)
                           x9006)))))
                     (letrec*
                      ((g9007
                        (begin
                          (write '(funapp 3308 25))
                          (display "\n")
                          ((lambda (j7522 k7523 f7524)
                             (letrec*
                              ((g9008
                                (lambda (g7521)
                                  (letrec*
                                   ((g9009
                                     (letrec*
                                      ((x9010
                                        (letrec*
                                         ((x9011
                                           (begin
                                             (write '(funapp 3317 48))
                                             (display "\n")
                                             (BSET/C j7522 k7523 g7521))))
                                         (begin
                                           (write '(funapp 3318 40))
                                           (display "\n")
                                           (f7524 x9011)))))
                                      (begin
                                        (write '(funapp 3319 37))
                                        (display "\n")
                                        (real?/c j7522 k7523 x9010)))))
                                   g9009))))
                              g9008))
                           xj7519
                           xk7520
                           blocks-max-x))))
                      g9007)))
                   (x9003 (input)))
                  (begin
                    (write '(funapp 3327 19))
                    (display "\n")
                    (x9004 x9003))))
                (g8693
                 (letrec*
                  ((x9013
                    (letrec*
                     ((xj7525
                       (letrec*
                        ((x9014
                          (begin
                            (write '(funapp 3332 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 3332 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 3332 61))
                             (display "\n")
                             'module)
                           x9014))))
                      (xk7526
                       (letrec*
                        ((x9015
                          (begin
                            (write '(funapp 3334 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 3334 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 3334 54))
                             (display "\n")
                             'importer)
                           x9015)))))
                     (letrec*
                      ((g9016
                        (begin
                          (write '(funapp 3337 25))
                          (display "\n")
                          ((lambda (j7528 k7529 f7530)
                             (letrec*
                              ((g9017
                                (lambda (g7527)
                                  (letrec*
                                   ((g9018
                                     (letrec*
                                      ((x9019
                                        (letrec*
                                         ((x9020
                                           (begin
                                             (write '(funapp 3346 48))
                                             (display "\n")
                                             (BSET/C j7528 k7529 g7527))))
                                         (begin
                                           (write '(funapp 3347 40))
                                           (display "\n")
                                           (f7530 x9020)))))
                                      (begin
                                        (write '(funapp 3348 37))
                                        (display "\n")
                                        (real?/c j7528 k7529 x9019)))))
                                   g9018))))
                              g9017))
                           xj7525
                           xk7526
                           blocks-min-x))))
                      g9016)))
                   (x9012 (input)))
                  (begin
                    (write '(funapp 3356 19))
                    (display "\n")
                    (x9013 x9012))))
                (g8694
                 (letrec*
                  ((x9022
                    (letrec*
                     ((xj7531
                       (letrec*
                        ((x9023
                          (begin
                            (write '(funapp 3361 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 3361 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 3361 61))
                             (display "\n")
                             'module)
                           x9023))))
                      (xk7532
                       (letrec*
                        ((x9024
                          (begin
                            (write '(funapp 3363 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 3363 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 3363 54))
                             (display "\n")
                             'importer)
                           x9024)))))
                     (letrec*
                      ((g9025
                        (begin
                          (write '(funapp 3366 25))
                          (display "\n")
                          ((lambda (j7534 k7535 f7536)
                             (letrec*
                              ((g9026
                                (lambda (g7533)
                                  (letrec*
                                   ((g9027
                                     (letrec*
                                      ((x9028
                                        (letrec*
                                         ((x9029
                                           (begin
                                             (write '(funapp 3375 48))
                                             (display "\n")
                                             (BSET/C j7534 k7535 g7533))))
                                         (begin
                                           (write '(funapp 3376 40))
                                           (display "\n")
                                           (f7536 x9029)))))
                                      (begin
                                        (write '(funapp 3377 37))
                                        (display "\n")
                                        (real?/c j7534 k7535 x9028)))))
                                   g9027))))
                              g9026))
                           xj7531
                           xk7532
                           blocks-max-y))))
                      g9025)))
                   (x9021 (input)))
                  (begin
                    (write '(funapp 3385 19))
                    (display "\n")
                    (x9022 x9021))))
                (g8695
                 (letrec*
                  ((x9031
                    (letrec*
                     ((xj7537
                       (letrec*
                        ((x9032
                          (begin
                            (write '(funapp 3390 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 3390 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 3390 61))
                             (display "\n")
                             'module)
                           x9032))))
                      (xk7538
                       (letrec*
                        ((x9033
                          (begin
                            (write '(funapp 3392 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 3392 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 3392 54))
                             (display "\n")
                             'importer)
                           x9033)))))
                     (letrec*
                      ((g9034
                        (begin
                          (write '(funapp 3395 25))
                          (display "\n")
                          ((lambda (j7540 k7541 f7542)
                             (letrec*
                              ((g9035
                                (lambda (g7539)
                                  (letrec*
                                   ((g9036
                                     (letrec*
                                      ((x9037
                                        (letrec*
                                         ((x9038
                                           (begin
                                             (write '(funapp 3404 48))
                                             (display "\n")
                                             (BSET/C j7540 k7541 g7539))))
                                         (begin
                                           (write '(funapp 3405 40))
                                           (display "\n")
                                           (f7542 x9038)))))
                                      (begin
                                        (write '(funapp 3406 37))
                                        (display "\n")
                                        (BSET/C j7540 k7541 x9037)))))
                                   g9036))))
                              g9035))
                           xj7537
                           xk7538
                           eliminate-full-rows))))
                      g9034)))
                   (x9030 (input)))
                  (begin
                    (write '(funapp 3414 19))
                    (display "\n")
                    (x9031 x9030))))
                (g8696
                 (letrec*
                  ((x9050
                    (letrec*
                     ((xj7543
                       (letrec*
                        ((x9051
                          (begin
                            (write '(funapp 3419 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 3419 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 3419 61))
                             (display "\n")
                             'module)
                           x9051))))
                      (xk7544
                       (letrec*
                        ((x9052
                          (begin
                            (write '(funapp 3421 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 3421 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 3421 54))
                             (display "\n")
                             'importer)
                           x9052)))))
                     (letrec*
                      ((g9053
                        (begin
                          (write '(funapp 3424 25))
                          (display "\n")
                          ((lambda (j7548 k7549 f7550)
                             (letrec*
                              ((g9054
                                (lambda (g7545 g7546 g7547)
                                  (letrec*
                                   ((g9055
                                     (letrec*
                                      ((x9056
                                        (letrec*
                                         ((x9059
                                           (begin
                                             (write '(funapp 3433 48))
                                             (display "\n")
                                             (integer?/c j7548 k7549 g7545)))
                                          (x9058
                                           (begin
                                             (write '(funapp 3434 48))
                                             (display "\n")
                                             (integer?/c j7548 k7549 g7546)))
                                          (x9057
                                           (begin
                                             (write '(funapp 3435 48))
                                             (display "\n")
                                             (TETRA/C j7548 k7549 g7547))))
                                         (begin
                                           (write '(funapp 3436 40))
                                           (display "\n")
                                           (f7550 x9059 x9058 x9057)))))
                                      (begin
                                        (write '(funapp 3437 37))
                                        (display "\n")
                                        (TETRA/C j7548 k7549 x9056)))))
                                   g9055))))
                              g9054))
                           xj7543
                           xk7544
                           tetra-move))))
                      g9053)))
                   (x9049 (input))
                   (x9048 (input))
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
                                   (write '(funapp 3456 60))
                                   (display "\n")
                                   (cons
                                    x9046
                                    (begin
                                      (write '(funapp 3456 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3457 31))
                                (display "\n")
                                (cons x9047 x9045)))))
                           (begin
                             (write '(funapp 3458 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3458 33))
                                (display "\n")
                                'posn)
                              x9044))))
                         (x9041
                          (letrec*
                           ((x9042 (input)))
                           (begin
                             (write '(funapp 3459 60))
                             (display "\n")
                             (cons
                              x9042
                              (begin
                                (write '(funapp 3459 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 3460 25))
                          (display "\n")
                          (cons x9043 x9041)))))
                     (begin
                       (write '(funapp 3461 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 3461 27)) (display "\n") 'tetra)
                        x9040)))))
                  (begin
                    (write '(funapp 3462 19))
                    (display "\n")
                    (x9050 x9049 x9048 x9039))))
                (g8697
                 (letrec*
                  ((x9069
                    (letrec*
                     ((xj7551
                       (letrec*
                        ((x9070
                          (begin
                            (write '(funapp 3467 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 3467 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 3467 61))
                             (display "\n")
                             'module)
                           x9070))))
                      (xk7552
                       (letrec*
                        ((x9071
                          (begin
                            (write '(funapp 3469 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 3469 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 3469 54))
                             (display "\n")
                             'importer)
                           x9071)))))
                     (letrec*
                      ((g9072
                        (begin
                          (write '(funapp 3472 25))
                          (display "\n")
                          ((lambda (j7554 k7555 f7556)
                             (letrec*
                              ((g9073
                                (lambda (g7553)
                                  (letrec*
                                   ((g9074
                                     (letrec*
                                      ((x9075
                                        (letrec*
                                         ((x9076
                                           (begin
                                             (write '(funapp 3481 48))
                                             (display "\n")
                                             (TETRA/C j7554 k7555 g7553))))
                                         (begin
                                           (write '(funapp 3482 40))
                                           (display "\n")
                                           (f7556 x9076)))))
                                      (begin
                                        (write '(funapp 3483 37))
                                        (display "\n")
                                        (TETRA/C j7554 k7555 x9075)))))
                                   g9074))))
                              g9073))
                           xj7551
                           xk7552
                           tetra-rotate-ccw))))
                      g9072)))
                   (x9060
                    (letrec*
                     ((x9061
                       (letrec*
                        ((x9064
                          (letrec*
                           ((x9065
                             (letrec*
                              ((x9068 (input))
                               (x9066
                                (letrec*
                                 ((x9067 (input)))
                                 (begin
                                   (write '(funapp 3500 60))
                                   (display "\n")
                                   (cons
                                    x9067
                                    (begin
                                      (write '(funapp 3500 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3501 31))
                                (display "\n")
                                (cons x9068 x9066)))))
                           (begin
                             (write '(funapp 3502 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3502 33))
                                (display "\n")
                                'posn)
                              x9065))))
                         (x9062
                          (letrec*
                           ((x9063 (input)))
                           (begin
                             (write '(funapp 3503 60))
                             (display "\n")
                             (cons
                              x9063
                              (begin
                                (write '(funapp 3503 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 3504 25))
                          (display "\n")
                          (cons x9064 x9062)))))
                     (begin
                       (write '(funapp 3505 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 3505 27)) (display "\n") 'tetra)
                        x9061)))))
                  (begin
                    (write '(funapp 3506 19))
                    (display "\n")
                    (x9069 x9060))))
                (g8698
                 (letrec*
                  ((x9086
                    (letrec*
                     ((xj7557
                       (letrec*
                        ((x9087
                          (begin
                            (write '(funapp 3511 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 3511 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 3511 61))
                             (display "\n")
                             'module)
                           x9087))))
                      (xk7558
                       (letrec*
                        ((x9088
                          (begin
                            (write '(funapp 3513 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 3513 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 3513 54))
                             (display "\n")
                             'importer)
                           x9088)))))
                     (letrec*
                      ((g9089
                        (begin
                          (write '(funapp 3516 25))
                          (display "\n")
                          ((lambda (j7560 k7561 f7562)
                             (letrec*
                              ((g9090
                                (lambda (g7559)
                                  (letrec*
                                   ((g9091
                                     (letrec*
                                      ((x9092
                                        (letrec*
                                         ((x9093
                                           (begin
                                             (write '(funapp 3525 48))
                                             (display "\n")
                                             (TETRA/C j7560 k7561 g7559))))
                                         (begin
                                           (write '(funapp 3526 40))
                                           (display "\n")
                                           (f7562 x9093)))))
                                      (begin
                                        (write '(funapp 3527 37))
                                        (display "\n")
                                        (TETRA/C j7560 k7561 x9092)))))
                                   g9091))))
                              g9090))
                           xj7557
                           xk7558
                           tetra-rotate-cw))))
                      g9089)))
                   (x9077
                    (letrec*
                     ((x9078
                       (letrec*
                        ((x9081
                          (letrec*
                           ((x9082
                             (letrec*
                              ((x9085 (input))
                               (x9083
                                (letrec*
                                 ((x9084 (input)))
                                 (begin
                                   (write '(funapp 3544 60))
                                   (display "\n")
                                   (cons
                                    x9084
                                    (begin
                                      (write '(funapp 3544 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3545 31))
                                (display "\n")
                                (cons x9085 x9083)))))
                           (begin
                             (write '(funapp 3546 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3546 33))
                                (display "\n")
                                'posn)
                              x9082))))
                         (x9079
                          (letrec*
                           ((x9080 (input)))
                           (begin
                             (write '(funapp 3547 60))
                             (display "\n")
                             (cons
                              x9080
                              (begin
                                (write '(funapp 3547 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 3548 25))
                          (display "\n")
                          (cons x9081 x9079)))))
                     (begin
                       (write '(funapp 3549 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 3549 27)) (display "\n") 'tetra)
                        x9078)))))
                  (begin
                    (write '(funapp 3550 19))
                    (display "\n")
                    (x9086 x9077))))
                (g8699
                 (letrec*
                  ((x9104
                    (letrec*
                     ((xj7563
                       (letrec*
                        ((x9105
                          (begin
                            (write '(funapp 3555 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 3555 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 3555 61))
                             (display "\n")
                             'module)
                           x9105))))
                      (xk7564
                       (letrec*
                        ((x9106
                          (begin
                            (write '(funapp 3557 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 3557 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 3557 54))
                             (display "\n")
                             'importer)
                           x9106)))))
                     (letrec*
                      ((g9107
                        (begin
                          (write '(funapp 3560 25))
                          (display "\n")
                          ((lambda (j7567 k7568 f7569)
                             (letrec*
                              ((g9108
                                (lambda (g7565 g7566)
                                  (letrec*
                                   ((g9109
                                     (letrec*
                                      ((x9110
                                        (letrec*
                                         ((x9112
                                           (begin
                                             (write '(funapp 3569 48))
                                             (display "\n")
                                             (TETRA/C j7567 k7568 g7565)))
                                          (x9111
                                           (begin
                                             (write '(funapp 3570 48))
                                             (display "\n")
                                             (BSET/C j7567 k7568 g7566))))
                                         (begin
                                           (write '(funapp 3571 40))
                                           (display "\n")
                                           (f7569 x9112 x9111)))))
                                      (begin
                                        (write '(funapp 3572 37))
                                        (display "\n")
                                        (boolean?/c j7567 k7568 x9110)))))
                                   g9109))))
                              g9108))
                           xj7563
                           xk7564
                           tetra-overlaps-blocks?))))
                      g9107)))
                   (x9095
                    (letrec*
                     ((x9096
                       (letrec*
                        ((x9099
                          (letrec*
                           ((x9100
                             (letrec*
                              ((x9103 (input))
                               (x9101
                                (letrec*
                                 ((x9102 (input)))
                                 (begin
                                   (write '(funapp 3589 60))
                                   (display "\n")
                                   (cons
                                    x9102
                                    (begin
                                      (write '(funapp 3589 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3590 31))
                                (display "\n")
                                (cons x9103 x9101)))))
                           (begin
                             (write '(funapp 3591 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3591 33))
                                (display "\n")
                                'posn)
                              x9100))))
                         (x9097
                          (letrec*
                           ((x9098 (input)))
                           (begin
                             (write '(funapp 3592 60))
                             (display "\n")
                             (cons
                              x9098
                              (begin
                                (write '(funapp 3592 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 3593 25))
                          (display "\n")
                          (cons x9099 x9097)))))
                     (begin
                       (write '(funapp 3594 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 3594 27)) (display "\n") 'tetra)
                        x9096))))
                   (x9094 (input)))
                  (begin
                    (write '(funapp 3596 19))
                    (display "\n")
                    (x9104 x9095 x9094))))
                (g8700
                 (letrec*
                  ((x9124
                    (letrec*
                     ((xj7570
                       (letrec*
                        ((x9125
                          (begin
                            (write '(funapp 3601 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 3601 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 3601 61))
                             (display "\n")
                             'module)
                           x9125))))
                      (xk7571
                       (letrec*
                        ((x9126
                          (begin
                            (write '(funapp 3603 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 3603 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 3603 54))
                             (display "\n")
                             'importer)
                           x9126)))))
                     (letrec*
                      ((g9127
                        (begin
                          (write '(funapp 3606 25))
                          (display "\n")
                          ((lambda (j7583 k7584 f7585)
                             (letrec*
                              ((g9128
                                (lambda (g7572
                                         g7573
                                         g7574
                                         g7575
                                         g7576
                                         g7577
                                         g7578
                                         g7579
                                         g7580
                                         g7581
                                         g7582)
                                  (letrec*
                                   ((g9129
                                     (letrec*
                                      ((x9130
                                        (letrec*
                                         ((x9141
                                           (begin
                                             (write '(funapp 3625 48))
                                             (display "\n")
                                             (COLOR/C j7583 k7584 g7572)))
                                          (x9140
                                           (begin
                                             (write '(funapp 3626 48))
                                             (display "\n")
                                             (real?/c j7583 k7584 g7573)))
                                          (x9139
                                           (begin
                                             (write '(funapp 3627 48))
                                             (display "\n")
                                             (real?/c j7583 k7584 g7574)))
                                          (x9138
                                           (begin
                                             (write '(funapp 3628 48))
                                             (display "\n")
                                             (integer?/c j7583 k7584 g7575)))
                                          (x9137
                                           (begin
                                             (write '(funapp 3629 48))
                                             (display "\n")
                                             (integer?/c j7583 k7584 g7576)))
                                          (x9136
                                           (begin
                                             (write '(funapp 3630 48))
                                             (display "\n")
                                             (integer?/c j7583 k7584 g7577)))
                                          (x9135
                                           (begin
                                             (write '(funapp 3631 48))
                                             (display "\n")
                                             (integer?/c j7583 k7584 g7578)))
                                          (x9134
                                           (begin
                                             (write '(funapp 3632 48))
                                             (display "\n")
                                             (integer?/c j7583 k7584 g7579)))
                                          (x9133
                                           (begin
                                             (write '(funapp 3633 48))
                                             (display "\n")
                                             (integer?/c j7583 k7584 g7580)))
                                          (x9132
                                           (begin
                                             (write '(funapp 3634 48))
                                             (display "\n")
                                             (integer?/c j7583 k7584 g7581)))
                                          (x9131
                                           (begin
                                             (write '(funapp 3635 48))
                                             (display "\n")
                                             (integer?/c j7583 k7584 g7582))))
                                         (begin
                                           (write '(funapp 3636 40))
                                           (display "\n")
                                           (f7585
                                            x9141
                                            x9140
                                            x9139
                                            x9138
                                            x9137
                                            x9136
                                            x9135
                                            x9134
                                            x9133
                                            x9132
                                            x9131)))))
                                      (begin
                                        (write '(funapp 3648 37))
                                        (display "\n")
                                        (TETRA/C j7583 k7584 x9130)))))
                                   g9129))))
                              g9128))
                           xj7570
                           xk7571
                           build-tetra-blocks))))
                      g9127)))
                   (x9123 (input))
                   (x9122 (input))
                   (x9121 (input))
                   (x9120 (input))
                   (x9119 (input))
                   (x9118 (input))
                   (x9117 (input))
                   (x9116 (input))
                   (x9115 (input))
                   (x9114 (input))
                   (x9113 (input)))
                  (begin
                    (write '(funapp 3666 19))
                    (display "\n")
                    (x9124
                     x9123
                     x9122
                     x9121
                     x9120
                     x9119
                     x9118
                     x9117
                     x9116
                     x9115
                     x9114
                     x9113))))
                (g8701
                 (letrec*
                  ((x9152
                    (letrec*
                     ((xj7586
                       (letrec*
                        ((x9153
                          (begin
                            (write '(funapp 3682 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 3682 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 3682 61))
                             (display "\n")
                             'module)
                           x9153))))
                      (xk7587
                       (letrec*
                        ((x9154
                          (begin
                            (write '(funapp 3684 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 3684 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 3684 54))
                             (display "\n")
                             'importer)
                           x9154)))))
                     (letrec*
                      ((g9155
                        (begin
                          (write '(funapp 3687 25))
                          (display "\n")
                          ((lambda (j7590 k7591 f7592)
                             (letrec*
                              ((g9156
                                (lambda (g7588 g7589)
                                  (letrec*
                                   ((g9157
                                     (letrec*
                                      ((x9158
                                        (letrec*
                                         ((x9160
                                           (begin
                                             (write '(funapp 3696 48))
                                             (display "\n")
                                             (TETRA/C j7590 k7591 g7588)))
                                          (x9159
                                           (begin
                                             (write '(funapp 3697 48))
                                             (display "\n")
                                             (COLOR/C j7590 k7591 g7589))))
                                         (begin
                                           (write '(funapp 3698 40))
                                           (display "\n")
                                           (f7592 x9160 x9159)))))
                                      (begin
                                        (write '(funapp 3699 37))
                                        (display "\n")
                                        (TETRA/C j7590 k7591 x9158)))))
                                   g9157))))
                              g9156))
                           xj7586
                           xk7587
                           tetra-change-color))))
                      g9155)))
                   (x9143
                    (letrec*
                     ((x9144
                       (letrec*
                        ((x9147
                          (letrec*
                           ((x9148
                             (letrec*
                              ((x9151 (input))
                               (x9149
                                (letrec*
                                 ((x9150 (input)))
                                 (begin
                                   (write '(funapp 3716 60))
                                   (display "\n")
                                   (cons
                                    x9150
                                    (begin
                                      (write '(funapp 3716 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3717 31))
                                (display "\n")
                                (cons x9151 x9149)))))
                           (begin
                             (write '(funapp 3718 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3718 33))
                                (display "\n")
                                'posn)
                              x9148))))
                         (x9145
                          (letrec*
                           ((x9146 (input)))
                           (begin
                             (write '(funapp 3719 60))
                             (display "\n")
                             (cons
                              x9146
                              (begin
                                (write '(funapp 3719 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 3720 25))
                          (display "\n")
                          (cons x9147 x9145)))))
                     (begin
                       (write '(funapp 3721 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 3721 27)) (display "\n") 'tetra)
                        x9144))))
                   (x9142 (input)))
                  (begin
                    (write '(funapp 3723 19))
                    (display "\n")
                    (x9152 x9143 x9142))))
                (g8702
                 (letrec*
                  ((x9175
                    (letrec*
                     ((xj7593
                       (letrec*
                        ((x9176
                          (begin
                            (write '(funapp 3728 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 3728 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 3728 61))
                             (display "\n")
                             'module)
                           x9176))))
                      (xk7594
                       (letrec*
                        ((x9177
                          (begin
                            (write '(funapp 3730 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 3730 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 3730 54))
                             (display "\n")
                             'importer)
                           x9177)))))
                     (letrec*
                      ((g9178
                        (begin
                          (write '(funapp 3733 25))
                          (display "\n")
                          ((lambda (j7597 k7598 f7599)
                             (letrec*
                              ((g9179
                                (lambda (g7595 g7596)
                                  (letrec*
                                   ((g9180
                                     (letrec*
                                      ((x9181
                                        (letrec*
                                         ((x9183
                                           (begin
                                             (write '(funapp 3742 48))
                                             (display "\n")
                                             (WORLD/C j7597 k7598 g7595)))
                                          (x9182
                                           (begin
                                             (write '(funapp 3743 48))
                                             (display "\n")
                                             (string?/c j7597 k7598 g7596))))
                                         (begin
                                           (write '(funapp 3744 40))
                                           (display "\n")
                                           (f7599 x9183 x9182)))))
                                      (begin
                                        (write '(funapp 3745 37))
                                        (display "\n")
                                        (WORLD/C j7597 k7598 x9181)))))
                                   g9180))))
                              g9179))
                           xj7593
                           xk7594
                           world-key-move))))
                      g9178)))
                   (x9162
                    (letrec*
                     ((x9163
                       (letrec*
                        ((x9166
                          (letrec*
                           ((x9167
                             (letrec*
                              ((x9170
                                (letrec*
                                 ((x9171
                                   (letrec*
                                    ((x9174 (input))
                                     (x9172
                                      (letrec*
                                       ((x9173 (input)))
                                       (begin
                                         (write '(funapp 3768 40))
                                         (display "\n")
                                         (cons
                                          x9173
                                          (begin
                                            (write '(funapp 3768 51))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3769 37))
                                      (display "\n")
                                      (cons x9174 x9172)))))
                                 (begin
                                   (write '(funapp 3770 34))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3770 39))
                                      (display "\n")
                                      'posn)
                                    x9171))))
                               (x9168
                                (letrec*
                                 ((x9169 (input)))
                                 (begin
                                   (write '(funapp 3772 60))
                                   (display "\n")
                                   (cons
                                    x9169
                                    (begin
                                      (write '(funapp 3772 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3773 31))
                                (display "\n")
                                (cons x9170 x9168)))))
                           (begin
                             (write '(funapp 3774 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3774 33))
                                (display "\n")
                                'tetra)
                              x9167))))
                         (x9164
                          (letrec*
                           ((x9165 (input)))
                           (begin
                             (write '(funapp 3775 60))
                             (display "\n")
                             (cons
                              x9165
                              (begin
                                (write '(funapp 3775 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 3776 25))
                          (display "\n")
                          (cons x9166 x9164)))))
                     (begin
                       (write '(funapp 3777 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 3777 27)) (display "\n") 'world)
                        x9163))))
                   (x9161 (input)))
                  (begin
                    (write '(funapp 3779 19))
                    (display "\n")
                    (x9175 x9162 x9161))))
                (g8703
                 (letrec*
                  ((x9198
                    (letrec*
                     ((xj7600
                       (letrec*
                        ((x9199
                          (begin
                            (write '(funapp 3784 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 3784 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 3784 61))
                             (display "\n")
                             'module)
                           x9199))))
                      (xk7601
                       (letrec*
                        ((x9200
                          (begin
                            (write '(funapp 3786 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 3786 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 3786 54))
                             (display "\n")
                             'importer)
                           x9200)))))
                     (letrec*
                      ((g9201
                        (begin
                          (write '(funapp 3789 25))
                          (display "\n")
                          ((lambda (j7604 k7605 f7606)
                             (letrec*
                              ((g9202
                                (lambda (g7602 g7603)
                                  (letrec*
                                   ((g9203
                                     (letrec*
                                      ((x9204
                                        (letrec*
                                         ((x9208
                                           (begin
                                             (write '(funapp 3798 48))
                                             (display "\n")
                                             (WORLD/C j7604 k7605 g7602)))
                                          (x9205
                                           (letrec*
                                            ((x9206
                                              (letrec*
                                               ((x9207
                                                 (begin
                                                   (write '(funapp 3803 54))
                                                   (display "\n")
                                                   (listof TETRA/C))))
                                               (begin
                                                 (write '(funapp 3804 46))
                                                 (display "\n")
                                                 (and/c cons?/c x9207)))))
                                            (begin
                                              (write '(funapp 3805 43))
                                              (display "\n")
                                              (x9206 j7604 k7605 g7603)))))
                                         (begin
                                           (write '(funapp 3806 40))
                                           (display "\n")
                                           (f7606 x9208 x9205)))))
                                      (begin
                                        (write '(funapp 3807 37))
                                        (display "\n")
                                        (WORLD/C j7604 k7605 x9204)))))
                                   g9203))))
                              g9202))
                           xj7600
                           xk7601
                           next-world))))
                      g9201)))
                   (x9185
                    (letrec*
                     ((x9186
                       (letrec*
                        ((x9189
                          (letrec*
                           ((x9190
                             (letrec*
                              ((x9193
                                (letrec*
                                 ((x9194
                                   (letrec*
                                    ((x9197 (input))
                                     (x9195
                                      (letrec*
                                       ((x9196 (input)))
                                       (begin
                                         (write '(funapp 3830 40))
                                         (display "\n")
                                         (cons
                                          x9196
                                          (begin
                                            (write '(funapp 3830 51))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3831 37))
                                      (display "\n")
                                      (cons x9197 x9195)))))
                                 (begin
                                   (write '(funapp 3832 34))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3832 39))
                                      (display "\n")
                                      'posn)
                                    x9194))))
                               (x9191
                                (letrec*
                                 ((x9192 (input)))
                                 (begin
                                   (write '(funapp 3834 60))
                                   (display "\n")
                                   (cons
                                    x9192
                                    (begin
                                      (write '(funapp 3834 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3835 31))
                                (display "\n")
                                (cons x9193 x9191)))))
                           (begin
                             (write '(funapp 3836 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3836 33))
                                (display "\n")
                                'tetra)
                              x9190))))
                         (x9187
                          (letrec*
                           ((x9188 (input)))
                           (begin
                             (write '(funapp 3837 60))
                             (display "\n")
                             (cons
                              x9188
                              (begin
                                (write '(funapp 3837 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 3838 25))
                          (display "\n")
                          (cons x9189 x9187)))))
                     (begin
                       (write '(funapp 3839 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 3839 27)) (display "\n") 'world)
                        x9186))))
                   (x9184 (input)))
                  (begin
                    (write '(funapp 3841 19))
                    (display "\n")
                    (x9198 x9185 x9184))))
                (g8704
                 (letrec*
                  ((x9222
                    (letrec*
                     ((xj7607
                       (letrec*
                        ((x9223
                          (begin
                            (write '(funapp 3846 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 3846 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 3846 61))
                             (display "\n")
                             'module)
                           x9223))))
                      (xk7608
                       (letrec*
                        ((x9224
                          (begin
                            (write '(funapp 3848 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 3848 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 3848 54))
                             (display "\n")
                             'importer)
                           x9224)))))
                     (letrec*
                      ((g9225
                        (begin
                          (write '(funapp 3851 25))
                          (display "\n")
                          ((lambda (j7610 k7611 f7612)
                             (letrec*
                              ((g9226
                                (lambda (g7609)
                                  (letrec*
                                   ((g9227
                                     (letrec*
                                      ((x9228
                                        (letrec*
                                         ((x9229
                                           (begin
                                             (write '(funapp 3860 48))
                                             (display "\n")
                                             (WORLD/C j7610 k7611 g7609))))
                                         (begin
                                           (write '(funapp 3861 40))
                                           (display "\n")
                                           (f7612 x9229)))))
                                      (begin
                                        (write '(funapp 3862 37))
                                        (display "\n")
                                        (BSET/C j7610 k7611 x9228)))))
                                   g9227))))
                              g9226))
                           xj7607
                           xk7608
                           ghost-blocks))))
                      g9225)))
                   (x9209
                    (letrec*
                     ((x9210
                       (letrec*
                        ((x9213
                          (letrec*
                           ((x9214
                             (letrec*
                              ((x9217
                                (letrec*
                                 ((x9218
                                   (letrec*
                                    ((x9221 (input))
                                     (x9219
                                      (letrec*
                                       ((x9220 (input)))
                                       (begin
                                         (write '(funapp 3885 40))
                                         (display "\n")
                                         (cons
                                          x9220
                                          (begin
                                            (write '(funapp 3885 51))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3886 37))
                                      (display "\n")
                                      (cons x9221 x9219)))))
                                 (begin
                                   (write '(funapp 3887 34))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3887 39))
                                      (display "\n")
                                      'posn)
                                    x9218))))
                               (x9215
                                (letrec*
                                 ((x9216 (input)))
                                 (begin
                                   (write '(funapp 3889 60))
                                   (display "\n")
                                   (cons
                                    x9216
                                    (begin
                                      (write '(funapp 3889 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3890 31))
                                (display "\n")
                                (cons x9217 x9215)))))
                           (begin
                             (write '(funapp 3891 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3891 33))
                                (display "\n")
                                'tetra)
                              x9214))))
                         (x9211
                          (letrec*
                           ((x9212 (input)))
                           (begin
                             (write '(funapp 3892 60))
                             (display "\n")
                             (cons
                              x9212
                              (begin
                                (write '(funapp 3892 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 3893 25))
                          (display "\n")
                          (cons x9213 x9211)))))
                     (begin
                       (write '(funapp 3894 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 3894 27)) (display "\n") 'world)
                        x9210)))))
                  (begin
                    (write '(funapp 3895 19))
                    (display "\n")
                    (x9222 x9209))))
                (g8705
                 (letrec*
                  ((x9231
                    (letrec*
                     ((xj7613
                       (letrec*
                        ((x9232
                          (begin
                            (write '(funapp 3900 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 3900 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 3900 61))
                             (display "\n")
                             'module)
                           x9232))))
                      (xk7614
                       (letrec*
                        ((x9233
                          (begin
                            (write '(funapp 3902 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 3902 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 3902 54))
                             (display "\n")
                             'importer)
                           x9233)))))
                     (letrec*
                      ((g9234
                        (begin
                          (write '(funapp 3905 25))
                          (display "\n")
                          ((lambda (j7616 k7617 f7618)
                             (letrec*
                              ((g9235
                                (lambda (g7615)
                                  (letrec*
                                   ((g9236
                                     (letrec*
                                      ((x9237
                                        (letrec*
                                         ((x9238
                                           (begin
                                             (write '(funapp 3914 48))
                                             (display "\n")
                                             (any/c j7616 k7617 g7615))))
                                         (begin
                                           (write '(funapp 3915 40))
                                           (display "\n")
                                           (f7618 x9238)))))
                                      (begin
                                        (write '(funapp 3916 37))
                                        (display "\n")
                                        (boolean?/c j7616 k7617 x9237)))))
                                   g9236))))
                              g9235))
                           xj7613
                           xk7614
                           image?))))
                      g9234)))
                   (x9230 (input)))
                  (begin
                    (write '(funapp 3924 19))
                    (display "\n")
                    (x9231 x9230))))
                (g8706
                 (letrec*
                  ((x9241
                    (letrec*
                     ((xj7619
                       (letrec*
                        ((x9242
                          (begin
                            (write '(funapp 3929 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 3929 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 3929 61))
                             (display "\n")
                             'module)
                           x9242))))
                      (xk7620
                       (letrec*
                        ((x9243
                          (begin
                            (write '(funapp 3931 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 3931 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 3931 54))
                             (display "\n")
                             'importer)
                           x9243)))))
                     (letrec*
                      ((g9244
                        (begin
                          (write '(funapp 3934 25))
                          (display "\n")
                          ((lambda (j7623 k7624 f7625)
                             (letrec*
                              ((g9245
                                (lambda (g7621 g7622)
                                  (letrec*
                                   ((g9246
                                     (letrec*
                                      ((x9247
                                        (letrec*
                                         ((x9249
                                           (begin
                                             (write '(funapp 3943 48))
                                             (display "\n")
                                             (image? j7623 k7624 g7621)))
                                          (x9248
                                           (begin
                                             (write '(funapp 3944 48))
                                             (display "\n")
                                             (image? j7623 k7624 g7622))))
                                         (begin
                                           (write '(funapp 3945 40))
                                           (display "\n")
                                           (f7625 x9249 x9248)))))
                                      (begin
                                        (write '(funapp 3946 37))
                                        (display "\n")
                                        (image? j7623 k7624 x9247)))))
                                   g9246))))
                              g9245))
                           xj7619
                           xk7620
                           overlay))))
                      g9244)))
                   (x9240 (input))
                   (x9239 (input)))
                  (begin
                    (write '(funapp 3955 19))
                    (display "\n")
                    (x9241 x9240 x9239))))
                (g8707
                 (letrec*
                  ((x9253
                    (letrec*
                     ((xj7626
                       (letrec*
                        ((x9254
                          (begin
                            (write '(funapp 3960 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 3960 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 3960 61))
                             (display "\n")
                             'module)
                           x9254))))
                      (xk7627
                       (letrec*
                        ((x9255
                          (begin
                            (write '(funapp 3962 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 3962 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 3962 54))
                             (display "\n")
                             'importer)
                           x9255)))))
                     (letrec*
                      ((g9256
                        (begin
                          (write '(funapp 3965 25))
                          (display "\n")
                          ((lambda (j7631 k7632 f7633)
                             (letrec*
                              ((g9257
                                (lambda (g7628 g7629 g7630)
                                  (letrec*
                                   ((g9258
                                     (letrec*
                                      ((x9259
                                        (letrec*
                                         ((x9262
                                           (begin
                                             (write '(funapp 3974 48))
                                             (display "\n")
                                             (real?/c j7631 k7632 g7628)))
                                          (x9261
                                           (begin
                                             (write '(funapp 3975 48))
                                             (display "\n")
                                             (real?/c j7631 k7632 g7629)))
                                          (x9260
                                           (begin
                                             (write '(funapp 3976 48))
                                             (display "\n")
                                             (string?/c j7631 k7632 g7630))))
                                         (begin
                                           (write '(funapp 3977 40))
                                           (display "\n")
                                           (f7633 x9262 x9261 x9260)))))
                                      (begin
                                        (write '(funapp 3978 37))
                                        (display "\n")
                                        (image? j7631 k7632 x9259)))))
                                   g9258))))
                              g9257))
                           xj7626
                           xk7627
                           circle))))
                      g9256)))
                   (x9252 (input))
                   (x9251 (input))
                   (x9250 (input)))
                  (begin
                    (write '(funapp 3988 19))
                    (display "\n")
                    (x9253 x9252 x9251 x9250))))
                (g8708
                 (letrec*
                  ((x9267
                    (letrec*
                     ((xj7634
                       (letrec*
                        ((x9268
                          (begin
                            (write '(funapp 3993 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 3993 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 3993 61))
                             (display "\n")
                             'module)
                           x9268))))
                      (xk7635
                       (letrec*
                        ((x9269
                          (begin
                            (write '(funapp 3995 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 3995 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 3995 54))
                             (display "\n")
                             'importer)
                           x9269)))))
                     (letrec*
                      ((g9270
                        (begin
                          (write '(funapp 3998 25))
                          (display "\n")
                          ((lambda (j7640 k7641 f7642)
                             (letrec*
                              ((g9271
                                (lambda (g7636 g7637 g7638 g7639)
                                  (letrec*
                                   ((g9272
                                     (letrec*
                                      ((x9273
                                        (letrec*
                                         ((x9277
                                           (begin
                                             (write '(funapp 4007 48))
                                             (display "\n")
                                             (real?/c j7640 k7641 g7636)))
                                          (x9276
                                           (begin
                                             (write '(funapp 4008 48))
                                             (display "\n")
                                             (real?/c j7640 k7641 g7637)))
                                          (x9275
                                           (begin
                                             (write '(funapp 4009 48))
                                             (display "\n")
                                             (COLOR/C j7640 k7641 g7638)))
                                          (x9274
                                           (begin
                                             (write '(funapp 4010 48))
                                             (display "\n")
                                             (COLOR/C j7640 k7641 g7639))))
                                         (begin
                                           (write '(funapp 4011 40))
                                           (display "\n")
                                           (f7642 x9277 x9276 x9275 x9274)))))
                                      (begin
                                        (write '(funapp 4012 37))
                                        (display "\n")
                                        (image? j7640 k7641 x9273)))))
                                   g9272))))
                              g9271))
                           xj7634
                           xk7635
                           rectangle))))
                      g9270)))
                   (x9266 (input))
                   (x9265 (input))
                   (x9264 (input))
                   (x9263 (input)))
                  (begin
                    (write '(funapp 4023 19))
                    (display "\n")
                    (x9267 x9266 x9265 x9264 x9263))))
                (g8709
                 (letrec*
                  ((x9282
                    (letrec*
                     ((xj7643
                       (letrec*
                        ((x9283
                          (begin
                            (write '(funapp 4028 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 4028 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 4028 61))
                             (display "\n")
                             'module)
                           x9283))))
                      (xk7644
                       (letrec*
                        ((x9284
                          (begin
                            (write '(funapp 4030 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 4030 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 4030 54))
                             (display "\n")
                             'importer)
                           x9284)))))
                     (letrec*
                      ((g9285
                        (begin
                          (write '(funapp 4033 25))
                          (display "\n")
                          ((lambda (j7649 k7650 f7651)
                             (letrec*
                              ((g9286
                                (lambda (g7645 g7646 g7647 g7648)
                                  (letrec*
                                   ((g9287
                                     (letrec*
                                      ((x9288
                                        (letrec*
                                         ((x9292
                                           (begin
                                             (write '(funapp 4042 48))
                                             (display "\n")
                                             (image/c j7649 k7650 g7645)))
                                          (x9291
                                           (begin
                                             (write '(funapp 4043 48))
                                             (display "\n")
                                             (real?/c j7649 k7650 g7646)))
                                          (x9290
                                           (begin
                                             (write '(funapp 4044 48))
                                             (display "\n")
                                             (real?/c j7649 k7650 g7647)))
                                          (x9289
                                           (begin
                                             (write '(funapp 4045 48))
                                             (display "\n")
                                             (image/c j7649 k7650 g7648))))
                                         (begin
                                           (write '(funapp 4046 40))
                                           (display "\n")
                                           (f7651 x9292 x9291 x9290 x9289)))))
                                      (begin
                                        (write '(funapp 4047 37))
                                        (display "\n")
                                        (image/c j7649 k7650 x9288)))))
                                   g9287))))
                              g9286))
                           xj7643
                           xk7644
                           place-image))))
                      g9285)))
                   (x9281 (input))
                   (x9280 (input))
                   (x9279 (input))
                   (x9278 (input)))
                  (begin
                    (write '(funapp 4058 19))
                    (display "\n")
                    (x9282 x9281 x9280 x9279 x9278))))
                (g8710
                 (letrec*
                  ((x9295
                    (letrec*
                     ((xj7652
                       (letrec*
                        ((x9296
                          (begin
                            (write '(funapp 4063 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 4063 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 4063 61))
                             (display "\n")
                             'module)
                           x9296))))
                      (xk7653
                       (letrec*
                        ((x9297
                          (begin
                            (write '(funapp 4065 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 4065 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 4065 54))
                             (display "\n")
                             'importer)
                           x9297)))))
                     (letrec*
                      ((g9298
                        (begin
                          (write '(funapp 4068 25))
                          (display "\n")
                          ((lambda (j7656 k7657 f7658)
                             (letrec*
                              ((g9299
                                (lambda (g7654 g7655)
                                  (letrec*
                                   ((g9300
                                     (letrec*
                                      ((x9301
                                        (letrec*
                                         ((x9303
                                           (begin
                                             (write '(funapp 4077 48))
                                             (display "\n")
                                             (real?/c j7656 k7657 g7654)))
                                          (x9302
                                           (begin
                                             (write '(funapp 4078 48))
                                             (display "\n")
                                             (real?/c j7656 k7657 g7655))))
                                         (begin
                                           (write '(funapp 4079 40))
                                           (display "\n")
                                           (f7658 x9303 x9302)))))
                                      (begin
                                        (write '(funapp 4080 37))
                                        (display "\n")
                                        (image? j7656 k7657 x9301)))))
                                   g9300))))
                              g9299))
                           xj7652
                           xk7653
                           empty-scene))))
                      g9298)))
                   (x9294 (input))
                   (x9293 (input)))
                  (begin
                    (write '(funapp 4089 19))
                    (display "\n")
                    (x9295 x9294 x9293))))
                (g8711
                 (letrec*
                  ((x9305
                    (letrec*
                     ((xj7659
                       (letrec*
                        ((x9306
                          (begin
                            (write '(funapp 4094 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 4094 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 4094 61))
                             (display "\n")
                             'module)
                           x9306))))
                      (xk7660
                       (letrec*
                        ((x9307
                          (begin
                            (write '(funapp 4096 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 4096 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 4096 54))
                             (display "\n")
                             'importer)
                           x9307)))))
                     (letrec*
                      ((g9308
                        (begin
                          (write '(funapp 4099 25))
                          (display "\n")
                          ((lambda (j7662 k7663 f7664)
                             (letrec*
                              ((g9309
                                (lambda (g7661)
                                  (letrec*
                                   ((g9310
                                     (letrec*
                                      ((x9311
                                        (letrec*
                                         ((x9312
                                           (letrec*
                                            ((x9313
                                              (letrec*
                                               ((x9314
                                                 (begin
                                                   (write '(funapp 4112 54))
                                                   (display "\n")
                                                   (listof TETRA/C))))
                                               (begin
                                                 (write '(funapp 4113 46))
                                                 (display "\n")
                                                 (and/c cons?/c x9314)))))
                                            (begin
                                              (write '(funapp 4114 43))
                                              (display "\n")
                                              (x9313 j7662 k7663 g7661)))))
                                         (begin
                                           (write '(funapp 4115 40))
                                           (display "\n")
                                           (f7664 x9312)))))
                                      (begin
                                        (write '(funapp 4116 37))
                                        (display "\n")
                                        (TETRA/C j7662 k7663 x9311)))))
                                   g9310))))
                              g9309))
                           xj7659
                           xk7660
                           list-pick-random))))
                      g9308)))
                   (x9304 (input)))
                  (begin
                    (write '(funapp 4124 19))
                    (display "\n")
                    (x9305 x9304))))
                (g8712
                 (letrec*
                  ((xj7665
                    (letrec*
                     ((x9315
                       (begin (write '(funapp 4127 45)) (display "\n") (loc))))
                     (begin
                       (write '(funapp 4127 53))
                       (display "\n")
                       (cons
                        (begin
                          (write '(funapp 4127 58))
                          (display "\n")
                          'module)
                        x9315))))
                   (xk7666
                    (letrec*
                     ((x9316
                       (begin (write '(funapp 4128 45)) (display "\n") (loc))))
                     (begin
                       (write '(funapp 4128 53))
                       (display "\n")
                       (cons
                        (begin
                          (write '(funapp 4128 58))
                          (display "\n")
                          'importer)
                        x9316)))))
                  (letrec*
                   ((g9317
                     (begin
                       (write '(funapp 4129 36))
                       (display "\n")
                       (integer?/c xj7665 xk7666 neg-1))))
                   g9317)))
                (g8713
                 (letrec*
                  ((x9331
                    (letrec*
                     ((xj7667
                       (letrec*
                        ((x9332
                          (begin
                            (write '(funapp 4134 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 4134 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 4134 61))
                             (display "\n")
                             'module)
                           x9332))))
                      (xk7668
                       (letrec*
                        ((x9333
                          (begin
                            (write '(funapp 4136 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 4136 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 4136 54))
                             (display "\n")
                             'importer)
                           x9333)))))
                     (letrec*
                      ((g9334
                        (begin
                          (write '(funapp 4139 25))
                          (display "\n")
                          ((lambda (j7670 k7671 f7672)
                             (letrec*
                              ((g9335
                                (lambda (g7669)
                                  (letrec*
                                   ((g9336
                                     (letrec*
                                      ((x9337
                                        (letrec*
                                         ((x9338
                                           (begin
                                             (write '(funapp 4148 48))
                                             (display "\n")
                                             (WORLD/C j7670 k7671 g7669))))
                                         (begin
                                           (write '(funapp 4149 40))
                                           (display "\n")
                                           (f7672 x9338)))))
                                      (begin
                                        (write '(funapp 4150 37))
                                        (display "\n")
                                        (image/c j7670 k7671 x9337)))))
                                   g9336))))
                              g9335))
                           xj7667
                           xk7668
                           world->image))))
                      g9334)))
                   (x9318
                    (letrec*
                     ((x9319
                       (letrec*
                        ((x9322
                          (letrec*
                           ((x9323
                             (letrec*
                              ((x9326
                                (letrec*
                                 ((x9327
                                   (letrec*
                                    ((x9330 (input))
                                     (x9328
                                      (letrec*
                                       ((x9329 (input)))
                                       (begin
                                         (write '(funapp 4173 40))
                                         (display "\n")
                                         (cons
                                          x9329
                                          (begin
                                            (write '(funapp 4173 51))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 4174 37))
                                      (display "\n")
                                      (cons x9330 x9328)))))
                                 (begin
                                   (write '(funapp 4175 34))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 4175 39))
                                      (display "\n")
                                      'posn)
                                    x9327))))
                               (x9324
                                (letrec*
                                 ((x9325 (input)))
                                 (begin
                                   (write '(funapp 4177 60))
                                   (display "\n")
                                   (cons
                                    x9325
                                    (begin
                                      (write '(funapp 4177 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 4178 31))
                                (display "\n")
                                (cons x9326 x9324)))))
                           (begin
                             (write '(funapp 4179 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 4179 33))
                                (display "\n")
                                'tetra)
                              x9323))))
                         (x9320
                          (letrec*
                           ((x9321 (input)))
                           (begin
                             (write '(funapp 4180 60))
                             (display "\n")
                             (cons
                              x9321
                              (begin
                                (write '(funapp 4180 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 4181 25))
                          (display "\n")
                          (cons x9322 x9320)))))
                     (begin
                       (write '(funapp 4182 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 4182 27)) (display "\n") 'world)
                        x9319)))))
                  (begin
                    (write '(funapp 4183 19))
                    (display "\n")
                    (x9331 x9318))))
                (g8714
                 (letrec*
                  ((x9340
                    (letrec*
                     ((xj7673
                       (letrec*
                        ((x9341
                          (begin
                            (write '(funapp 4188 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 4188 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 4188 61))
                             (display "\n")
                             'module)
                           x9341))))
                      (xk7674
                       (letrec*
                        ((x9342
                          (begin
                            (write '(funapp 4190 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 4190 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 4190 54))
                             (display "\n")
                             'importer)
                           x9342)))))
                     (letrec*
                      ((g9343
                        (begin
                          (write '(funapp 4193 25))
                          (display "\n")
                          ((lambda (j7676 k7677 f7678)
                             (letrec*
                              ((g9344
                                (lambda (g7675)
                                  (letrec*
                                   ((g9345
                                     (letrec*
                                      ((x9346
                                        (letrec*
                                         ((x9347
                                           (begin
                                             (write '(funapp 4202 48))
                                             (display "\n")
                                             (BSET/C j7676 k7677 g7675))))
                                         (begin
                                           (write '(funapp 4203 40))
                                           (display "\n")
                                           (f7678 x9347)))))
                                      (begin
                                        (write '(funapp 4204 37))
                                        (display "\n")
                                        (image/c j7676 k7677 x9346)))))
                                   g9345))))
                              g9344))
                           xj7673
                           xk7674
                           blocks->image))))
                      g9343)))
                   (x9339 (input)))
                  (begin
                    (write '(funapp 4212 19))
                    (display "\n")
                    (x9340 x9339))))
                (g8715
                 (letrec*
                  ((x9355
                    (letrec*
                     ((xj7679
                       (letrec*
                        ((x9356
                          (begin
                            (write '(funapp 4217 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 4217 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 4217 61))
                             (display "\n")
                             'module)
                           x9356))))
                      (xk7680
                       (letrec*
                        ((x9357
                          (begin
                            (write '(funapp 4219 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 4219 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 4219 54))
                             (display "\n")
                             'importer)
                           x9357)))))
                     (letrec*
                      ((g9358
                        (begin
                          (write '(funapp 4222 25))
                          (display "\n")
                          ((lambda (j7682 k7683 f7684)
                             (letrec*
                              ((g9359
                                (lambda (g7681)
                                  (letrec*
                                   ((g9360
                                     (letrec*
                                      ((x9361
                                        (letrec*
                                         ((x9362
                                           (begin
                                             (write '(funapp 4231 48))
                                             (display "\n")
                                             (BLOCK/C j7682 k7683 g7681))))
                                         (begin
                                           (write '(funapp 4232 40))
                                           (display "\n")
                                           (f7684 x9362)))))
                                      (begin
                                        (write '(funapp 4233 37))
                                        (display "\n")
                                        (image/c j7682 k7683 x9361)))))
                                   g9360))))
                              g9359))
                           xj7679
                           xk7680
                           block->image))))
                      g9358)))
                   (x9348
                    (letrec*
                     ((x9349
                       (letrec*
                        ((x9354 (input))
                         (x9350
                          (letrec*
                           ((x9353 (input))
                            (x9351
                             (letrec*
                              ((x9352 (input)))
                              (begin
                                (write '(funapp 4249 57))
                                (display "\n")
                                (cons
                                 x9352
                                 (begin
                                   (write '(funapp 4249 68))
                                   (display "\n")
                                   '()))))))
                           (begin
                             (write '(funapp 4250 28))
                             (display "\n")
                             (cons x9353 x9351)))))
                        (begin
                          (write '(funapp 4251 25))
                          (display "\n")
                          (cons x9354 x9350)))))
                     (begin
                       (write '(funapp 4252 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 4252 27)) (display "\n") 'block)
                        x9349)))))
                  (begin
                    (write '(funapp 4253 19))
                    (display "\n")
                    (x9355 x9348))))
                (g8716
                 (letrec*
                  ((x9371
                    (letrec*
                     ((xj7685
                       (letrec*
                        ((x9372
                          (begin
                            (write '(funapp 4258 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 4258 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 4258 61))
                             (display "\n")
                             'module)
                           x9372))))
                      (xk7686
                       (letrec*
                        ((x9373
                          (begin
                            (write '(funapp 4260 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 4260 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 4260 54))
                             (display "\n")
                             'importer)
                           x9373)))))
                     (letrec*
                      ((g9374
                        (begin
                          (write '(funapp 4263 25))
                          (display "\n")
                          ((lambda (j7689 k7690 f7691)
                             (letrec*
                              ((g9375
                                (lambda (g7687 g7688)
                                  (letrec*
                                   ((g9376
                                     (letrec*
                                      ((x9377
                                        (letrec*
                                         ((x9379
                                           (begin
                                             (write '(funapp 4272 48))
                                             (display "\n")
                                             (BLOCK/C j7689 k7690 g7687)))
                                          (x9378
                                           (begin
                                             (write '(funapp 4273 48))
                                             (display "\n")
                                             (image/c j7689 k7690 g7688))))
                                         (begin
                                           (write '(funapp 4274 40))
                                           (display "\n")
                                           (f7691 x9379 x9378)))))
                                      (begin
                                        (write '(funapp 4275 37))
                                        (display "\n")
                                        (image/c j7689 k7690 x9377)))))
                                   g9376))))
                              g9375))
                           xj7685
                           xk7686
                           place-block))))
                      g9374)))
                   (x9364
                    (letrec*
                     ((x9365
                       (letrec*
                        ((x9370 (input))
                         (x9366
                          (letrec*
                           ((x9369 (input))
                            (x9367
                             (letrec*
                              ((x9368 (input)))
                              (begin
                                (write '(funapp 4291 57))
                                (display "\n")
                                (cons
                                 x9368
                                 (begin
                                   (write '(funapp 4291 68))
                                   (display "\n")
                                   '()))))))
                           (begin
                             (write '(funapp 4292 28))
                             (display "\n")
                             (cons x9369 x9367)))))
                        (begin
                          (write '(funapp 4293 25))
                          (display "\n")
                          (cons x9370 x9366)))))
                     (begin
                       (write '(funapp 4294 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 4294 27)) (display "\n") 'block)
                        x9365))))
                   (x9363 (input)))
                  (begin
                    (write '(funapp 4296 19))
                    (display "\n")
                    (x9371 x9364 x9363))))
                (g8717
                 (letrec*
                  ((x9381
                    (letrec*
                     ((xj7692
                       (letrec*
                        ((x9382
                          (begin
                            (write '(funapp 4301 48))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 4301 56))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 4301 61))
                             (display "\n")
                             'module)
                           x9382))))
                      (xk7693
                       (letrec*
                        ((x9383
                          (begin
                            (write '(funapp 4303 41))
                            (display "\n")
                            (loc))))
                        (begin
                          (write '(funapp 4303 49))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 4303 54))
                             (display "\n")
                             'importer)
                           x9383)))))
                     (letrec*
                      ((g9384
                        (begin
                          (write '(funapp 4306 25))
                          (display "\n")
                          ((lambda (j7695 k7696 f7697)
                             (letrec*
                              ((g9385
                                (lambda (g7694)
                                  (letrec*
                                   ((g9386
                                     (letrec*
                                      ((x9387
                                        (letrec*
                                         ((x9388
                                           (letrec*
                                            ((x9389
                                              (letrec*
                                               ((x9390
                                                 (begin
                                                   (write '(funapp 4319 54))
                                                   (display "\n")
                                                   (listof TETRA/C))))
                                               (begin
                                                 (write '(funapp 4320 46))
                                                 (display "\n")
                                                 (and/c cons?/c x9390)))))
                                            (begin
                                              (write '(funapp 4321 43))
                                              (display "\n")
                                              (x9389 j7695 k7696 g7694)))))
                                         (begin
                                           (write '(funapp 4322 40))
                                           (display "\n")
                                           (f7697 x9388)))))
                                      (begin
                                        (write '(funapp 4323 37))
                                        (display "\n")
                                        (WORLD/C j7695 k7696 x9387)))))
                                   g9386))))
                              g9385))
                           xj7692
                           xk7693
                           world0))))
                      g9384)))
                   (x9380 (input)))
                  (begin
                    (write '(funapp 4331 19))
                    (display "\n")
                    (x9381 x9380)))))
               g8717))))
           g7734))))
       g7732)))
    g7731)))
