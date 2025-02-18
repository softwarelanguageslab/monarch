(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
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
                   ((x-cnd7726
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7726
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
           ((x7730 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7730)))))
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
           ((g7733 (begin (write '(funapp 54 19)) (display "\n") '()))
            (g7734
             (letrec*
              ((empty (begin (write '(funapp 57 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7735
                     (lambda (k j lst)
                       (letrec*
                        ((g7736
                          (begin
                            (write '(funapp 65 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7737
                                  (begin
                                    (write '(funapp 67 47))
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
                          (write '(funapp 76 35))
                          (display "\n")
                          (real? g7262))))
                      (if x-cnd7739
                        g7262
                        (begin
                          (write '(blame g7260 77 42))
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
                          (write '(funapp 84 35))
                          (display "\n")
                          (boolean? g7265))))
                      (if x-cnd7741
                        g7265
                        (begin
                          (write '(blame g7263 85 42))
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
                          (write '(funapp 92 35))
                          (display "\n")
                          (number? g7268))))
                      (if x-cnd7743
                        g7268
                        (begin
                          (write '(blame g7266 93 42))
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
                          (write '(funapp 101 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7746 #t)) g7746)) g7271))))
                      (if x-cnd7745
                        g7271
                        (begin
                          (write '(blame g7269 102 42))
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
                          (write '(funapp 110 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7749 #t)) g7749)) g7274))))
                      (if x-cnd7748
                        g7274
                        (begin
                          (write '(blame g7272 111 42))
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
                          (write '(funapp 118 35))
                          (display "\n")
                          (pair? g7277))))
                      (if x-cnd7751
                        g7277
                        (begin
                          (write '(blame g7275 119 42))
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
                          (write '(funapp 127 35))
                          (display "\n")
                          (pair? g7280))))
                      (if x-cnd7753
                        g7280
                        (begin
                          (write '(blame g7278 128 42))
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
                          (write '(funapp 135 35))
                          (display "\n")
                          (integer? g7283))))
                      (if x-cnd7755
                        g7283
                        (begin
                          (write '(blame g7281 136 42))
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
                          (write '(funapp 143 35))
                          (display "\n")
                          (symbol? g7286))))
                      (if x-cnd7757
                        g7286
                        (begin
                          (write '(blame g7284 144 42))
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
                               (write '(funapp 154 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7760
                             (begin
                               (write '(funapp 155 42))
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
                               (write '(funapp 166 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7763
                             (begin
                               (write '(funapp 168 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7767
                                (letrec*
                                 ((x7768
                                   (begin
                                     (write '(funapp 172 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 173 34))
                                   (display "\n")
                                   (contract k j x7768))))
                               (x7764
                                (letrec*
                                 ((x7766
                                   (begin
                                     (write '(funapp 176 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7765
                                   (begin
                                     (write '(funapp 176 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 177 34))
                                   (display "\n")
                                   (x7766 k j x7765)))))
                              (begin
                                (write '(funapp 178 31))
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
                          (write '(funapp 185 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 185 55))
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
                          (write '(funapp 193 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7774
                                (letrec*
                                 ((x7775
                                   (begin
                                     (write '(funapp 195 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 195 64))
                                   (display "\n")
                                   (not x7775)))))
                              g7774))
                           g7289))))
                      (if x-cnd7773
                        g7289
                        (begin
                          (write '(blame g7287 200 24))
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
                   (begin (write '(funapp 205 26)) (display "\n") 'server))
                  (xk7291
                   (begin (write '(funapp 205 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7777
                    (begin
                      (write '(funapp 208 21))
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
                                         (write '(funapp 217 44))
                                         (display "\n")
                                         (number?/c j7294 k7295 g7292)))
                                      (x7782
                                       (begin
                                         (write '(funapp 218 44))
                                         (display "\n")
                                         (number?/c j7294 k7295 g7293))))
                                     (begin
                                       (write '(funapp 219 36))
                                       (display "\n")
                                       (f7296 x7783 x7782)))))
                                  (begin
                                    (write '(funapp 220 33))
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
                              (write '(funapp 225 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7778))))))
                  g7777)))
               (-
                (letrec*
                 ((xj7297
                   (begin (write '(funapp 229 26)) (display "\n") 'server))
                  (xk7298
                   (begin (write '(funapp 229 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7784
                    (begin
                      (write '(funapp 232 21))
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
                                         (write '(funapp 241 44))
                                         (display "\n")
                                         (number?/c j7301 k7302 g7299)))
                                      (x7789
                                       (begin
                                         (write '(funapp 242 44))
                                         (display "\n")
                                         (number?/c j7301 k7302 g7300))))
                                     (begin
                                       (write '(funapp 243 36))
                                       (display "\n")
                                       (f7303 x7790 x7789)))))
                                  (begin
                                    (write '(funapp 244 33))
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
                              (write '(funapp 249 53))
                              (display "\n")
                              (orig-- a b))))
                          g7785))))))
                  g7784)))
               (*
                (letrec*
                 ((xj7304
                   (begin (write '(funapp 253 26)) (display "\n") 'server))
                  (xk7305
                   (begin (write '(funapp 253 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7791
                    (begin
                      (write '(funapp 256 21))
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
                                         (write '(funapp 265 44))
                                         (display "\n")
                                         (number?/c j7308 k7309 g7306)))
                                      (x7796
                                       (begin
                                         (write '(funapp 266 44))
                                         (display "\n")
                                         (number?/c j7308 k7309 g7307))))
                                     (begin
                                       (write '(funapp 267 36))
                                       (display "\n")
                                       (f7310 x7797 x7796)))))
                                  (begin
                                    (write '(funapp 268 33))
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
                              (write '(funapp 273 53))
                              (display "\n")
                              (orig-* a b))))
                          g7792))))))
                  g7791)))
               (/
                (letrec*
                 ((xj7311
                   (begin (write '(funapp 277 26)) (display "\n") 'server))
                  (xk7312
                   (begin (write '(funapp 277 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7798
                    (begin
                      (write '(funapp 280 21))
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
                                         (write '(funapp 289 44))
                                         (display "\n")
                                         (number?/c j7315 k7316 g7313)))
                                      (x7803
                                       (begin
                                         (write '(funapp 290 44))
                                         (display "\n")
                                         (number?/c j7315 k7316 g7314))))
                                     (begin
                                       (write '(funapp 291 36))
                                       (display "\n")
                                       (f7317 x7804 x7803)))))
                                  (begin
                                    (write '(funapp 292 33))
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
                              (write '(funapp 297 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7799))))))
                  g7798)))
               (car
                (letrec*
                 ((xj7318
                   (begin (write '(funapp 301 26)) (display "\n") 'server))
                  (xk7319
                   (begin (write '(funapp 301 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7805
                    (begin
                      (write '(funapp 304 21))
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
                                         (write '(funapp 313 44))
                                         (display "\n")
                                         (pair?/c j7321 k7322 g7320))))
                                     (begin
                                       (write '(funapp 314 36))
                                       (display "\n")
                                       (f7323 x7810)))))
                                  (begin
                                    (write '(funapp 315 33))
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
                              (write '(funapp 320 51))
                              (display "\n")
                              (orig-car p))))
                          g7806))))))
                  g7805)))
               (cdr
                (letrec*
                 ((xj7324
                   (begin (write '(funapp 324 26)) (display "\n") 'server))
                  (xk7325
                   (begin (write '(funapp 324 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7811
                    (begin
                      (write '(funapp 327 21))
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
                                         (write '(funapp 336 44))
                                         (display "\n")
                                         (pair?/c j7327 k7328 g7326))))
                                     (begin
                                       (write '(funapp 337 36))
                                       (display "\n")
                                       (f7329 x7816)))))
                                  (begin
                                    (write '(funapp 338 33))
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
                              (write '(funapp 343 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7812))))))
                  g7811)))
               (cons
                (letrec*
                 ((xj7330
                   (begin (write '(funapp 347 26)) (display "\n") 'server))
                  (xk7331
                   (begin (write '(funapp 347 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7817
                    (begin
                      (write '(funapp 350 21))
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
                                         (write '(funapp 359 44))
                                         (display "\n")
                                         (any/c j7334 k7335 g7332)))
                                      (x7822
                                       (begin
                                         (write '(funapp 360 44))
                                         (display "\n")
                                         (any/c j7334 k7335 g7333))))
                                     (begin
                                       (write '(funapp 361 36))
                                       (display "\n")
                                       (f7336 x7823 x7822)))))
                                  (begin
                                    (write '(funapp 362 33))
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
                              (write '(funapp 368 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7818))))))
                  g7817)))
               (vector-ref
                (letrec*
                 ((xj7337
                   (begin (write '(funapp 372 26)) (display "\n") 'server))
                  (xk7338
                   (begin (write '(funapp 372 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7824
                    (begin
                      (write '(funapp 375 21))
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
                                         (write '(funapp 384 44))
                                         (display "\n")
                                         (vector?/c j7340 k7341 g7339))))
                                     (begin
                                       (write '(funapp 385 36))
                                       (display "\n")
                                       (f7342 x7829)))))
                                  (begin
                                    (write '(funapp 386 33))
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
                              (write '(funapp 392 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7825))))))
                  g7824)))
               (vector-set!
                (letrec*
                 ((xj7343
                   (begin (write '(funapp 396 26)) (display "\n") 'server))
                  (xk7344
                   (begin (write '(funapp 396 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7830
                    (begin
                      (write '(funapp 399 21))
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
                                         (write '(funapp 408 44))
                                         (display "\n")
                                         (vector?/c j7347 k7348 g7345)))
                                      (x7835
                                       (begin
                                         (write '(funapp 409 44))
                                         (display "\n")
                                         (integer?/c j7347 k7348 g7346))))
                                     (begin
                                       (write '(funapp 410 36))
                                       (display "\n")
                                       (f7349 x7836 x7835)))))
                                  (begin
                                    (write '(funapp 411 33))
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
                              (write '(funapp 417 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7831))))))
                  g7830)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7837
                     (if cnd
                       (begin (write '(funapp 422 35)) (display "\n") '())
                       (begin
                         (write '(funapp 422 40))
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
                             (write '(funapp 429 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 429 58))
                           (display "\n")
                           (cdr x7840)))))
                      (begin
                        (write '(funapp 430 23))
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
                          (write '(funapp 436 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 436 62))
                        (display "\n")
                        (assert x7844))))
                    (g7842
                     (letrec*
                      ((x7845
                        (begin
                          (write '(funapp 437 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 437 57))
                        (display "\n")
                        (assert x7845))))
                    (g7843
                     (letrec*
                      ((x-cnd7846
                        (begin
                          (write '(funapp 440 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7846
                        (begin (write '(funapp 442 24)) (display "\n") '())
                        (letrec*
                         ((x7849
                           (letrec*
                            ((x7850
                              (begin
                                (write '(funapp 444 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 444 61))
                              (display "\n")
                              (f x7850))))
                          (x7847
                           (letrec*
                            ((x7848
                              (begin
                                (write '(funapp 445 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 445 61))
                              (display "\n")
                              (map f x7848)))))
                         (begin
                           (write '(funapp 446 26))
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
                          (write '(funapp 451 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 451 55))
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
                                (write '(funapp 460 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 460 61))
                              (display "\n")
                              (car x7856)))))
                         (begin
                           (write '(funapp 461 26))
                           (display "\n")
                           (cdr x7855)))))
                      (begin
                        (write '(funapp 462 23))
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
                                (write '(funapp 471 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 471 61))
                              (display "\n")
                              (cdr x7860)))))
                         (begin
                           (write '(funapp 472 26))
                           (display "\n")
                           (car x7859)))))
                      (begin
                        (write '(funapp 473 23))
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
                          (write '(funapp 479 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 479 60))
                        (display "\n")
                        (assert x7864))))
                    (g7862
                     (letrec*
                      ((x7865
                        (begin
                          (write '(funapp 481 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 481 59))
                        (display "\n")
                        (assert x7865))))
                    (g7863
                     (letrec*
                      ((output-port
                        (begin
                          (write '(funapp 484 37))
                          (display "\n")
                          (open-output-file filename)))
                       (res
                        (begin
                          (write '(funapp 485 29))
                          (display "\n")
                          (proc output-port))))
                      (letrec*
                       ((g7866
                         (begin
                           (write '(funapp 487 32))
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
                             (write '(funapp 495 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 495 58))
                           (display "\n")
                           (cdr x7870)))))
                      (begin
                        (write '(funapp 496 23))
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
                                (write '(funapp 505 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 505 61))
                              (display "\n")
                              (car x7874)))))
                         (begin
                           (write '(funapp 506 26))
                           (display "\n")
                           (car x7873)))))
                      (begin
                        (write '(funapp 507 23))
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
                          (write '(funapp 512 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 512 57))
                        (display "\n")
                        (assert x7877))))
                    (g7876
                     (letrec*
                      ((x-cnd7878
                        (begin
                          (write '(funapp 515 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7878
                        #f
                        (letrec*
                         ((x-cnd7879
                           (letrec*
                            ((x7880
                              (begin
                                (write '(funapp 520 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 520 56))
                              (display "\n")
                              (eq? x7880 k)))))
                         (if x-cnd7879
                           (begin
                             (write '(funapp 522 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7881
                              (begin
                                (write '(funapp 523 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 523 55))
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
                          (write '(funapp 528 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 528 60))
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
                          (write '(funapp 533 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 533 57))
                        (display "\n")
                        (assert x7886))))
                    (g7885
                     (letrec*
                      ((x-cnd7887
                        (begin
                          (write '(funapp 536 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7887
                        ""
                        (letrec*
                         ((x7890
                           (letrec*
                            ((x7891
                              (begin
                                (write '(funapp 541 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 541 55))
                              (display "\n")
                              (char->string x7891))))
                          (x7888
                           (letrec*
                            ((x7889
                              (begin
                                (write '(funapp 543 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 543 55))
                              (display "\n")
                              (list->string x7889)))))
                         (begin
                           (write '(funapp 544 26))
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
                          (write '(funapp 549 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 549 58))
                        (display "\n")
                        (assert x7895))))
                    (g7893
                     (letrec*
                      ((x7896
                        (begin
                          (write '(funapp 550 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 550 58))
                        (display "\n")
                        (assert x7896))))
                    (g7894
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 553 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7897
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 555 52))
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
                                (write '(funapp 565 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 565 61))
                              (display "\n")
                              (cdr x7901)))))
                         (begin
                           (write '(funapp 566 26))
                           (display "\n")
                           (cdr x7900)))))
                      (begin
                        (write '(funapp 567 23))
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
                          (write '(funapp 572 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 572 57))
                        (display "\n")
                        (assert x7905))))
                    (g7903
                     (letrec*
                      ((x7906
                        (begin
                          (write '(funapp 573 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 573 57))
                        (display "\n")
                        (assert x7906))))
                    (g7904
                     (letrec*
                      ((x-cnd7907
                        (begin
                          (write '(funapp 576 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7907
                        x
                        (letrec*
                         ((x7909
                           (begin
                             (write '(funapp 580 34))
                             (display "\n")
                             (cdr x)))
                          (x7908
                           (begin
                             (write '(funapp 580 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 581 26))
                           (display "\n")
                           (list-tail x7909 x7908)))))))
                   g7904)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7910
                     (begin (write '(funapp 583 49)) (display "\n") '())))
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
                           (write '(funapp 590 48))
                           (display "\n")
                           (char-ci>=? c x7913)))))
                      (if x-cnd7912
                        (letrec*
                         ((x7914 #\z))
                         (begin
                           (write '(funapp 592 48))
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
                          (write '(funapp 598 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 598 59))
                        (display "\n")
                        (assert x7917))))
                    (g7916
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 601 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7918
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 607 39))
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
                             (write '(funapp 619 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 619 62))
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
                                   (write '(funapp 627 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 628 32))
                                 (display "\n")
                                 (= x7923 10)))))
                            (letrec*
                             ((g7924
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7925
                                    (begin
                                      (write '(funapp 634 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 635 35))
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
                             (write '(funapp 644 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 644 58))
                           (display "\n")
                           (cdr x7928)))))
                      (begin
                        (write '(funapp 645 23))
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
                          (write '(funapp 650 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 650 59))
                        (display "\n")
                        (assert x7931))))
                    (g7930
                     (begin (write '(funapp 651 28)) (display "\n") (> x 0))))
                   g7930)))
               ($pc (begin (write '(funapp 653 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7932 #f)) g7932)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7933
                     (letrec*
                      ((x7934
                        (begin
                          (write '(funapp 659 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 659 55))
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
                          (write '(funapp 664 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 664 59))
                        (display "\n")
                        (assert x7937))))
                    (g7936
                     (letrec*
                      ((x-cnd7938
                        (begin
                          (write '(funapp 667 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7938
                        (begin
                          (write '(funapp 668 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 668 49))
                          (display "\n")
                          (floor x))))))
                   g7936)))
               ($cmp (begin (write '(funapp 670 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7939
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 676 33))
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
                                   (write '(funapp 684 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7941
                                 (begin
                                   (write '(funapp 685 46))
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
                                         (write '(funapp 693 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7943
                                       (letrec*
                                        ((x-cnd7944
                                          (begin
                                            (write '(funapp 696 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7944
                                          (begin
                                            (write '(funapp 697 55))
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
                                               (write '(funapp 706 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7946
                                             (letrec*
                                              ((x-cnd7947
                                                (begin
                                                  (write '(funapp 709 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7947
                                                (letrec*
                                                 ((x-cnd7948
                                                   (letrec*
                                                    ((x7950
                                                      (begin
                                                        (write
                                                         '(funapp 714 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7949
                                                      (begin
                                                        (write
                                                         '(funapp 715 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 716 53))
                                                      (display "\n")
                                                      (equal? x7950 x7949)))))
                                                 (if x-cnd7948
                                                   (letrec*
                                                    ((x7952
                                                      (begin
                                                        (write
                                                         '(funapp 719 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7951
                                                      (begin
                                                        (write
                                                         '(funapp 720 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 721 53))
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
                                                  (write '(funapp 730 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7954
                                                (letrec*
                                                 ((x-cnd7955
                                                   (begin
                                                     (write '(funapp 733 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7955
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 736 57))
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
                                                                  743
                                                                  62))
                                                               (display "\n")
                                                               (vector-length
                                                                b))))
                                                           (begin
                                                             (write
                                                              '(funapp 745 60))
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
                                                                          754
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
                                                                                   763
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
                                                                                   767
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 b
                                                                                 i))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 770
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
                                                                                   776
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (+
                                                                                 i
                                                                                 1))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 779
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
                                                                   785
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
                                (write '(funapp 803 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 803 61))
                              (display "\n")
                              (car x7969)))))
                         (begin
                           (write '(funapp 804 26))
                           (display "\n")
                           (car x7968)))))
                      (begin
                        (write '(funapp 805 23))
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
                                (write '(funapp 814 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 814 61))
                              (display "\n")
                              (cdr x7973)))))
                         (begin
                           (write '(funapp 815 26))
                           (display "\n")
                           (car x7972)))))
                      (begin
                        (write '(funapp 816 23))
                        (display "\n")
                        (car x7971)))))
                   g7970)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7974
                     (begin
                       (write '(funapp 818 53))
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
                          (write '(funapp 822 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 822 59))
                        (display "\n")
                        (assert x7977))))
                    (g7976
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 825 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7978
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (begin
                                (write '(funapp 831 39))
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
                          (write '(funapp 841 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 841 60))
                        (display "\n")
                        (assert x7983))))
                    (g7981
                     (letrec*
                      ((x7984
                        (begin
                          (write '(funapp 843 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 843 59))
                        (display "\n")
                        (assert x7984))))
                    (g7982
                     (letrec*
                      ((input-port
                        (begin
                          (write '(funapp 846 36))
                          (display "\n")
                          (open-input-file filename)))
                       (res
                        (begin
                          (write '(funapp 847 29))
                          (display "\n")
                          (proc input-port))))
                      (letrec*
                       ((g7985
                         (begin
                           (write '(funapp 849 32))
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
                       (write '(funapp 852 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 852 57)) (display "\n") '())))))
                   g7987)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7988
                     (letrec*
                      ((x7991
                        (begin
                          (write '(funapp 856 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 856 58))
                        (display "\n")
                        (assert x7991))))
                    (g7989
                     (letrec*
                      ((x7992
                        (begin
                          (write '(funapp 857 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 857 58))
                        (display "\n")
                        (assert x7992))))
                    (g7990
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 860 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7993
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 862 52))
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
                             (write '(funapp 870 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 870 58))
                           (display "\n")
                           (car x7996)))))
                      (begin
                        (write '(funapp 871 23))
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
                                (write '(funapp 880 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 880 61))
                              (display "\n")
                              (cdr x8000)))))
                         (begin
                           (write '(funapp 881 26))
                           (display "\n")
                           (car x7999)))))
                      (begin
                        (write '(funapp 882 23))
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
                             (write '(funapp 890 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 890 58))
                           (display "\n")
                           (cdr x8003)))))
                      (begin
                        (write '(funapp 891 23))
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
                             (write '(funapp 898 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 898 58))
                           (display "\n")
                           (car x8006)))))
                      (begin
                        (write '(funapp 899 23))
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
                          (write '(funapp 904 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 904 58))
                        (display "\n")
                        (assert x8010))))
                    (g8008
                     (letrec*
                      ((x8011
                        (begin
                          (write '(funapp 905 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 905 58))
                        (display "\n")
                        (assert x8011))))
                    (g8009
                     (letrec*
                      ((x8012
                        (begin
                          (write '(funapp 906 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 906 66))
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
                                (write '(funapp 916 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 916 61))
                              (display "\n")
                              (car x8016)))))
                         (begin
                           (write '(funapp 917 26))
                           (display "\n")
                           (car x8015)))))
                      (begin
                        (write '(funapp 918 23))
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
                          (write '(funapp 923 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 923 59))
                        (display "\n")
                        (assert x8019))))
                    (g8018
                     (begin (write '(funapp 924 28)) (display "\n") (< x 0))))
                   g8018)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g8020
                     (begin
                       (write '(funapp 926 53))
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
                             (write '(funapp 932 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 932 58))
                           (display "\n")
                           (car x8023)))))
                      (begin
                        (write '(funapp 933 23))
                        (display "\n")
                        (car x8022)))))
                   g8021)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g8024
                     (begin (write '(funapp 935 51)) (display "\n") '())))
                   g8024)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g8025
                     (letrec*
                      ((x8027
                        (begin
                          (write '(funapp 939 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 939 57))
                        (display "\n")
                        (assert x8027))))
                    (g8026
                     (letrec*
                      ((x-cnd8028
                        (begin
                          (write '(funapp 942 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8028
                        (begin (write '(funapp 944 24)) (display "\n") '())
                        (letrec*
                         ((x8031
                           (letrec*
                            ((x8032
                              (begin
                                (write '(funapp 946 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 946 61))
                              (display "\n")
                              (reverse x8032))))
                          (x8029
                           (letrec*
                            ((x8030
                              (begin
                                (write '(funapp 947 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 947 61))
                              (display "\n")
                              (list x8030)))))
                         (begin
                           (write '(funapp 948 26))
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
                                (write '(funapp 957 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 957 61))
                              (display "\n")
                              (car x8036)))))
                         (begin
                           (write '(funapp 958 26))
                           (display "\n")
                           (car x8035)))))
                      (begin
                        (write '(funapp 959 23))
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
                                (write '(funapp 968 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 968 61))
                              (display "\n")
                              (car x8040)))))
                         (begin
                           (write '(funapp 969 26))
                           (display "\n")
                           (cdr x8039)))))
                      (begin
                        (write '(funapp 970 23))
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
                          (write '(funapp 975 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 975 59))
                        (display "\n")
                        (assert x8043))))
                    (g8042
                     (letrec*
                      ((x8044
                        (begin
                          (write '(funapp 976 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 976 60))
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
                                (write '(funapp 985 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 985 61))
                              (display "\n")
                              (cdr x8048)))))
                         (begin
                           (write '(funapp 986 26))
                           (display "\n")
                           (car x8047)))))
                      (begin
                        (write '(funapp 987 23))
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
                          (write '(funapp 993 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 993 59))
                        (display "\n")
                        (assert x8052))))
                    (g8050
                     (letrec*
                      ((x8053
                        (begin
                          (write '(funapp 994 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 994 60))
                        (display "\n")
                        (assert x8053))))
                    (g8051
                     (letrec*
                      ((x-cnd8054
                        (begin
                          (write '(funapp 997 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd8054
                        (letrec*
                         ((g8055
                           (begin
                             (write '(funapp 999 42))
                             (display "\n")
                             (proc))))
                         g8055)
                        (letrec*
                         ((x-cnd8056
                           (letrec*
                            ((x8057
                              (begin
                                (write '(funapp 1002 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1002 58))
                              (display "\n")
                              (null? x8057)))))
                         (if x-cnd8056
                           (letrec*
                            ((g8058
                              (letrec*
                               ((x8059
                                 (begin
                                   (write '(funapp 1006 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1006 61))
                                 (display "\n")
                                 (proc x8059)))))
                            g8058)
                           (letrec*
                            ((x-cnd8060
                              (letrec*
                               ((x8061
                                 (begin
                                   (write '(funapp 1010 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1010 62))
                                 (display "\n")
                                 (null? x8061)))))
                            (if x-cnd8060
                              (letrec*
                               ((g8062
                                 (letrec*
                                  ((x8064
                                    (begin
                                      (write '(funapp 1015 43))
                                      (display "\n")
                                      (car args)))
                                   (x8063
                                    (begin
                                      (write '(funapp 1015 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1016 35))
                                    (display "\n")
                                    (proc x8064 x8063)))))
                               g8062)
                              (letrec*
                               ((x-cnd8065
                                 (letrec*
                                  ((x8066
                                    (begin
                                      (write '(funapp 1021 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1022 35))
                                    (display "\n")
                                    (null? x8066)))))
                               (if x-cnd8065
                                 (letrec*
                                  ((g8067
                                    (letrec*
                                     ((x8070
                                       (begin
                                         (write '(funapp 1027 46))
                                         (display "\n")
                                         (car args)))
                                      (x8069
                                       (begin
                                         (write '(funapp 1028 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x8068
                                       (begin
                                         (write '(funapp 1029 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1030 38))
                                       (display "\n")
                                       (proc x8070 x8069 x8068)))))
                                  g8067)
                                 (letrec*
                                  ((x-cnd8071
                                    (letrec*
                                     ((x8072
                                       (begin
                                         (write '(funapp 1035 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1036 38))
                                       (display "\n")
                                       (null? x8072)))))
                                  (if x-cnd8071
                                    (letrec*
                                     ((g8073
                                       (letrec*
                                        ((x8077
                                          (begin
                                            (write '(funapp 1041 49))
                                            (display "\n")
                                            (car args)))
                                         (x8076
                                          (begin
                                            (write '(funapp 1042 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x8075
                                          (begin
                                            (write '(funapp 1043 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x8074
                                          (begin
                                            (write '(funapp 1044 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1045 41))
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
                                               (write '(funapp 1052 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1053 44))
                                             (display "\n")
                                             (cdr x8080)))))
                                        (begin
                                          (write '(funapp 1054 41))
                                          (display "\n")
                                          (null? x8079)))))
                                     (if x-cnd8078
                                       (letrec*
                                        ((g8081
                                          (letrec*
                                           ((x8087
                                             (begin
                                               (write '(funapp 1059 52))
                                               (display "\n")
                                               (car args)))
                                            (x8086
                                             (begin
                                               (write '(funapp 1060 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x8085
                                             (begin
                                               (write '(funapp 1061 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x8084
                                             (begin
                                               (write '(funapp 1062 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x8082
                                             (letrec*
                                              ((x8083
                                                (begin
                                                  (write '(funapp 1065 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1066 47))
                                                (display "\n")
                                                (car x8083)))))
                                           (begin
                                             (write '(funapp 1067 44))
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
                                                  (write '(funapp 1079 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1080 47))
                                                (display "\n")
                                                (cddr x8090)))))
                                           (begin
                                             (write '(funapp 1081 44))
                                             (display "\n")
                                             (null? x8089)))))
                                        (if x-cnd8088
                                          (letrec*
                                           ((g8091
                                             (letrec*
                                              ((x8099
                                                (begin
                                                  (write '(funapp 1086 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x8098
                                                (begin
                                                  (write '(funapp 1087 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x8097
                                                (begin
                                                  (write '(funapp 1088 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x8096
                                                (begin
                                                  (write '(funapp 1089 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x8094
                                                (letrec*
                                                 ((x8095
                                                   (begin
                                                     (write '(funapp 1092 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1093 50))
                                                   (display "\n")
                                                   (car x8095))))
                                               (x8092
                                                (letrec*
                                                 ((x8093
                                                   (begin
                                                     (write '(funapp 1096 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1097 50))
                                                   (display "\n")
                                                   (cadr x8093)))))
                                              (begin
                                                (write '(funapp 1098 47))
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
                                                     (write '(funapp 1111 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1112 50))
                                                   (display "\n")
                                                   (cdddr x8102)))))
                                              (begin
                                                (write '(funapp 1113 47))
                                                (display "\n")
                                                (null? x8101)))))
                                           (if x-cnd8100
                                             (letrec*
                                              ((g8103
                                                (letrec*
                                                 ((x8113
                                                   (begin
                                                     (write '(funapp 1118 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x8112
                                                   (begin
                                                     (write '(funapp 1119 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x8111
                                                   (begin
                                                     (write '(funapp 1120 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x8110
                                                   (begin
                                                     (write '(funapp 1121 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x8108
                                                   (letrec*
                                                    ((x8109
                                                      (begin
                                                        (write
                                                         '(funapp 1124 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1125 53))
                                                      (display "\n")
                                                      (car x8109))))
                                                  (x8106
                                                   (letrec*
                                                    ((x8107
                                                      (begin
                                                        (write
                                                         '(funapp 1128 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1129 53))
                                                      (display "\n")
                                                      (cadr x8107))))
                                                  (x8104
                                                   (letrec*
                                                    ((x8105
                                                      (begin
                                                        (write
                                                         '(funapp 1132 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1133 53))
                                                      (display "\n")
                                                      (caddr x8105)))))
                                                 (begin
                                                   (write '(funapp 1134 50))
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
                                                  (write '(funapp 1145 49))
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
                          (write '(funapp 1151 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1151 57))
                        (display "\n")
                        (assert x8117))))
                    (g8116
                     (letrec*
                      ((x-cnd8118
                        (begin
                          (write '(funapp 1154 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8118
                        #f
                        (letrec*
                         ((x-cnd8119
                           (letrec*
                            ((x8120
                              (begin
                                (write '(funapp 1159 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1159 55))
                              (display "\n")
                              (equal? x8120 e)))))
                         (if x-cnd8119
                           l
                           (letrec*
                            ((x8121
                              (begin
                                (write '(funapp 1162 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1162 55))
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
                                (write '(funapp 1171 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1171 61))
                              (display "\n")
                              (cdr x8125)))))
                         (begin
                           (write '(funapp 1172 26))
                           (display "\n")
                           (cdr x8124)))))
                      (begin
                        (write '(funapp 1173 23))
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
                                (write '(funapp 1182 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1182 61))
                              (display "\n")
                              (cdr x8129)))))
                         (begin
                           (write '(funapp 1183 26))
                           (display "\n")
                           (cdr x8128)))))
                      (begin
                        (write '(funapp 1184 23))
                        (display "\n")
                        (car x8127)))))
                   g8126)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g8130
                     (begin
                       (write '(funapp 1186 53))
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
                          (write '(funapp 1190 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1190 59))
                        (display "\n")
                        (assert x8133))))
                    (g8132
                     (begin (write '(funapp 1191 28)) (display "\n") (= x 0))))
                   g8132)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8134
                     (letrec*
                      ((val7254
                        (begin
                          (write '(funapp 1198 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g8135
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1200 52))
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
                          (write '(funapp 1206 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1206 55))
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
                             (write '(funapp 1216 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8139
                           (letrec*
                            ((x8140
                              (begin
                                (write '(funapp 1218 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1218 55))
                              (display "\n")
                              (list? x8140)))
                           #f))))
                      (letrec*
                       ((g8141
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1221 52))
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
                                (write '(funapp 1231 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1231 61))
                              (display "\n")
                              (car x8145)))))
                         (begin
                           (write '(funapp 1232 26))
                           (display "\n")
                           (cdr x8144)))))
                      (begin
                        (write '(funapp 1233 23))
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
                           (write '(funapp 1240 58))
                           (display "\n")
                           (char<=? x8148 c)))))
                      (if x-cnd8147
                        (letrec*
                         ((x8149 #\9))
                         (begin
                           (write '(funapp 1242 48))
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
                          (write '(funapp 1249 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1249 57))
                        (display "\n")
                        (assert x8152))))
                    (g8151
                     (letrec*
                      ((x-cnd8153
                        (begin
                          (write '(funapp 1252 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8153
                        #f
                        (letrec*
                         ((x-cnd8154
                           (letrec*
                            ((x8155
                              (begin
                                (write '(funapp 1257 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1257 56))
                              (display "\n")
                              (eqv? x8155 k)))))
                         (if x-cnd8154
                           (begin
                             (write '(funapp 1259 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8156
                              (begin
                                (write '(funapp 1260 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1260 55))
                              (display "\n")
                              (assq k x8156)))))))))
                   g8151)))
               (not (lambda (x) (letrec* ((g8157 (if x #f #t))) g8157)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g8158
                     (begin
                       (write '(funapp 1264 50))
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
                          (write '(funapp 1268 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1268 57))
                        (display "\n")
                        (assert x8161))))
                    (g8160
                     (letrec*
                      ((x-cnd8162
                        (begin
                          (write '(funapp 1271 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8162
                        #f
                        (letrec*
                         ((x-cnd8163
                           (letrec*
                            ((x8164
                              (begin
                                (write '(funapp 1276 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1276 55))
                              (display "\n")
                              (eq? x8164 e)))))
                         (if x-cnd8163
                           l
                           (letrec*
                            ((x8165
                              (begin
                                (write '(funapp 1279 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1279 55))
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
                                (write '(funapp 1288 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1288 61))
                              (display "\n")
                              (car x8169)))))
                         (begin
                           (write '(funapp 1289 26))
                           (display "\n")
                           (cdr x8168)))))
                      (begin
                        (write '(funapp 1290 23))
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
                          (write '(funapp 1295 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1295 57))
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
                                  (write '(funapp 1303 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd8174
                                0
                                (letrec*
                                 ((x8175
                                   (letrec*
                                    ((x8176
                                      (begin
                                        (write '(funapp 1308 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1308 63))
                                      (display "\n")
                                      (rec x8176)))))
                                 (begin
                                   (write '(funapp 1309 34))
                                   (display "\n")
                                   (+ 1 x8175)))))))
                           g8173))))
                      (letrec*
                       ((g8177
                         (begin
                           (write '(funapp 1311 40))
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
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1316 58))
                        (display "\n")
                        (assert x8181))))
                    (g8179
                     (letrec*
                      ((x8182
                        (begin
                          (write '(funapp 1317 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1317 58))
                        (display "\n")
                        (assert x8182))))
                    (g8180
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1320 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g8183
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1322 52))
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
                          (write '(funapp 1328 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1328 65))
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
                             (write '(funapp 1335 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1335 58))
                           (display "\n")
                           (car x8188)))))
                      (begin
                        (write '(funapp 1336 23))
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
                          (write '(funapp 1341 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1341 57))
                        (display "\n")
                        (assert x8191))))
                    (g8190
                     (letrec*
                      ((x-cnd8192
                        (begin
                          (write '(funapp 1344 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8192
                        #f
                        (letrec*
                         ((x-cnd8193
                           (letrec*
                            ((x8194
                              (begin
                                (write '(funapp 1349 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1349 56))
                              (display "\n")
                              (equal? x8194 k)))))
                         (if x-cnd8193
                           (begin
                             (write '(funapp 1351 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8195
                              (begin
                                (write '(funapp 1352 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1352 55))
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
                          (write '(funapp 1357 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1357 55))
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
                          (write '(funapp 1362 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1362 58))
                        (display "\n")
                        (assert x8201))))
                    (g8199
                     (letrec*
                      ((x8202
                        (begin
                          (write '(funapp 1363 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1363 58))
                        (display "\n")
                        (assert x8202))))
                    (g8200
                     (letrec*
                      ((x8203
                        (begin
                          (write '(funapp 1364 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1364 63))
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
                          (write '(funapp 1371 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g8205
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1373 52))
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
                          (write '(funapp 1379 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1379 62))
                        (display "\n")
                        (assert x8209))))
                    (g8207
                     (letrec*
                      ((x8210
                        (begin
                          (write '(funapp 1380 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1380 57))
                        (display "\n")
                        (assert x8210))))
                    (g8208
                     (letrec*
                      ((x-cnd8211
                        (begin
                          (write '(funapp 1383 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8211
                        #t
                        (letrec*
                         ((x-cnd8212
                           (begin
                             (write '(funapp 1387 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8212
                           (letrec*
                            ((g8213
                              (letrec*
                               ((x8215
                                 (begin
                                   (write '(funapp 1390 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1390 64))
                                 (display "\n")
                                 (f x8215))))
                             (g8214
                              (letrec*
                               ((x8216
                                 (begin
                                   (write '(funapp 1392 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1392 58))
                                 (display "\n")
                                 (for-each f x8216)))))
                            g8214)
                           (begin
                             (write '(funapp 1394 27))
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
                          (write '(funapp 1399 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1399 59))
                        (display "\n")
                        (assert x8219))))
                    (g8218
                     (letrec*
                      ((x-cnd8220
                        (begin
                          (write '(funapp 1401 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd8220
                        (begin
                          (write '(funapp 1401 67))
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
                          (write '(funapp 1406 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1406 58))
                        (display "\n")
                        (assert x8224))))
                    (g8222
                     (letrec*
                      ((x8225
                        (begin
                          (write '(funapp 1407 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1407 58))
                        (display "\n")
                        (assert x8225))))
                    (g8223
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1410 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g8226
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1412 52))
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
                                (write '(funapp 1422 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1422 61))
                              (display "\n")
                              (cdr x8230)))))
                         (begin
                           (write '(funapp 1423 26))
                           (display "\n")
                           (cdr x8229)))))
                      (begin
                        (write '(funapp 1424 23))
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
                             (write '(funapp 1432 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1432 58))
                           (display "\n")
                           (abs x8235))))
                       (x8233
                        (begin
                          (write '(funapp 1433 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1434 23))
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
                          (write '(funapp 1440 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1440 59))
                        (display "\n")
                        (assert x8238))))
                    (g8237
                     (letrec*
                      ((x8239
                        (begin
                          (write '(funapp 1441 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1441 56))
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
                          (write '(funapp 1446 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1446 57))
                        (display "\n")
                        (assert x8244))))
                    (g8241
                     (letrec*
                      ((x8245
                        (begin
                          (write '(funapp 1447 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1447 63))
                        (display "\n")
                        (assert x8245))))
                    (g8242
                     (letrec*
                      ((x8246
                        (letrec*
                         ((x8247
                           (begin
                             (write '(funapp 1450 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1450 61))
                           (display "\n")
                           (< index x8247)))))
                      (begin
                        (write '(funapp 1451 23))
                        (display "\n")
                        (assert x8246))))
                    (g8243
                     (letrec*
                      ((x-cnd8248
                        (begin
                          (write '(funapp 1454 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8248
                        (begin
                          (write '(funapp 1456 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8250
                           (begin
                             (write '(funapp 1458 34))
                             (display "\n")
                             (cdr l)))
                          (x8249
                           (begin
                             (write '(funapp 1458 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1459 26))
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
                          (write '(funapp 1466 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8252
                        a
                        (letrec*
                         ((x8253
                           (begin
                             (write '(funapp 1469 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1469 57))
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
                                (write '(funapp 1480 37))
                                (display "\n")
                                (orig-cons
                                 color7701
                                 (begin
                                   (write '(funapp 1480 57))
                                   (display "\n")
                                   '())))))
                            (begin
                              (write '(funapp 1481 29))
                              (display "\n")
                              (orig-cons y7700 x8257)))))
                         (begin
                           (write '(funapp 1482 26))
                           (display "\n")
                           (orig-cons x7699 x8256)))))
                      (begin
                        (write '(funapp 1483 23))
                        (display "\n")
                        (orig-cons
                         (begin
                           (write '(funapp 1483 33))
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
                          (write '(funapp 1489 39))
                          (display "\n")
                          (car block7698))))
                      (begin
                        (write '(funapp 1489 57))
                        (display "\n")
                        (eq?
                         x8259
                         (begin
                           (write '(funapp 1489 67))
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
                          (write '(funapp 1495 39))
                          (display "\n")
                          (orig-cdr block))))
                      (begin
                        (write '(funapp 1495 58))
                        (display "\n")
                        (orig-car x8261)))))
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
                             (write '(funapp 1503 42))
                             (display "\n")
                             (orig-cdr block))))
                         (begin
                           (write '(funapp 1503 61))
                           (display "\n")
                           (orig-cdr x8264)))))
                      (begin
                        (write '(funapp 1504 23))
                        (display "\n")
                        (orig-car x8263)))))
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
                                (write '(funapp 1515 37))
                                (display "\n")
                                (orig-cdr block))))
                            (begin
                              (write '(funapp 1516 29))
                              (display "\n")
                              (orig-cdr x8268)))))
                         (begin
                           (write '(funapp 1517 26))
                           (display "\n")
                           (orig-cdr x8267)))))
                      (begin
                        (write '(funapp 1518 23))
                        (display "\n")
                        (orig-car x8266)))))
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
                             (write '(funapp 1527 34))
                             (display "\n")
                             (orig-cons
                              blocks7707
                              (begin
                                (write '(funapp 1527 55))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1528 26))
                           (display "\n")
                           (orig-cons center7706 x8271)))))
                      (begin
                        (write '(funapp 1529 23))
                        (display "\n")
                        (orig-cons
                         (begin
                           (write '(funapp 1529 33))
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
                          (write '(funapp 1535 39))
                          (display "\n")
                          (car tetra7705))))
                      (begin
                        (write '(funapp 1535 57))
                        (display "\n")
                        (eq?
                         x8273
                         (begin
                           (write '(funapp 1535 67))
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
                          (write '(funapp 1541 39))
                          (display "\n")
                          (orig-cdr tetra))))
                      (begin
                        (write '(funapp 1541 58))
                        (display "\n")
                        (orig-car x8275)))))
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
                             (write '(funapp 1549 42))
                             (display "\n")
                             (orig-cdr tetra))))
                         (begin
                           (write '(funapp 1549 61))
                           (display "\n")
                           (orig-cdr x8278)))))
                      (begin
                        (write '(funapp 1550 23))
                        (display "\n")
                        (orig-car x8277)))))
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
                             (write '(funapp 1559 34))
                             (display "\n")
                             (orig-cons
                              blocks7712
                              (begin
                                (write '(funapp 1559 55))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1560 26))
                           (display "\n")
                           (orig-cons tetra7711 x8281)))))
                      (begin
                        (write '(funapp 1561 23))
                        (display "\n")
                        (orig-cons
                         (begin
                           (write '(funapp 1561 33))
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
                          (write '(funapp 1567 39))
                          (display "\n")
                          (car world7710))))
                      (begin
                        (write '(funapp 1567 57))
                        (display "\n")
                        (eq?
                         x8283
                         (begin
                           (write '(funapp 1567 67))
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
                          (write '(funapp 1573 39))
                          (display "\n")
                          (orig-cdr world))))
                      (begin
                        (write '(funapp 1573 58))
                        (display "\n")
                        (orig-car x8285)))))
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
                             (write '(funapp 1581 42))
                             (display "\n")
                             (orig-cdr world))))
                         (begin
                           (write '(funapp 1581 61))
                           (display "\n")
                           (orig-cdr x8288)))))
                      (begin
                        (write '(funapp 1582 23))
                        (display "\n")
                        (orig-car x8287)))))
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
                             (write '(funapp 1591 34))
                             (display "\n")
                             (orig-cons
                              y7717
                              (begin
                                (write '(funapp 1591 50))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1592 26))
                           (display "\n")
                           (orig-cons x7716 x8291)))))
                      (begin
                        (write '(funapp 1593 23))
                        (display "\n")
                        (orig-cons
                         (begin (write '(funapp 1593 33)) (display "\n") 'posn)
                         x8290)))))
                   g8289)))
               (posn?
                (lambda (posn7715)
                  (letrec*
                   ((g8292
                     (letrec*
                      ((x8293
                        (begin
                          (write '(funapp 1599 39))
                          (display "\n")
                          (car posn7715))))
                      (begin
                        (write '(funapp 1599 56))
                        (display "\n")
                        (eq?
                         x8293
                         (begin
                           (write '(funapp 1599 66))
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
                          (write '(funapp 1605 39))
                          (display "\n")
                          (orig-cdr posn))))
                      (begin
                        (write '(funapp 1605 57))
                        (display "\n")
                        (orig-car x8295)))))
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
                             (write '(funapp 1613 42))
                             (display "\n")
                             (orig-cdr posn))))
                         (begin
                           (write '(funapp 1613 60))
                           (display "\n")
                           (orig-cdr x8298)))))
                      (begin
                        (write '(funapp 1614 23))
                        (display "\n")
                        (orig-car x8297)))))
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
                                (write '(funapp 1626 37))
                                (display "\n")
                                (orig-cdr v7350))))
                            (begin
                              (write '(funapp 1627 29))
                              (display "\n")
                              (orig-car x8301)))))
                         (begin
                           (write '(funapp 1628 26))
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
                                       (write '(funapp 1638 44))
                                       (display "\n")
                                       (orig-cdr v7350))))
                                   (begin
                                     (write '(funapp 1639 36))
                                     (display "\n")
                                     (orig-cdr x8305)))))
                                (begin
                                  (write '(funapp 1640 33))
                                  (display "\n")
                                  (orig-car x8304)))))
                             (begin
                               (write '(funapp 1641 30))
                               (display "\n")
                               (real?/c j7351 k7352 x8303)))))
                          (letrec*
                           ((g8306
                             (letrec*
                              ((x8307
                                (letrec*
                                 ((x8308
                                   (begin
                                     (write '(funapp 1647 42))
                                     (display "\n")
                                     (cons
                                      checked7354
                                      (begin
                                        (write '(funapp 1647 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1648 34))
                                   (display "\n")
                                   (cons checked7353 x8308)))))
                              (begin
                                (write '(funapp 1649 31))
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
                                (write '(funapp 1662 37))
                                (display "\n")
                                (orig-cdr v7356))))
                            (begin
                              (write '(funapp 1663 29))
                              (display "\n")
                              (orig-car x8311)))))
                         (begin
                           (write '(funapp 1664 26))
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
                                       (write '(funapp 1674 44))
                                       (display "\n")
                                       (orig-cdr v7356))))
                                   (begin
                                     (write '(funapp 1675 36))
                                     (display "\n")
                                     (orig-cdr x8315)))))
                                (begin
                                  (write '(funapp 1676 33))
                                  (display "\n")
                                  (orig-car x8314)))))
                             (begin
                               (write '(funapp 1677 30))
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
                                              (write '(funapp 1689 51))
                                              (display "\n")
                                              (orig-cdr v7356))))
                                          (begin
                                            (write '(funapp 1690 43))
                                            (display "\n")
                                            (orig-cdr x8320)))))
                                       (begin
                                         (write '(funapp 1691 40))
                                         (display "\n")
                                         (orig-cdr x8319)))))
                                    (begin
                                      (write '(funapp 1692 37))
                                      (display "\n")
                                      (orig-car x8318)))))
                                 (begin
                                   (write '(funapp 1693 34))
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
                                            (write '(funapp 1701 49))
                                            (display "\n")
                                            (cons
                                             checked7361
                                             (begin
                                               (write '(funapp 1701 66))
                                               (display "\n")
                                               '())))))
                                        (begin
                                          (write '(funapp 1702 41))
                                          (display "\n")
                                          (cons checked7360 x8324)))))
                                     (begin
                                       (write '(funapp 1703 38))
                                       (display "\n")
                                       (cons checked7359 x8323)))))
                                  (begin
                                    (write '(funapp 1704 35))
                                    (display "\n")
                                    (cons block x8322)))))
                               g8321))))
                           g8316))))
                       g8312))))
                   g8309)))
               (BSET/C
                (begin
                  (write '(funapp 1709 24))
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
                                (write '(funapp 1719 37))
                                (display "\n")
                                (orig-cdr v7363))))
                            (begin
                              (write '(funapp 1720 29))
                              (display "\n")
                              (orig-car x8327)))))
                         (begin
                           (write '(funapp 1721 26))
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
                                       (write '(funapp 1731 44))
                                       (display "\n")
                                       (orig-cdr v7363))))
                                   (begin
                                     (write '(funapp 1732 36))
                                     (display "\n")
                                     (orig-cdr x8331)))))
                                (begin
                                  (write '(funapp 1733 33))
                                  (display "\n")
                                  (orig-car x8330)))))
                             (begin
                               (write '(funapp 1734 30))
                               (display "\n")
                               (BSET/C j7364 k7365 x8329)))))
                          (letrec*
                           ((g8332
                             (letrec*
                              ((x8333
                                (letrec*
                                 ((x8334
                                   (begin
                                     (write '(funapp 1740 42))
                                     (display "\n")
                                     (cons
                                      checked7367
                                      (begin
                                        (write '(funapp 1740 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1741 34))
                                   (display "\n")
                                   (cons checked7366 x8334)))))
                              (begin
                                (write '(funapp 1742 31))
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
                                (write '(funapp 1755 37))
                                (display "\n")
                                (orig-cdr v7369))))
                            (begin
                              (write '(funapp 1756 29))
                              (display "\n")
                              (orig-car x8337)))))
                         (begin
                           (write '(funapp 1757 26))
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
                                       (write '(funapp 1767 44))
                                       (display "\n")
                                       (orig-cdr v7369))))
                                   (begin
                                     (write '(funapp 1768 36))
                                     (display "\n")
                                     (orig-cdr x8341)))))
                                (begin
                                  (write '(funapp 1769 33))
                                  (display "\n")
                                  (orig-car x8340)))))
                             (begin
                               (write '(funapp 1770 30))
                               (display "\n")
                               (BSET/C j7370 k7371 x8339)))))
                          (letrec*
                           ((g8342
                             (letrec*
                              ((x8343
                                (letrec*
                                 ((x8344
                                   (begin
                                     (write '(funapp 1776 42))
                                     (display "\n")
                                     (cons
                                      checked7373
                                      (begin
                                        (write '(funapp 1776 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1777 34))
                                   (display "\n")
                                   (cons checked7372 x8344)))))
                              (begin
                                (write '(funapp 1778 31))
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
                             (write '(funapp 1789 34))
                             (display "\n")
                             (posn-x p1)))
                          (x8347
                           (begin
                             (write '(funapp 1789 54))
                             (display "\n")
                             (posn-x p2))))
                         (begin
                           (write '(funapp 1790 26))
                           (display "\n")
                           (= x8348 x8347)))))
                      (if x-cnd8346
                        (letrec*
                         ((x8350
                           (begin
                             (write '(funapp 1793 34))
                             (display "\n")
                             (posn-y p1)))
                          (x8349
                           (begin
                             (write '(funapp 1793 54))
                             (display "\n")
                             (posn-y p2))))
                         (begin
                           (write '(funapp 1794 26))
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
                             (write '(funapp 1807 34))
                             (display "\n")
                             (block-x b1)))
                          (x8353
                           (begin
                             (write '(funapp 1807 55))
                             (display "\n")
                             (block-x b2))))
                         (begin
                           (write '(funapp 1808 26))
                           (display "\n")
                           (= x8354 x8353)))))
                      (if x-cnd8352
                        (letrec*
                         ((x8356
                           (begin
                             (write '(funapp 1811 34))
                             (display "\n")
                             (block-y b1)))
                          (x8355
                           (begin
                             (write '(funapp 1811 55))
                             (display "\n")
                             (block-y b2))))
                         (begin
                           (write '(funapp 1812 26))
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
                             (write '(funapp 1820 48))
                             (display "\n")
                             (block-x b))))
                         (begin
                           (write '(funapp 1820 62))
                           (display "\n")
                           (+ dx x8362))))
                       (x8359
                        (letrec*
                         ((x8360
                           (begin
                             (write '(funapp 1821 48))
                             (display "\n")
                             (block-y b))))
                         (begin
                           (write '(funapp 1821 62))
                           (display "\n")
                           (+ dy x8360))))
                       (x8358
                        (begin
                          (write '(funapp 1822 31))
                          (display "\n")
                          (block-color b))))
                      (begin
                        (write '(funapp 1823 23))
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
                             (write '(funapp 1832 34))
                             (display "\n")
                             (posn-x c)))
                          (x8371
                           (letrec*
                            ((x8373
                              (begin
                                (write '(funapp 1835 37))
                                (display "\n")
                                (posn-y c)))
                             (x8372
                              (begin
                                (write '(funapp 1835 56))
                                (display "\n")
                                (block-y b))))
                            (begin
                              (write '(funapp 1836 29))
                              (display "\n")
                              (- x8373 x8372)))))
                         (begin
                           (write '(funapp 1837 26))
                           (display "\n")
                           (+ x8374 x8371))))
                       (x8365
                        (letrec*
                         ((x8369
                           (begin
                             (write '(funapp 1840 34))
                             (display "\n")
                             (posn-y c)))
                          (x8366
                           (letrec*
                            ((x8368
                              (begin
                                (write '(funapp 1843 37))
                                (display "\n")
                                (block-x b)))
                             (x8367
                              (begin
                                (write '(funapp 1843 57))
                                (display "\n")
                                (posn-x c))))
                            (begin
                              (write '(funapp 1844 29))
                              (display "\n")
                              (- x8368 x8367)))))
                         (begin
                           (write '(funapp 1845 26))
                           (display "\n")
                           (+ x8369 x8366))))
                       (x8364
                        (begin
                          (write '(funapp 1846 31))
                          (display "\n")
                          (block-color b))))
                      (begin
                        (write '(funapp 1847 23))
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
                             (write '(funapp 1856 34))
                             (display "\n")
                             (block-rotate-ccw c b))))
                         (begin
                           (write '(funapp 1857 26))
                           (display "\n")
                           (block-rotate-ccw c x8377)))))
                      (begin
                        (write '(funapp 1858 23))
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
                          (write '(funapp 1865 35))
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
                                   (write '(funapp 1871 54))
                                   (display "\n")
                                   (car xs))))
                               (begin
                                 (write '(funapp 1871 65))
                                 (display "\n")
                                 (p? x8385))))
                             (x8382
                              (letrec*
                               ((x8383
                                 (begin
                                   (write '(funapp 1873 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 1873 59))
                                 (display "\n")
                                 (ormap p? x8383)))))
                            (begin
                              (write '(funapp 1874 29))
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
                          (write '(funapp 1882 35))
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
                                   (write '(funapp 1888 54))
                                   (display "\n")
                                   (car xs))))
                               (begin
                                 (write '(funapp 1888 65))
                                 (display "\n")
                                 (p? x8393))))
                             (x8390
                              (letrec*
                               ((x8391
                                 (begin
                                   (write '(funapp 1890 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 1890 59))
                                 (display "\n")
                                 (andmap p? x8391)))))
                            (begin
                              (write '(funapp 1891 29))
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
                          (write '(funapp 1899 35))
                          (display "\n")
                          (null? xs))))
                      (if x-cnd8395
                        (letrec* ((g8396 null)) g8396)
                        (letrec*
                         ((x-cnd8397
                           (letrec*
                            ((x8398
                              (begin
                                (write '(funapp 1903 55))
                                (display "\n")
                                (car xs))))
                            (begin
                              (write '(funapp 1903 66))
                              (display "\n")
                              (p? x8398)))))
                         (if x-cnd8397
                           (letrec*
                            ((g8399
                              (letrec*
                               ((x8402
                                 (begin
                                   (write '(funapp 1908 40))
                                   (display "\n")
                                   (car xs)))
                                (x8400
                                 (letrec*
                                  ((x8401
                                    (begin
                                      (write '(funapp 1911 43))
                                      (display "\n")
                                      (cdr xs))))
                                  (begin
                                    (write '(funapp 1912 35))
                                    (display "\n")
                                    (filter p? x8401)))))
                               (begin
                                 (write '(funapp 1913 32))
                                 (display "\n")
                                 (cons x8402 x8400)))))
                            g8399)
                           (letrec*
                            ((g8403
                              (letrec*
                               ((x8404
                                 (begin
                                   (write '(funapp 1917 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 1917 59))
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
                          (write '(funapp 1925 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8406
                        (letrec* ((g8407 r)) g8407)
                        (letrec*
                         ((g8408
                           (letrec*
                            ((x8411
                              (begin
                                (write '(funapp 1931 37))
                                (display "\n")
                                (car l)))
                             (x8409
                              (letrec*
                               ((x8410
                                 (begin
                                   (write '(funapp 1933 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1933 58))
                                 (display "\n")
                                 (append x8410 r)))))
                            (begin
                              (write '(funapp 1934 29))
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
                          (write '(funapp 1942 35))
                          (display "\n")
                          (null? xs))))
                      (if x-cnd8413
                        (letrec* ((g8414 a)) g8414)
                        (letrec*
                         ((g8415
                           (letrec*
                            ((x8418
                              (begin
                                (write '(funapp 1948 37))
                                (display "\n")
                                (car xs)))
                             (x8416
                              (letrec*
                               ((x8417
                                 (begin
                                   (write '(funapp 1950 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 1950 59))
                                 (display "\n")
                                 (foldr f a x8417)))))
                            (begin
                              (write '(funapp 1951 29))
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
                             (write '(funapp 1961 34))
                             (display "\n")
                             (c)))
                          (x8421
                           (begin
                             (write '(funapp 1961 46))
                             (display "\n")
                             (block=? b c))))
                         (begin
                           (write '(funapp 1962 26))
                           (display "\n")
                           (λ x8422 x8421)))))
                      (begin
                        (write '(funapp 1963 23))
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
                             (write '(funapp 1972 34))
                             (display "\n")
                             (b)))
                          (x8425
                           (begin
                             (write '(funapp 1972 46))
                             (display "\n")
                             (blocks-contains? bs2 b))))
                         (begin
                           (write '(funapp 1973 26))
                           (display "\n")
                           (λ x8426 x8425)))))
                      (begin
                        (write '(funapp 1974 23))
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
                          (write '(funapp 1981 35))
                          (display "\n")
                          (blocks-subset? bs1 bs2))))
                      (if x-cnd8428
                        (begin
                          (write '(funapp 1982 37))
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
                             (write '(funapp 1991 34))
                             (display "\n")
                             (b)))
                          (x8431
                           (begin
                             (write '(funapp 1991 46))
                             (display "\n")
                             (blocks-contains? bs2 b))))
                         (begin
                           (write '(funapp 1992 26))
                           (display "\n")
                           (λ x8432 x8431)))))
                      (begin
                        (write '(funapp 1993 23))
                        (display "\n")
                        (filter x8430 bs1)))))
                   g8429)))
               (blocks-count
                (lambda (bs)
                  (letrec*
                   ((g8433
                     (begin
                       (write '(funapp 1996 47))
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
                             (write '(funapp 2004 34))
                             (display "\n")
                             (b)))
                          (x8436
                           (begin
                             (write '(funapp 2004 46))
                             (display "\n")
                             (block-move dx dy b))))
                         (begin
                           (write '(funapp 2005 26))
                           (display "\n")
                           (λ x8437 x8436)))))
                      (begin
                        (write '(funapp 2006 23))
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
                             (write '(funapp 2015 34))
                             (display "\n")
                             (b)))
                          (x8440
                           (begin
                             (write '(funapp 2015 46))
                             (display "\n")
                             (block-rotate-ccw c b))))
                         (begin
                           (write '(funapp 2016 26))
                           (display "\n")
                           (λ x8441 x8440)))))
                      (begin
                        (write '(funapp 2017 23))
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
                             (write '(funapp 2026 34))
                             (display "\n")
                             (b)))
                          (x8444
                           (begin
                             (write '(funapp 2026 46))
                             (display "\n")
                             (block-rotate-cw c b))))
                         (begin
                           (write '(funapp 2027 26))
                           (display "\n")
                           (λ x8445 x8444)))))
                      (begin
                        (write '(funapp 2028 23))
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
                             (write '(funapp 2037 34))
                             (display "\n")
                             (b)))
                          (x8448
                           (letrec*
                            ((x8450
                              (begin
                                (write '(funapp 2040 37))
                                (display "\n")
                                (block-x b)))
                             (x8449
                              (begin
                                (write '(funapp 2040 57))
                                (display "\n")
                                (block-y b))))
                            (begin
                              (write '(funapp 2041 29))
                              (display "\n")
                              (block x8450 x8449 c)))))
                         (begin
                           (write '(funapp 2042 26))
                           (display "\n")
                           (λ x8451 x8448)))))
                      (begin
                        (write '(funapp 2043 23))
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
                             (write '(funapp 2052 34))
                             (display "\n")
                             (b)))
                          (x8454
                           (letrec*
                            ((x8455
                              (begin
                                (write '(funapp 2053 51))
                                (display "\n")
                                (block-y b))))
                            (begin
                              (write '(funapp 2053 65))
                              (display "\n")
                              (= i x8455)))))
                         (begin
                           (write '(funapp 2054 26))
                           (display "\n")
                           (λ x8456 x8454)))))
                      (begin
                        (write '(funapp 2055 23))
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
                             (write '(funapp 2064 34))
                             (display "\n")
                             (blocks-row bs i))))
                         (begin
                           (write '(funapp 2065 26))
                           (display "\n")
                           (blocks-count x8459)))))
                      (begin
                        (write '(funapp 2066 23))
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
                             (write '(funapp 2075 34))
                             (display "\n")
                             (b)))
                          (x8462
                           (letrec*
                            ((x8463
                              (begin
                                (write '(funapp 2076 51))
                                (display "\n")
                                (block-y b))))
                            (begin
                              (write '(funapp 2076 65))
                              (display "\n")
                              (<= x8463 0)))))
                         (begin
                           (write '(funapp 2077 26))
                           (display "\n")
                           (λ x8464 x8462)))))
                      (begin
                        (write '(funapp 2078 23))
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
                             (write '(funapp 2087 34))
                             (display "\n")
                             (b bs)))
                          (x8467
                           (letrec*
                            ((x-cnd8468
                              (begin
                                (write '(funapp 2090 41))
                                (display "\n")
                                (blocks-contains? bs b))))
                            (if x-cnd8468
                              (letrec* ((g8469 bs)) g8469)
                              (letrec*
                               ((g8470
                                 (begin
                                   (write '(funapp 2093 48))
                                   (display "\n")
                                   (cons b bs))))
                               g8470)))))
                         (begin
                           (write '(funapp 2094 26))
                           (display "\n")
                           (λ x8471 x8467)))))
                      (begin
                        (write '(funapp 2095 23))
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
                             (write '(funapp 2104 34))
                             (display "\n")
                             (b n)))
                          (x8474
                           (letrec*
                            ((x8475
                              (begin
                                (write '(funapp 2106 45))
                                (display "\n")
                                (block-y b))))
                            (begin
                              (write '(funapp 2106 59))
                              (display "\n")
                              (max x8475 n)))))
                         (begin
                           (write '(funapp 2107 26))
                           (display "\n")
                           (λ x8476 x8474)))))
                      (begin
                        (write '(funapp 2108 23))
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
                             (write '(funapp 2117 34))
                             (display "\n")
                             (b n)))
                          (x8479
                           (letrec*
                            ((x8480
                              (begin
                                (write '(funapp 2119 45))
                                (display "\n")
                                (block-x b))))
                            (begin
                              (write '(funapp 2119 59))
                              (display "\n")
                              (min x8480 n)))))
                         (begin
                           (write '(funapp 2120 26))
                           (display "\n")
                           (λ x8481 x8479)))))
                      (begin
                        (write '(funapp 2121 23))
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
                             (write '(funapp 2130 34))
                             (display "\n")
                             (b n)))
                          (x8484
                           (letrec*
                            ((x8485
                              (begin
                                (write '(funapp 2132 45))
                                (display "\n")
                                (block-x b))))
                            (begin
                              (write '(funapp 2132 59))
                              (display "\n")
                              (max x8485 n)))))
                         (begin
                           (write '(funapp 2133 26))
                           (display "\n")
                           (λ x8486 x8484)))))
                      (begin
                        (write '(funapp 2134 23))
                        (display "\n")
                        (foldr x8483 0 bs)))))
                   g8482)))
               (eliminate-full-rows
                (lambda (bs)
                  (letrec*
                   ((g8487
                     (begin
                       (write '(funapp 2138 36))
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
                          (write '(funapp 2144 35))
                          (display "\n")
                          (< i 0))))
                      (if x-cnd8489
                        (letrec* ((g8490 empty)) g8490)
                        (letrec*
                         ((x-cnd8491
                           (begin
                             (write '(funapp 2148 38))
                             (display "\n")
                             (full-row? bs i))))
                         (if x-cnd8491
                           (letrec*
                            ((g8492
                              (letrec*
                               ((x8494
                                 (begin
                                   (write '(funapp 2153 40))
                                   (display "\n")
                                   (sub1 i)))
                                (x8493
                                 (begin
                                   (write '(funapp 2153 57))
                                   (display "\n")
                                   (add1 offset))))
                               (begin
                                 (write '(funapp 2154 32))
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
                                      (write '(funapp 2161 43))
                                      (display "\n")
                                      (sub1 i))))
                                  (begin
                                    (write '(funapp 2162 35))
                                    (display "\n")
                                    (elim-row bs x8499 offset))))
                                (x8496
                                 (letrec*
                                  ((x8497
                                    (begin
                                      (write '(funapp 2165 43))
                                      (display "\n")
                                      (blocks-row bs i))))
                                  (begin
                                    (write '(funapp 2166 35))
                                    (display "\n")
                                    (blocks-move 0 offset x8497)))))
                               (begin
                                 (write '(funapp 2167 32))
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
                                   (write '(funapp 2181 40))
                                   (display "\n")
                                   (tetra-center t))))
                               (begin
                                 (write '(funapp 2182 32))
                                 (display "\n")
                                 (posn-x x8509)))))
                            (begin
                              (write '(funapp 2183 29))
                              (display "\n")
                              (+ dx x8508))))
                          (x8504
                           (letrec*
                            ((x8505
                              (letrec*
                               ((x8506
                                 (begin
                                   (write '(funapp 2188 40))
                                   (display "\n")
                                   (tetra-center t))))
                               (begin
                                 (write '(funapp 2189 32))
                                 (display "\n")
                                 (posn-y x8506)))))
                            (begin
                              (write '(funapp 2190 29))
                              (display "\n")
                              (+ dy x8505)))))
                         (begin
                           (write '(funapp 2191 26))
                           (display "\n")
                           (posn x8507 x8504))))
                       (x8501
                        (letrec*
                         ((x8502
                           (begin
                             (write '(funapp 2194 34))
                             (display "\n")
                             (tetra-blocks t))))
                         (begin
                           (write '(funapp 2195 26))
                           (display "\n")
                           (blocks-move dx dy x8502)))))
                      (begin
                        (write '(funapp 2196 23))
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
                          (write '(funapp 2203 31))
                          (display "\n")
                          (tetra-center t)))
                       (x8511
                        (letrec*
                         ((x8513
                           (begin
                             (write '(funapp 2206 34))
                             (display "\n")
                             (tetra-center t)))
                          (x8512
                           (begin
                             (write '(funapp 2206 59))
                             (display "\n")
                             (tetra-blocks t))))
                         (begin
                           (write '(funapp 2207 26))
                           (display "\n")
                           (blocks-rotate-ccw x8513 x8512)))))
                      (begin
                        (write '(funapp 2208 23))
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
                          (write '(funapp 2215 31))
                          (display "\n")
                          (tetra-center t)))
                       (x8516
                        (letrec*
                         ((x8518
                           (begin
                             (write '(funapp 2218 34))
                             (display "\n")
                             (tetra-center t)))
                          (x8517
                           (begin
                             (write '(funapp 2218 59))
                             (display "\n")
                             (tetra-blocks t))))
                         (begin
                           (write '(funapp 2219 26))
                           (display "\n")
                           (blocks-rotate-cw x8518 x8517)))))
                      (begin
                        (write '(funapp 2220 23))
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
                                (write '(funapp 2231 37))
                                (display "\n")
                                (tetra-blocks t))))
                            (begin
                              (write '(funapp 2232 29))
                              (display "\n")
                              (blocks-intersect x8523 bs)))))
                         (begin
                           (write '(funapp 2233 26))
                           (display "\n")
                           (false? x8522)))))
                      (begin
                        (write '(funapp 2234 23))
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
                          (write '(funapp 2241 31))
                          (display "\n")
                          (tetra-center t)))
                       (x8525
                        (letrec*
                         ((x8526
                           (begin
                             (write '(funapp 2244 34))
                             (display "\n")
                             (tetra-blocks t))))
                         (begin
                           (write '(funapp 2245 26))
                           (display "\n")
                           (blocks-change-color x8526 c)))))
                      (begin
                        (write '(funapp 2246 23))
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
                             (write '(funapp 2255 34))
                             (display "\n")
                             (posn xc yc)))
                          (x8530
                           (letrec*
                            ((x8534
                              (begin
                                (write '(funapp 2258 37))
                                (display "\n")
                                (block x1 y1 color)))
                             (x8533
                              (begin
                                (write '(funapp 2259 37))
                                (display "\n")
                                (block x2 y2 color)))
                             (x8532
                              (begin
                                (write '(funapp 2260 37))
                                (display "\n")
                                (block x3 y3 color)))
                             (x8531
                              (begin
                                (write '(funapp 2261 37))
                                (display "\n")
                                (block x4 y4 color))))
                            (begin
                              (write '(funapp 2262 29))
                              (display "\n")
                              (list x8534 x8533 x8532 x8531)))))
                         (begin
                           (write '(funapp 2263 26))
                           (display "\n")
                           (tetra x8535 x8530)))))
                      (begin
                        (write '(funapp 2264 23))
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
                          (write '(funapp 2271 31))
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
                                   (write '(funapp 2278 40))
                                   (display "\n")
                                   (world-tetra w))))
                               (begin
                                 (write '(funapp 2279 32))
                                 (display "\n")
                                 (tetra-blocks x8541))))
                             (x8539
                              (begin
                                (write '(funapp 2280 37))
                                (display "\n")
                                (world-blocks w))))
                            (begin
                              (write '(funapp 2281 29))
                              (display "\n")
                              (blocks-union x8540 x8539)))))
                         (begin
                           (write '(funapp 2282 26))
                           (display "\n")
                           (eliminate-full-rows x8538)))))
                      (begin
                        (write '(funapp 2283 23))
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
                          (write '(funapp 2290 35))
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
                                      (write '(funapp 2300 43))
                                      (display "\n")
                                      (world-tetra w))))
                                  (begin
                                    (write '(funapp 2301 35))
                                    (display "\n")
                                    (tetra-move 0 1 x8550))))
                                (x8548
                                 (begin
                                   (write '(funapp 2302 40))
                                   (display "\n")
                                   (world-blocks w))))
                               (begin
                                 (write '(funapp 2303 32))
                                 (display "\n")
                                 (world x8549 x8548)))))
                            (begin
                              (write '(funapp 2304 29))
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
                             (write '(funapp 2314 34))
                             (display "\n")
                             (world-tetra w))))
                         (begin
                           (write '(funapp 2315 26))
                           (display "\n")
                           (tetra-move 0 1 x8554))))
                       (x8552
                        (begin
                          (write '(funapp 2316 31))
                          (display "\n")
                          (world-blocks w))))
                      (begin
                        (write '(funapp 2317 23))
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
                                (write '(funapp 2328 37))
                                (display "\n")
                                (world-tetra w))))
                            (begin
                              (write '(funapp 2329 29))
                              (display "\n")
                              (tetra-blocks x8559)))))
                         (begin
                           (write '(funapp 2330 26))
                           (display "\n")
                           (blocks-max-y x8558))))
                       (x8556
                        (begin
                          (write '(funapp 2331 31))
                          (display "\n")
                          (sub1 board-height))))
                      (begin
                        (write '(funapp 2332 23))
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
                          (write '(funapp 2339 33))
                          (display "\n")
                          (landed-on-blocks? w))))
                      (letrec*
                       ((g8561
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 2341 52))
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
                          (write '(funapp 2349 35))
                          (display "\n")
                          (landed? w))))
                      (if x-cnd8563
                        (letrec*
                         ((g8564
                           (begin
                             (write '(funapp 2351 42))
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
                                   (write '(funapp 2357 40))
                                   (display "\n")
                                   (world-tetra w))))
                               (begin
                                 (write '(funapp 2358 32))
                                 (display "\n")
                                 (tetra-move 0 1 x8568))))
                             (x8566
                              (begin
                                (write '(funapp 2359 37))
                                (display "\n")
                                (world-blocks w))))
                            (begin
                              (write '(funapp 2360 29))
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
                                   (write '(funapp 2374 40))
                                   (display "\n")
                                   (tetra-blocks new-tetra))))
                               (begin
                                 (write '(funapp 2375 32))
                                 (display "\n")
                                 (blocks-min-x x8578)))))
                            (begin
                              (write '(funapp 2376 29))
                              (display "\n")
                              (< x8577 0))))
                          (x8573
                           (letrec*
                            ((x8574
                              (letrec*
                               ((x8575
                                 (begin
                                   (write '(funapp 2381 40))
                                   (display "\n")
                                   (tetra-blocks new-tetra))))
                               (begin
                                 (write '(funapp 2382 32))
                                 (display "\n")
                                 (blocks-max-x x8575)))))
                            (begin
                              (write '(funapp 2383 29))
                              (display "\n")
                              (>= x8574 board-width))))
                          (x8571
                           (letrec*
                            ((x8572
                              (begin
                                (write '(funapp 2386 37))
                                (display "\n")
                                (world-blocks w))))
                            (begin
                              (write '(funapp 2387 29))
                              (display "\n")
                              (tetra-overlaps-blocks? new-tetra x8572)))))
                         (begin
                           (write '(funapp 2388 26))
                           (display "\n")
                           (or x8576 x8573 x8571)))))
                      (if x-cnd8570
                        (letrec* ((g8579 w)) g8579)
                        (letrec*
                         ((g8580
                           (letrec*
                            ((x8581
                              (begin
                                (write '(funapp 2394 37))
                                (display "\n")
                                (world-blocks w))))
                            (begin
                              (write '(funapp 2395 29))
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
                             (write '(funapp 2405 34))
                             (display "\n")
                             (world-tetra w))))
                         (begin
                           (write '(funapp 2406 26))
                           (display "\n")
                           (tetra-move dx dy x8584)))))
                      (begin
                        (write '(funapp 2407 23))
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
                             (write '(funapp 2416 34))
                             (display "\n")
                             (world-tetra w))))
                         (begin
                           (write '(funapp 2417 26))
                           (display "\n")
                           (tetra-rotate-ccw x8587)))))
                      (begin
                        (write '(funapp 2418 23))
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
                             (write '(funapp 2427 34))
                             (display "\n")
                             (world-tetra w))))
                         (begin
                           (write '(funapp 2428 26))
                           (display "\n")
                           (tetra-rotate-cw x8590)))))
                      (begin
                        (write '(funapp 2429 23))
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
                                (write '(funapp 2440 37))
                                (display "\n")
                                (world-jump-down w))))
                            (begin
                              (write '(funapp 2441 29))
                              (display "\n")
                              (world-tetra x8594)))))
                         (begin
                           (write '(funapp 2442 26))
                           (display "\n")
                           (tetra-change-color
                            x8593
                            (begin
                              (write '(funapp 2442 51))
                              (display "\n")
                              'gray))))))
                      (begin
                        (write '(funapp 2443 23))
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
                          (write '(funapp 2450 35))
                          (display "\n")
                          (equal? k "left"))))
                      (if x-cnd8596
                        (letrec*
                         ((g8597
                           (begin
                             (write '(funapp 2452 42))
                             (display "\n")
                             (world-move neg-1 0 w))))
                         g8597)
                        (letrec*
                         ((x-cnd8598
                           (begin
                             (write '(funapp 2454 38))
                             (display "\n")
                             (equal? k "right"))))
                         (if x-cnd8598
                           (letrec*
                            ((g8599
                              (begin
                                (write '(funapp 2456 45))
                                (display "\n")
                                (world-move 1 0 w))))
                            g8599)
                           (letrec*
                            ((x-cnd8600
                              (begin
                                (write '(funapp 2458 41))
                                (display "\n")
                                (equal? k "down"))))
                            (if x-cnd8600
                              (letrec*
                               ((g8601
                                 (begin
                                   (write '(funapp 2460 48))
                                   (display "\n")
                                   (world-jump-down w))))
                               g8601)
                              (letrec*
                               ((x-cnd8602
                                 (begin
                                   (write '(funapp 2462 44))
                                   (display "\n")
                                   (equal? k "a"))))
                               (if x-cnd8602
                                 (letrec*
                                  ((g8603
                                    (begin
                                      (write '(funapp 2464 51))
                                      (display "\n")
                                      (world-rotate-ccw w))))
                                  g8603)
                                 (letrec*
                                  ((x-cnd8604
                                    (begin
                                      (write '(funapp 2466 47))
                                      (display "\n")
                                      (equal? k "s"))))
                                  (if x-cnd8604
                                    (letrec*
                                     ((g8605
                                       (begin
                                         (write '(funapp 2469 46))
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
                       (write '(funapp 2474 45))
                       (display "\n")
                       (orig-cons
                        (begin (write '(funapp 2474 55)) (display "\n") 'image)
                        (begin
                          (write '(funapp 2474 62))
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
                          (write '(funapp 2479 39))
                          (display "\n")
                          (car image7720))))
                      (begin
                        (write '(funapp 2479 57))
                        (display "\n")
                        (eq?
                         x8609
                         (begin
                           (write '(funapp 2479 67))
                           (display "\n")
                           'image))))))
                   g8608)))
               (overlay
                (lambda (i₁ i₂)
                  (letrec*
                   ((g8610
                     (begin (write '(funapp 2481 58)) (display "\n") (image))))
                   g8610)))
               (circle
                (lambda (r m c)
                  (letrec*
                   ((g8611
                     (begin (write '(funapp 2482 57)) (display "\n") (image))))
                   g8611)))
               (rectangle
                (lambda (w h m c)
                  (letrec*
                   ((g8612
                     (begin (write '(funapp 2483 62)) (display "\n") (image))))
                   g8612)))
               (place-image
                (lambda (i₁ r c i₂)
                  (letrec*
                   ((g8613
                     (begin (write '(funapp 2485 54)) (display "\n") (image))))
                   g8613)))
               (empty-scene
                (lambda (w h)
                  (letrec*
                   ((g8614
                     (begin (write '(funapp 2486 60)) (display "\n") (image))))
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
                             (write '(funapp 2492 52))
                             (display "\n")
                             (cdr xs))))
                         (begin
                           (write '(funapp 2492 63))
                           (display "\n")
                           (null? x8617)))))
                      (if x-cnd8616
                        (letrec*
                         ((g8618
                           (begin
                             (write '(funapp 2494 42))
                             (display "\n")
                             (car xs))))
                         g8618)
                        (letrec*
                         ((g8619
                           (letrec*
                            ((x8620
                              (begin
                                (write '(funapp 2498 37))
                                (display "\n")
                                (cdr xs))))
                            (begin
                              (write '(funapp 2499 29))
                              (display "\n")
                              (list-pick-random x8620)))))
                         g8619)))))
                   g8615)))
               (neg-1
                (begin (write '(funapp 2502 23)) (display "\n") (random 10)))
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
                                   (write '(funapp 2514 40))
                                   (display "\n")
                                   (world-tetra w))))
                               (begin
                                 (write '(funapp 2515 32))
                                 (display "\n")
                                 (tetra-blocks x8631))))
                             (x8627
                              (letrec*
                               ((x8629
                                 (begin
                                   (write '(funapp 2518 40))
                                   (display "\n")
                                   (ghost-blocks w)))
                                (x8628
                                 (begin
                                   (write '(funapp 2519 40))
                                   (display "\n")
                                   (world-blocks w))))
                               (begin
                                 (write '(funapp 2520 32))
                                 (display "\n")
                                 (append x8629 x8628)))))
                            (begin
                              (write '(funapp 2521 29))
                              (display "\n")
                              (append x8630 x8627)))))
                         (begin
                           (write '(funapp 2522 26))
                           (display "\n")
                           (blocks->image x8626))))
                       (x8622
                        (letrec*
                         ((x8624
                           (begin
                             (write '(funapp 2525 34))
                             (display "\n")
                             (* board-width block-size)))
                          (x8623
                           (begin
                             (write '(funapp 2526 34))
                             (display "\n")
                             (* board-height block-size))))
                         (begin
                           (write '(funapp 2527 26))
                           (display "\n")
                           (empty-scene x8624 x8623)))))
                      (begin
                        (write '(funapp 2528 23))
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
                             (write '(funapp 2537 34))
                             (display "\n")
                             (b img)))
                          (x8639
                           (letrec*
                            ((x-cnd8640
                              (letrec*
                               ((x8641
                                 (begin
                                   (write '(funapp 2541 48))
                                   (display "\n")
                                   (block-y b))))
                               (begin
                                 (write '(funapp 2541 62))
                                 (display "\n")
                                 (<= 0 x8641)))))
                            (if x-cnd8640
                              (letrec*
                               ((g8642
                                 (begin
                                   (write '(funapp 2543 48))
                                   (display "\n")
                                   (place-block b img))))
                               g8642)
                              (letrec* ((g8643 img)) g8643)))))
                         (begin
                           (write '(funapp 2545 26))
                           (display "\n")
                           (λ x8644 x8639))))
                       (x8633
                        (letrec*
                         ((x8636
                           (letrec*
                            ((x8637
                              (begin
                                (write '(funapp 2550 37))
                                (display "\n")
                                (* board-width block-size))))
                            (begin
                              (write '(funapp 2551 29))
                              (display "\n")
                              (add1 x8637))))
                          (x8634
                           (letrec*
                            ((x8635
                              (begin
                                (write '(funapp 2554 37))
                                (display "\n")
                                (* board-height block-size))))
                            (begin
                              (write '(funapp 2555 29))
                              (display "\n")
                              (add1 x8635)))))
                         (begin
                           (write '(funapp 2556 26))
                           (display "\n")
                           (empty-scene x8636 x8634)))))
                      (begin
                        (write '(funapp 2557 23))
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
                             (write '(funapp 2566 34))
                             (display "\n")
                             (add1 block-size)))
                          (x8651
                           (begin
                             (write '(funapp 2567 34))
                             (display "\n")
                             (add1 block-size)))
                          (x8650
                           (begin
                             (write '(funapp 2568 34))
                             (display "\n")
                             (block-color b))))
                         (begin
                           (write '(funapp 2569 26))
                           (display "\n")
                           (rectangle
                            x8652
                            x8651
                            (begin
                              (write '(funapp 2569 48))
                              (display "\n")
                              'solid)
                            x8650))))
                       (x8646
                        (letrec*
                         ((x8648
                           (begin
                             (write '(funapp 2572 34))
                             (display "\n")
                             (add1 block-size)))
                          (x8647
                           (begin
                             (write '(funapp 2572 60))
                             (display "\n")
                             (add1 block-size))))
                         (begin
                           (write '(funapp 2573 26))
                           (display "\n")
                           (rectangle
                            x8648
                            x8647
                            (begin
                              (write '(funapp 2573 48))
                              (display "\n")
                              'outline)
                            (begin
                              (write '(funapp 2573 57))
                              (display "\n")
                              'black))))))
                      (begin
                        (write '(funapp 2574 23))
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
                          (write '(funapp 2581 31))
                          (display "\n")
                          (block->image b)))
                       (x8658
                        (letrec*
                         ((x8660
                           (letrec*
                            ((x8661
                              (begin
                                (write '(funapp 2586 37))
                                (display "\n")
                                (block-x b))))
                            (begin
                              (write '(funapp 2587 29))
                              (display "\n")
                              (* x8661 block-size))))
                          (x8659
                           (begin
                             (write '(funapp 2588 34))
                             (display "\n")
                             (/ block-size 2))))
                         (begin
                           (write '(funapp 2589 26))
                           (display "\n")
                           (+ x8660 x8659))))
                       (x8654
                        (letrec*
                         ((x8656
                           (letrec*
                            ((x8657
                              (begin
                                (write '(funapp 2594 37))
                                (display "\n")
                                (block-y b))))
                            (begin
                              (write '(funapp 2595 29))
                              (display "\n")
                              (* x8657 block-size))))
                          (x8655
                           (begin
                             (write '(funapp 2596 34))
                             (display "\n")
                             (/ block-size 2))))
                         (begin
                           (write '(funapp 2597 26))
                           (display "\n")
                           (+ x8656 x8655)))))
                      (begin
                        (write '(funapp 2598 23))
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
                          (write '(funapp 2605 31))
                          (display "\n")
                          (list-pick-random tetras))))
                      (begin
                        (write '(funapp 2606 23))
                        (display "\n")
                        (world x8664 null)))))
                   g8663))))
              (letrec*
               ((g8665
                 (letrec*
                  ((x8728
                    (letrec*
                     ((xj7375
                       (begin
                         (write '(funapp 2613 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 2613 35))
                            (display "\n")
                            'module))))
                      (xk7376
                       (begin
                         (write '(funapp 2613 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 2613 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g8729
                        (begin
                          (write '(funapp 2616 25))
                          (display "\n")
                          ((lambda (j7379 k7380 f7381)
                             (letrec*
                              ((g8730
                                (lambda (g7377 g7378)
                                  (letrec*
                                   ((g8731
                                     (letrec*
                                      ((x8732
                                        (letrec*
                                         ((x8734
                                           (begin
                                             (write '(funapp 2625 48))
                                             (display "\n")
                                             (POSN/C j7379 k7380 g7377)))
                                          (x8733
                                           (begin
                                             (write '(funapp 2626 48))
                                             (display "\n")
                                             (POSN/C j7379 k7380 g7378))))
                                         (begin
                                           (write '(funapp 2627 40))
                                           (display "\n")
                                           (f7381 x8734 x8733)))))
                                      (begin
                                        (write '(funapp 2628 37))
                                        (display "\n")
                                        (boolean?/c j7379 k7380 x8732)))))
                                   g8731))))
                              g8730))
                           xj7375
                           xk7376
                           posn=?))))
                      g8729)))
                   (x8723
                    (letrec*
                     ((x8724
                       (letrec*
                        ((x8727 (input))
                         (x8725
                          (letrec*
                           ((x8726 (input)))
                           (begin
                             (write '(funapp 2640 60))
                             (display "\n")
                             (cons
                              x8726
                              (begin
                                (write '(funapp 2640 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2641 25))
                          (display "\n")
                          (cons x8727 x8725)))))
                     (begin
                       (write '(funapp 2642 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2642 27)) (display "\n") 'posn)
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
                             (write '(funapp 2648 60))
                             (display "\n")
                             (cons
                              x8721
                              (begin
                                (write '(funapp 2648 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2649 25))
                          (display "\n")
                          (cons x8722 x8720)))))
                     (begin
                       (write '(funapp 2650 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2650 27)) (display "\n") 'posn)
                        x8719)))))
                  (begin
                    (write '(funapp 2651 19))
                    (display "\n")
                    (x8728 x8723 x8718))))
                (g8666
                 (letrec*
                  ((xj7382
                    (begin
                      (write '(funapp 2654 28))
                      (display "\n")
                      (loc
                       (begin
                         (write '(funapp 2654 32))
                         (display "\n")
                         'module))))
                   (xk7383
                    (begin
                      (write '(funapp 2654 51))
                      (display "\n")
                      (loc
                       (begin
                         (write '(funapp 2654 55))
                         (display "\n")
                         'importer)))))
                  (letrec*
                   ((g8735
                     (begin
                       (write '(funapp 2655 36))
                       (display "\n")
                       (any/c xj7382 xk7383 COLOR/C))))
                   g8735)))
                (g8667
                 (letrec*
                  ((xj7384
                    (begin
                      (write '(funapp 2658 28))
                      (display "\n")
                      (loc
                       (begin
                         (write '(funapp 2658 32))
                         (display "\n")
                         'module))))
                   (xk7385
                    (begin
                      (write '(funapp 2658 51))
                      (display "\n")
                      (loc
                       (begin
                         (write '(funapp 2658 55))
                         (display "\n")
                         'importer)))))
                  (letrec*
                   ((g8736
                     (begin
                       (write '(funapp 2659 36))
                       (display "\n")
                       (any/c xj7384 xk7385 POSN/C))))
                   g8736)))
                (g8668
                 (letrec*
                  ((xj7386
                    (begin
                      (write '(funapp 2662 28))
                      (display "\n")
                      (loc
                       (begin
                         (write '(funapp 2662 32))
                         (display "\n")
                         'module))))
                   (xk7387
                    (begin
                      (write '(funapp 2662 51))
                      (display "\n")
                      (loc
                       (begin
                         (write '(funapp 2662 55))
                         (display "\n")
                         'importer)))))
                  (letrec*
                   ((g8737
                     (begin
                       (write '(funapp 2663 36))
                       (display "\n")
                       (any/c xj7386 xk7387 BLOCK/C))))
                   g8737)))
                (g8669
                 (letrec*
                  ((xj7388
                    (begin
                      (write '(funapp 2666 28))
                      (display "\n")
                      (loc
                       (begin
                         (write '(funapp 2666 32))
                         (display "\n")
                         'module))))
                   (xk7389
                    (begin
                      (write '(funapp 2666 51))
                      (display "\n")
                      (loc
                       (begin
                         (write '(funapp 2666 55))
                         (display "\n")
                         'importer)))))
                  (letrec*
                   ((g8738
                     (begin
                       (write '(funapp 2667 36))
                       (display "\n")
                       (any/c xj7388 xk7389 TETRA/C))))
                   g8738)))
                (g8670
                 (letrec*
                  ((xj7390
                    (begin
                      (write '(funapp 2670 28))
                      (display "\n")
                      (loc
                       (begin
                         (write '(funapp 2670 32))
                         (display "\n")
                         'module))))
                   (xk7391
                    (begin
                      (write '(funapp 2670 51))
                      (display "\n")
                      (loc
                       (begin
                         (write '(funapp 2670 55))
                         (display "\n")
                         'importer)))))
                  (letrec*
                   ((g8739
                     (begin
                       (write '(funapp 2671 36))
                       (display "\n")
                       (any/c xj7390 xk7391 WORLD/C))))
                   g8739)))
                (g8671
                 (letrec*
                  ((xj7392
                    (begin
                      (write '(funapp 2674 28))
                      (display "\n")
                      (loc
                       (begin
                         (write '(funapp 2674 32))
                         (display "\n")
                         'module))))
                   (xk7393
                    (begin
                      (write '(funapp 2674 51))
                      (display "\n")
                      (loc
                       (begin
                         (write '(funapp 2674 55))
                         (display "\n")
                         'importer)))))
                  (letrec*
                   ((g8740
                     (begin
                       (write '(funapp 2675 36))
                       (display "\n")
                       (any/c xj7392 xk7393 BSET/C))))
                   g8740)))
                (g8672
                 (letrec*
                  ((xj7394
                    (begin
                      (write '(funapp 2678 28))
                      (display "\n")
                      (loc
                       (begin
                         (write '(funapp 2678 32))
                         (display "\n")
                         'module))))
                   (xk7395
                    (begin
                      (write '(funapp 2678 51))
                      (display "\n")
                      (loc
                       (begin
                         (write '(funapp 2678 55))
                         (display "\n")
                         'importer)))))
                  (letrec*
                   ((g8741
                     (begin
                       (write '(funapp 2680 28))
                       (display "\n")
                       (integer?/c xj7394 xk7395 block-size))))
                   g8741)))
                (g8673
                 (letrec*
                  ((xj7396
                    (begin
                      (write '(funapp 2684 28))
                      (display "\n")
                      (loc
                       (begin
                         (write '(funapp 2684 32))
                         (display "\n")
                         'module))))
                   (xk7397
                    (begin
                      (write '(funapp 2684 51))
                      (display "\n")
                      (loc
                       (begin
                         (write '(funapp 2684 55))
                         (display "\n")
                         'importer)))))
                  (letrec*
                   ((g8742
                     (begin
                       (write '(funapp 2686 28))
                       (display "\n")
                       (integer?/c xj7396 xk7397 board-width))))
                   g8742)))
                (g8674
                 (letrec*
                  ((xj7398
                    (begin
                      (write '(funapp 2690 28))
                      (display "\n")
                      (loc
                       (begin
                         (write '(funapp 2690 32))
                         (display "\n")
                         'module))))
                   (xk7399
                    (begin
                      (write '(funapp 2690 51))
                      (display "\n")
                      (loc
                       (begin
                         (write '(funapp 2690 55))
                         (display "\n")
                         'importer)))))
                  (letrec*
                   ((g8743
                     (begin
                       (write '(funapp 2692 28))
                       (display "\n")
                       (integer?/c xj7398 xk7399 board-height))))
                   g8743)))
                (g8675
                 (letrec*
                  ((x8756
                    (letrec*
                     ((xj7400
                       (begin
                         (write '(funapp 2698 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 2698 35))
                            (display "\n")
                            'module))))
                      (xk7401
                       (begin
                         (write '(funapp 2698 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 2698 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g8757
                        (begin
                          (write '(funapp 2701 25))
                          (display "\n")
                          ((lambda (j7404 k7405 f7406)
                             (letrec*
                              ((g8758
                                (lambda (g7402 g7403)
                                  (letrec*
                                   ((g8759
                                     (letrec*
                                      ((x8760
                                        (letrec*
                                         ((x8762
                                           (begin
                                             (write '(funapp 2710 48))
                                             (display "\n")
                                             (POSN/C j7404 k7405 g7402)))
                                          (x8761
                                           (begin
                                             (write '(funapp 2711 48))
                                             (display "\n")
                                             (BLOCK/C j7404 k7405 g7403))))
                                         (begin
                                           (write '(funapp 2712 40))
                                           (display "\n")
                                           (f7406 x8762 x8761)))))
                                      (begin
                                        (write '(funapp 2713 37))
                                        (display "\n")
                                        (BLOCK/C j7404 k7405 x8760)))))
                                   g8759))))
                              g8758))
                           xj7400
                           xk7401
                           block-rotate-ccw))))
                      g8757)))
                   (x8751
                    (letrec*
                     ((x8752
                       (letrec*
                        ((x8755 (input))
                         (x8753
                          (letrec*
                           ((x8754 (input)))
                           (begin
                             (write '(funapp 2725 60))
                             (display "\n")
                             (cons
                              x8754
                              (begin
                                (write '(funapp 2725 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2726 25))
                          (display "\n")
                          (cons x8755 x8753)))))
                     (begin
                       (write '(funapp 2727 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2727 27)) (display "\n") 'posn)
                        x8752))))
                   (x8744
                    (letrec*
                     ((x8745
                       (letrec*
                        ((x8750 (input))
                         (x8746
                          (letrec*
                           ((x8749 (input))
                            (x8747
                             (letrec*
                              ((x8748 (input)))
                              (begin
                                (write '(funapp 2737 57))
                                (display "\n")
                                (cons
                                 x8748
                                 (begin
                                   (write '(funapp 2737 68))
                                   (display "\n")
                                   '()))))))
                           (begin
                             (write '(funapp 2738 28))
                             (display "\n")
                             (cons x8749 x8747)))))
                        (begin
                          (write '(funapp 2739 25))
                          (display "\n")
                          (cons x8750 x8746)))))
                     (begin
                       (write '(funapp 2740 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2740 27)) (display "\n") 'block)
                        x8745)))))
                  (begin
                    (write '(funapp 2741 19))
                    (display "\n")
                    (x8756 x8751 x8744))))
                (g8676
                 (letrec*
                  ((x8775
                    (letrec*
                     ((xj7407
                       (begin
                         (write '(funapp 2746 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 2746 35))
                            (display "\n")
                            'module))))
                      (xk7408
                       (begin
                         (write '(funapp 2746 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 2746 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g8776
                        (begin
                          (write '(funapp 2749 25))
                          (display "\n")
                          ((lambda (j7411 k7412 f7413)
                             (letrec*
                              ((g8777
                                (lambda (g7409 g7410)
                                  (letrec*
                                   ((g8778
                                     (letrec*
                                      ((x8779
                                        (letrec*
                                         ((x8781
                                           (begin
                                             (write '(funapp 2758 48))
                                             (display "\n")
                                             (POSN/C j7411 k7412 g7409)))
                                          (x8780
                                           (begin
                                             (write '(funapp 2759 48))
                                             (display "\n")
                                             (BLOCK/C j7411 k7412 g7410))))
                                         (begin
                                           (write '(funapp 2760 40))
                                           (display "\n")
                                           (f7413 x8781 x8780)))))
                                      (begin
                                        (write '(funapp 2761 37))
                                        (display "\n")
                                        (BLOCK/C j7411 k7412 x8779)))))
                                   g8778))))
                              g8777))
                           xj7407
                           xk7408
                           block-rotate-cw))))
                      g8776)))
                   (x8770
                    (letrec*
                     ((x8771
                       (letrec*
                        ((x8774 (input))
                         (x8772
                          (letrec*
                           ((x8773 (input)))
                           (begin
                             (write '(funapp 2773 60))
                             (display "\n")
                             (cons
                              x8773
                              (begin
                                (write '(funapp 2773 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2774 25))
                          (display "\n")
                          (cons x8774 x8772)))))
                     (begin
                       (write '(funapp 2775 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2775 27)) (display "\n") 'posn)
                        x8771))))
                   (x8763
                    (letrec*
                     ((x8764
                       (letrec*
                        ((x8769 (input))
                         (x8765
                          (letrec*
                           ((x8768 (input))
                            (x8766
                             (letrec*
                              ((x8767 (input)))
                              (begin
                                (write '(funapp 2785 57))
                                (display "\n")
                                (cons
                                 x8767
                                 (begin
                                   (write '(funapp 2785 68))
                                   (display "\n")
                                   '()))))))
                           (begin
                             (write '(funapp 2786 28))
                             (display "\n")
                             (cons x8768 x8766)))))
                        (begin
                          (write '(funapp 2787 25))
                          (display "\n")
                          (cons x8769 x8765)))))
                     (begin
                       (write '(funapp 2788 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2788 27)) (display "\n") 'block)
                        x8764)))))
                  (begin
                    (write '(funapp 2789 19))
                    (display "\n")
                    (x8775 x8770 x8763))))
                (g8677
                 (letrec*
                  ((x8796
                    (letrec*
                     ((xj7414
                       (begin
                         (write '(funapp 2794 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 2794 35))
                            (display "\n")
                            'module))))
                      (xk7415
                       (begin
                         (write '(funapp 2794 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 2794 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g8797
                        (begin
                          (write '(funapp 2797 25))
                          (display "\n")
                          ((lambda (j7418 k7419 f7420)
                             (letrec*
                              ((g8798
                                (lambda (g7416 g7417)
                                  (letrec*
                                   ((g8799
                                     (letrec*
                                      ((x8800
                                        (letrec*
                                         ((x8802
                                           (begin
                                             (write '(funapp 2806 48))
                                             (display "\n")
                                             (BLOCK/C j7418 k7419 g7416)))
                                          (x8801
                                           (begin
                                             (write '(funapp 2807 48))
                                             (display "\n")
                                             (BLOCK/C j7418 k7419 g7417))))
                                         (begin
                                           (write '(funapp 2808 40))
                                           (display "\n")
                                           (f7420 x8802 x8801)))))
                                      (begin
                                        (write '(funapp 2809 37))
                                        (display "\n")
                                        (boolean?/c j7418 k7419 x8800)))))
                                   g8799))))
                              g8798))
                           xj7414
                           xk7415
                           block=?))))
                      g8797)))
                   (x8789
                    (letrec*
                     ((x8790
                       (letrec*
                        ((x8795 (input))
                         (x8791
                          (letrec*
                           ((x8794 (input))
                            (x8792
                             (letrec*
                              ((x8793 (input)))
                              (begin
                                (write '(funapp 2825 57))
                                (display "\n")
                                (cons
                                 x8793
                                 (begin
                                   (write '(funapp 2825 68))
                                   (display "\n")
                                   '()))))))
                           (begin
                             (write '(funapp 2826 28))
                             (display "\n")
                             (cons x8794 x8792)))))
                        (begin
                          (write '(funapp 2827 25))
                          (display "\n")
                          (cons x8795 x8791)))))
                     (begin
                       (write '(funapp 2828 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2828 27)) (display "\n") 'block)
                        x8790))))
                   (x8782
                    (letrec*
                     ((x8783
                       (letrec*
                        ((x8788 (input))
                         (x8784
                          (letrec*
                           ((x8787 (input))
                            (x8785
                             (letrec*
                              ((x8786 (input)))
                              (begin
                                (write '(funapp 2838 57))
                                (display "\n")
                                (cons
                                 x8786
                                 (begin
                                   (write '(funapp 2838 68))
                                   (display "\n")
                                   '()))))))
                           (begin
                             (write '(funapp 2839 28))
                             (display "\n")
                             (cons x8787 x8785)))))
                        (begin
                          (write '(funapp 2840 25))
                          (display "\n")
                          (cons x8788 x8784)))))
                     (begin
                       (write '(funapp 2841 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2841 27)) (display "\n") 'block)
                        x8783)))))
                  (begin
                    (write '(funapp 2842 19))
                    (display "\n")
                    (x8796 x8789 x8782))))
                (g8678
                 (letrec*
                  ((x8812
                    (letrec*
                     ((xj7421
                       (begin
                         (write '(funapp 2847 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 2847 35))
                            (display "\n")
                            'module))))
                      (xk7422
                       (begin
                         (write '(funapp 2847 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 2847 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g8813
                        (begin
                          (write '(funapp 2850 25))
                          (display "\n")
                          ((lambda (j7426 k7427 f7428)
                             (letrec*
                              ((g8814
                                (lambda (g7423 g7424 g7425)
                                  (letrec*
                                   ((g8815
                                     (letrec*
                                      ((x8816
                                        (letrec*
                                         ((x8819
                                           (begin
                                             (write '(funapp 2859 48))
                                             (display "\n")
                                             (real?/c j7426 k7427 g7423)))
                                          (x8818
                                           (begin
                                             (write '(funapp 2860 48))
                                             (display "\n")
                                             (real?/c j7426 k7427 g7424)))
                                          (x8817
                                           (begin
                                             (write '(funapp 2861 48))
                                             (display "\n")
                                             (BLOCK/C j7426 k7427 g7425))))
                                         (begin
                                           (write '(funapp 2862 40))
                                           (display "\n")
                                           (f7428 x8819 x8818 x8817)))))
                                      (begin
                                        (write '(funapp 2863 37))
                                        (display "\n")
                                        (BLOCK/C j7426 k7427 x8816)))))
                                   g8815))))
                              g8814))
                           xj7421
                           xk7422
                           block-move))))
                      g8813)))
                   (x8811 (input))
                   (x8810 (input))
                   (x8803
                    (letrec*
                     ((x8804
                       (letrec*
                        ((x8809 (input))
                         (x8805
                          (letrec*
                           ((x8808 (input))
                            (x8806
                             (letrec*
                              ((x8807 (input)))
                              (begin
                                (write '(funapp 2881 57))
                                (display "\n")
                                (cons
                                 x8807
                                 (begin
                                   (write '(funapp 2881 68))
                                   (display "\n")
                                   '()))))))
                           (begin
                             (write '(funapp 2882 28))
                             (display "\n")
                             (cons x8808 x8806)))))
                        (begin
                          (write '(funapp 2883 25))
                          (display "\n")
                          (cons x8809 x8805)))))
                     (begin
                       (write '(funapp 2884 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2884 27)) (display "\n") 'block)
                        x8804)))))
                  (begin
                    (write '(funapp 2885 19))
                    (display "\n")
                    (x8812 x8811 x8810 x8803))))
                (g8679
                 (letrec*
                  ((x8828
                    (letrec*
                     ((xj7429
                       (begin
                         (write '(funapp 2890 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 2890 35))
                            (display "\n")
                            'module))))
                      (xk7430
                       (begin
                         (write '(funapp 2890 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 2890 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g8829
                        (begin
                          (write '(funapp 2893 25))
                          (display "\n")
                          ((lambda (j7433 k7434 f7435)
                             (letrec*
                              ((g8830
                                (lambda (g7431 g7432)
                                  (letrec*
                                   ((g8831
                                     (letrec*
                                      ((x8832
                                        (letrec*
                                         ((x8834
                                           (begin
                                             (write '(funapp 2902 48))
                                             (display "\n")
                                             (BSET/C j7433 k7434 g7431)))
                                          (x8833
                                           (begin
                                             (write '(funapp 2903 48))
                                             (display "\n")
                                             (BLOCK/C j7433 k7434 g7432))))
                                         (begin
                                           (write '(funapp 2904 40))
                                           (display "\n")
                                           (f7435 x8834 x8833)))))
                                      (begin
                                        (write '(funapp 2905 37))
                                        (display "\n")
                                        (boolean?/c j7433 k7434 x8832)))))
                                   g8831))))
                              g8830))
                           xj7429
                           xk7430
                           blocks-contains?))))
                      g8829)))
                   (x8827 (input))
                   (x8820
                    (letrec*
                     ((x8821
                       (letrec*
                        ((x8826 (input))
                         (x8822
                          (letrec*
                           ((x8825 (input))
                            (x8823
                             (letrec*
                              ((x8824 (input)))
                              (begin
                                (write '(funapp 2922 57))
                                (display "\n")
                                (cons
                                 x8824
                                 (begin
                                   (write '(funapp 2922 68))
                                   (display "\n")
                                   '()))))))
                           (begin
                             (write '(funapp 2923 28))
                             (display "\n")
                             (cons x8825 x8823)))))
                        (begin
                          (write '(funapp 2924 25))
                          (display "\n")
                          (cons x8826 x8822)))))
                     (begin
                       (write '(funapp 2925 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2925 27)) (display "\n") 'block)
                        x8821)))))
                  (begin
                    (write '(funapp 2926 19))
                    (display "\n")
                    (x8828 x8827 x8820))))
                (g8680
                 (letrec*
                  ((x8837
                    (letrec*
                     ((xj7436
                       (begin
                         (write '(funapp 2931 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 2931 35))
                            (display "\n")
                            'module))))
                      (xk7437
                       (begin
                         (write '(funapp 2931 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 2931 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g8838
                        (begin
                          (write '(funapp 2934 25))
                          (display "\n")
                          ((lambda (j7440 k7441 f7442)
                             (letrec*
                              ((g8839
                                (lambda (g7438 g7439)
                                  (letrec*
                                   ((g8840
                                     (letrec*
                                      ((x8841
                                        (letrec*
                                         ((x8843
                                           (begin
                                             (write '(funapp 2943 48))
                                             (display "\n")
                                             (BSET/C j7440 k7441 g7438)))
                                          (x8842
                                           (begin
                                             (write '(funapp 2944 48))
                                             (display "\n")
                                             (BSET/C j7440 k7441 g7439))))
                                         (begin
                                           (write '(funapp 2945 40))
                                           (display "\n")
                                           (f7442 x8843 x8842)))))
                                      (begin
                                        (write '(funapp 2946 37))
                                        (display "\n")
                                        (boolean?/c j7440 k7441 x8841)))))
                                   g8840))))
                              g8839))
                           xj7436
                           xk7437
                           blocks=?))))
                      g8838)))
                   (x8836 (input))
                   (x8835 (input)))
                  (begin
                    (write '(funapp 2955 19))
                    (display "\n")
                    (x8837 x8836 x8835))))
                (g8681
                 (letrec*
                  ((x8846
                    (letrec*
                     ((xj7443
                       (begin
                         (write '(funapp 2960 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 2960 35))
                            (display "\n")
                            'module))))
                      (xk7444
                       (begin
                         (write '(funapp 2960 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 2960 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g8847
                        (begin
                          (write '(funapp 2963 25))
                          (display "\n")
                          ((lambda (j7447 k7448 f7449)
                             (letrec*
                              ((g8848
                                (lambda (g7445 g7446)
                                  (letrec*
                                   ((g8849
                                     (letrec*
                                      ((x8850
                                        (letrec*
                                         ((x8852
                                           (begin
                                             (write '(funapp 2972 48))
                                             (display "\n")
                                             (BSET/C j7447 k7448 g7445)))
                                          (x8851
                                           (begin
                                             (write '(funapp 2973 48))
                                             (display "\n")
                                             (BSET/C j7447 k7448 g7446))))
                                         (begin
                                           (write '(funapp 2974 40))
                                           (display "\n")
                                           (f7449 x8852 x8851)))))
                                      (begin
                                        (write '(funapp 2975 37))
                                        (display "\n")
                                        (boolean?/c j7447 k7448 x8850)))))
                                   g8849))))
                              g8848))
                           xj7443
                           xk7444
                           blocks-subset?))))
                      g8847)))
                   (x8845 (input))
                   (x8844 (input)))
                  (begin
                    (write '(funapp 2984 19))
                    (display "\n")
                    (x8846 x8845 x8844))))
                (g8682
                 (letrec*
                  ((x8855
                    (letrec*
                     ((xj7450
                       (begin
                         (write '(funapp 2989 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 2989 35))
                            (display "\n")
                            'module))))
                      (xk7451
                       (begin
                         (write '(funapp 2989 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 2989 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g8856
                        (begin
                          (write '(funapp 2992 25))
                          (display "\n")
                          ((lambda (j7454 k7455 f7456)
                             (letrec*
                              ((g8857
                                (lambda (g7452 g7453)
                                  (letrec*
                                   ((g8858
                                     (letrec*
                                      ((x8859
                                        (letrec*
                                         ((x8861
                                           (begin
                                             (write '(funapp 3001 48))
                                             (display "\n")
                                             (BSET/C j7454 k7455 g7452)))
                                          (x8860
                                           (begin
                                             (write '(funapp 3002 48))
                                             (display "\n")
                                             (BSET/C j7454 k7455 g7453))))
                                         (begin
                                           (write '(funapp 3003 40))
                                           (display "\n")
                                           (f7456 x8861 x8860)))))
                                      (begin
                                        (write '(funapp 3004 37))
                                        (display "\n")
                                        (BSET/C j7454 k7455 x8859)))))
                                   g8858))))
                              g8857))
                           xj7450
                           xk7451
                           blocks-intersect))))
                      g8856)))
                   (x8854 (input))
                   (x8853 (input)))
                  (begin
                    (write '(funapp 3013 19))
                    (display "\n")
                    (x8855 x8854 x8853))))
                (g8683
                 (letrec*
                  ((x8863
                    (letrec*
                     ((xj7457
                       (begin
                         (write '(funapp 3018 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 3018 35))
                            (display "\n")
                            'module))))
                      (xk7458
                       (begin
                         (write '(funapp 3018 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 3018 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g8864
                        (begin
                          (write '(funapp 3021 25))
                          (display "\n")
                          ((lambda (j7460 k7461 f7462)
                             (letrec*
                              ((g8865
                                (lambda (g7459)
                                  (letrec*
                                   ((g8866
                                     (letrec*
                                      ((x8867
                                        (letrec*
                                         ((x8868
                                           (begin
                                             (write '(funapp 3030 48))
                                             (display "\n")
                                             (BSET/C j7460 k7461 g7459))))
                                         (begin
                                           (write '(funapp 3031 40))
                                           (display "\n")
                                           (f7462 x8868)))))
                                      (begin
                                        (write '(funapp 3032 37))
                                        (display "\n")
                                        (real?/c j7460 k7461 x8867)))))
                                   g8866))))
                              g8865))
                           xj7457
                           xk7458
                           blocks-count))))
                      g8864)))
                   (x8862 (input)))
                  (begin
                    (write '(funapp 3040 19))
                    (display "\n")
                    (x8863 x8862))))
                (g8684
                 (letrec*
                  ((x8870
                    (letrec*
                     ((xj7463
                       (begin
                         (write '(funapp 3045 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 3045 35))
                            (display "\n")
                            'module))))
                      (xk7464
                       (begin
                         (write '(funapp 3045 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 3045 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g8871
                        (begin
                          (write '(funapp 3048 25))
                          (display "\n")
                          ((lambda (j7466 k7467 f7468)
                             (letrec*
                              ((g8872
                                (lambda (g7465)
                                  (letrec*
                                   ((g8873
                                     (letrec*
                                      ((x8874
                                        (letrec*
                                         ((x8875
                                           (begin
                                             (write '(funapp 3057 48))
                                             (display "\n")
                                             (BSET/C j7466 k7467 g7465))))
                                         (begin
                                           (write '(funapp 3058 40))
                                           (display "\n")
                                           (f7468 x8875)))))
                                      (begin
                                        (write '(funapp 3059 37))
                                        (display "\n")
                                        (boolean?/c j7466 k7467 x8874)))))
                                   g8873))))
                              g8872))
                           xj7463
                           xk7464
                           blocks-overflow?))))
                      g8871)))
                   (x8869 (input)))
                  (begin
                    (write '(funapp 3067 19))
                    (display "\n")
                    (x8870 x8869))))
                (g8685
                 (letrec*
                  ((x8879
                    (letrec*
                     ((xj7469
                       (begin
                         (write '(funapp 3072 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 3072 35))
                            (display "\n")
                            'module))))
                      (xk7470
                       (begin
                         (write '(funapp 3072 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 3072 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g8880
                        (begin
                          (write '(funapp 3075 25))
                          (display "\n")
                          ((lambda (j7474 k7475 f7476)
                             (letrec*
                              ((g8881
                                (lambda (g7471 g7472 g7473)
                                  (letrec*
                                   ((g8882
                                     (letrec*
                                      ((x8883
                                        (letrec*
                                         ((x8886
                                           (begin
                                             (write '(funapp 3084 48))
                                             (display "\n")
                                             (real?/c j7474 k7475 g7471)))
                                          (x8885
                                           (begin
                                             (write '(funapp 3085 48))
                                             (display "\n")
                                             (real?/c j7474 k7475 g7472)))
                                          (x8884
                                           (begin
                                             (write '(funapp 3086 48))
                                             (display "\n")
                                             (BSET/C j7474 k7475 g7473))))
                                         (begin
                                           (write '(funapp 3087 40))
                                           (display "\n")
                                           (f7476 x8886 x8885 x8884)))))
                                      (begin
                                        (write '(funapp 3088 37))
                                        (display "\n")
                                        (BSET/C j7474 k7475 x8883)))))
                                   g8882))))
                              g8881))
                           xj7469
                           xk7470
                           blocks-move))))
                      g8880)))
                   (x8878 (input))
                   (x8877 (input))
                   (x8876 (input)))
                  (begin
                    (write '(funapp 3098 19))
                    (display "\n")
                    (x8879 x8878 x8877 x8876))))
                (g8686
                 (letrec*
                  ((x8893
                    (letrec*
                     ((xj7477
                       (begin
                         (write '(funapp 3103 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 3103 35))
                            (display "\n")
                            'module))))
                      (xk7478
                       (begin
                         (write '(funapp 3103 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 3103 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g8894
                        (begin
                          (write '(funapp 3106 25))
                          (display "\n")
                          ((lambda (j7481 k7482 f7483)
                             (letrec*
                              ((g8895
                                (lambda (g7479 g7480)
                                  (letrec*
                                   ((g8896
                                     (letrec*
                                      ((x8897
                                        (letrec*
                                         ((x8899
                                           (begin
                                             (write '(funapp 3115 48))
                                             (display "\n")
                                             (POSN/C j7481 k7482 g7479)))
                                          (x8898
                                           (begin
                                             (write '(funapp 3116 48))
                                             (display "\n")
                                             (BSET/C j7481 k7482 g7480))))
                                         (begin
                                           (write '(funapp 3117 40))
                                           (display "\n")
                                           (f7483 x8899 x8898)))))
                                      (begin
                                        (write '(funapp 3118 37))
                                        (display "\n")
                                        (BSET/C j7481 k7482 x8897)))))
                                   g8896))))
                              g8895))
                           xj7477
                           xk7478
                           blocks-rotate-cw))))
                      g8894)))
                   (x8888
                    (letrec*
                     ((x8889
                       (letrec*
                        ((x8892 (input))
                         (x8890
                          (letrec*
                           ((x8891 (input)))
                           (begin
                             (write '(funapp 3130 60))
                             (display "\n")
                             (cons
                              x8891
                              (begin
                                (write '(funapp 3130 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 3131 25))
                          (display "\n")
                          (cons x8892 x8890)))))
                     (begin
                       (write '(funapp 3132 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 3132 27)) (display "\n") 'posn)
                        x8889))))
                   (x8887 (input)))
                  (begin
                    (write '(funapp 3134 19))
                    (display "\n")
                    (x8893 x8888 x8887))))
                (g8687
                 (letrec*
                  ((x8906
                    (letrec*
                     ((xj7484
                       (begin
                         (write '(funapp 3139 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 3139 35))
                            (display "\n")
                            'module))))
                      (xk7485
                       (begin
                         (write '(funapp 3139 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 3139 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g8907
                        (begin
                          (write '(funapp 3142 25))
                          (display "\n")
                          ((lambda (j7488 k7489 f7490)
                             (letrec*
                              ((g8908
                                (lambda (g7486 g7487)
                                  (letrec*
                                   ((g8909
                                     (letrec*
                                      ((x8910
                                        (letrec*
                                         ((x8912
                                           (begin
                                             (write '(funapp 3151 48))
                                             (display "\n")
                                             (POSN/C j7488 k7489 g7486)))
                                          (x8911
                                           (begin
                                             (write '(funapp 3152 48))
                                             (display "\n")
                                             (BSET/C j7488 k7489 g7487))))
                                         (begin
                                           (write '(funapp 3153 40))
                                           (display "\n")
                                           (f7490 x8912 x8911)))))
                                      (begin
                                        (write '(funapp 3154 37))
                                        (display "\n")
                                        (BSET/C j7488 k7489 x8910)))))
                                   g8909))))
                              g8908))
                           xj7484
                           xk7485
                           blocks-rotate-ccw))))
                      g8907)))
                   (x8901
                    (letrec*
                     ((x8902
                       (letrec*
                        ((x8905 (input))
                         (x8903
                          (letrec*
                           ((x8904 (input)))
                           (begin
                             (write '(funapp 3166 60))
                             (display "\n")
                             (cons
                              x8904
                              (begin
                                (write '(funapp 3166 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 3167 25))
                          (display "\n")
                          (cons x8905 x8903)))))
                     (begin
                       (write '(funapp 3168 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 3168 27)) (display "\n") 'posn)
                        x8902))))
                   (x8900 (input)))
                  (begin
                    (write '(funapp 3170 19))
                    (display "\n")
                    (x8906 x8901 x8900))))
                (g8688
                 (letrec*
                  ((x8915
                    (letrec*
                     ((xj7491
                       (begin
                         (write '(funapp 3175 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 3175 35))
                            (display "\n")
                            'module))))
                      (xk7492
                       (begin
                         (write '(funapp 3175 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 3175 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g8916
                        (begin
                          (write '(funapp 3178 25))
                          (display "\n")
                          ((lambda (j7495 k7496 f7497)
                             (letrec*
                              ((g8917
                                (lambda (g7493 g7494)
                                  (letrec*
                                   ((g8918
                                     (letrec*
                                      ((x8919
                                        (letrec*
                                         ((x8921
                                           (begin
                                             (write '(funapp 3187 48))
                                             (display "\n")
                                             (BSET/C j7495 k7496 g7493)))
                                          (x8920
                                           (begin
                                             (write '(funapp 3188 48))
                                             (display "\n")
                                             (COLOR/C j7495 k7496 g7494))))
                                         (begin
                                           (write '(funapp 3189 40))
                                           (display "\n")
                                           (f7497 x8921 x8920)))))
                                      (begin
                                        (write '(funapp 3190 37))
                                        (display "\n")
                                        (BSET/C j7495 k7496 x8919)))))
                                   g8918))))
                              g8917))
                           xj7491
                           xk7492
                           blocks-change-color))))
                      g8916)))
                   (x8914 (input))
                   (x8913 (input)))
                  (begin
                    (write '(funapp 3199 19))
                    (display "\n")
                    (x8915 x8914 x8913))))
                (g8689
                 (letrec*
                  ((x8924
                    (letrec*
                     ((xj7498
                       (begin
                         (write '(funapp 3204 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 3204 35))
                            (display "\n")
                            'module))))
                      (xk7499
                       (begin
                         (write '(funapp 3204 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 3204 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g8925
                        (begin
                          (write '(funapp 3207 25))
                          (display "\n")
                          ((lambda (j7502 k7503 f7504)
                             (letrec*
                              ((g8926
                                (lambda (g7500 g7501)
                                  (letrec*
                                   ((g8927
                                     (letrec*
                                      ((x8928
                                        (letrec*
                                         ((x8930
                                           (begin
                                             (write '(funapp 3216 48))
                                             (display "\n")
                                             (BSET/C j7502 k7503 g7500)))
                                          (x8929
                                           (begin
                                             (write '(funapp 3217 48))
                                             (display "\n")
                                             (real?/c j7502 k7503 g7501))))
                                         (begin
                                           (write '(funapp 3218 40))
                                           (display "\n")
                                           (f7504 x8930 x8929)))))
                                      (begin
                                        (write '(funapp 3219 37))
                                        (display "\n")
                                        (BSET/C j7502 k7503 x8928)))))
                                   g8927))))
                              g8926))
                           xj7498
                           xk7499
                           blocks-row))))
                      g8925)))
                   (x8923 (input))
                   (x8922 (input)))
                  (begin
                    (write '(funapp 3228 19))
                    (display "\n")
                    (x8924 x8923 x8922))))
                (g8690
                 (letrec*
                  ((x8933
                    (letrec*
                     ((xj7505
                       (begin
                         (write '(funapp 3233 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 3233 35))
                            (display "\n")
                            'module))))
                      (xk7506
                       (begin
                         (write '(funapp 3233 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 3233 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g8934
                        (begin
                          (write '(funapp 3236 25))
                          (display "\n")
                          ((lambda (j7509 k7510 f7511)
                             (letrec*
                              ((g8935
                                (lambda (g7507 g7508)
                                  (letrec*
                                   ((g8936
                                     (letrec*
                                      ((x8937
                                        (letrec*
                                         ((x8939
                                           (begin
                                             (write '(funapp 3245 48))
                                             (display "\n")
                                             (BSET/C j7509 k7510 g7507)))
                                          (x8938
                                           (begin
                                             (write '(funapp 3246 48))
                                             (display "\n")
                                             (real?/c j7509 k7510 g7508))))
                                         (begin
                                           (write '(funapp 3247 40))
                                           (display "\n")
                                           (f7511 x8939 x8938)))))
                                      (begin
                                        (write '(funapp 3248 37))
                                        (display "\n")
                                        (boolean?/c j7509 k7510 x8937)))))
                                   g8936))))
                              g8935))
                           xj7505
                           xk7506
                           full-row?))))
                      g8934)))
                   (x8932 (input))
                   (x8931 (input)))
                  (begin
                    (write '(funapp 3257 19))
                    (display "\n")
                    (x8933 x8932 x8931))))
                (g8691
                 (letrec*
                  ((x8942
                    (letrec*
                     ((xj7512
                       (begin
                         (write '(funapp 3262 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 3262 35))
                            (display "\n")
                            'module))))
                      (xk7513
                       (begin
                         (write '(funapp 3262 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 3262 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g8943
                        (begin
                          (write '(funapp 3265 25))
                          (display "\n")
                          ((lambda (j7516 k7517 f7518)
                             (letrec*
                              ((g8944
                                (lambda (g7514 g7515)
                                  (letrec*
                                   ((g8945
                                     (letrec*
                                      ((x8946
                                        (letrec*
                                         ((x8948
                                           (begin
                                             (write '(funapp 3274 48))
                                             (display "\n")
                                             (BSET/C j7516 k7517 g7514)))
                                          (x8947
                                           (begin
                                             (write '(funapp 3275 48))
                                             (display "\n")
                                             (BSET/C j7516 k7517 g7515))))
                                         (begin
                                           (write '(funapp 3276 40))
                                           (display "\n")
                                           (f7518 x8948 x8947)))))
                                      (begin
                                        (write '(funapp 3277 37))
                                        (display "\n")
                                        (BSET/C j7516 k7517 x8946)))))
                                   g8945))))
                              g8944))
                           xj7512
                           xk7513
                           blocks-union))))
                      g8943)))
                   (x8941 (input))
                   (x8940 (input)))
                  (begin
                    (write '(funapp 3286 19))
                    (display "\n")
                    (x8942 x8941 x8940))))
                (g8692
                 (letrec*
                  ((x8950
                    (letrec*
                     ((xj7519
                       (begin
                         (write '(funapp 3291 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 3291 35))
                            (display "\n")
                            'module))))
                      (xk7520
                       (begin
                         (write '(funapp 3291 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 3291 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g8951
                        (begin
                          (write '(funapp 3294 25))
                          (display "\n")
                          ((lambda (j7522 k7523 f7524)
                             (letrec*
                              ((g8952
                                (lambda (g7521)
                                  (letrec*
                                   ((g8953
                                     (letrec*
                                      ((x8954
                                        (letrec*
                                         ((x8955
                                           (begin
                                             (write '(funapp 3303 48))
                                             (display "\n")
                                             (BSET/C j7522 k7523 g7521))))
                                         (begin
                                           (write '(funapp 3304 40))
                                           (display "\n")
                                           (f7524 x8955)))))
                                      (begin
                                        (write '(funapp 3305 37))
                                        (display "\n")
                                        (real?/c j7522 k7523 x8954)))))
                                   g8953))))
                              g8952))
                           xj7519
                           xk7520
                           blocks-max-x))))
                      g8951)))
                   (x8949 (input)))
                  (begin
                    (write '(funapp 3313 19))
                    (display "\n")
                    (x8950 x8949))))
                (g8693
                 (letrec*
                  ((x8957
                    (letrec*
                     ((xj7525
                       (begin
                         (write '(funapp 3318 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 3318 35))
                            (display "\n")
                            'module))))
                      (xk7526
                       (begin
                         (write '(funapp 3318 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 3318 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g8958
                        (begin
                          (write '(funapp 3321 25))
                          (display "\n")
                          ((lambda (j7528 k7529 f7530)
                             (letrec*
                              ((g8959
                                (lambda (g7527)
                                  (letrec*
                                   ((g8960
                                     (letrec*
                                      ((x8961
                                        (letrec*
                                         ((x8962
                                           (begin
                                             (write '(funapp 3330 48))
                                             (display "\n")
                                             (BSET/C j7528 k7529 g7527))))
                                         (begin
                                           (write '(funapp 3331 40))
                                           (display "\n")
                                           (f7530 x8962)))))
                                      (begin
                                        (write '(funapp 3332 37))
                                        (display "\n")
                                        (real?/c j7528 k7529 x8961)))))
                                   g8960))))
                              g8959))
                           xj7525
                           xk7526
                           blocks-min-x))))
                      g8958)))
                   (x8956 (input)))
                  (begin
                    (write '(funapp 3340 19))
                    (display "\n")
                    (x8957 x8956))))
                (g8694
                 (letrec*
                  ((x8964
                    (letrec*
                     ((xj7531
                       (begin
                         (write '(funapp 3345 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 3345 35))
                            (display "\n")
                            'module))))
                      (xk7532
                       (begin
                         (write '(funapp 3345 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 3345 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g8965
                        (begin
                          (write '(funapp 3348 25))
                          (display "\n")
                          ((lambda (j7534 k7535 f7536)
                             (letrec*
                              ((g8966
                                (lambda (g7533)
                                  (letrec*
                                   ((g8967
                                     (letrec*
                                      ((x8968
                                        (letrec*
                                         ((x8969
                                           (begin
                                             (write '(funapp 3357 48))
                                             (display "\n")
                                             (BSET/C j7534 k7535 g7533))))
                                         (begin
                                           (write '(funapp 3358 40))
                                           (display "\n")
                                           (f7536 x8969)))))
                                      (begin
                                        (write '(funapp 3359 37))
                                        (display "\n")
                                        (real?/c j7534 k7535 x8968)))))
                                   g8967))))
                              g8966))
                           xj7531
                           xk7532
                           blocks-max-y))))
                      g8965)))
                   (x8963 (input)))
                  (begin
                    (write '(funapp 3367 19))
                    (display "\n")
                    (x8964 x8963))))
                (g8695
                 (letrec*
                  ((x8971
                    (letrec*
                     ((xj7537
                       (begin
                         (write '(funapp 3372 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 3372 35))
                            (display "\n")
                            'module))))
                      (xk7538
                       (begin
                         (write '(funapp 3372 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 3372 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g8972
                        (begin
                          (write '(funapp 3375 25))
                          (display "\n")
                          ((lambda (j7540 k7541 f7542)
                             (letrec*
                              ((g8973
                                (lambda (g7539)
                                  (letrec*
                                   ((g8974
                                     (letrec*
                                      ((x8975
                                        (letrec*
                                         ((x8976
                                           (begin
                                             (write '(funapp 3384 48))
                                             (display "\n")
                                             (BSET/C j7540 k7541 g7539))))
                                         (begin
                                           (write '(funapp 3385 40))
                                           (display "\n")
                                           (f7542 x8976)))))
                                      (begin
                                        (write '(funapp 3386 37))
                                        (display "\n")
                                        (BSET/C j7540 k7541 x8975)))))
                                   g8974))))
                              g8973))
                           xj7537
                           xk7538
                           eliminate-full-rows))))
                      g8972)))
                   (x8970 (input)))
                  (begin
                    (write '(funapp 3394 19))
                    (display "\n")
                    (x8971 x8970))))
                (g8696
                 (letrec*
                  ((x8988
                    (letrec*
                     ((xj7543
                       (begin
                         (write '(funapp 3399 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 3399 35))
                            (display "\n")
                            'module))))
                      (xk7544
                       (begin
                         (write '(funapp 3399 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 3399 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g8989
                        (begin
                          (write '(funapp 3402 25))
                          (display "\n")
                          ((lambda (j7548 k7549 f7550)
                             (letrec*
                              ((g8990
                                (lambda (g7545 g7546 g7547)
                                  (letrec*
                                   ((g8991
                                     (letrec*
                                      ((x8992
                                        (letrec*
                                         ((x8995
                                           (begin
                                             (write '(funapp 3411 48))
                                             (display "\n")
                                             (integer?/c j7548 k7549 g7545)))
                                          (x8994
                                           (begin
                                             (write '(funapp 3412 48))
                                             (display "\n")
                                             (integer?/c j7548 k7549 g7546)))
                                          (x8993
                                           (begin
                                             (write '(funapp 3413 48))
                                             (display "\n")
                                             (TETRA/C j7548 k7549 g7547))))
                                         (begin
                                           (write '(funapp 3414 40))
                                           (display "\n")
                                           (f7550 x8995 x8994 x8993)))))
                                      (begin
                                        (write '(funapp 3415 37))
                                        (display "\n")
                                        (TETRA/C j7548 k7549 x8992)))))
                                   g8991))))
                              g8990))
                           xj7543
                           xk7544
                           tetra-move))))
                      g8989)))
                   (x8987 (input))
                   (x8986 (input))
                   (x8977
                    (letrec*
                     ((x8978
                       (letrec*
                        ((x8981
                          (letrec*
                           ((x8982
                             (letrec*
                              ((x8985 (input))
                               (x8983
                                (letrec*
                                 ((x8984 (input)))
                                 (begin
                                   (write '(funapp 3434 60))
                                   (display "\n")
                                   (cons
                                    x8984
                                    (begin
                                      (write '(funapp 3434 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3435 31))
                                (display "\n")
                                (cons x8985 x8983)))))
                           (begin
                             (write '(funapp 3436 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3436 33))
                                (display "\n")
                                'posn)
                              x8982))))
                         (x8979
                          (letrec*
                           ((x8980 (input)))
                           (begin
                             (write '(funapp 3437 60))
                             (display "\n")
                             (cons
                              x8980
                              (begin
                                (write '(funapp 3437 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 3438 25))
                          (display "\n")
                          (cons x8981 x8979)))))
                     (begin
                       (write '(funapp 3439 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 3439 27)) (display "\n") 'tetra)
                        x8978)))))
                  (begin
                    (write '(funapp 3440 19))
                    (display "\n")
                    (x8988 x8987 x8986 x8977))))
                (g8697
                 (letrec*
                  ((x9005
                    (letrec*
                     ((xj7551
                       (begin
                         (write '(funapp 3445 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 3445 35))
                            (display "\n")
                            'module))))
                      (xk7552
                       (begin
                         (write '(funapp 3445 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 3445 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g9006
                        (begin
                          (write '(funapp 3448 25))
                          (display "\n")
                          ((lambda (j7554 k7555 f7556)
                             (letrec*
                              ((g9007
                                (lambda (g7553)
                                  (letrec*
                                   ((g9008
                                     (letrec*
                                      ((x9009
                                        (letrec*
                                         ((x9010
                                           (begin
                                             (write '(funapp 3457 48))
                                             (display "\n")
                                             (TETRA/C j7554 k7555 g7553))))
                                         (begin
                                           (write '(funapp 3458 40))
                                           (display "\n")
                                           (f7556 x9010)))))
                                      (begin
                                        (write '(funapp 3459 37))
                                        (display "\n")
                                        (TETRA/C j7554 k7555 x9009)))))
                                   g9008))))
                              g9007))
                           xj7551
                           xk7552
                           tetra-rotate-ccw))))
                      g9006)))
                   (x8996
                    (letrec*
                     ((x8997
                       (letrec*
                        ((x9000
                          (letrec*
                           ((x9001
                             (letrec*
                              ((x9004 (input))
                               (x9002
                                (letrec*
                                 ((x9003 (input)))
                                 (begin
                                   (write '(funapp 3476 60))
                                   (display "\n")
                                   (cons
                                    x9003
                                    (begin
                                      (write '(funapp 3476 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3477 31))
                                (display "\n")
                                (cons x9004 x9002)))))
                           (begin
                             (write '(funapp 3478 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3478 33))
                                (display "\n")
                                'posn)
                              x9001))))
                         (x8998
                          (letrec*
                           ((x8999 (input)))
                           (begin
                             (write '(funapp 3479 60))
                             (display "\n")
                             (cons
                              x8999
                              (begin
                                (write '(funapp 3479 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 3480 25))
                          (display "\n")
                          (cons x9000 x8998)))))
                     (begin
                       (write '(funapp 3481 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 3481 27)) (display "\n") 'tetra)
                        x8997)))))
                  (begin
                    (write '(funapp 3482 19))
                    (display "\n")
                    (x9005 x8996))))
                (g8698
                 (letrec*
                  ((x9020
                    (letrec*
                     ((xj7557
                       (begin
                         (write '(funapp 3487 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 3487 35))
                            (display "\n")
                            'module))))
                      (xk7558
                       (begin
                         (write '(funapp 3487 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 3487 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g9021
                        (begin
                          (write '(funapp 3490 25))
                          (display "\n")
                          ((lambda (j7560 k7561 f7562)
                             (letrec*
                              ((g9022
                                (lambda (g7559)
                                  (letrec*
                                   ((g9023
                                     (letrec*
                                      ((x9024
                                        (letrec*
                                         ((x9025
                                           (begin
                                             (write '(funapp 3499 48))
                                             (display "\n")
                                             (TETRA/C j7560 k7561 g7559))))
                                         (begin
                                           (write '(funapp 3500 40))
                                           (display "\n")
                                           (f7562 x9025)))))
                                      (begin
                                        (write '(funapp 3501 37))
                                        (display "\n")
                                        (TETRA/C j7560 k7561 x9024)))))
                                   g9023))))
                              g9022))
                           xj7557
                           xk7558
                           tetra-rotate-cw))))
                      g9021)))
                   (x9011
                    (letrec*
                     ((x9012
                       (letrec*
                        ((x9015
                          (letrec*
                           ((x9016
                             (letrec*
                              ((x9019 (input))
                               (x9017
                                (letrec*
                                 ((x9018 (input)))
                                 (begin
                                   (write '(funapp 3518 60))
                                   (display "\n")
                                   (cons
                                    x9018
                                    (begin
                                      (write '(funapp 3518 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3519 31))
                                (display "\n")
                                (cons x9019 x9017)))))
                           (begin
                             (write '(funapp 3520 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3520 33))
                                (display "\n")
                                'posn)
                              x9016))))
                         (x9013
                          (letrec*
                           ((x9014 (input)))
                           (begin
                             (write '(funapp 3521 60))
                             (display "\n")
                             (cons
                              x9014
                              (begin
                                (write '(funapp 3521 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 3522 25))
                          (display "\n")
                          (cons x9015 x9013)))))
                     (begin
                       (write '(funapp 3523 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 3523 27)) (display "\n") 'tetra)
                        x9012)))))
                  (begin
                    (write '(funapp 3524 19))
                    (display "\n")
                    (x9020 x9011))))
                (g8699
                 (letrec*
                  ((x9036
                    (letrec*
                     ((xj7563
                       (begin
                         (write '(funapp 3529 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 3529 35))
                            (display "\n")
                            'module))))
                      (xk7564
                       (begin
                         (write '(funapp 3529 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 3529 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g9037
                        (begin
                          (write '(funapp 3532 25))
                          (display "\n")
                          ((lambda (j7567 k7568 f7569)
                             (letrec*
                              ((g9038
                                (lambda (g7565 g7566)
                                  (letrec*
                                   ((g9039
                                     (letrec*
                                      ((x9040
                                        (letrec*
                                         ((x9042
                                           (begin
                                             (write '(funapp 3541 48))
                                             (display "\n")
                                             (TETRA/C j7567 k7568 g7565)))
                                          (x9041
                                           (begin
                                             (write '(funapp 3542 48))
                                             (display "\n")
                                             (BSET/C j7567 k7568 g7566))))
                                         (begin
                                           (write '(funapp 3543 40))
                                           (display "\n")
                                           (f7569 x9042 x9041)))))
                                      (begin
                                        (write '(funapp 3544 37))
                                        (display "\n")
                                        (boolean?/c j7567 k7568 x9040)))))
                                   g9039))))
                              g9038))
                           xj7563
                           xk7564
                           tetra-overlaps-blocks?))))
                      g9037)))
                   (x9027
                    (letrec*
                     ((x9028
                       (letrec*
                        ((x9031
                          (letrec*
                           ((x9032
                             (letrec*
                              ((x9035 (input))
                               (x9033
                                (letrec*
                                 ((x9034 (input)))
                                 (begin
                                   (write '(funapp 3561 60))
                                   (display "\n")
                                   (cons
                                    x9034
                                    (begin
                                      (write '(funapp 3561 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3562 31))
                                (display "\n")
                                (cons x9035 x9033)))))
                           (begin
                             (write '(funapp 3563 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3563 33))
                                (display "\n")
                                'posn)
                              x9032))))
                         (x9029
                          (letrec*
                           ((x9030 (input)))
                           (begin
                             (write '(funapp 3564 60))
                             (display "\n")
                             (cons
                              x9030
                              (begin
                                (write '(funapp 3564 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 3565 25))
                          (display "\n")
                          (cons x9031 x9029)))))
                     (begin
                       (write '(funapp 3566 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 3566 27)) (display "\n") 'tetra)
                        x9028))))
                   (x9026 (input)))
                  (begin
                    (write '(funapp 3568 19))
                    (display "\n")
                    (x9036 x9027 x9026))))
                (g8700
                 (letrec*
                  ((x9054
                    (letrec*
                     ((xj7570
                       (begin
                         (write '(funapp 3573 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 3573 35))
                            (display "\n")
                            'module))))
                      (xk7571
                       (begin
                         (write '(funapp 3573 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 3573 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g9055
                        (begin
                          (write '(funapp 3576 25))
                          (display "\n")
                          ((lambda (j7583 k7584 f7585)
                             (letrec*
                              ((g9056
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
                                   ((g9057
                                     (letrec*
                                      ((x9058
                                        (letrec*
                                         ((x9069
                                           (begin
                                             (write '(funapp 3595 48))
                                             (display "\n")
                                             (COLOR/C j7583 k7584 g7572)))
                                          (x9068
                                           (begin
                                             (write '(funapp 3596 48))
                                             (display "\n")
                                             (real?/c j7583 k7584 g7573)))
                                          (x9067
                                           (begin
                                             (write '(funapp 3597 48))
                                             (display "\n")
                                             (real?/c j7583 k7584 g7574)))
                                          (x9066
                                           (begin
                                             (write '(funapp 3598 48))
                                             (display "\n")
                                             (integer?/c j7583 k7584 g7575)))
                                          (x9065
                                           (begin
                                             (write '(funapp 3599 48))
                                             (display "\n")
                                             (integer?/c j7583 k7584 g7576)))
                                          (x9064
                                           (begin
                                             (write '(funapp 3600 48))
                                             (display "\n")
                                             (integer?/c j7583 k7584 g7577)))
                                          (x9063
                                           (begin
                                             (write '(funapp 3601 48))
                                             (display "\n")
                                             (integer?/c j7583 k7584 g7578)))
                                          (x9062
                                           (begin
                                             (write '(funapp 3602 48))
                                             (display "\n")
                                             (integer?/c j7583 k7584 g7579)))
                                          (x9061
                                           (begin
                                             (write '(funapp 3603 48))
                                             (display "\n")
                                             (integer?/c j7583 k7584 g7580)))
                                          (x9060
                                           (begin
                                             (write '(funapp 3604 48))
                                             (display "\n")
                                             (integer?/c j7583 k7584 g7581)))
                                          (x9059
                                           (begin
                                             (write '(funapp 3605 48))
                                             (display "\n")
                                             (integer?/c j7583 k7584 g7582))))
                                         (begin
                                           (write '(funapp 3606 40))
                                           (display "\n")
                                           (f7585
                                            x9069
                                            x9068
                                            x9067
                                            x9066
                                            x9065
                                            x9064
                                            x9063
                                            x9062
                                            x9061
                                            x9060
                                            x9059)))))
                                      (begin
                                        (write '(funapp 3618 37))
                                        (display "\n")
                                        (TETRA/C j7583 k7584 x9058)))))
                                   g9057))))
                              g9056))
                           xj7570
                           xk7571
                           build-tetra-blocks))))
                      g9055)))
                   (x9053 (input))
                   (x9052 (input))
                   (x9051 (input))
                   (x9050 (input))
                   (x9049 (input))
                   (x9048 (input))
                   (x9047 (input))
                   (x9046 (input))
                   (x9045 (input))
                   (x9044 (input))
                   (x9043 (input)))
                  (begin
                    (write '(funapp 3636 19))
                    (display "\n")
                    (x9054
                     x9053
                     x9052
                     x9051
                     x9050
                     x9049
                     x9048
                     x9047
                     x9046
                     x9045
                     x9044
                     x9043))))
                (g8701
                 (letrec*
                  ((x9080
                    (letrec*
                     ((xj7586
                       (begin
                         (write '(funapp 3652 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 3652 35))
                            (display "\n")
                            'module))))
                      (xk7587
                       (begin
                         (write '(funapp 3652 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 3652 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g9081
                        (begin
                          (write '(funapp 3655 25))
                          (display "\n")
                          ((lambda (j7590 k7591 f7592)
                             (letrec*
                              ((g9082
                                (lambda (g7588 g7589)
                                  (letrec*
                                   ((g9083
                                     (letrec*
                                      ((x9084
                                        (letrec*
                                         ((x9086
                                           (begin
                                             (write '(funapp 3664 48))
                                             (display "\n")
                                             (TETRA/C j7590 k7591 g7588)))
                                          (x9085
                                           (begin
                                             (write '(funapp 3665 48))
                                             (display "\n")
                                             (COLOR/C j7590 k7591 g7589))))
                                         (begin
                                           (write '(funapp 3666 40))
                                           (display "\n")
                                           (f7592 x9086 x9085)))))
                                      (begin
                                        (write '(funapp 3667 37))
                                        (display "\n")
                                        (TETRA/C j7590 k7591 x9084)))))
                                   g9083))))
                              g9082))
                           xj7586
                           xk7587
                           tetra-change-color))))
                      g9081)))
                   (x9071
                    (letrec*
                     ((x9072
                       (letrec*
                        ((x9075
                          (letrec*
                           ((x9076
                             (letrec*
                              ((x9079 (input))
                               (x9077
                                (letrec*
                                 ((x9078 (input)))
                                 (begin
                                   (write '(funapp 3684 60))
                                   (display "\n")
                                   (cons
                                    x9078
                                    (begin
                                      (write '(funapp 3684 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3685 31))
                                (display "\n")
                                (cons x9079 x9077)))))
                           (begin
                             (write '(funapp 3686 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3686 33))
                                (display "\n")
                                'posn)
                              x9076))))
                         (x9073
                          (letrec*
                           ((x9074 (input)))
                           (begin
                             (write '(funapp 3687 60))
                             (display "\n")
                             (cons
                              x9074
                              (begin
                                (write '(funapp 3687 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 3688 25))
                          (display "\n")
                          (cons x9075 x9073)))))
                     (begin
                       (write '(funapp 3689 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 3689 27)) (display "\n") 'tetra)
                        x9072))))
                   (x9070 (input)))
                  (begin
                    (write '(funapp 3691 19))
                    (display "\n")
                    (x9080 x9071 x9070))))
                (g8702
                 (letrec*
                  ((x9101
                    (letrec*
                     ((xj7593
                       (begin
                         (write '(funapp 3696 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 3696 35))
                            (display "\n")
                            'module))))
                      (xk7594
                       (begin
                         (write '(funapp 3696 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 3696 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g9102
                        (begin
                          (write '(funapp 3699 25))
                          (display "\n")
                          ((lambda (j7597 k7598 f7599)
                             (letrec*
                              ((g9103
                                (lambda (g7595 g7596)
                                  (letrec*
                                   ((g9104
                                     (letrec*
                                      ((x9105
                                        (letrec*
                                         ((x9107
                                           (begin
                                             (write '(funapp 3708 48))
                                             (display "\n")
                                             (WORLD/C j7597 k7598 g7595)))
                                          (x9106
                                           (begin
                                             (write '(funapp 3709 48))
                                             (display "\n")
                                             (string?/c j7597 k7598 g7596))))
                                         (begin
                                           (write '(funapp 3710 40))
                                           (display "\n")
                                           (f7599 x9107 x9106)))))
                                      (begin
                                        (write '(funapp 3711 37))
                                        (display "\n")
                                        (WORLD/C j7597 k7598 x9105)))))
                                   g9104))))
                              g9103))
                           xj7593
                           xk7594
                           world-key-move))))
                      g9102)))
                   (x9088
                    (letrec*
                     ((x9089
                       (letrec*
                        ((x9092
                          (letrec*
                           ((x9093
                             (letrec*
                              ((x9096
                                (letrec*
                                 ((x9097
                                   (letrec*
                                    ((x9100 (input))
                                     (x9098
                                      (letrec*
                                       ((x9099 (input)))
                                       (begin
                                         (write '(funapp 3734 40))
                                         (display "\n")
                                         (cons
                                          x9099
                                          (begin
                                            (write '(funapp 3734 51))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3735 37))
                                      (display "\n")
                                      (cons x9100 x9098)))))
                                 (begin
                                   (write '(funapp 3736 34))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3736 39))
                                      (display "\n")
                                      'posn)
                                    x9097))))
                               (x9094
                                (letrec*
                                 ((x9095 (input)))
                                 (begin
                                   (write '(funapp 3738 60))
                                   (display "\n")
                                   (cons
                                    x9095
                                    (begin
                                      (write '(funapp 3738 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3739 31))
                                (display "\n")
                                (cons x9096 x9094)))))
                           (begin
                             (write '(funapp 3740 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3740 33))
                                (display "\n")
                                'tetra)
                              x9093))))
                         (x9090
                          (letrec*
                           ((x9091 (input)))
                           (begin
                             (write '(funapp 3741 60))
                             (display "\n")
                             (cons
                              x9091
                              (begin
                                (write '(funapp 3741 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 3742 25))
                          (display "\n")
                          (cons x9092 x9090)))))
                     (begin
                       (write '(funapp 3743 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 3743 27)) (display "\n") 'world)
                        x9089))))
                   (x9087 (input)))
                  (begin
                    (write '(funapp 3745 19))
                    (display "\n")
                    (x9101 x9088 x9087))))
                (g8703
                 (letrec*
                  ((x9122
                    (letrec*
                     ((xj7600
                       (begin
                         (write '(funapp 3750 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 3750 35))
                            (display "\n")
                            'module))))
                      (xk7601
                       (begin
                         (write '(funapp 3750 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 3750 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g9123
                        (begin
                          (write '(funapp 3753 25))
                          (display "\n")
                          ((lambda (j7604 k7605 f7606)
                             (letrec*
                              ((g9124
                                (lambda (g7602 g7603)
                                  (letrec*
                                   ((g9125
                                     (letrec*
                                      ((x9126
                                        (letrec*
                                         ((x9130
                                           (begin
                                             (write '(funapp 3762 48))
                                             (display "\n")
                                             (WORLD/C j7604 k7605 g7602)))
                                          (x9127
                                           (letrec*
                                            ((x9128
                                              (letrec*
                                               ((x9129
                                                 (begin
                                                   (write '(funapp 3767 54))
                                                   (display "\n")
                                                   (listof TETRA/C))))
                                               (begin
                                                 (write '(funapp 3768 46))
                                                 (display "\n")
                                                 (and/c cons?/c x9129)))))
                                            (begin
                                              (write '(funapp 3769 43))
                                              (display "\n")
                                              (x9128 j7604 k7605 g7603)))))
                                         (begin
                                           (write '(funapp 3770 40))
                                           (display "\n")
                                           (f7606 x9130 x9127)))))
                                      (begin
                                        (write '(funapp 3771 37))
                                        (display "\n")
                                        (WORLD/C j7604 k7605 x9126)))))
                                   g9125))))
                              g9124))
                           xj7600
                           xk7601
                           next-world))))
                      g9123)))
                   (x9109
                    (letrec*
                     ((x9110
                       (letrec*
                        ((x9113
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
                                         (write '(funapp 3794 40))
                                         (display "\n")
                                         (cons
                                          x9120
                                          (begin
                                            (write '(funapp 3794 51))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3795 37))
                                      (display "\n")
                                      (cons x9121 x9119)))))
                                 (begin
                                   (write '(funapp 3796 34))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3796 39))
                                      (display "\n")
                                      'posn)
                                    x9118))))
                               (x9115
                                (letrec*
                                 ((x9116 (input)))
                                 (begin
                                   (write '(funapp 3798 60))
                                   (display "\n")
                                   (cons
                                    x9116
                                    (begin
                                      (write '(funapp 3798 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3799 31))
                                (display "\n")
                                (cons x9117 x9115)))))
                           (begin
                             (write '(funapp 3800 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3800 33))
                                (display "\n")
                                'tetra)
                              x9114))))
                         (x9111
                          (letrec*
                           ((x9112 (input)))
                           (begin
                             (write '(funapp 3801 60))
                             (display "\n")
                             (cons
                              x9112
                              (begin
                                (write '(funapp 3801 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 3802 25))
                          (display "\n")
                          (cons x9113 x9111)))))
                     (begin
                       (write '(funapp 3803 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 3803 27)) (display "\n") 'world)
                        x9110))))
                   (x9108 (input)))
                  (begin
                    (write '(funapp 3805 19))
                    (display "\n")
                    (x9122 x9109 x9108))))
                (g8704
                 (letrec*
                  ((x9144
                    (letrec*
                     ((xj7607
                       (begin
                         (write '(funapp 3810 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 3810 35))
                            (display "\n")
                            'module))))
                      (xk7608
                       (begin
                         (write '(funapp 3810 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 3810 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g9145
                        (begin
                          (write '(funapp 3813 25))
                          (display "\n")
                          ((lambda (j7610 k7611 f7612)
                             (letrec*
                              ((g9146
                                (lambda (g7609)
                                  (letrec*
                                   ((g9147
                                     (letrec*
                                      ((x9148
                                        (letrec*
                                         ((x9149
                                           (begin
                                             (write '(funapp 3822 48))
                                             (display "\n")
                                             (WORLD/C j7610 k7611 g7609))))
                                         (begin
                                           (write '(funapp 3823 40))
                                           (display "\n")
                                           (f7612 x9149)))))
                                      (begin
                                        (write '(funapp 3824 37))
                                        (display "\n")
                                        (BSET/C j7610 k7611 x9148)))))
                                   g9147))))
                              g9146))
                           xj7607
                           xk7608
                           ghost-blocks))))
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
                                         (write '(funapp 3847 40))
                                         (display "\n")
                                         (cons
                                          x9142
                                          (begin
                                            (write '(funapp 3847 51))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3848 37))
                                      (display "\n")
                                      (cons x9143 x9141)))))
                                 (begin
                                   (write '(funapp 3849 34))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3849 39))
                                      (display "\n")
                                      'posn)
                                    x9140))))
                               (x9137
                                (letrec*
                                 ((x9138 (input)))
                                 (begin
                                   (write '(funapp 3851 60))
                                   (display "\n")
                                   (cons
                                    x9138
                                    (begin
                                      (write '(funapp 3851 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3852 31))
                                (display "\n")
                                (cons x9139 x9137)))))
                           (begin
                             (write '(funapp 3853 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3853 33))
                                (display "\n")
                                'tetra)
                              x9136))))
                         (x9133
                          (letrec*
                           ((x9134 (input)))
                           (begin
                             (write '(funapp 3854 60))
                             (display "\n")
                             (cons
                              x9134
                              (begin
                                (write '(funapp 3854 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 3855 25))
                          (display "\n")
                          (cons x9135 x9133)))))
                     (begin
                       (write '(funapp 3856 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 3856 27)) (display "\n") 'world)
                        x9132)))))
                  (begin
                    (write '(funapp 3857 19))
                    (display "\n")
                    (x9144 x9131))))
                (g8705
                 (letrec*
                  ((x9151
                    (letrec*
                     ((xj7613
                       (begin
                         (write '(funapp 3862 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 3862 35))
                            (display "\n")
                            'module))))
                      (xk7614
                       (begin
                         (write '(funapp 3862 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 3862 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g9152
                        (begin
                          (write '(funapp 3865 25))
                          (display "\n")
                          ((lambda (j7616 k7617 f7618)
                             (letrec*
                              ((g9153
                                (lambda (g7615)
                                  (letrec*
                                   ((g9154
                                     (letrec*
                                      ((x9155
                                        (letrec*
                                         ((x9156
                                           (begin
                                             (write '(funapp 3874 48))
                                             (display "\n")
                                             (any/c j7616 k7617 g7615))))
                                         (begin
                                           (write '(funapp 3875 40))
                                           (display "\n")
                                           (f7618 x9156)))))
                                      (begin
                                        (write '(funapp 3876 37))
                                        (display "\n")
                                        (boolean?/c j7616 k7617 x9155)))))
                                   g9154))))
                              g9153))
                           xj7613
                           xk7614
                           image?))))
                      g9152)))
                   (x9150 (input)))
                  (begin
                    (write '(funapp 3884 19))
                    (display "\n")
                    (x9151 x9150))))
                (g8706
                 (letrec*
                  ((x9159
                    (letrec*
                     ((xj7619
                       (begin
                         (write '(funapp 3889 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 3889 35))
                            (display "\n")
                            'module))))
                      (xk7620
                       (begin
                         (write '(funapp 3889 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 3889 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g9160
                        (begin
                          (write '(funapp 3892 25))
                          (display "\n")
                          ((lambda (j7623 k7624 f7625)
                             (letrec*
                              ((g9161
                                (lambda (g7621 g7622)
                                  (letrec*
                                   ((g9162
                                     (letrec*
                                      ((x9163
                                        (letrec*
                                         ((x9165
                                           (begin
                                             (write '(funapp 3901 48))
                                             (display "\n")
                                             (image? j7623 k7624 g7621)))
                                          (x9164
                                           (begin
                                             (write '(funapp 3902 48))
                                             (display "\n")
                                             (image? j7623 k7624 g7622))))
                                         (begin
                                           (write '(funapp 3903 40))
                                           (display "\n")
                                           (f7625 x9165 x9164)))))
                                      (begin
                                        (write '(funapp 3904 37))
                                        (display "\n")
                                        (image? j7623 k7624 x9163)))))
                                   g9162))))
                              g9161))
                           xj7619
                           xk7620
                           overlay))))
                      g9160)))
                   (x9158 (input))
                   (x9157 (input)))
                  (begin
                    (write '(funapp 3913 19))
                    (display "\n")
                    (x9159 x9158 x9157))))
                (g8707
                 (letrec*
                  ((x9169
                    (letrec*
                     ((xj7626
                       (begin
                         (write '(funapp 3918 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 3918 35))
                            (display "\n")
                            'module))))
                      (xk7627
                       (begin
                         (write '(funapp 3918 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 3918 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g9170
                        (begin
                          (write '(funapp 3921 25))
                          (display "\n")
                          ((lambda (j7631 k7632 f7633)
                             (letrec*
                              ((g9171
                                (lambda (g7628 g7629 g7630)
                                  (letrec*
                                   ((g9172
                                     (letrec*
                                      ((x9173
                                        (letrec*
                                         ((x9176
                                           (begin
                                             (write '(funapp 3930 48))
                                             (display "\n")
                                             (real?/c j7631 k7632 g7628)))
                                          (x9175
                                           (begin
                                             (write '(funapp 3931 48))
                                             (display "\n")
                                             (real?/c j7631 k7632 g7629)))
                                          (x9174
                                           (begin
                                             (write '(funapp 3932 48))
                                             (display "\n")
                                             (string?/c j7631 k7632 g7630))))
                                         (begin
                                           (write '(funapp 3933 40))
                                           (display "\n")
                                           (f7633 x9176 x9175 x9174)))))
                                      (begin
                                        (write '(funapp 3934 37))
                                        (display "\n")
                                        (image? j7631 k7632 x9173)))))
                                   g9172))))
                              g9171))
                           xj7626
                           xk7627
                           circle))))
                      g9170)))
                   (x9168 (input))
                   (x9167 (input))
                   (x9166 (input)))
                  (begin
                    (write '(funapp 3944 19))
                    (display "\n")
                    (x9169 x9168 x9167 x9166))))
                (g8708
                 (letrec*
                  ((x9181
                    (letrec*
                     ((xj7634
                       (begin
                         (write '(funapp 3949 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 3949 35))
                            (display "\n")
                            'module))))
                      (xk7635
                       (begin
                         (write '(funapp 3949 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 3949 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g9182
                        (begin
                          (write '(funapp 3952 25))
                          (display "\n")
                          ((lambda (j7640 k7641 f7642)
                             (letrec*
                              ((g9183
                                (lambda (g7636 g7637 g7638 g7639)
                                  (letrec*
                                   ((g9184
                                     (letrec*
                                      ((x9185
                                        (letrec*
                                         ((x9189
                                           (begin
                                             (write '(funapp 3961 48))
                                             (display "\n")
                                             (real?/c j7640 k7641 g7636)))
                                          (x9188
                                           (begin
                                             (write '(funapp 3962 48))
                                             (display "\n")
                                             (real?/c j7640 k7641 g7637)))
                                          (x9187
                                           (begin
                                             (write '(funapp 3963 48))
                                             (display "\n")
                                             (COLOR/C j7640 k7641 g7638)))
                                          (x9186
                                           (begin
                                             (write '(funapp 3964 48))
                                             (display "\n")
                                             (COLOR/C j7640 k7641 g7639))))
                                         (begin
                                           (write '(funapp 3965 40))
                                           (display "\n")
                                           (f7642 x9189 x9188 x9187 x9186)))))
                                      (begin
                                        (write '(funapp 3966 37))
                                        (display "\n")
                                        (image? j7640 k7641 x9185)))))
                                   g9184))))
                              g9183))
                           xj7634
                           xk7635
                           rectangle))))
                      g9182)))
                   (x9180 (input))
                   (x9179 (input))
                   (x9178 (input))
                   (x9177 (input)))
                  (begin
                    (write '(funapp 3977 19))
                    (display "\n")
                    (x9181 x9180 x9179 x9178 x9177))))
                (g8709
                 (letrec*
                  ((x9194
                    (letrec*
                     ((xj7643
                       (begin
                         (write '(funapp 3982 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 3982 35))
                            (display "\n")
                            'module))))
                      (xk7644
                       (begin
                         (write '(funapp 3982 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 3982 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g9195
                        (begin
                          (write '(funapp 3985 25))
                          (display "\n")
                          ((lambda (j7649 k7650 f7651)
                             (letrec*
                              ((g9196
                                (lambda (g7645 g7646 g7647 g7648)
                                  (letrec*
                                   ((g9197
                                     (letrec*
                                      ((x9198
                                        (letrec*
                                         ((x9202
                                           (begin
                                             (write '(funapp 3994 48))
                                             (display "\n")
                                             (image/c j7649 k7650 g7645)))
                                          (x9201
                                           (begin
                                             (write '(funapp 3995 48))
                                             (display "\n")
                                             (real?/c j7649 k7650 g7646)))
                                          (x9200
                                           (begin
                                             (write '(funapp 3996 48))
                                             (display "\n")
                                             (real?/c j7649 k7650 g7647)))
                                          (x9199
                                           (begin
                                             (write '(funapp 3997 48))
                                             (display "\n")
                                             (image/c j7649 k7650 g7648))))
                                         (begin
                                           (write '(funapp 3998 40))
                                           (display "\n")
                                           (f7651 x9202 x9201 x9200 x9199)))))
                                      (begin
                                        (write '(funapp 3999 37))
                                        (display "\n")
                                        (image/c j7649 k7650 x9198)))))
                                   g9197))))
                              g9196))
                           xj7643
                           xk7644
                           place-image))))
                      g9195)))
                   (x9193 (input))
                   (x9192 (input))
                   (x9191 (input))
                   (x9190 (input)))
                  (begin
                    (write '(funapp 4010 19))
                    (display "\n")
                    (x9194 x9193 x9192 x9191 x9190))))
                (g8710
                 (letrec*
                  ((x9205
                    (letrec*
                     ((xj7652
                       (begin
                         (write '(funapp 4015 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 4015 35))
                            (display "\n")
                            'module))))
                      (xk7653
                       (begin
                         (write '(funapp 4015 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 4015 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g9206
                        (begin
                          (write '(funapp 4018 25))
                          (display "\n")
                          ((lambda (j7656 k7657 f7658)
                             (letrec*
                              ((g9207
                                (lambda (g7654 g7655)
                                  (letrec*
                                   ((g9208
                                     (letrec*
                                      ((x9209
                                        (letrec*
                                         ((x9211
                                           (begin
                                             (write '(funapp 4027 48))
                                             (display "\n")
                                             (real?/c j7656 k7657 g7654)))
                                          (x9210
                                           (begin
                                             (write '(funapp 4028 48))
                                             (display "\n")
                                             (real?/c j7656 k7657 g7655))))
                                         (begin
                                           (write '(funapp 4029 40))
                                           (display "\n")
                                           (f7658 x9211 x9210)))))
                                      (begin
                                        (write '(funapp 4030 37))
                                        (display "\n")
                                        (image? j7656 k7657 x9209)))))
                                   g9208))))
                              g9207))
                           xj7652
                           xk7653
                           empty-scene))))
                      g9206)))
                   (x9204 (input))
                   (x9203 (input)))
                  (begin
                    (write '(funapp 4039 19))
                    (display "\n")
                    (x9205 x9204 x9203))))
                (g8711
                 (letrec*
                  ((x9213
                    (letrec*
                     ((xj7659
                       (begin
                         (write '(funapp 4044 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 4044 35))
                            (display "\n")
                            'module))))
                      (xk7660
                       (begin
                         (write '(funapp 4044 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 4044 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g9214
                        (begin
                          (write '(funapp 4047 25))
                          (display "\n")
                          ((lambda (j7662 k7663 f7664)
                             (letrec*
                              ((g9215
                                (lambda (g7661)
                                  (letrec*
                                   ((g9216
                                     (letrec*
                                      ((x9217
                                        (letrec*
                                         ((x9218
                                           (letrec*
                                            ((x9219
                                              (letrec*
                                               ((x9220
                                                 (begin
                                                   (write '(funapp 4060 54))
                                                   (display "\n")
                                                   (listof TETRA/C))))
                                               (begin
                                                 (write '(funapp 4061 46))
                                                 (display "\n")
                                                 (and/c cons?/c x9220)))))
                                            (begin
                                              (write '(funapp 4062 43))
                                              (display "\n")
                                              (x9219 j7662 k7663 g7661)))))
                                         (begin
                                           (write '(funapp 4063 40))
                                           (display "\n")
                                           (f7664 x9218)))))
                                      (begin
                                        (write '(funapp 4064 37))
                                        (display "\n")
                                        (TETRA/C j7662 k7663 x9217)))))
                                   g9216))))
                              g9215))
                           xj7659
                           xk7660
                           list-pick-random))))
                      g9214)))
                   (x9212 (input)))
                  (begin
                    (write '(funapp 4072 19))
                    (display "\n")
                    (x9213 x9212))))
                (g8712
                 (letrec*
                  ((xj7665
                    (begin
                      (write '(funapp 4075 28))
                      (display "\n")
                      (loc
                       (begin
                         (write '(funapp 4075 32))
                         (display "\n")
                         'module))))
                   (xk7666
                    (begin
                      (write '(funapp 4075 51))
                      (display "\n")
                      (loc
                       (begin
                         (write '(funapp 4075 55))
                         (display "\n")
                         'importer)))))
                  (letrec*
                   ((g9221
                     (begin
                       (write '(funapp 4076 36))
                       (display "\n")
                       (integer?/c xj7665 xk7666 neg-1))))
                   g9221)))
                (g8713
                 (letrec*
                  ((x9235
                    (letrec*
                     ((xj7667
                       (begin
                         (write '(funapp 4081 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 4081 35))
                            (display "\n")
                            'module))))
                      (xk7668
                       (begin
                         (write '(funapp 4081 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 4081 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g9236
                        (begin
                          (write '(funapp 4084 25))
                          (display "\n")
                          ((lambda (j7670 k7671 f7672)
                             (letrec*
                              ((g9237
                                (lambda (g7669)
                                  (letrec*
                                   ((g9238
                                     (letrec*
                                      ((x9239
                                        (letrec*
                                         ((x9240
                                           (begin
                                             (write '(funapp 4093 48))
                                             (display "\n")
                                             (WORLD/C j7670 k7671 g7669))))
                                         (begin
                                           (write '(funapp 4094 40))
                                           (display "\n")
                                           (f7672 x9240)))))
                                      (begin
                                        (write '(funapp 4095 37))
                                        (display "\n")
                                        (image/c j7670 k7671 x9239)))))
                                   g9238))))
                              g9237))
                           xj7667
                           xk7668
                           world->image))))
                      g9236)))
                   (x9222
                    (letrec*
                     ((x9223
                       (letrec*
                        ((x9226
                          (letrec*
                           ((x9227
                             (letrec*
                              ((x9230
                                (letrec*
                                 ((x9231
                                   (letrec*
                                    ((x9234 (input))
                                     (x9232
                                      (letrec*
                                       ((x9233 (input)))
                                       (begin
                                         (write '(funapp 4118 40))
                                         (display "\n")
                                         (cons
                                          x9233
                                          (begin
                                            (write '(funapp 4118 51))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 4119 37))
                                      (display "\n")
                                      (cons x9234 x9232)))))
                                 (begin
                                   (write '(funapp 4120 34))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 4120 39))
                                      (display "\n")
                                      'posn)
                                    x9231))))
                               (x9228
                                (letrec*
                                 ((x9229 (input)))
                                 (begin
                                   (write '(funapp 4122 60))
                                   (display "\n")
                                   (cons
                                    x9229
                                    (begin
                                      (write '(funapp 4122 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 4123 31))
                                (display "\n")
                                (cons x9230 x9228)))))
                           (begin
                             (write '(funapp 4124 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 4124 33))
                                (display "\n")
                                'tetra)
                              x9227))))
                         (x9224
                          (letrec*
                           ((x9225 (input)))
                           (begin
                             (write '(funapp 4125 60))
                             (display "\n")
                             (cons
                              x9225
                              (begin
                                (write '(funapp 4125 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 4126 25))
                          (display "\n")
                          (cons x9226 x9224)))))
                     (begin
                       (write '(funapp 4127 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 4127 27)) (display "\n") 'world)
                        x9223)))))
                  (begin
                    (write '(funapp 4128 19))
                    (display "\n")
                    (x9235 x9222))))
                (g8714
                 (letrec*
                  ((x9242
                    (letrec*
                     ((xj7673
                       (begin
                         (write '(funapp 4133 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 4133 35))
                            (display "\n")
                            'module))))
                      (xk7674
                       (begin
                         (write '(funapp 4133 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 4133 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g9243
                        (begin
                          (write '(funapp 4136 25))
                          (display "\n")
                          ((lambda (j7676 k7677 f7678)
                             (letrec*
                              ((g9244
                                (lambda (g7675)
                                  (letrec*
                                   ((g9245
                                     (letrec*
                                      ((x9246
                                        (letrec*
                                         ((x9247
                                           (begin
                                             (write '(funapp 4145 48))
                                             (display "\n")
                                             (BSET/C j7676 k7677 g7675))))
                                         (begin
                                           (write '(funapp 4146 40))
                                           (display "\n")
                                           (f7678 x9247)))))
                                      (begin
                                        (write '(funapp 4147 37))
                                        (display "\n")
                                        (image/c j7676 k7677 x9246)))))
                                   g9245))))
                              g9244))
                           xj7673
                           xk7674
                           blocks->image))))
                      g9243)))
                   (x9241 (input)))
                  (begin
                    (write '(funapp 4155 19))
                    (display "\n")
                    (x9242 x9241))))
                (g8715
                 (letrec*
                  ((x9255
                    (letrec*
                     ((xj7679
                       (begin
                         (write '(funapp 4160 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 4160 35))
                            (display "\n")
                            'module))))
                      (xk7680
                       (begin
                         (write '(funapp 4160 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 4160 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g9256
                        (begin
                          (write '(funapp 4163 25))
                          (display "\n")
                          ((lambda (j7682 k7683 f7684)
                             (letrec*
                              ((g9257
                                (lambda (g7681)
                                  (letrec*
                                   ((g9258
                                     (letrec*
                                      ((x9259
                                        (letrec*
                                         ((x9260
                                           (begin
                                             (write '(funapp 4172 48))
                                             (display "\n")
                                             (BLOCK/C j7682 k7683 g7681))))
                                         (begin
                                           (write '(funapp 4173 40))
                                           (display "\n")
                                           (f7684 x9260)))))
                                      (begin
                                        (write '(funapp 4174 37))
                                        (display "\n")
                                        (image/c j7682 k7683 x9259)))))
                                   g9258))))
                              g9257))
                           xj7679
                           xk7680
                           block->image))))
                      g9256)))
                   (x9248
                    (letrec*
                     ((x9249
                       (letrec*
                        ((x9254 (input))
                         (x9250
                          (letrec*
                           ((x9253 (input))
                            (x9251
                             (letrec*
                              ((x9252 (input)))
                              (begin
                                (write '(funapp 4190 57))
                                (display "\n")
                                (cons
                                 x9252
                                 (begin
                                   (write '(funapp 4190 68))
                                   (display "\n")
                                   '()))))))
                           (begin
                             (write '(funapp 4191 28))
                             (display "\n")
                             (cons x9253 x9251)))))
                        (begin
                          (write '(funapp 4192 25))
                          (display "\n")
                          (cons x9254 x9250)))))
                     (begin
                       (write '(funapp 4193 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 4193 27)) (display "\n") 'block)
                        x9249)))))
                  (begin
                    (write '(funapp 4194 19))
                    (display "\n")
                    (x9255 x9248))))
                (g8716
                 (letrec*
                  ((x9269
                    (letrec*
                     ((xj7685
                       (begin
                         (write '(funapp 4199 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 4199 35))
                            (display "\n")
                            'module))))
                      (xk7686
                       (begin
                         (write '(funapp 4199 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 4199 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g9270
                        (begin
                          (write '(funapp 4202 25))
                          (display "\n")
                          ((lambda (j7689 k7690 f7691)
                             (letrec*
                              ((g9271
                                (lambda (g7687 g7688)
                                  (letrec*
                                   ((g9272
                                     (letrec*
                                      ((x9273
                                        (letrec*
                                         ((x9275
                                           (begin
                                             (write '(funapp 4211 48))
                                             (display "\n")
                                             (BLOCK/C j7689 k7690 g7687)))
                                          (x9274
                                           (begin
                                             (write '(funapp 4212 48))
                                             (display "\n")
                                             (image/c j7689 k7690 g7688))))
                                         (begin
                                           (write '(funapp 4213 40))
                                           (display "\n")
                                           (f7691 x9275 x9274)))))
                                      (begin
                                        (write '(funapp 4214 37))
                                        (display "\n")
                                        (image/c j7689 k7690 x9273)))))
                                   g9272))))
                              g9271))
                           xj7685
                           xk7686
                           place-block))))
                      g9270)))
                   (x9262
                    (letrec*
                     ((x9263
                       (letrec*
                        ((x9268 (input))
                         (x9264
                          (letrec*
                           ((x9267 (input))
                            (x9265
                             (letrec*
                              ((x9266 (input)))
                              (begin
                                (write '(funapp 4230 57))
                                (display "\n")
                                (cons
                                 x9266
                                 (begin
                                   (write '(funapp 4230 68))
                                   (display "\n")
                                   '()))))))
                           (begin
                             (write '(funapp 4231 28))
                             (display "\n")
                             (cons x9267 x9265)))))
                        (begin
                          (write '(funapp 4232 25))
                          (display "\n")
                          (cons x9268 x9264)))))
                     (begin
                       (write '(funapp 4233 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 4233 27)) (display "\n") 'block)
                        x9263))))
                   (x9261 (input)))
                  (begin
                    (write '(funapp 4235 19))
                    (display "\n")
                    (x9269 x9262 x9261))))
                (g8717
                 (letrec*
                  ((x9277
                    (letrec*
                     ((xj7692
                       (begin
                         (write '(funapp 4240 31))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 4240 35))
                            (display "\n")
                            'module))))
                      (xk7693
                       (begin
                         (write '(funapp 4240 54))
                         (display "\n")
                         (loc
                          (begin
                            (write '(funapp 4240 58))
                            (display "\n")
                            'importer)))))
                     (letrec*
                      ((g9278
                        (begin
                          (write '(funapp 4243 25))
                          (display "\n")
                          ((lambda (j7695 k7696 f7697)
                             (letrec*
                              ((g9279
                                (lambda (g7694)
                                  (letrec*
                                   ((g9280
                                     (letrec*
                                      ((x9281
                                        (letrec*
                                         ((x9282
                                           (letrec*
                                            ((x9283
                                              (letrec*
                                               ((x9284
                                                 (begin
                                                   (write '(funapp 4256 54))
                                                   (display "\n")
                                                   (listof TETRA/C))))
                                               (begin
                                                 (write '(funapp 4257 46))
                                                 (display "\n")
                                                 (and/c cons?/c x9284)))))
                                            (begin
                                              (write '(funapp 4258 43))
                                              (display "\n")
                                              (x9283 j7695 k7696 g7694)))))
                                         (begin
                                           (write '(funapp 4259 40))
                                           (display "\n")
                                           (f7697 x9282)))))
                                      (begin
                                        (write '(funapp 4260 37))
                                        (display "\n")
                                        (WORLD/C j7695 k7696 x9281)))))
                                   g9280))))
                              g9279))
                           xj7692
                           xk7693
                           world0))))
                      g9278)))
                   (x9276 (input)))
                  (begin
                    (write '(funapp 4268 19))
                    (display "\n")
                    (x9277 x9276)))))
               g8717))))
           g7734))))
       g7732)))
    g7731)))
