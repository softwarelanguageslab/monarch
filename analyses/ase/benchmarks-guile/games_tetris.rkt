(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7593 #t)) g7593)))
    (meta (lambda (v) (letrec* ((g7594 v)) g7594)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7595
          (letrec*
           ((g7596
             (letrec*
              ((x-e7597 lst))
              (letrec*
               ((v1742 x-e7597))
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
                   ((x-cnd7598
                     (begin
                       (write '(funapp 26 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7598
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
           g7596)))
        g7595)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7599 (lambda (v) (letrec* ((g7600 v)) g7600)))) g7599)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7601
          (letrec*
           ((x7602 (begin (write '(funapp 37 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 37 52)) (display "\n") (not x7602)))))
        g7601))))
   (letrec*
    ((g7603
      (letrec*
       ((g7604
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
           ((g7605 (begin (write '(funapp 53 19)) (display "\n") '()))
            (g7606
             (letrec*
              ((empty (begin (write '(funapp 56 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7607
                     (lambda (k j lst)
                       (letrec*
                        ((g7608
                          (begin
                            (write '(funapp 64 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7609
                                  (begin
                                    (write '(funapp 66 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7609))
                             lst))))
                        g7608))))
                   g7607)))
               (real?/c
                (lambda (g7259 g7260 g7261)
                  (letrec*
                   ((g7610
                     (letrec*
                      ((x-cnd7611
                        (begin
                          (write '(funapp 75 35))
                          (display "\n")
                          (real? g7261))))
                      (if x-cnd7611
                        g7261
                        (begin
                          (write '(blame g7259 76 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7259)))))))
                   g7610)))
               (boolean?/c
                (lambda (g7262 g7263 g7264)
                  (letrec*
                   ((g7612
                     (letrec*
                      ((x-cnd7613
                        (begin
                          (write '(funapp 83 35))
                          (display "\n")
                          (boolean? g7264))))
                      (if x-cnd7613
                        g7264
                        (begin
                          (write '(blame g7262 84 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7262)))))))
                   g7612)))
               (number?/c
                (lambda (g7265 g7266 g7267)
                  (letrec*
                   ((g7614
                     (letrec*
                      ((x-cnd7615
                        (begin
                          (write '(funapp 91 35))
                          (display "\n")
                          (number? g7267))))
                      (if x-cnd7615
                        g7267
                        (begin
                          (write '(blame g7265 92 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7265)))))))
                   g7614)))
               (any/c
                (lambda (g7268 g7269 g7270)
                  (letrec*
                   ((g7616
                     (letrec*
                      ((x-cnd7617
                        (begin
                          (write '(funapp 100 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7618 #t)) g7618)) g7270))))
                      (if x-cnd7617
                        g7270
                        (begin
                          (write '(blame g7268 101 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7268)))))))
                   g7616)))
               (any?/c
                (lambda (g7271 g7272 g7273)
                  (letrec*
                   ((g7619
                     (letrec*
                      ((x-cnd7620
                        (begin
                          (write '(funapp 109 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7621 #t)) g7621)) g7273))))
                      (if x-cnd7620
                        g7273
                        (begin
                          (write '(blame g7271 110 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7271)))))))
                   g7619)))
               (cons?/c
                (lambda (g7274 g7275 g7276)
                  (letrec*
                   ((g7622
                     (letrec*
                      ((x-cnd7623
                        (begin
                          (write '(funapp 117 35))
                          (display "\n")
                          (pair? g7276))))
                      (if x-cnd7623
                        g7276
                        (begin
                          (write '(blame g7274 118 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7274)))))))
                   g7622)))
               (pair?/c
                (lambda (g7277 g7278 g7279)
                  (letrec*
                   ((g7624
                     (letrec*
                      ((x-cnd7625
                        (begin
                          (write '(funapp 125 35))
                          (display "\n")
                          (pair? g7279))))
                      (if x-cnd7625
                        g7279
                        (begin
                          (write '(blame g7277 126 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7277)))))))
                   g7624)))
               (integer?/c
                (lambda (g7280 g7281 g7282)
                  (letrec*
                   ((g7626
                     (letrec*
                      ((x-cnd7627
                        (begin
                          (write '(funapp 133 35))
                          (display "\n")
                          (integer? g7282))))
                      (if x-cnd7627
                        g7282
                        (begin
                          (write '(blame g7280 134 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7280)))))))
                   g7626)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7628
                     (lambda (k j v)
                       (letrec*
                        ((g7629
                          (letrec*
                           ((x-cnd7630
                             (begin
                               (write '(funapp 144 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7630
                             (begin
                               (write '(funapp 145 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7629))))
                   g7628)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7631
                     (lambda (k j v)
                       (letrec*
                        ((g7632
                          (letrec*
                           ((x-cnd7633
                             (begin
                               (write '(funapp 156 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7633
                             (begin
                               (write '(funapp 158 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7637
                                (letrec*
                                 ((x7638
                                   (begin
                                     (write '(funapp 162 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 163 34))
                                   (display "\n")
                                   (contract k j x7638))))
                               (x7634
                                (letrec*
                                 ((x7636
                                   (begin
                                     (write '(funapp 166 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7635
                                   (begin
                                     (write '(funapp 166 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 167 34))
                                   (display "\n")
                                   (x7636 k j x7635)))))
                              (begin
                                (write '(funapp 168 31))
                                (display "\n")
                                (orig-cons x7637 x7634)))))))
                        g7632))))
                   g7631)))
               (any? (lambda (v) (letrec* ((g7639 #t)) g7639)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7640
                     (letrec*
                      ((x7641
                        (begin
                          (write '(funapp 175 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 175 55))
                        (display "\n")
                        (not x7641)))))
                   g7640)))
               (nonzero?/c
                (lambda (g7283 g7284 g7285)
                  (letrec*
                   ((g7642
                     (letrec*
                      ((x-cnd7643
                        (begin
                          (write '(funapp 183 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7644
                                (letrec*
                                 ((x7645
                                   (begin
                                     (write '(funapp 185 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 185 64))
                                   (display "\n")
                                   (not x7645)))))
                              g7644))
                           g7285))))
                      (if x-cnd7643
                        g7285
                        (begin
                          (write '(blame g7283 190 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7283)))))))
                   g7642)))
               (meta (lambda (v) (letrec* ((g7646 v)) g7646)))
               (+
                (begin
                  (write '(funapp 194 17))
                  (display "\n")
                  ((lambda (j7288 k7289 f7290)
                     (letrec*
                      ((g7648
                        (lambda (g7286 g7287)
                          (letrec*
                           ((g7649
                             (letrec*
                              ((x7650
                                (letrec*
                                 ((x7652
                                   (begin
                                     (write '(funapp 203 40))
                                     (display "\n")
                                     (number?/c j7288 k7289 g7286)))
                                  (x7651
                                   (begin
                                     (write '(funapp 204 40))
                                     (display "\n")
                                     (number?/c j7288 k7289 g7287))))
                                 (begin
                                   (write '(funapp 205 32))
                                   (display "\n")
                                   (f7290 x7652 x7651)))))
                              (begin
                                (write '(funapp 206 29))
                                (display "\n")
                                (number?/c j7288 k7289 x7650)))))
                           g7649))))
                      g7648))
                   (begin (write '(funapp 209 17)) (display "\n") 'server)
                   (begin (write '(funapp 210 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7647
                        (begin
                          (write '(funapp 211 49))
                          (display "\n")
                          (orig-+ a b))))
                      g7647)))))
               (-
                (begin
                  (write '(funapp 213 17))
                  (display "\n")
                  ((lambda (j7293 k7294 f7295)
                     (letrec*
                      ((g7654
                        (lambda (g7291 g7292)
                          (letrec*
                           ((g7655
                             (letrec*
                              ((x7656
                                (letrec*
                                 ((x7658
                                   (begin
                                     (write '(funapp 222 40))
                                     (display "\n")
                                     (number?/c j7293 k7294 g7291)))
                                  (x7657
                                   (begin
                                     (write '(funapp 223 40))
                                     (display "\n")
                                     (number?/c j7293 k7294 g7292))))
                                 (begin
                                   (write '(funapp 224 32))
                                   (display "\n")
                                   (f7295 x7658 x7657)))))
                              (begin
                                (write '(funapp 225 29))
                                (display "\n")
                                (number?/c j7293 k7294 x7656)))))
                           g7655))))
                      g7654))
                   (begin (write '(funapp 228 17)) (display "\n") 'server)
                   (begin (write '(funapp 229 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7653
                        (begin
                          (write '(funapp 230 49))
                          (display "\n")
                          (orig-- a b))))
                      g7653)))))
               (*
                (begin
                  (write '(funapp 232 17))
                  (display "\n")
                  ((lambda (j7298 k7299 f7300)
                     (letrec*
                      ((g7660
                        (lambda (g7296 g7297)
                          (letrec*
                           ((g7661
                             (letrec*
                              ((x7662
                                (letrec*
                                 ((x7664
                                   (begin
                                     (write '(funapp 241 40))
                                     (display "\n")
                                     (number?/c j7298 k7299 g7296)))
                                  (x7663
                                   (begin
                                     (write '(funapp 242 40))
                                     (display "\n")
                                     (number?/c j7298 k7299 g7297))))
                                 (begin
                                   (write '(funapp 243 32))
                                   (display "\n")
                                   (f7300 x7664 x7663)))))
                              (begin
                                (write '(funapp 244 29))
                                (display "\n")
                                (number?/c j7298 k7299 x7662)))))
                           g7661))))
                      g7660))
                   (begin (write '(funapp 247 17)) (display "\n") 'server)
                   (begin (write '(funapp 248 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7659
                        (begin
                          (write '(funapp 249 49))
                          (display "\n")
                          (orig-* a b))))
                      g7659)))))
               (/
                (begin
                  (write '(funapp 251 17))
                  (display "\n")
                  ((lambda (j7303 k7304 f7305)
                     (letrec*
                      ((g7666
                        (lambda (g7301 g7302)
                          (letrec*
                           ((g7667
                             (letrec*
                              ((x7668
                                (letrec*
                                 ((x7670
                                   (begin
                                     (write '(funapp 260 40))
                                     (display "\n")
                                     (number?/c j7303 k7304 g7301)))
                                  (x7669
                                   (begin
                                     (write '(funapp 261 40))
                                     (display "\n")
                                     (number?/c j7303 k7304 g7302))))
                                 (begin
                                   (write '(funapp 262 32))
                                   (display "\n")
                                   (f7305 x7670 x7669)))))
                              (begin
                                (write '(funapp 263 29))
                                (display "\n")
                                (number?/c j7303 k7304 x7668)))))
                           g7667))))
                      g7666))
                   (begin (write '(funapp 266 17)) (display "\n") 'server)
                   (begin (write '(funapp 267 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7665
                        (begin
                          (write '(funapp 268 49))
                          (display "\n")
                          (orig-/ a b))))
                      g7665)))))
               (car
                (begin
                  (write '(funapp 270 17))
                  (display "\n")
                  ((lambda (j7307 k7308 f7309)
                     (letrec*
                      ((g7672
                        (lambda (g7306)
                          (letrec*
                           ((g7673
                             (letrec*
                              ((x7674
                                (letrec*
                                 ((x7675
                                   (begin
                                     (write '(funapp 279 40))
                                     (display "\n")
                                     (pair?/c j7307 k7308 g7306))))
                                 (begin
                                   (write '(funapp 280 32))
                                   (display "\n")
                                   (f7309 x7675)))))
                              (begin
                                (write '(funapp 281 29))
                                (display "\n")
                                (any/c j7307 k7308 x7674)))))
                           g7673))))
                      g7672))
                   (begin (write '(funapp 284 17)) (display "\n") 'server)
                   (begin (write '(funapp 285 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7671
                        (begin
                          (write '(funapp 286 47))
                          (display "\n")
                          (orig-car p))))
                      g7671)))))
               (cdr
                (begin
                  (write '(funapp 288 17))
                  (display "\n")
                  ((lambda (j7311 k7312 f7313)
                     (letrec*
                      ((g7677
                        (lambda (g7310)
                          (letrec*
                           ((g7678
                             (letrec*
                              ((x7679
                                (letrec*
                                 ((x7680
                                   (begin
                                     (write '(funapp 297 40))
                                     (display "\n")
                                     (pair?/c j7311 k7312 g7310))))
                                 (begin
                                   (write '(funapp 298 32))
                                   (display "\n")
                                   (f7313 x7680)))))
                              (begin
                                (write '(funapp 299 29))
                                (display "\n")
                                (any/c j7311 k7312 x7679)))))
                           g7678))))
                      g7677))
                   (begin (write '(funapp 302 17)) (display "\n") 'server)
                   (begin (write '(funapp 303 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7676
                        (begin
                          (write '(funapp 304 47))
                          (display "\n")
                          (orig-cdr p))))
                      g7676)))))
               (cons
                (begin
                  (write '(funapp 306 17))
                  (display "\n")
                  ((lambda (j7316 k7317 f7318)
                     (letrec*
                      ((g7682
                        (lambda (g7314 g7315)
                          (letrec*
                           ((g7683
                             (letrec*
                              ((x7684
                                (letrec*
                                 ((x7686
                                   (begin
                                     (write '(funapp 315 40))
                                     (display "\n")
                                     (any/c j7316 k7317 g7314)))
                                  (x7685
                                   (begin
                                     (write '(funapp 316 40))
                                     (display "\n")
                                     (any/c j7316 k7317 g7315))))
                                 (begin
                                   (write '(funapp 317 32))
                                   (display "\n")
                                   (f7318 x7686 x7685)))))
                              (begin
                                (write '(funapp 318 29))
                                (display "\n")
                                (pair?/c j7316 k7317 x7684)))))
                           g7683))))
                      g7682))
                   (begin (write '(funapp 321 17)) (display "\n") 'server)
                   (begin (write '(funapp 322 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7681
                        (begin
                          (write '(funapp 323 49))
                          (display "\n")
                          (orig-cons a b))))
                      g7681)))))
               (vector-ref
                (begin
                  (write '(funapp 325 17))
                  (display "\n")
                  ((lambda (j7320 k7321 f7322)
                     (letrec*
                      ((g7688
                        (lambda (g7319)
                          (letrec*
                           ((g7689
                             (letrec*
                              ((x7690
                                (letrec*
                                 ((x7691
                                   (begin
                                     (write '(funapp 334 40))
                                     (display "\n")
                                     (vector?/c j7320 k7321 g7319))))
                                 (begin
                                   (write '(funapp 335 32))
                                   (display "\n")
                                   (f7322 x7691)))))
                              (begin
                                (write '(funapp 336 29))
                                (display "\n")
                                (integer?/c j7320 k7321 x7690)))))
                           g7689))))
                      g7688))
                   (begin (write '(funapp 339 17)) (display "\n") 'server)
                   (begin (write '(funapp 340 17)) (display "\n") 'client)
                   (lambda (v i)
                     (letrec*
                      ((g7687
                        (begin
                          (write '(funapp 342 37))
                          (display "\n")
                          (orig-vector-ref v i))))
                      g7687)))))
               (vector-set!
                (begin
                  (write '(funapp 344 17))
                  (display "\n")
                  ((lambda (j7325 k7326 f7327)
                     (letrec*
                      ((g7693
                        (lambda (g7323 g7324)
                          (letrec*
                           ((g7694
                             (letrec*
                              ((x7695
                                (letrec*
                                 ((x7697
                                   (begin
                                     (write '(funapp 353 40))
                                     (display "\n")
                                     (vector?/c j7325 k7326 g7323)))
                                  (x7696
                                   (begin
                                     (write '(funapp 354 40))
                                     (display "\n")
                                     (integer?/c j7325 k7326 g7324))))
                                 (begin
                                   (write '(funapp 355 32))
                                   (display "\n")
                                   (f7327 x7697 x7696)))))
                              (begin
                                (write '(funapp 356 29))
                                (display "\n")
                                (any/c j7325 k7326 x7695)))))
                           g7694))))
                      g7693))
                   (begin (write '(funapp 359 17)) (display "\n") 'server)
                   (begin (write '(funapp 360 17)) (display "\n") 'client)
                   (lambda (vec i v)
                     (letrec*
                      ((g7692
                        (begin
                          (write '(funapp 362 37))
                          (display "\n")
                          (orig-vector-set! vec i v))))
                      g7692)))))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7698
                     (if cnd
                       (begin (write '(funapp 366 35)) (display "\n") '())
                       (begin
                         (write '(funapp 366 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7698)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7699
                     (letrec*
                      ((x7700
                        (letrec*
                         ((x7701
                           (begin
                             (write '(funapp 373 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 373 58))
                           (display "\n")
                           (cdr x7701)))))
                      (begin
                        (write '(funapp 374 23))
                        (display "\n")
                        (cdr x7700)))))
                   g7699)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7702
                     (letrec*
                      ((x7705
                        (begin
                          (write '(funapp 380 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 380 62))
                        (display "\n")
                        (assert x7705))))
                    (g7703
                     (letrec*
                      ((x7706
                        (begin
                          (write '(funapp 381 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 381 57))
                        (display "\n")
                        (assert x7706))))
                    (g7704
                     (letrec*
                      ((x-cnd7707
                        (begin
                          (write '(funapp 384 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7707
                        (begin (write '(funapp 386 24)) (display "\n") '())
                        (letrec*
                         ((x7710
                           (letrec*
                            ((x7711
                              (begin
                                (write '(funapp 388 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 388 61))
                              (display "\n")
                              (f x7711))))
                          (x7708
                           (letrec*
                            ((x7709
                              (begin
                                (write '(funapp 389 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 389 61))
                              (display "\n")
                              (map f x7709)))))
                         (begin
                           (write '(funapp 390 26))
                           (display "\n")
                           (cons x7710 x7708)))))))
                   g7704)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7712
                     (letrec*
                      ((x7713
                        (begin
                          (write '(funapp 395 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 395 55))
                        (display "\n")
                        (cdr x7713)))))
                   g7712)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7714
                     (letrec*
                      ((x7715
                        (letrec*
                         ((x7716
                           (letrec*
                            ((x7717
                              (begin
                                (write '(funapp 404 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 404 61))
                              (display "\n")
                              (car x7717)))))
                         (begin
                           (write '(funapp 405 26))
                           (display "\n")
                           (cdr x7716)))))
                      (begin
                        (write '(funapp 406 23))
                        (display "\n")
                        (car x7715)))))
                   g7714)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7718
                     (letrec*
                      ((x7719
                        (letrec*
                         ((x7720
                           (letrec*
                            ((x7721
                              (begin
                                (write '(funapp 415 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 415 61))
                              (display "\n")
                              (cdr x7721)))))
                         (begin
                           (write '(funapp 416 26))
                           (display "\n")
                           (car x7720)))))
                      (begin
                        (write '(funapp 417 23))
                        (display "\n")
                        (cdr x7719)))))
                   g7718)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7722
                     (letrec*
                      ((x7725
                        (begin
                          (write '(funapp 423 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 423 60))
                        (display "\n")
                        (assert x7725))))
                    (g7723
                     (letrec*
                      ((x7726
                        (begin
                          (write '(funapp 425 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 425 59))
                        (display "\n")
                        (assert x7726))))
                    (g7724
                     (letrec*
                      ((output-port
                        (begin
                          (write '(funapp 428 37))
                          (display "\n")
                          (open-output-file filename)))
                       (res
                        (begin
                          (write '(funapp 429 29))
                          (display "\n")
                          (proc output-port))))
                      (letrec*
                       ((g7727
                         (begin
                           (write '(funapp 431 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7728 res))
                       g7728))))
                   g7724)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7729
                     (letrec*
                      ((x7730
                        (letrec*
                         ((x7731
                           (begin
                             (write '(funapp 439 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 439 58))
                           (display "\n")
                           (cdr x7731)))))
                      (begin
                        (write '(funapp 440 23))
                        (display "\n")
                        (car x7730)))))
                   g7729)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7732
                     (letrec*
                      ((x7733
                        (letrec*
                         ((x7734
                           (letrec*
                            ((x7735
                              (begin
                                (write '(funapp 449 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 449 61))
                              (display "\n")
                              (car x7735)))))
                         (begin
                           (write '(funapp 450 26))
                           (display "\n")
                           (car x7734)))))
                      (begin
                        (write '(funapp 451 23))
                        (display "\n")
                        (cdr x7733)))))
                   g7732)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7736
                     (letrec*
                      ((x7738
                        (begin
                          (write '(funapp 456 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 456 57))
                        (display "\n")
                        (assert x7738))))
                    (g7737
                     (letrec*
                      ((x-cnd7739
                        (begin
                          (write '(funapp 459 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7739
                        #f
                        (letrec*
                         ((x-cnd7740
                           (letrec*
                            ((x7741
                              (begin
                                (write '(funapp 464 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 464 56))
                              (display "\n")
                              (eq? x7741 k)))))
                         (if x-cnd7740
                           (begin
                             (write '(funapp 466 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7742
                              (begin
                                (write '(funapp 467 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 467 55))
                              (display "\n")
                              (assq k x7742)))))))))
                   g7737)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7743
                     (letrec*
                      ((x7744
                        (begin
                          (write '(funapp 472 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 472 60))
                        (display "\n")
                        (= 0 x7744)))))
                   g7743)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7745
                     (letrec*
                      ((x7747
                        (begin
                          (write '(funapp 477 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 477 57))
                        (display "\n")
                        (assert x7747))))
                    (g7746
                     (letrec*
                      ((x-cnd7748
                        (begin
                          (write '(funapp 480 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7748
                        ""
                        (letrec*
                         ((x7751
                           (letrec*
                            ((x7752
                              (begin
                                (write '(funapp 485 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 485 55))
                              (display "\n")
                              (char->string x7752))))
                          (x7749
                           (letrec*
                            ((x7750
                              (begin
                                (write '(funapp 487 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 487 55))
                              (display "\n")
                              (list->string x7750)))))
                         (begin
                           (write '(funapp 488 26))
                           (display "\n")
                           (string-append x7751 x7749)))))))
                   g7746)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7753
                     (letrec*
                      ((x7756
                        (begin
                          (write '(funapp 493 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 493 58))
                        (display "\n")
                        (assert x7756))))
                    (g7754
                     (letrec*
                      ((x7757
                        (begin
                          (write '(funapp 494 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 494 58))
                        (display "\n")
                        (assert x7757))))
                    (g7755
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 497 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7758
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 499 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7758))))
                   g7755)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7759
                     (letrec*
                      ((x7760
                        (letrec*
                         ((x7761
                           (letrec*
                            ((x7762
                              (begin
                                (write '(funapp 509 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 509 61))
                              (display "\n")
                              (cdr x7762)))))
                         (begin
                           (write '(funapp 510 26))
                           (display "\n")
                           (cdr x7761)))))
                      (begin
                        (write '(funapp 511 23))
                        (display "\n")
                        (cdr x7760)))))
                   g7759)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7763
                     (letrec*
                      ((x7766
                        (begin
                          (write '(funapp 516 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 516 57))
                        (display "\n")
                        (assert x7766))))
                    (g7764
                     (letrec*
                      ((x7767
                        (begin
                          (write '(funapp 517 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 517 57))
                        (display "\n")
                        (assert x7767))))
                    (g7765
                     (letrec*
                      ((x-cnd7768
                        (begin
                          (write '(funapp 520 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7768
                        x
                        (letrec*
                         ((x7770
                           (begin
                             (write '(funapp 524 34))
                             (display "\n")
                             (cdr x)))
                          (x7769
                           (begin
                             (write '(funapp 524 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 525 26))
                           (display "\n")
                           (list-tail x7770 x7769)))))))
                   g7765)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7771
                     (begin (write '(funapp 527 49)) (display "\n") '())))
                   g7771)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7772
                     (letrec*
                      ((x-cnd7773
                        (letrec*
                         ((x7774 #\a))
                         (begin
                           (write '(funapp 534 48))
                           (display "\n")
                           (char-ci>=? c x7774)))))
                      (if x-cnd7773
                        (letrec*
                         ((x7775 #\z))
                         (begin
                           (write '(funapp 536 48))
                           (display "\n")
                           (char-ci<=? c x7775)))
                        #f))))
                   g7772)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7776
                     (letrec*
                      ((x7778
                        (begin
                          (write '(funapp 542 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 542 59))
                        (display "\n")
                        (assert x7778))))
                    (g7777
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 545 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7779
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 551 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7780 (if val7243 val7243 #f)))
                             g7780)))))
                       g7779))))
                   g7777)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7781
                     (letrec*
                      ((val7244
                        (letrec*
                         ((x7782
                           (begin
                             (write '(funapp 563 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 563 62))
                           (display "\n")
                           (= x7782 9)))))
                      (letrec*
                       ((g7783
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (letrec*
                               ((x7784
                                 (begin
                                   (write '(funapp 571 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 572 32))
                                 (display "\n")
                                 (= x7784 10)))))
                            (letrec*
                             ((g7785
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7786
                                    (begin
                                      (write '(funapp 578 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 579 35))
                                    (display "\n")
                                    (= x7786 32))))))
                             g7785)))))
                       g7783))))
                   g7781)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7787
                     (letrec*
                      ((x7788
                        (letrec*
                         ((x7789
                           (begin
                             (write '(funapp 588 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 588 58))
                           (display "\n")
                           (cdr x7789)))))
                      (begin
                        (write '(funapp 589 23))
                        (display "\n")
                        (cdr x7788)))))
                   g7787)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7790
                     (letrec*
                      ((x7792
                        (begin
                          (write '(funapp 594 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 594 59))
                        (display "\n")
                        (assert x7792))))
                    (g7791
                     (begin (write '(funapp 595 28)) (display "\n") (> x 0))))
                   g7791)))
               ($pc (begin (write '(funapp 597 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7793 #f)) g7793)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7794
                     (letrec*
                      ((x7795
                        (begin
                          (write '(funapp 603 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 603 55))
                        (display "\n")
                        (cdr x7795)))))
                   g7794)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7796
                     (letrec*
                      ((x7798
                        (begin
                          (write '(funapp 608 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 608 59))
                        (display "\n")
                        (assert x7798))))
                    (g7797
                     (letrec*
                      ((x-cnd7799
                        (begin
                          (write '(funapp 611 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7799
                        (begin
                          (write '(funapp 612 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 612 49))
                          (display "\n")
                          (floor x))))))
                   g7797)))
               ($cmp (begin (write '(funapp 614 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7800
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 620 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7801
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x7803
                                 (begin
                                   (write '(funapp 628 40))
                                   (display "\n")
                                   (null? a)))
                                (x7802
                                 (begin
                                   (write '(funapp 628 58))
                                   (display "\n")
                                   (null? b))))
                               (begin
                                 (write '(funapp 629 32))
                                 (display "\n")
                                 (and x7803 x7802)))))
                            (letrec*
                             ((g7804
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x7807
                                       (begin
                                         (write '(funapp 637 46))
                                         (display "\n")
                                         (string? a)))
                                      (x7806
                                       (begin
                                         (write '(funapp 638 46))
                                         (display "\n")
                                         (string? b)))
                                      (x7805
                                       (begin
                                         (write '(funapp 639 46))
                                         (display "\n")
                                         (string=? a b))))
                                     (begin
                                       (write '(funapp 640 38))
                                       (display "\n")
                                       (and x7807 x7806 x7805)))))
                                  (letrec*
                                   ((g7808
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x7816
                                             (begin
                                               (write '(funapp 648 52))
                                               (display "\n")
                                               (pair? a)))
                                            (x7815
                                             (begin
                                               (write '(funapp 649 52))
                                               (display "\n")
                                               (pair? b)))
                                            (x7812
                                             (letrec*
                                              ((x7814
                                                (begin
                                                  (write '(funapp 652 55))
                                                  (display "\n")
                                                  (car a)))
                                               (x7813
                                                (begin
                                                  (write '(funapp 652 71))
                                                  (display "\n")
                                                  (car b))))
                                              (begin
                                                (write '(funapp 653 47))
                                                (display "\n")
                                                (equal? x7814 x7813))))
                                            (x7809
                                             (letrec*
                                              ((x7811
                                                (begin
                                                  (write '(funapp 656 55))
                                                  (display "\n")
                                                  (cdr a)))
                                               (x7810
                                                (begin
                                                  (write '(funapp 656 71))
                                                  (display "\n")
                                                  (cdr b))))
                                              (begin
                                                (write '(funapp 657 47))
                                                (display "\n")
                                                (equal? x7811 x7810)))))
                                           (begin
                                             (write '(funapp 658 44))
                                             (display "\n")
                                             (and x7816 x7815 x7812 x7809)))))
                                        (letrec*
                                         ((g7817
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x7833
                                                (begin
                                                  (write '(funapp 664 55))
                                                  (display "\n")
                                                  (vector? a)))
                                               (x7832
                                                (begin
                                                  (write '(funapp 665 55))
                                                  (display "\n")
                                                  (vector? b)))
                                               (x7818
                                                (letrec*
                                                 ((n
                                                   (begin
                                                     (write '(funapp 668 54))
                                                     (display "\n")
                                                     (vector-length a))))
                                                 (letrec*
                                                  ((g7819
                                                    (letrec*
                                                     ((x7830
                                                       (letrec*
                                                        ((x7831
                                                          (begin
                                                            (write
                                                             '(funapp 675 59))
                                                            (display "\n")
                                                            (vector-length
                                                             b))))
                                                        (begin
                                                          (write
                                                           '(funapp 676 57))
                                                          (display "\n")
                                                          (= x7831 n))))
                                                      (x7820
                                                       (letrec*
                                                        ((loop
                                                          (lambda (i)
                                                            (letrec*
                                                             ((g7821
                                                               (letrec*
                                                                ((x7828
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       685
                                                                       67))
                                                                    (display
                                                                     "\n")
                                                                    (= i n)))
                                                                 (x7822
                                                                  (letrec*
                                                                   ((x7825
                                                                     (letrec*
                                                                      ((x7827
                                                                        (begin
                                                                          (write
                                                                           '(funapp
                                                                             691
                                                                             73))
                                                                          (display
                                                                           "\n")
                                                                          (vector-ref
                                                                           a
                                                                           i)))
                                                                       (x7826
                                                                        (begin
                                                                          (write
                                                                           '(funapp
                                                                             695
                                                                             73))
                                                                          (display
                                                                           "\n")
                                                                          (vector-ref
                                                                           b
                                                                           i))))
                                                                      (begin
                                                                        (write
                                                                         '(funapp
                                                                           698
                                                                           71))
                                                                        (display
                                                                         "\n")
                                                                        (equal?
                                                                         x7827
                                                                         x7826))))
                                                                    (x7823
                                                                     (letrec*
                                                                      ((x7824
                                                                        (begin
                                                                          (write
                                                                           '(funapp
                                                                             704
                                                                             73))
                                                                          (display
                                                                           "\n")
                                                                          (+
                                                                           i
                                                                           1))))
                                                                      (begin
                                                                        (write
                                                                         '(funapp
                                                                           707
                                                                           71))
                                                                        (display
                                                                         "\n")
                                                                        (loop
                                                                         x7824)))))
                                                                   (begin
                                                                     (write
                                                                      '(funapp
                                                                        709
                                                                        68))
                                                                     (display
                                                                      "\n")
                                                                     (and x7825
                                                                          x7823)))))
                                                                (begin
                                                                  (write
                                                                   '(funapp
                                                                     711
                                                                     65))
                                                                  (display
                                                                   "\n")
                                                                  (or x7828
                                                                      x7822)))))
                                                             g7821))))
                                                        (letrec*
                                                         ((g7829
                                                           (begin
                                                             (write
                                                              '(funapp 715 66))
                                                             (display "\n")
                                                             (loop 0))))
                                                         g7829))))
                                                     (begin
                                                       (write '(funapp 717 54))
                                                       (display "\n")
                                                       (and x7830 x7820)))))
                                                  g7819))))
                                              (begin
                                                (write '(funapp 719 47))
                                                (display "\n")
                                                (and x7833 x7832 x7818))))))
                                         g7817)))))
                                   g7808)))))
                             g7804)))))
                       g7801))))
                   g7800)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7834
                     (letrec*
                      ((x7835
                        (letrec*
                         ((x7836
                           (letrec*
                            ((x7837
                              (begin
                                (write '(funapp 732 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 732 61))
                              (display "\n")
                              (car x7837)))))
                         (begin
                           (write '(funapp 733 26))
                           (display "\n")
                           (car x7836)))))
                      (begin
                        (write '(funapp 734 23))
                        (display "\n")
                        (cdr x7835)))))
                   g7834)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7838
                     (letrec*
                      ((x7839
                        (letrec*
                         ((x7840
                           (letrec*
                            ((x7841
                              (begin
                                (write '(funapp 743 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 743 61))
                              (display "\n")
                              (cdr x7841)))))
                         (begin
                           (write '(funapp 744 26))
                           (display "\n")
                           (car x7840)))))
                      (begin
                        (write '(funapp 745 23))
                        (display "\n")
                        (car x7839)))))
                   g7838)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7842
                     (begin
                       (write '(funapp 747 53))
                       (display "\n")
                       (eq? x y))))
                   g7842)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7843
                     (letrec*
                      ((x7845
                        (begin
                          (write '(funapp 751 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 751 59))
                        (display "\n")
                        (assert x7845))))
                    (g7844
                     (letrec*
                      ((val7250
                        (begin
                          (write '(funapp 754 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7846
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (begin
                                (write '(funapp 760 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7847 (if val7251 val7251 #f)))
                             g7847)))))
                       g7846))))
                   g7844)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7848
                     (letrec*
                      ((x7851
                        (begin
                          (write '(funapp 770 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 770 60))
                        (display "\n")
                        (assert x7851))))
                    (g7849
                     (letrec*
                      ((x7852
                        (begin
                          (write '(funapp 772 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 772 59))
                        (display "\n")
                        (assert x7852))))
                    (g7850
                     (letrec*
                      ((input-port
                        (begin
                          (write '(funapp 775 36))
                          (display "\n")
                          (open-input-file filename)))
                       (res
                        (begin
                          (write '(funapp 776 29))
                          (display "\n")
                          (proc input-port))))
                      (letrec*
                       ((g7853
                         (begin
                           (write '(funapp 778 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7854 res))
                       g7854))))
                   g7850)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7855
                     (begin
                       (write '(funapp 781 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 781 57)) (display "\n") '())))))
                   g7855)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7856
                     (letrec*
                      ((x7859
                        (begin
                          (write '(funapp 785 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 785 58))
                        (display "\n")
                        (assert x7859))))
                    (g7857
                     (letrec*
                      ((x7860
                        (begin
                          (write '(funapp 786 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 786 58))
                        (display "\n")
                        (assert x7860))))
                    (g7858
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 789 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7861
                         (if val7252
                           val7252
                           (begin
                             (write '(funapp 791 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7861))))
                   g7858)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7862
                     (letrec*
                      ((x7863
                        (letrec*
                         ((x7864
                           (begin
                             (write '(funapp 799 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 799 58))
                           (display "\n")
                           (car x7864)))))
                      (begin
                        (write '(funapp 800 23))
                        (display "\n")
                        (cdr x7863)))))
                   g7862)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7865
                     (letrec*
                      ((x7866
                        (letrec*
                         ((x7867
                           (letrec*
                            ((x7868
                              (begin
                                (write '(funapp 809 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 809 61))
                              (display "\n")
                              (cdr x7868)))))
                         (begin
                           (write '(funapp 810 26))
                           (display "\n")
                           (car x7867)))))
                      (begin
                        (write '(funapp 811 23))
                        (display "\n")
                        (cdr x7866)))))
                   g7865)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7869
                     (letrec*
                      ((x7870
                        (letrec*
                         ((x7871
                           (begin
                             (write '(funapp 819 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 819 58))
                           (display "\n")
                           (cdr x7871)))))
                      (begin
                        (write '(funapp 820 23))
                        (display "\n")
                        (car x7870)))))
                   g7869)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7872
                     (letrec*
                      ((x7873
                        (letrec*
                         ((x7874
                           (begin
                             (write '(funapp 827 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 827 58))
                           (display "\n")
                           (car x7874)))))
                      (begin
                        (write '(funapp 828 23))
                        (display "\n")
                        (car x7873)))))
                   g7872)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7875
                     (letrec*
                      ((x7878
                        (begin
                          (write '(funapp 833 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 833 58))
                        (display "\n")
                        (assert x7878))))
                    (g7876
                     (letrec*
                      ((x7879
                        (begin
                          (write '(funapp 834 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 834 58))
                        (display "\n")
                        (assert x7879))))
                    (g7877
                     (letrec*
                      ((x7880
                        (begin
                          (write '(funapp 835 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 835 66))
                        (display "\n")
                        (not x7880)))))
                   g7877)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7881
                     (letrec*
                      ((x7882
                        (letrec*
                         ((x7883
                           (letrec*
                            ((x7884
                              (begin
                                (write '(funapp 845 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 845 61))
                              (display "\n")
                              (car x7884)))))
                         (begin
                           (write '(funapp 846 26))
                           (display "\n")
                           (car x7883)))))
                      (begin
                        (write '(funapp 847 23))
                        (display "\n")
                        (car x7882)))))
                   g7881)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7885
                     (letrec*
                      ((x7887
                        (begin
                          (write '(funapp 852 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 852 59))
                        (display "\n")
                        (assert x7887))))
                    (g7886
                     (begin (write '(funapp 853 28)) (display "\n") (< x 0))))
                   g7886)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7888
                     (begin
                       (write '(funapp 855 53))
                       (display "\n")
                       (memq e l))))
                   g7888)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7889
                     (letrec*
                      ((x7890
                        (letrec*
                         ((x7891
                           (begin
                             (write '(funapp 861 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 861 58))
                           (display "\n")
                           (car x7891)))))
                      (begin
                        (write '(funapp 862 23))
                        (display "\n")
                        (car x7890)))))
                   g7889)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7892
                     (begin (write '(funapp 864 51)) (display "\n") '())))
                   g7892)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7893
                     (letrec*
                      ((x7895
                        (begin
                          (write '(funapp 868 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 868 57))
                        (display "\n")
                        (assert x7895))))
                    (g7894
                     (letrec*
                      ((x-cnd7896
                        (begin
                          (write '(funapp 871 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7896
                        (begin (write '(funapp 873 24)) (display "\n") '())
                        (letrec*
                         ((x7899
                           (letrec*
                            ((x7900
                              (begin
                                (write '(funapp 875 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 875 61))
                              (display "\n")
                              (reverse x7900))))
                          (x7897
                           (letrec*
                            ((x7898
                              (begin
                                (write '(funapp 876 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 876 61))
                              (display "\n")
                              (list x7898)))))
                         (begin
                           (write '(funapp 877 26))
                           (display "\n")
                           (append x7899 x7897)))))))
                   g7894)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7901
                     (letrec*
                      ((x7902
                        (letrec*
                         ((x7903
                           (letrec*
                            ((x7904
                              (begin
                                (write '(funapp 886 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 886 61))
                              (display "\n")
                              (car x7904)))))
                         (begin
                           (write '(funapp 887 26))
                           (display "\n")
                           (car x7903)))))
                      (begin
                        (write '(funapp 888 23))
                        (display "\n")
                        (car x7902)))))
                   g7901)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7905
                     (letrec*
                      ((x7906
                        (letrec*
                         ((x7907
                           (letrec*
                            ((x7908
                              (begin
                                (write '(funapp 897 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 897 61))
                              (display "\n")
                              (car x7908)))))
                         (begin
                           (write '(funapp 898 26))
                           (display "\n")
                           (cdr x7907)))))
                      (begin
                        (write '(funapp 899 23))
                        (display "\n")
                        (cdr x7906)))))
                   g7905)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7909
                     (letrec*
                      ((x7911
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 904 59))
                        (display "\n")
                        (assert x7911))))
                    (g7910
                     (letrec*
                      ((x7912
                        (begin
                          (write '(funapp 905 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 905 60))
                        (display "\n")
                        (= 1 x7912)))))
                   g7910)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7913
                     (letrec*
                      ((x7914
                        (letrec*
                         ((x7915
                           (letrec*
                            ((x7916
                              (begin
                                (write '(funapp 914 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 914 61))
                              (display "\n")
                              (cdr x7916)))))
                         (begin
                           (write '(funapp 915 26))
                           (display "\n")
                           (car x7915)))))
                      (begin
                        (write '(funapp 916 23))
                        (display "\n")
                        (car x7914)))))
                   g7913)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7917
                     (letrec*
                      ((x7920
                        (begin
                          (write '(funapp 922 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 922 59))
                        (display "\n")
                        (assert x7920))))
                    (g7918
                     (letrec*
                      ((x7921
                        (begin
                          (write '(funapp 923 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 923 60))
                        (display "\n")
                        (assert x7921))))
                    (g7919
                     (letrec*
                      ((x-cnd7922
                        (begin
                          (write '(funapp 926 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7922
                        (letrec*
                         ((g7923
                           (begin
                             (write '(funapp 928 42))
                             (display "\n")
                             (proc))))
                         g7923)
                        (letrec*
                         ((x-cnd7924
                           (letrec*
                            ((x7925
                              (begin
                                (write '(funapp 931 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 931 58))
                              (display "\n")
                              (null? x7925)))))
                         (if x-cnd7924
                           (letrec*
                            ((g7926
                              (letrec*
                               ((x7927
                                 (begin
                                   (write '(funapp 935 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 935 61))
                                 (display "\n")
                                 (proc x7927)))))
                            g7926)
                           (letrec*
                            ((x-cnd7928
                              (letrec*
                               ((x7929
                                 (begin
                                   (write '(funapp 939 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 939 62))
                                 (display "\n")
                                 (null? x7929)))))
                            (if x-cnd7928
                              (letrec*
                               ((g7930
                                 (letrec*
                                  ((x7932
                                    (begin
                                      (write '(funapp 944 43))
                                      (display "\n")
                                      (car args)))
                                   (x7931
                                    (begin
                                      (write '(funapp 944 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 945 35))
                                    (display "\n")
                                    (proc x7932 x7931)))))
                               g7930)
                              (letrec*
                               ((x-cnd7933
                                 (letrec*
                                  ((x7934
                                    (begin
                                      (write '(funapp 950 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 951 35))
                                    (display "\n")
                                    (null? x7934)))))
                               (if x-cnd7933
                                 (letrec*
                                  ((g7935
                                    (letrec*
                                     ((x7938
                                       (begin
                                         (write '(funapp 956 46))
                                         (display "\n")
                                         (car args)))
                                      (x7937
                                       (begin
                                         (write '(funapp 957 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7936
                                       (begin
                                         (write '(funapp 958 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 959 38))
                                       (display "\n")
                                       (proc x7938 x7937 x7936)))))
                                  g7935)
                                 (letrec*
                                  ((x-cnd7939
                                    (letrec*
                                     ((x7940
                                       (begin
                                         (write '(funapp 964 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 965 38))
                                       (display "\n")
                                       (null? x7940)))))
                                  (if x-cnd7939
                                    (letrec*
                                     ((g7941
                                       (letrec*
                                        ((x7945
                                          (begin
                                            (write '(funapp 970 49))
                                            (display "\n")
                                            (car args)))
                                         (x7944
                                          (begin
                                            (write '(funapp 971 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7943
                                          (begin
                                            (write '(funapp 972 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7942
                                          (begin
                                            (write '(funapp 973 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 974 41))
                                          (display "\n")
                                          (proc x7945 x7944 x7943 x7942)))))
                                     g7941)
                                    (letrec*
                                     ((x-cnd7946
                                       (letrec*
                                        ((x7947
                                          (letrec*
                                           ((x7948
                                             (begin
                                               (write '(funapp 981 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 982 44))
                                             (display "\n")
                                             (cdr x7948)))))
                                        (begin
                                          (write '(funapp 983 41))
                                          (display "\n")
                                          (null? x7947)))))
                                     (if x-cnd7946
                                       (letrec*
                                        ((g7949
                                          (letrec*
                                           ((x7955
                                             (begin
                                               (write '(funapp 988 52))
                                               (display "\n")
                                               (car args)))
                                            (x7954
                                             (begin
                                               (write '(funapp 989 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7953
                                             (begin
                                               (write '(funapp 990 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7952
                                             (begin
                                               (write '(funapp 991 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7950
                                             (letrec*
                                              ((x7951
                                                (begin
                                                  (write '(funapp 994 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 995 47))
                                                (display "\n")
                                                (car x7951)))))
                                           (begin
                                             (write '(funapp 996 44))
                                             (display "\n")
                                             (proc
                                              x7955
                                              x7954
                                              x7953
                                              x7952
                                              x7950)))))
                                        g7949)
                                       (letrec*
                                        ((x-cnd7956
                                          (letrec*
                                           ((x7957
                                             (letrec*
                                              ((x7958
                                                (begin
                                                  (write '(funapp 1008 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1009 47))
                                                (display "\n")
                                                (cddr x7958)))))
                                           (begin
                                             (write '(funapp 1010 44))
                                             (display "\n")
                                             (null? x7957)))))
                                        (if x-cnd7956
                                          (letrec*
                                           ((g7959
                                             (letrec*
                                              ((x7967
                                                (begin
                                                  (write '(funapp 1015 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7966
                                                (begin
                                                  (write '(funapp 1016 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7965
                                                (begin
                                                  (write '(funapp 1017 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7964
                                                (begin
                                                  (write '(funapp 1018 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7962
                                                (letrec*
                                                 ((x7963
                                                   (begin
                                                     (write '(funapp 1021 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1022 50))
                                                   (display "\n")
                                                   (car x7963))))
                                               (x7960
                                                (letrec*
                                                 ((x7961
                                                   (begin
                                                     (write '(funapp 1025 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1026 50))
                                                   (display "\n")
                                                   (cadr x7961)))))
                                              (begin
                                                (write '(funapp 1027 47))
                                                (display "\n")
                                                (proc
                                                 x7967
                                                 x7966
                                                 x7965
                                                 x7964
                                                 x7962
                                                 x7960)))))
                                           g7959)
                                          (letrec*
                                           ((x-cnd7968
                                             (letrec*
                                              ((x7969
                                                (letrec*
                                                 ((x7970
                                                   (begin
                                                     (write '(funapp 1040 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1041 50))
                                                   (display "\n")
                                                   (cdddr x7970)))))
                                              (begin
                                                (write '(funapp 1042 47))
                                                (display "\n")
                                                (null? x7969)))))
                                           (if x-cnd7968
                                             (letrec*
                                              ((g7971
                                                (letrec*
                                                 ((x7981
                                                   (begin
                                                     (write '(funapp 1047 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7980
                                                   (begin
                                                     (write '(funapp 1048 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7979
                                                   (begin
                                                     (write '(funapp 1049 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7978
                                                   (begin
                                                     (write '(funapp 1050 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7976
                                                   (letrec*
                                                    ((x7977
                                                      (begin
                                                        (write
                                                         '(funapp 1053 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1054 53))
                                                      (display "\n")
                                                      (car x7977))))
                                                  (x7974
                                                   (letrec*
                                                    ((x7975
                                                      (begin
                                                        (write
                                                         '(funapp 1057 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1058 53))
                                                      (display "\n")
                                                      (cadr x7975))))
                                                  (x7972
                                                   (letrec*
                                                    ((x7973
                                                      (begin
                                                        (write
                                                         '(funapp 1061 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1062 53))
                                                      (display "\n")
                                                      (caddr x7973)))))
                                                 (begin
                                                   (write '(funapp 1063 50))
                                                   (display "\n")
                                                   (proc
                                                    x7981
                                                    x7980
                                                    x7979
                                                    x7978
                                                    x7976
                                                    x7974
                                                    x7972)))))
                                              g7971)
                                             (letrec*
                                              ((g7982
                                                (begin
                                                  (write '(funapp 1074 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7982)))))))))))))))))))
                   g7919)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7983
                     (letrec*
                      ((x7985
                        (begin
                          (write '(funapp 1080 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1080 57))
                        (display "\n")
                        (assert x7985))))
                    (g7984
                     (letrec*
                      ((x-cnd7986
                        (begin
                          (write '(funapp 1083 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7986
                        #f
                        (letrec*
                         ((x-cnd7987
                           (letrec*
                            ((x7988
                              (begin
                                (write '(funapp 1088 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1088 55))
                              (display "\n")
                              (equal? x7988 e)))))
                         (if x-cnd7987
                           l
                           (letrec*
                            ((x7989
                              (begin
                                (write '(funapp 1091 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1091 55))
                              (display "\n")
                              (member e x7989)))))))))
                   g7984)))
               (cddddr
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
                                (write '(funapp 1100 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1100 61))
                              (display "\n")
                              (cdr x7993)))))
                         (begin
                           (write '(funapp 1101 26))
                           (display "\n")
                           (cdr x7992)))))
                      (begin
                        (write '(funapp 1102 23))
                        (display "\n")
                        (cdr x7991)))))
                   g7990)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7994
                     (letrec*
                      ((x7995
                        (letrec*
                         ((x7996
                           (letrec*
                            ((x7997
                              (begin
                                (write '(funapp 1111 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (cdr x7997)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (cdr x7996)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (car x7995)))))
                   g7994)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7998
                     (begin
                       (write '(funapp 1115 53))
                       (display "\n")
                       (random 42))))
                   g7998)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7999
                     (letrec*
                      ((x8001
                        (begin
                          (write '(funapp 1119 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1119 59))
                        (display "\n")
                        (assert x8001))))
                    (g8000
                     (begin (write '(funapp 1120 28)) (display "\n") (= x 0))))
                   g8000)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8002
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 1127 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g8003
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 1129 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8003))))
                   g8002)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g8004
                     (letrec*
                      ((x8005
                        (begin
                          (write '(funapp 1135 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1135 55))
                        (display "\n")
                        (car x8005)))))
                   g8004)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g8006
                     (letrec*
                      ((val7254
                        (letrec*
                         ((x8009
                           (begin
                             (write '(funapp 1145 34))
                             (display "\n")
                             (pair? l)))
                          (x8007
                           (letrec*
                            ((x8008
                              (begin
                                (write '(funapp 1146 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1146 61))
                              (display "\n")
                              (list? x8008)))))
                         (begin
                           (write '(funapp 1147 26))
                           (display "\n")
                           (and x8009 x8007)))))
                      (letrec*
                       ((g8010
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1149 52))
                             (display "\n")
                             (null? l)))))
                       g8010))))
                   g8006)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g8011
                     (letrec*
                      ((x8012
                        (letrec*
                         ((x8013
                           (letrec*
                            ((x8014
                              (begin
                                (write '(funapp 1159 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1159 61))
                              (display "\n")
                              (car x8014)))))
                         (begin
                           (write '(funapp 1160 26))
                           (display "\n")
                           (cdr x8013)))))
                      (begin
                        (write '(funapp 1161 23))
                        (display "\n")
                        (cdr x8012)))))
                   g8011)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g8015
                     (letrec*
                      ((x-cnd8016
                        (letrec*
                         ((x8017 #\0))
                         (begin
                           (write '(funapp 1168 58))
                           (display "\n")
                           (char<=? x8017 c)))))
                      (if x-cnd8016
                        (letrec*
                         ((x8018 #\9))
                         (begin
                           (write '(funapp 1170 48))
                           (display "\n")
                           (char<=? c x8018)))
                        #f))))
                   g8015)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g8019
                     (letrec*
                      ((x8021
                        (begin
                          (write '(funapp 1177 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1177 57))
                        (display "\n")
                        (assert x8021))))
                    (g8020
                     (letrec*
                      ((x-cnd8022
                        (begin
                          (write '(funapp 1180 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8022
                        #f
                        (letrec*
                         ((x-cnd8023
                           (letrec*
                            ((x8024
                              (begin
                                (write '(funapp 1185 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1185 56))
                              (display "\n")
                              (eqv? x8024 k)))))
                         (if x-cnd8023
                           (begin
                             (write '(funapp 1187 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8025
                              (begin
                                (write '(funapp 1188 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1188 55))
                              (display "\n")
                              (assq k x8025)))))))))
                   g8020)))
               (not (lambda (x) (letrec* ((g8026 (if x #f #t))) g8026)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g8027
                     (begin
                       (write '(funapp 1192 50))
                       (display "\n")
                       (append l1 l2))))
                   g8027)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g8028
                     (letrec*
                      ((x8030
                        (begin
                          (write '(funapp 1196 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1196 57))
                        (display "\n")
                        (assert x8030))))
                    (g8029
                     (letrec*
                      ((x-cnd8031
                        (begin
                          (write '(funapp 1199 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8031
                        #f
                        (letrec*
                         ((x-cnd8032
                           (letrec*
                            ((x8033
                              (begin
                                (write '(funapp 1204 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1204 55))
                              (display "\n")
                              (eq? x8033 e)))))
                         (if x-cnd8032
                           l
                           (letrec*
                            ((x8034
                              (begin
                                (write '(funapp 1207 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1207 55))
                              (display "\n")
                              (memq e x8034)))))))))
                   g8029)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g8035
                     (letrec*
                      ((x8036
                        (letrec*
                         ((x8037
                           (letrec*
                            ((x8038
                              (begin
                                (write '(funapp 1216 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1216 61))
                              (display "\n")
                              (car x8038)))))
                         (begin
                           (write '(funapp 1217 26))
                           (display "\n")
                           (cdr x8037)))))
                      (begin
                        (write '(funapp 1218 23))
                        (display "\n")
                        (car x8036)))))
                   g8035)))
               (length
                (lambda (l)
                  (letrec*
                   ((g8039
                     (letrec*
                      ((x8041
                        (begin
                          (write '(funapp 1223 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1223 57))
                        (display "\n")
                        (assert x8041))))
                    (g8040
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g8042
                             (letrec*
                              ((x-cnd8043
                                (begin
                                  (write '(funapp 1231 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd8043
                                0
                                (letrec*
                                 ((x8044
                                   (letrec*
                                    ((x8045
                                      (begin
                                        (write '(funapp 1236 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1236 63))
                                      (display "\n")
                                      (rec x8045)))))
                                 (begin
                                   (write '(funapp 1237 34))
                                   (display "\n")
                                   (+ 1 x8044)))))))
                           g8042))))
                      (letrec*
                       ((g8046
                         (begin
                           (write '(funapp 1239 40))
                           (display "\n")
                           (rec l))))
                       g8046))))
                   g8040)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8047
                     (letrec*
                      ((x8050
                        (begin
                          (write '(funapp 1244 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1244 58))
                        (display "\n")
                        (assert x8050))))
                    (g8048
                     (letrec*
                      ((x8051
                        (begin
                          (write '(funapp 1245 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1245 58))
                        (display "\n")
                        (assert x8051))))
                    (g8049
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1248 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g8052
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1250 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8052))))
                   g8049)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g8053
                     (letrec*
                      ((x8054
                        (begin
                          (write '(funapp 1256 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1256 65))
                        (display "\n")
                        (not x8054)))))
                   g8053)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g8055
                     (letrec*
                      ((x8056
                        (letrec*
                         ((x8057
                           (begin
                             (write '(funapp 1263 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1263 58))
                           (display "\n")
                           (car x8057)))))
                      (begin
                        (write '(funapp 1264 23))
                        (display "\n")
                        (cdr x8056)))))
                   g8055)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g8058
                     (letrec*
                      ((x8060
                        (begin
                          (write '(funapp 1269 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1269 57))
                        (display "\n")
                        (assert x8060))))
                    (g8059
                     (letrec*
                      ((x-cnd8061
                        (begin
                          (write '(funapp 1272 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8061
                        #f
                        (letrec*
                         ((x-cnd8062
                           (letrec*
                            ((x8063
                              (begin
                                (write '(funapp 1277 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1277 56))
                              (display "\n")
                              (equal? x8063 k)))))
                         (if x-cnd8062
                           (begin
                             (write '(funapp 1279 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8064
                              (begin
                                (write '(funapp 1280 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1280 55))
                              (display "\n")
                              (assoc k x8064)))))))))
                   g8059)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g8065
                     (letrec*
                      ((x8066
                        (begin
                          (write '(funapp 1285 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1285 55))
                        (display "\n")
                        (car x8066)))))
                   g8065)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g8067
                     (letrec*
                      ((x8070
                        (begin
                          (write '(funapp 1290 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1290 58))
                        (display "\n")
                        (assert x8070))))
                    (g8068
                     (letrec*
                      ((x8071
                        (begin
                          (write '(funapp 1291 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1291 58))
                        (display "\n")
                        (assert x8071))))
                    (g8069
                     (letrec*
                      ((x8072
                        (begin
                          (write '(funapp 1292 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1292 63))
                        (display "\n")
                        (not x8072)))))
                   g8069)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8073
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1299 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g8074
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1301 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8074))))
                   g8073)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g8075
                     (letrec*
                      ((x8078
                        (begin
                          (write '(funapp 1307 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1307 62))
                        (display "\n")
                        (assert x8078))))
                    (g8076
                     (letrec*
                      ((x8079
                        (begin
                          (write '(funapp 1308 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1308 57))
                        (display "\n")
                        (assert x8079))))
                    (g8077
                     (letrec*
                      ((x-cnd8080
                        (begin
                          (write '(funapp 1311 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8080
                        #t
                        (letrec*
                         ((x-cnd8081
                           (begin
                             (write '(funapp 1315 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8081
                           (letrec*
                            ((g8082
                              (letrec*
                               ((x8084
                                 (begin
                                   (write '(funapp 1318 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1318 64))
                                 (display "\n")
                                 (f x8084))))
                             (g8083
                              (letrec*
                               ((x8085
                                 (begin
                                   (write '(funapp 1320 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1320 58))
                                 (display "\n")
                                 (for-each f x8085)))))
                            g8083)
                           (begin
                             (write '(funapp 1322 27))
                             (display "\n")
                             '())))))))
                   g8077)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g8086
                     (letrec*
                      ((x8088
                        (begin
                          (write '(funapp 1327 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1327 59))
                        (display "\n")
                        (assert x8088))))
                    (g8087
                     (letrec*
                      ((x-cnd8089
                        (begin
                          (write '(funapp 1329 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd8089
                        (begin
                          (write '(funapp 1329 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g8087)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8090
                     (letrec*
                      ((x8093
                        (begin
                          (write '(funapp 1334 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1334 58))
                        (display "\n")
                        (assert x8093))))
                    (g8091
                     (letrec*
                      ((x8094
                        (begin
                          (write '(funapp 1335 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1335 58))
                        (display "\n")
                        (assert x8094))))
                    (g8092
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1338 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g8095
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1340 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8095))))
                   g8092)))
               (caddar
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
                                (write '(funapp 1350 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1350 61))
                              (display "\n")
                              (cdr x8099)))))
                         (begin
                           (write '(funapp 1351 26))
                           (display "\n")
                           (cdr x8098)))))
                      (begin
                        (write '(funapp 1352 23))
                        (display "\n")
                        (car x8097)))))
                   g8096)))
               (newline (lambda () (letrec* ((g8100 #f)) g8100)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g8101
                     (letrec*
                      ((x8103
                        (letrec*
                         ((x8104
                           (begin
                             (write '(funapp 1360 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1360 58))
                           (display "\n")
                           (abs x8104))))
                       (x8102
                        (begin
                          (write '(funapp 1361 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1362 23))
                        (display "\n")
                        (/ x8103 x8102)))))
                   g8101)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g8105
                     (letrec*
                      ((x8107
                        (begin
                          (write '(funapp 1368 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1368 59))
                        (display "\n")
                        (assert x8107))))
                    (g8106
                     (letrec*
                      ((x8108
                        (begin
                          (write '(funapp 1369 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1369 56))
                        (display "\n")
                        (not x8108)))))
                   g8106)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g8109
                     (letrec*
                      ((x8113
                        (begin
                          (write '(funapp 1374 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1374 57))
                        (display "\n")
                        (assert x8113))))
                    (g8110
                     (letrec*
                      ((x8114
                        (begin
                          (write '(funapp 1375 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1375 63))
                        (display "\n")
                        (assert x8114))))
                    (g8111
                     (letrec*
                      ((x8115
                        (letrec*
                         ((x8116
                           (begin
                             (write '(funapp 1378 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1378 61))
                           (display "\n")
                           (< index x8116)))))
                      (begin
                        (write '(funapp 1379 23))
                        (display "\n")
                        (assert x8115))))
                    (g8112
                     (letrec*
                      ((x-cnd8117
                        (begin
                          (write '(funapp 1382 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8117
                        (begin
                          (write '(funapp 1384 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8119
                           (begin
                             (write '(funapp 1386 34))
                             (display "\n")
                             (cdr l)))
                          (x8118
                           (begin
                             (write '(funapp 1386 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1387 26))
                           (display "\n")
                           (list-ref x8119 x8118)))))))
                   g8112)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8120
                     (letrec*
                      ((x-cnd8121
                        (begin
                          (write '(funapp 1394 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8121
                        a
                        (letrec*
                         ((x8122
                           (begin
                             (write '(funapp 1397 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1397 57))
                           (display "\n")
                           (gcd b x8122)))))))
                   g8120)))
               (block
                (lambda (x7571 y7572 color7573)
                  (letrec*
                   ((g8123
                     (letrec*
                      ((x8124
                        (letrec*
                         ((x8125
                           (letrec*
                            ((x8126
                              (begin
                                (write '(funapp 1408 37))
                                (display "\n")
                                (cons
                                 color7573
                                 (begin
                                   (write '(funapp 1408 52))
                                   (display "\n")
                                   '())))))
                            (begin
                              (write '(funapp 1409 29))
                              (display "\n")
                              (cons y7572 x8126)))))
                         (begin
                           (write '(funapp 1410 26))
                           (display "\n")
                           (cons x7571 x8125)))))
                      (begin
                        (write '(funapp 1411 23))
                        (display "\n")
                        (cons
                         (begin
                           (write '(funapp 1411 28))
                           (display "\n")
                           'block)
                         x8124)))))
                   g8123)))
               (block?
                (lambda (block7570)
                  (letrec*
                   ((g8127
                     (letrec*
                      ((x8128
                        (begin
                          (write '(funapp 1417 39))
                          (display "\n")
                          (car block7570))))
                      (begin
                        (write '(funapp 1417 57))
                        (display "\n")
                        (eq?
                         x8128
                         (begin
                           (write '(funapp 1417 67))
                           (display "\n")
                           'block))))))
                   g8127)))
               (block-x
                (lambda (block)
                  (letrec*
                   ((g8129
                     (letrec*
                      ((x8130
                        (begin
                          (write '(funapp 1422 45))
                          (display "\n")
                          (cdr block))))
                      (begin
                        (write '(funapp 1422 59))
                        (display "\n")
                        (car x8130)))))
                   g8129)))
               (block-y
                (lambda (block)
                  (letrec*
                   ((g8131
                     (letrec*
                      ((x8132
                        (letrec*
                         ((x8133
                           (begin
                             (write '(funapp 1429 48))
                             (display "\n")
                             (cdr block))))
                         (begin
                           (write '(funapp 1429 62))
                           (display "\n")
                           (cdr x8133)))))
                      (begin
                        (write '(funapp 1430 23))
                        (display "\n")
                        (car x8132)))))
                   g8131)))
               (block-color
                (lambda (block)
                  (letrec*
                   ((g8134
                     (letrec*
                      ((x8135
                        (letrec*
                         ((x8136
                           (letrec*
                            ((x8137
                              (begin
                                (write '(funapp 1439 51))
                                (display "\n")
                                (cdr block))))
                            (begin
                              (write '(funapp 1439 65))
                              (display "\n")
                              (cdr x8137)))))
                         (begin
                           (write '(funapp 1440 26))
                           (display "\n")
                           (cdr x8136)))))
                      (begin
                        (write '(funapp 1441 23))
                        (display "\n")
                        (car x8135)))))
                   g8134)))
               (tetra
                (lambda (center7578 blocks7579)
                  (letrec*
                   ((g8138
                     (letrec*
                      ((x8139
                        (letrec*
                         ((x8140
                           (begin
                             (write '(funapp 1450 34))
                             (display "\n")
                             (cons
                              blocks7579
                              (begin
                                (write '(funapp 1450 50))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1451 26))
                           (display "\n")
                           (cons center7578 x8140)))))
                      (begin
                        (write '(funapp 1452 23))
                        (display "\n")
                        (cons
                         (begin
                           (write '(funapp 1452 28))
                           (display "\n")
                           'tetra)
                         x8139)))))
                   g8138)))
               (tetra?
                (lambda (tetra7577)
                  (letrec*
                   ((g8141
                     (letrec*
                      ((x8142
                        (begin
                          (write '(funapp 1458 39))
                          (display "\n")
                          (car tetra7577))))
                      (begin
                        (write '(funapp 1458 57))
                        (display "\n")
                        (eq?
                         x8142
                         (begin
                           (write '(funapp 1458 67))
                           (display "\n")
                           'tetra))))))
                   g8141)))
               (tetra-center
                (lambda (tetra)
                  (letrec*
                   ((g8143
                     (letrec*
                      ((x8144
                        (begin
                          (write '(funapp 1463 45))
                          (display "\n")
                          (cdr tetra))))
                      (begin
                        (write '(funapp 1463 59))
                        (display "\n")
                        (car x8144)))))
                   g8143)))
               (tetra-blocks
                (lambda (tetra)
                  (letrec*
                   ((g8145
                     (letrec*
                      ((x8146
                        (letrec*
                         ((x8147
                           (begin
                             (write '(funapp 1470 48))
                             (display "\n")
                             (cdr tetra))))
                         (begin
                           (write '(funapp 1470 62))
                           (display "\n")
                           (cdr x8147)))))
                      (begin
                        (write '(funapp 1471 23))
                        (display "\n")
                        (car x8146)))))
                   g8145)))
               (world
                (lambda (tetra7583 blocks7584)
                  (letrec*
                   ((g8148
                     (letrec*
                      ((x8149
                        (letrec*
                         ((x8150
                           (begin
                             (write '(funapp 1480 34))
                             (display "\n")
                             (cons
                              blocks7584
                              (begin
                                (write '(funapp 1480 50))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1481 26))
                           (display "\n")
                           (cons tetra7583 x8150)))))
                      (begin
                        (write '(funapp 1482 23))
                        (display "\n")
                        (cons
                         (begin
                           (write '(funapp 1482 28))
                           (display "\n")
                           'world)
                         x8149)))))
                   g8148)))
               (world?
                (lambda (world7582)
                  (letrec*
                   ((g8151
                     (letrec*
                      ((x8152
                        (begin
                          (write '(funapp 1488 39))
                          (display "\n")
                          (car world7582))))
                      (begin
                        (write '(funapp 1488 57))
                        (display "\n")
                        (eq?
                         x8152
                         (begin
                           (write '(funapp 1488 67))
                           (display "\n")
                           'world))))))
                   g8151)))
               (world-tetra
                (lambda (world)
                  (letrec*
                   ((g8153
                     (letrec*
                      ((x8154
                        (begin
                          (write '(funapp 1493 45))
                          (display "\n")
                          (cdr world))))
                      (begin
                        (write '(funapp 1493 59))
                        (display "\n")
                        (car x8154)))))
                   g8153)))
               (world-blocks
                (lambda (world)
                  (letrec*
                   ((g8155
                     (letrec*
                      ((x8156
                        (letrec*
                         ((x8157
                           (begin
                             (write '(funapp 1500 48))
                             (display "\n")
                             (cdr world))))
                         (begin
                           (write '(funapp 1500 62))
                           (display "\n")
                           (cdr x8157)))))
                      (begin
                        (write '(funapp 1501 23))
                        (display "\n")
                        (car x8156)))))
                   g8155)))
               (posn
                (lambda (x7588 y7589)
                  (letrec*
                   ((g8158
                     (letrec*
                      ((x8159
                        (letrec*
                         ((x8160
                           (begin
                             (write '(funapp 1510 34))
                             (display "\n")
                             (cons
                              y7589
                              (begin
                                (write '(funapp 1510 45))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1511 26))
                           (display "\n")
                           (cons x7588 x8160)))))
                      (begin
                        (write '(funapp 1512 23))
                        (display "\n")
                        (cons
                         (begin (write '(funapp 1512 28)) (display "\n") 'posn)
                         x8159)))))
                   g8158)))
               (posn?
                (lambda (posn7587)
                  (letrec*
                   ((g8161
                     (letrec*
                      ((x8162
                        (begin
                          (write '(funapp 1518 39))
                          (display "\n")
                          (car posn7587))))
                      (begin
                        (write '(funapp 1518 56))
                        (display "\n")
                        (eq?
                         x8162
                         (begin
                           (write '(funapp 1518 66))
                           (display "\n")
                           'posn))))))
                   g8161)))
               (posn-x
                (lambda (posn)
                  (letrec*
                   ((g8163
                     (letrec*
                      ((x8164
                        (begin
                          (write '(funapp 1523 45))
                          (display "\n")
                          (cdr posn))))
                      (begin
                        (write '(funapp 1523 58))
                        (display "\n")
                        (car x8164)))))
                   g8163)))
               (posn-y
                (lambda (posn)
                  (letrec*
                   ((g8165
                     (letrec*
                      ((x8166
                        (letrec*
                         ((x8167
                           (begin
                             (write '(funapp 1530 48))
                             (display "\n")
                             (cdr posn))))
                         (begin
                           (write '(funapp 1530 61))
                           (display "\n")
                           (cdr x8167)))))
                      (begin
                        (write '(funapp 1531 23))
                        (display "\n")
                        (car x8166)))))
                   g8165)))
               (COLOR/C symbol?)
               (POSN/C
                (lambda (j7329 k7330 v7328)
                  (letrec*
                   ((g8168
                     (letrec*
                      ((checked7331
                        (letrec*
                         ((x8169
                           (begin
                             (write '(funapp 1541 34))
                             (display "\n")
                             (car v7328))))
                         (begin
                           (write '(funapp 1542 26))
                           (display "\n")
                           (real?/c j7329 k7330 x8169)))))
                      (letrec*
                       ((g8170
                         (letrec*
                          ((checked7332
                            (letrec*
                             ((x8171
                               (letrec*
                                ((x8172
                                  (begin
                                    (write '(funapp 1549 49))
                                    (display "\n")
                                    (cdr v7328))))
                                (begin
                                  (write '(funapp 1549 63))
                                  (display "\n")
                                  (car x8172)))))
                             (begin
                               (write '(funapp 1550 30))
                               (display "\n")
                               (real?/c j7329 k7330 x8171)))))
                          (letrec*
                           ((g8173
                             (letrec*
                              ((x8174
                                (letrec*
                                 ((x8175
                                   (begin
                                     (write '(funapp 1556 42))
                                     (display "\n")
                                     (cons
                                      checked7332
                                      (begin
                                        (write '(funapp 1556 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1557 34))
                                   (display "\n")
                                   (cons checked7331 x8175)))))
                              (begin
                                (write '(funapp 1558 31))
                                (display "\n")
                                (cons posn x8174)))))
                           g8173))))
                       g8170))))
                   g8168)))
               (BLOCK/C
                (lambda (j7335 k7336 v7334)
                  (letrec*
                   ((g8176
                     (letrec*
                      ((checked7337
                        (letrec*
                         ((x8177
                           (begin
                             (write '(funapp 1569 34))
                             (display "\n")
                             (car v7334))))
                         (begin
                           (write '(funapp 1570 26))
                           (display "\n")
                           (real?/c j7335 k7336 x8177)))))
                      (letrec*
                       ((g8178
                         (letrec*
                          ((checked7338
                            (letrec*
                             ((x8179
                               (letrec*
                                ((x8180
                                  (begin
                                    (write '(funapp 1577 49))
                                    (display "\n")
                                    (cdr v7334))))
                                (begin
                                  (write '(funapp 1577 63))
                                  (display "\n")
                                  (car x8180)))))
                             (begin
                               (write '(funapp 1578 30))
                               (display "\n")
                               (real?/c j7335 k7336 x8179)))))
                          (letrec*
                           ((g8181
                             (letrec*
                              ((checked7339
                                (letrec*
                                 ((x8182
                                   (letrec*
                                    ((x8183
                                      (letrec*
                                       ((x8184
                                         (begin
                                           (write '(funapp 1588 48))
                                           (display "\n")
                                           (cdr v7334))))
                                       (begin
                                         (write '(funapp 1589 40))
                                         (display "\n")
                                         (cdr x8184)))))
                                    (begin
                                      (write '(funapp 1590 37))
                                      (display "\n")
                                      (car x8183)))))
                                 (begin
                                   (write '(funapp 1591 34))
                                   (display "\n")
                                   (COLOR/C j7335 k7336 x8182)))))
                              (letrec*
                               ((g8185
                                 (letrec*
                                  ((x8186
                                    (letrec*
                                     ((x8187
                                       (letrec*
                                        ((x8188
                                          (begin
                                            (write '(funapp 1599 49))
                                            (display "\n")
                                            (cons
                                             checked7339
                                             (begin
                                               (write '(funapp 1599 66))
                                               (display "\n")
                                               '())))))
                                        (begin
                                          (write '(funapp 1600 41))
                                          (display "\n")
                                          (cons checked7338 x8188)))))
                                     (begin
                                       (write '(funapp 1601 38))
                                       (display "\n")
                                       (cons checked7337 x8187)))))
                                  (begin
                                    (write '(funapp 1602 35))
                                    (display "\n")
                                    (cons block x8186)))))
                               g8185))))
                           g8181))))
                       g8178))))
                   g8176)))
               (BSET/C
                (begin
                  (write '(funapp 1607 24))
                  (display "\n")
                  (listof BLOCK/C)))
               (TETRA/C
                (lambda (j7342 k7343 v7341)
                  (letrec*
                   ((g8189
                     (letrec*
                      ((checked7344
                        (letrec*
                         ((x8190
                           (begin
                             (write '(funapp 1615 34))
                             (display "\n")
                             (car v7341))))
                         (begin
                           (write '(funapp 1616 26))
                           (display "\n")
                           (POSN/C j7342 k7343 x8190)))))
                      (letrec*
                       ((g8191
                         (letrec*
                          ((checked7345
                            (letrec*
                             ((x8192
                               (letrec*
                                ((x8193
                                  (begin
                                    (write '(funapp 1623 49))
                                    (display "\n")
                                    (cdr v7341))))
                                (begin
                                  (write '(funapp 1623 63))
                                  (display "\n")
                                  (car x8193)))))
                             (begin
                               (write '(funapp 1624 30))
                               (display "\n")
                               (BSET/C j7342 k7343 x8192)))))
                          (letrec*
                           ((g8194
                             (letrec*
                              ((x8195
                                (letrec*
                                 ((x8196
                                   (begin
                                     (write '(funapp 1630 42))
                                     (display "\n")
                                     (cons
                                      checked7345
                                      (begin
                                        (write '(funapp 1630 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1631 34))
                                   (display "\n")
                                   (cons checked7344 x8196)))))
                              (begin
                                (write '(funapp 1632 31))
                                (display "\n")
                                (cons tetra x8195)))))
                           g8194))))
                       g8191))))
                   g8189)))
               (WORLD/C
                (lambda (j7348 k7349 v7347)
                  (letrec*
                   ((g8197
                     (letrec*
                      ((checked7350
                        (letrec*
                         ((x8198
                           (begin
                             (write '(funapp 1643 34))
                             (display "\n")
                             (car v7347))))
                         (begin
                           (write '(funapp 1644 26))
                           (display "\n")
                           (TETRA/C j7348 k7349 x8198)))))
                      (letrec*
                       ((g8199
                         (letrec*
                          ((checked7351
                            (letrec*
                             ((x8200
                               (letrec*
                                ((x8201
                                  (begin
                                    (write '(funapp 1651 49))
                                    (display "\n")
                                    (cdr v7347))))
                                (begin
                                  (write '(funapp 1651 63))
                                  (display "\n")
                                  (car x8201)))))
                             (begin
                               (write '(funapp 1652 30))
                               (display "\n")
                               (BSET/C j7348 k7349 x8200)))))
                          (letrec*
                           ((g8202
                             (letrec*
                              ((x8203
                                (letrec*
                                 ((x8204
                                   (begin
                                     (write '(funapp 1658 42))
                                     (display "\n")
                                     (cons
                                      checked7351
                                      (begin
                                        (write '(funapp 1658 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1659 34))
                                   (display "\n")
                                   (cons checked7350 x8204)))))
                              (begin
                                (write '(funapp 1660 31))
                                (display "\n")
                                (cons world x8203)))))
                           g8202))))
                       g8199))))
                   g8197)))
               (posn=?
                (lambda (p1 p2)
                  (letrec*
                   ((g8205
                     (letrec*
                      ((x-cnd8206
                        (letrec*
                         ((x8208
                           (begin
                             (write '(funapp 1671 34))
                             (display "\n")
                             (posn-x p1)))
                          (x8207
                           (begin
                             (write '(funapp 1671 54))
                             (display "\n")
                             (posn-x p2))))
                         (begin
                           (write '(funapp 1672 26))
                           (display "\n")
                           (= x8208 x8207)))))
                      (if x-cnd8206
                        (letrec*
                         ((x8210
                           (begin
                             (write '(funapp 1675 34))
                             (display "\n")
                             (posn-y p1)))
                          (x8209
                           (begin
                             (write '(funapp 1675 54))
                             (display "\n")
                             (posn-y p2))))
                         (begin
                           (write '(funapp 1676 26))
                           (display "\n")
                           (= x8210 x8209)))
                        #f))))
                   g8205)))
               (block-size 20)
               (board-height 20)
               (board-width 10)
               (block=?
                (lambda (b1 b2)
                  (letrec*
                   ((g8211
                     (letrec*
                      ((x-cnd8212
                        (letrec*
                         ((x8214
                           (begin
                             (write '(funapp 1689 34))
                             (display "\n")
                             (block-x b1)))
                          (x8213
                           (begin
                             (write '(funapp 1689 55))
                             (display "\n")
                             (block-x b2))))
                         (begin
                           (write '(funapp 1690 26))
                           (display "\n")
                           (= x8214 x8213)))))
                      (if x-cnd8212
                        (letrec*
                         ((x8216
                           (begin
                             (write '(funapp 1693 34))
                             (display "\n")
                             (block-y b1)))
                          (x8215
                           (begin
                             (write '(funapp 1693 55))
                             (display "\n")
                             (block-y b2))))
                         (begin
                           (write '(funapp 1694 26))
                           (display "\n")
                           (= x8216 x8215)))
                        #f))))
                   g8211)))
               (block-move
                (lambda (dx dy b)
                  (letrec*
                   ((g8217
                     (letrec*
                      ((x8221
                        (letrec*
                         ((x8222
                           (begin
                             (write '(funapp 1702 48))
                             (display "\n")
                             (block-x b))))
                         (begin
                           (write '(funapp 1702 62))
                           (display "\n")
                           (+ dx x8222))))
                       (x8219
                        (letrec*
                         ((x8220
                           (begin
                             (write '(funapp 1703 48))
                             (display "\n")
                             (block-y b))))
                         (begin
                           (write '(funapp 1703 62))
                           (display "\n")
                           (+ dy x8220))))
                       (x8218
                        (begin
                          (write '(funapp 1704 31))
                          (display "\n")
                          (block-color b))))
                      (begin
                        (write '(funapp 1705 23))
                        (display "\n")
                        (block x8221 x8219 x8218)))))
                   g8217)))
               (block-rotate-ccw
                (lambda (c b)
                  (letrec*
                   ((g8223
                     (letrec*
                      ((x8230
                        (letrec*
                         ((x8234
                           (begin
                             (write '(funapp 1714 34))
                             (display "\n")
                             (posn-x c)))
                          (x8231
                           (letrec*
                            ((x8233
                              (begin
                                (write '(funapp 1717 37))
                                (display "\n")
                                (posn-y c)))
                             (x8232
                              (begin
                                (write '(funapp 1717 56))
                                (display "\n")
                                (block-y b))))
                            (begin
                              (write '(funapp 1718 29))
                              (display "\n")
                              (- x8233 x8232)))))
                         (begin
                           (write '(funapp 1719 26))
                           (display "\n")
                           (+ x8234 x8231))))
                       (x8225
                        (letrec*
                         ((x8229
                           (begin
                             (write '(funapp 1722 34))
                             (display "\n")
                             (posn-y c)))
                          (x8226
                           (letrec*
                            ((x8228
                              (begin
                                (write '(funapp 1725 37))
                                (display "\n")
                                (block-x b)))
                             (x8227
                              (begin
                                (write '(funapp 1725 57))
                                (display "\n")
                                (posn-x c))))
                            (begin
                              (write '(funapp 1726 29))
                              (display "\n")
                              (- x8228 x8227)))))
                         (begin
                           (write '(funapp 1727 26))
                           (display "\n")
                           (+ x8229 x8226))))
                       (x8224
                        (begin
                          (write '(funapp 1728 31))
                          (display "\n")
                          (block-color b))))
                      (begin
                        (write '(funapp 1729 23))
                        (display "\n")
                        (block x8230 x8225 x8224)))))
                   g8223)))
               (block-rotate-cw
                (lambda (c b)
                  (letrec*
                   ((g8235
                     (letrec*
                      ((x8236
                        (letrec*
                         ((x8237
                           (begin
                             (write '(funapp 1738 34))
                             (display "\n")
                             (block-rotate-ccw c b))))
                         (begin
                           (write '(funapp 1739 26))
                           (display "\n")
                           (block-rotate-ccw c x8237)))))
                      (begin
                        (write '(funapp 1740 23))
                        (display "\n")
                        (block-rotate-ccw c x8236)))))
                   g8235)))
               (ormap
                (lambda (p? xs)
                  (letrec*
                   ((g8238
                     (letrec*
                      ((x-cnd8239
                        (begin
                          (write '(funapp 1747 35))
                          (display "\n")
                          (null? xs))))
                      (if x-cnd8239
                        (letrec* ((g8240 #f)) g8240)
                        (letrec*
                         ((g8241
                           (letrec*
                            ((x8244
                              (letrec*
                               ((x8245
                                 (begin
                                   (write '(funapp 1753 54))
                                   (display "\n")
                                   (car xs))))
                               (begin
                                 (write '(funapp 1753 65))
                                 (display "\n")
                                 (p? x8245))))
                             (x8242
                              (letrec*
                               ((x8243
                                 (begin
                                   (write '(funapp 1755 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 1755 59))
                                 (display "\n")
                                 (ormap p? x8243)))))
                            (begin
                              (write '(funapp 1756 29))
                              (display "\n")
                              (or x8244 x8242)))))
                         g8241)))))
                   g8238)))
               (andmap
                (lambda (p? xs)
                  (letrec*
                   ((g8246
                     (letrec*
                      ((x-cnd8247
                        (begin
                          (write '(funapp 1764 35))
                          (display "\n")
                          (null? xs))))
                      (if x-cnd8247
                        (letrec* ((g8248 #t)) g8248)
                        (letrec*
                         ((g8249
                           (letrec*
                            ((x8252
                              (letrec*
                               ((x8253
                                 (begin
                                   (write '(funapp 1770 54))
                                   (display "\n")
                                   (car xs))))
                               (begin
                                 (write '(funapp 1770 65))
                                 (display "\n")
                                 (p? x8253))))
                             (x8250
                              (letrec*
                               ((x8251
                                 (begin
                                   (write '(funapp 1772 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 1772 59))
                                 (display "\n")
                                 (andmap p? x8251)))))
                            (begin
                              (write '(funapp 1773 29))
                              (display "\n")
                              (and x8252 x8250)))))
                         g8249)))))
                   g8246)))
               (filter
                (lambda (p? xs)
                  (letrec*
                   ((g8254
                     (letrec*
                      ((x-cnd8255
                        (begin
                          (write '(funapp 1781 35))
                          (display "\n")
                          (null? xs))))
                      (if x-cnd8255
                        (letrec* ((g8256 null)) g8256)
                        (letrec*
                         ((x-cnd8257
                           (letrec*
                            ((x8258
                              (begin
                                (write '(funapp 1785 55))
                                (display "\n")
                                (car xs))))
                            (begin
                              (write '(funapp 1785 66))
                              (display "\n")
                              (p? x8258)))))
                         (if x-cnd8257
                           (letrec*
                            ((g8259
                              (letrec*
                               ((x8262
                                 (begin
                                   (write '(funapp 1790 40))
                                   (display "\n")
                                   (car xs)))
                                (x8260
                                 (letrec*
                                  ((x8261
                                    (begin
                                      (write '(funapp 1793 43))
                                      (display "\n")
                                      (cdr xs))))
                                  (begin
                                    (write '(funapp 1794 35))
                                    (display "\n")
                                    (filter p? x8261)))))
                               (begin
                                 (write '(funapp 1795 32))
                                 (display "\n")
                                 (cons x8262 x8260)))))
                            g8259)
                           (letrec*
                            ((g8263
                              (letrec*
                               ((x8264
                                 (begin
                                   (write '(funapp 1799 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 1799 59))
                                 (display "\n")
                                 (filter p? x8264)))))
                            g8263)))))))
                   g8254)))
               (append
                (lambda (l r)
                  (letrec*
                   ((g8265
                     (letrec*
                      ((x-cnd8266
                        (begin
                          (write '(funapp 1807 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8266
                        (letrec* ((g8267 r)) g8267)
                        (letrec*
                         ((g8268
                           (letrec*
                            ((x8271
                              (begin
                                (write '(funapp 1813 37))
                                (display "\n")
                                (car l)))
                             (x8269
                              (letrec*
                               ((x8270
                                 (begin
                                   (write '(funapp 1815 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1815 58))
                                 (display "\n")
                                 (append x8270 r)))))
                            (begin
                              (write '(funapp 1816 29))
                              (display "\n")
                              (cons x8271 x8269)))))
                         g8268)))))
                   g8265)))
               (foldr
                (lambda (f a xs)
                  (letrec*
                   ((g8272
                     (letrec*
                      ((x-cnd8273
                        (begin
                          (write '(funapp 1824 35))
                          (display "\n")
                          (null? xs))))
                      (if x-cnd8273
                        (letrec* ((g8274 a)) g8274)
                        (letrec*
                         ((g8275
                           (letrec*
                            ((x8278
                              (begin
                                (write '(funapp 1830 37))
                                (display "\n")
                                (car xs)))
                             (x8276
                              (letrec*
                               ((x8277
                                 (begin
                                   (write '(funapp 1832 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 1832 59))
                                 (display "\n")
                                 (foldr f a x8277)))))
                            (begin
                              (write '(funapp 1833 29))
                              (display "\n")
                              (f x8278 x8276)))))
                         g8275)))))
                   g8272)))
               (blocks-contains?
                (lambda (bs b)
                  (letrec*
                   ((g8279
                     (letrec*
                      ((x8280
                        (letrec*
                         ((x8282
                           (begin
                             (write '(funapp 1843 34))
                             (display "\n")
                             (c)))
                          (x8281
                           (begin
                             (write '(funapp 1843 46))
                             (display "\n")
                             (block=? b c))))
                         (begin
                           (write '(funapp 1844 26))
                           (display "\n")
                           (λ x8282 x8281)))))
                      (begin
                        (write '(funapp 1845 23))
                        (display "\n")
                        (ormap x8280 bs)))))
                   g8279)))
               (blocks-subset?
                (lambda (bs1 bs2)
                  (letrec*
                   ((g8283
                     (letrec*
                      ((x8284
                        (letrec*
                         ((x8286
                           (begin
                             (write '(funapp 1854 34))
                             (display "\n")
                             (b)))
                          (x8285
                           (begin
                             (write '(funapp 1854 46))
                             (display "\n")
                             (blocks-contains? bs2 b))))
                         (begin
                           (write '(funapp 1855 26))
                           (display "\n")
                           (λ x8286 x8285)))))
                      (begin
                        (write '(funapp 1856 23))
                        (display "\n")
                        (andmap x8284 bs1)))))
                   g8283)))
               (blocks=?
                (lambda (bs1 bs2)
                  (letrec*
                   ((g8287
                     (letrec*
                      ((x-cnd8288
                        (begin
                          (write '(funapp 1863 35))
                          (display "\n")
                          (blocks-subset? bs1 bs2))))
                      (if x-cnd8288
                        (begin
                          (write '(funapp 1864 37))
                          (display "\n")
                          (blocks-subset? bs2 bs1))
                        #f))))
                   g8287)))
               (blocks-intersect
                (lambda (bs1 bs2)
                  (letrec*
                   ((g8289
                     (letrec*
                      ((x8290
                        (letrec*
                         ((x8292
                           (begin
                             (write '(funapp 1873 34))
                             (display "\n")
                             (b)))
                          (x8291
                           (begin
                             (write '(funapp 1873 46))
                             (display "\n")
                             (blocks-contains? bs2 b))))
                         (begin
                           (write '(funapp 1874 26))
                           (display "\n")
                           (λ x8292 x8291)))))
                      (begin
                        (write '(funapp 1875 23))
                        (display "\n")
                        (filter x8290 bs1)))))
                   g8289)))
               (blocks-count
                (lambda (bs)
                  (letrec*
                   ((g8293
                     (begin
                       (write '(funapp 1878 47))
                       (display "\n")
                       (length bs))))
                   g8293)))
               (blocks-move
                (lambda (dx dy bs)
                  (letrec*
                   ((g8294
                     (letrec*
                      ((x8295
                        (letrec*
                         ((x8297
                           (begin
                             (write '(funapp 1886 34))
                             (display "\n")
                             (b)))
                          (x8296
                           (begin
                             (write '(funapp 1886 46))
                             (display "\n")
                             (block-move dx dy b))))
                         (begin
                           (write '(funapp 1887 26))
                           (display "\n")
                           (λ x8297 x8296)))))
                      (begin
                        (write '(funapp 1888 23))
                        (display "\n")
                        (map x8295 bs)))))
                   g8294)))
               (blocks-rotate-ccw
                (lambda (c bs)
                  (letrec*
                   ((g8298
                     (letrec*
                      ((x8299
                        (letrec*
                         ((x8301
                           (begin
                             (write '(funapp 1897 34))
                             (display "\n")
                             (b)))
                          (x8300
                           (begin
                             (write '(funapp 1897 46))
                             (display "\n")
                             (block-rotate-ccw c b))))
                         (begin
                           (write '(funapp 1898 26))
                           (display "\n")
                           (λ x8301 x8300)))))
                      (begin
                        (write '(funapp 1899 23))
                        (display "\n")
                        (map x8299 bs)))))
                   g8298)))
               (blocks-rotate-cw
                (lambda (c bs)
                  (letrec*
                   ((g8302
                     (letrec*
                      ((x8303
                        (letrec*
                         ((x8305
                           (begin
                             (write '(funapp 1908 34))
                             (display "\n")
                             (b)))
                          (x8304
                           (begin
                             (write '(funapp 1908 46))
                             (display "\n")
                             (block-rotate-cw c b))))
                         (begin
                           (write '(funapp 1909 26))
                           (display "\n")
                           (λ x8305 x8304)))))
                      (begin
                        (write '(funapp 1910 23))
                        (display "\n")
                        (map x8303 bs)))))
                   g8302)))
               (blocks-change-color
                (lambda (bs c)
                  (letrec*
                   ((g8306
                     (letrec*
                      ((x8307
                        (letrec*
                         ((x8311
                           (begin
                             (write '(funapp 1919 34))
                             (display "\n")
                             (b)))
                          (x8308
                           (letrec*
                            ((x8310
                              (begin
                                (write '(funapp 1922 37))
                                (display "\n")
                                (block-x b)))
                             (x8309
                              (begin
                                (write '(funapp 1922 57))
                                (display "\n")
                                (block-y b))))
                            (begin
                              (write '(funapp 1923 29))
                              (display "\n")
                              (block x8310 x8309 c)))))
                         (begin
                           (write '(funapp 1924 26))
                           (display "\n")
                           (λ x8311 x8308)))))
                      (begin
                        (write '(funapp 1925 23))
                        (display "\n")
                        (map x8307 bs)))))
                   g8306)))
               (blocks-row
                (lambda (bs i)
                  (letrec*
                   ((g8312
                     (letrec*
                      ((x8313
                        (letrec*
                         ((x8316
                           (begin
                             (write '(funapp 1934 34))
                             (display "\n")
                             (b)))
                          (x8314
                           (letrec*
                            ((x8315
                              (begin
                                (write '(funapp 1935 51))
                                (display "\n")
                                (block-y b))))
                            (begin
                              (write '(funapp 1935 65))
                              (display "\n")
                              (= i x8315)))))
                         (begin
                           (write '(funapp 1936 26))
                           (display "\n")
                           (λ x8316 x8314)))))
                      (begin
                        (write '(funapp 1937 23))
                        (display "\n")
                        (filter x8313 bs)))))
                   g8312)))
               (full-row?
                (lambda (bs i)
                  (letrec*
                   ((g8317
                     (letrec*
                      ((x8318
                        (letrec*
                         ((x8319
                           (begin
                             (write '(funapp 1946 34))
                             (display "\n")
                             (blocks-row bs i))))
                         (begin
                           (write '(funapp 1947 26))
                           (display "\n")
                           (blocks-count x8319)))))
                      (begin
                        (write '(funapp 1948 23))
                        (display "\n")
                        (= board-width x8318)))))
                   g8317)))
               (blocks-overflow?
                (lambda (bs)
                  (letrec*
                   ((g8320
                     (letrec*
                      ((x8321
                        (letrec*
                         ((x8324
                           (begin
                             (write '(funapp 1957 34))
                             (display "\n")
                             (b)))
                          (x8322
                           (letrec*
                            ((x8323
                              (begin
                                (write '(funapp 1958 51))
                                (display "\n")
                                (block-y b))))
                            (begin
                              (write '(funapp 1958 65))
                              (display "\n")
                              (<= x8323 0)))))
                         (begin
                           (write '(funapp 1959 26))
                           (display "\n")
                           (λ x8324 x8322)))))
                      (begin
                        (write '(funapp 1960 23))
                        (display "\n")
                        (ormap x8321 bs)))))
                   g8320)))
               (blocks-union
                (lambda (bs1 bs2)
                  (letrec*
                   ((g8325
                     (letrec*
                      ((x8326
                        (letrec*
                         ((x8331
                           (begin
                             (write '(funapp 1969 34))
                             (display "\n")
                             (b bs)))
                          (x8327
                           (letrec*
                            ((x-cnd8328
                              (begin
                                (write '(funapp 1972 41))
                                (display "\n")
                                (blocks-contains? bs b))))
                            (if x-cnd8328
                              (letrec* ((g8329 bs)) g8329)
                              (letrec*
                               ((g8330
                                 (begin
                                   (write '(funapp 1975 48))
                                   (display "\n")
                                   (cons b bs))))
                               g8330)))))
                         (begin
                           (write '(funapp 1976 26))
                           (display "\n")
                           (λ x8331 x8327)))))
                      (begin
                        (write '(funapp 1977 23))
                        (display "\n")
                        (foldr x8326 bs2 bs1)))))
                   g8325)))
               (blocks-max-y
                (lambda (bs)
                  (letrec*
                   ((g8332
                     (letrec*
                      ((x8333
                        (letrec*
                         ((x8336
                           (begin
                             (write '(funapp 1986 34))
                             (display "\n")
                             (b n)))
                          (x8334
                           (letrec*
                            ((x8335
                              (begin
                                (write '(funapp 1988 45))
                                (display "\n")
                                (block-y b))))
                            (begin
                              (write '(funapp 1988 59))
                              (display "\n")
                              (max x8335 n)))))
                         (begin
                           (write '(funapp 1989 26))
                           (display "\n")
                           (λ x8336 x8334)))))
                      (begin
                        (write '(funapp 1990 23))
                        (display "\n")
                        (foldr x8333 0 bs)))))
                   g8332)))
               (blocks-min-x
                (lambda (bs)
                  (letrec*
                   ((g8337
                     (letrec*
                      ((x8338
                        (letrec*
                         ((x8341
                           (begin
                             (write '(funapp 1999 34))
                             (display "\n")
                             (b n)))
                          (x8339
                           (letrec*
                            ((x8340
                              (begin
                                (write '(funapp 2001 45))
                                (display "\n")
                                (block-x b))))
                            (begin
                              (write '(funapp 2001 59))
                              (display "\n")
                              (min x8340 n)))))
                         (begin
                           (write '(funapp 2002 26))
                           (display "\n")
                           (λ x8341 x8339)))))
                      (begin
                        (write '(funapp 2003 23))
                        (display "\n")
                        (foldr x8338 board-width bs)))))
                   g8337)))
               (blocks-max-x
                (lambda (bs)
                  (letrec*
                   ((g8342
                     (letrec*
                      ((x8343
                        (letrec*
                         ((x8346
                           (begin
                             (write '(funapp 2012 34))
                             (display "\n")
                             (b n)))
                          (x8344
                           (letrec*
                            ((x8345
                              (begin
                                (write '(funapp 2014 45))
                                (display "\n")
                                (block-x b))))
                            (begin
                              (write '(funapp 2014 59))
                              (display "\n")
                              (max x8345 n)))))
                         (begin
                           (write '(funapp 2015 26))
                           (display "\n")
                           (λ x8346 x8344)))))
                      (begin
                        (write '(funapp 2016 23))
                        (display "\n")
                        (foldr x8343 0 bs)))))
                   g8342)))
               (eliminate-full-rows
                (lambda (bs)
                  (letrec*
                   ((g8347
                     (begin
                       (write '(funapp 2020 36))
                       (display "\n")
                       (elim-row bs board-height 0))))
                   g8347)))
               (elim-row
                (lambda (bs i offset)
                  (letrec*
                   ((g8348
                     (letrec*
                      ((x-cnd8349
                        (begin
                          (write '(funapp 2026 35))
                          (display "\n")
                          (< i 0))))
                      (if x-cnd8349
                        (letrec* ((g8350 empty)) g8350)
                        (letrec*
                         ((x-cnd8351
                           (begin
                             (write '(funapp 2030 38))
                             (display "\n")
                             (full-row? bs i))))
                         (if x-cnd8351
                           (letrec*
                            ((g8352
                              (letrec*
                               ((x8354
                                 (begin
                                   (write '(funapp 2035 40))
                                   (display "\n")
                                   (sub1 i)))
                                (x8353
                                 (begin
                                   (write '(funapp 2035 57))
                                   (display "\n")
                                   (add1 offset))))
                               (begin
                                 (write '(funapp 2036 32))
                                 (display "\n")
                                 (elim-row bs x8354 x8353)))))
                            g8352)
                           (letrec*
                            ((g8355
                              (letrec*
                               ((x8358
                                 (letrec*
                                  ((x8359
                                    (begin
                                      (write '(funapp 2043 43))
                                      (display "\n")
                                      (sub1 i))))
                                  (begin
                                    (write '(funapp 2044 35))
                                    (display "\n")
                                    (elim-row bs x8359 offset))))
                                (x8356
                                 (letrec*
                                  ((x8357
                                    (begin
                                      (write '(funapp 2047 43))
                                      (display "\n")
                                      (blocks-row bs i))))
                                  (begin
                                    (write '(funapp 2048 35))
                                    (display "\n")
                                    (blocks-move 0 offset x8357)))))
                               (begin
                                 (write '(funapp 2049 32))
                                 (display "\n")
                                 (blocks-union x8358 x8356)))))
                            g8355)))))))
                   g8348)))
               (tetra-move
                (lambda (dx dy t)
                  (letrec*
                   ((g8360
                     (letrec*
                      ((x8363
                        (letrec*
                         ((x8367
                           (letrec*
                            ((x8368
                              (letrec*
                               ((x8369
                                 (begin
                                   (write '(funapp 2063 40))
                                   (display "\n")
                                   (tetra-center t))))
                               (begin
                                 (write '(funapp 2064 32))
                                 (display "\n")
                                 (posn-x x8369)))))
                            (begin
                              (write '(funapp 2065 29))
                              (display "\n")
                              (+ dx x8368))))
                          (x8364
                           (letrec*
                            ((x8365
                              (letrec*
                               ((x8366
                                 (begin
                                   (write '(funapp 2070 40))
                                   (display "\n")
                                   (tetra-center t))))
                               (begin
                                 (write '(funapp 2071 32))
                                 (display "\n")
                                 (posn-y x8366)))))
                            (begin
                              (write '(funapp 2072 29))
                              (display "\n")
                              (+ dy x8365)))))
                         (begin
                           (write '(funapp 2073 26))
                           (display "\n")
                           (posn x8367 x8364))))
                       (x8361
                        (letrec*
                         ((x8362
                           (begin
                             (write '(funapp 2076 34))
                             (display "\n")
                             (tetra-blocks t))))
                         (begin
                           (write '(funapp 2077 26))
                           (display "\n")
                           (blocks-move dx dy x8362)))))
                      (begin
                        (write '(funapp 2078 23))
                        (display "\n")
                        (tetra x8363 x8361)))))
                   g8360)))
               (tetra-rotate-ccw
                (lambda (t)
                  (letrec*
                   ((g8370
                     (letrec*
                      ((x8374
                        (begin
                          (write '(funapp 2085 31))
                          (display "\n")
                          (tetra-center t)))
                       (x8371
                        (letrec*
                         ((x8373
                           (begin
                             (write '(funapp 2088 34))
                             (display "\n")
                             (tetra-center t)))
                          (x8372
                           (begin
                             (write '(funapp 2088 59))
                             (display "\n")
                             (tetra-blocks t))))
                         (begin
                           (write '(funapp 2089 26))
                           (display "\n")
                           (blocks-rotate-ccw x8373 x8372)))))
                      (begin
                        (write '(funapp 2090 23))
                        (display "\n")
                        (tetra x8374 x8371)))))
                   g8370)))
               (tetra-rotate-cw
                (lambda (t)
                  (letrec*
                   ((g8375
                     (letrec*
                      ((x8379
                        (begin
                          (write '(funapp 2097 31))
                          (display "\n")
                          (tetra-center t)))
                       (x8376
                        (letrec*
                         ((x8378
                           (begin
                             (write '(funapp 2100 34))
                             (display "\n")
                             (tetra-center t)))
                          (x8377
                           (begin
                             (write '(funapp 2100 59))
                             (display "\n")
                             (tetra-blocks t))))
                         (begin
                           (write '(funapp 2101 26))
                           (display "\n")
                           (blocks-rotate-cw x8378 x8377)))))
                      (begin
                        (write '(funapp 2102 23))
                        (display "\n")
                        (tetra x8379 x8376)))))
                   g8375)))
               (tetra-overlaps-blocks?
                (lambda (t bs)
                  (letrec*
                   ((g8380
                     (letrec*
                      ((x8381
                        (letrec*
                         ((x8382
                           (letrec*
                            ((x8383
                              (begin
                                (write '(funapp 2113 37))
                                (display "\n")
                                (tetra-blocks t))))
                            (begin
                              (write '(funapp 2114 29))
                              (display "\n")
                              (blocks-intersect x8383 bs)))))
                         (begin
                           (write '(funapp 2115 26))
                           (display "\n")
                           (false? x8382)))))
                      (begin
                        (write '(funapp 2116 23))
                        (display "\n")
                        (false? x8381)))))
                   g8380)))
               (tetra-change-color
                (lambda (t c)
                  (letrec*
                   ((g8384
                     (letrec*
                      ((x8387
                        (begin
                          (write '(funapp 2123 31))
                          (display "\n")
                          (tetra-center t)))
                       (x8385
                        (letrec*
                         ((x8386
                           (begin
                             (write '(funapp 2126 34))
                             (display "\n")
                             (tetra-blocks t))))
                         (begin
                           (write '(funapp 2127 26))
                           (display "\n")
                           (blocks-change-color x8386 c)))))
                      (begin
                        (write '(funapp 2128 23))
                        (display "\n")
                        (tetra x8387 x8385)))))
                   g8384)))
               (build-tetra-blocks
                (lambda (color xc yc x1 y1 x2 y2 x3 y3 x4 y4)
                  (letrec*
                   ((g8388
                     (letrec*
                      ((x8389
                        (letrec*
                         ((x8395
                           (begin
                             (write '(funapp 2137 34))
                             (display "\n")
                             (posn xc yc)))
                          (x8390
                           (letrec*
                            ((x8394
                              (begin
                                (write '(funapp 2140 37))
                                (display "\n")
                                (block x1 y1 color)))
                             (x8393
                              (begin
                                (write '(funapp 2141 37))
                                (display "\n")
                                (block x2 y2 color)))
                             (x8392
                              (begin
                                (write '(funapp 2142 37))
                                (display "\n")
                                (block x3 y3 color)))
                             (x8391
                              (begin
                                (write '(funapp 2143 37))
                                (display "\n")
                                (block x4 y4 color))))
                            (begin
                              (write '(funapp 2144 29))
                              (display "\n")
                              (list x8394 x8393 x8392 x8391)))))
                         (begin
                           (write '(funapp 2145 26))
                           (display "\n")
                           (tetra x8395 x8390)))))
                      (begin
                        (write '(funapp 2146 23))
                        (display "\n")
                        (tetra-move 3 0 x8389)))))
                   g8388)))
               (touchdown
                (lambda (w tetras)
                  (letrec*
                   ((g8396
                     (letrec*
                      ((x8402
                        (begin
                          (write '(funapp 2153 31))
                          (display "\n")
                          (list-pick-random tetras)))
                       (x8397
                        (letrec*
                         ((x8398
                           (letrec*
                            ((x8400
                              (letrec*
                               ((x8401
                                 (begin
                                   (write '(funapp 2160 40))
                                   (display "\n")
                                   (world-tetra w))))
                               (begin
                                 (write '(funapp 2161 32))
                                 (display "\n")
                                 (tetra-blocks x8401))))
                             (x8399
                              (begin
                                (write '(funapp 2162 37))
                                (display "\n")
                                (world-blocks w))))
                            (begin
                              (write '(funapp 2163 29))
                              (display "\n")
                              (blocks-union x8400 x8399)))))
                         (begin
                           (write '(funapp 2164 26))
                           (display "\n")
                           (eliminate-full-rows x8398)))))
                      (begin
                        (write '(funapp 2165 23))
                        (display "\n")
                        (world x8402 x8397)))))
                   g8396)))
               (world-jump-down
                (lambda (w)
                  (letrec*
                   ((g8403
                     (letrec*
                      ((x-cnd8404
                        (begin
                          (write '(funapp 2172 35))
                          (display "\n")
                          (landed? w))))
                      (if x-cnd8404
                        (letrec* ((g8405 w)) g8405)
                        (letrec*
                         ((g8406
                           (letrec*
                            ((x8407
                              (letrec*
                               ((x8409
                                 (letrec*
                                  ((x8410
                                    (begin
                                      (write '(funapp 2182 43))
                                      (display "\n")
                                      (world-tetra w))))
                                  (begin
                                    (write '(funapp 2183 35))
                                    (display "\n")
                                    (tetra-move 0 1 x8410))))
                                (x8408
                                 (begin
                                   (write '(funapp 2184 40))
                                   (display "\n")
                                   (world-blocks w))))
                               (begin
                                 (write '(funapp 2185 32))
                                 (display "\n")
                                 (world x8409 x8408)))))
                            (begin
                              (write '(funapp 2186 29))
                              (display "\n")
                              (world-jump-down x8407)))))
                         g8406)))))
                   g8403)))
               (landed-on-blocks?
                (lambda (w)
                  (letrec*
                   ((g8411
                     (letrec*
                      ((x8413
                        (letrec*
                         ((x8414
                           (begin
                             (write '(funapp 2196 34))
                             (display "\n")
                             (world-tetra w))))
                         (begin
                           (write '(funapp 2197 26))
                           (display "\n")
                           (tetra-move 0 1 x8414))))
                       (x8412
                        (begin
                          (write '(funapp 2198 31))
                          (display "\n")
                          (world-blocks w))))
                      (begin
                        (write '(funapp 2199 23))
                        (display "\n")
                        (tetra-overlaps-blocks? x8413 x8412)))))
                   g8411)))
               (landed-on-floor?
                (lambda (w)
                  (letrec*
                   ((g8415
                     (letrec*
                      ((x8417
                        (letrec*
                         ((x8418
                           (letrec*
                            ((x8419
                              (begin
                                (write '(funapp 2210 37))
                                (display "\n")
                                (world-tetra w))))
                            (begin
                              (write '(funapp 2211 29))
                              (display "\n")
                              (tetra-blocks x8419)))))
                         (begin
                           (write '(funapp 2212 26))
                           (display "\n")
                           (blocks-max-y x8418))))
                       (x8416
                        (begin
                          (write '(funapp 2213 31))
                          (display "\n")
                          (sub1 board-height))))
                      (begin
                        (write '(funapp 2214 23))
                        (display "\n")
                        (= x8417 x8416)))))
                   g8415)))
               (landed?
                (lambda (w)
                  (letrec*
                   ((g8420
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 2221 33))
                          (display "\n")
                          (landed-on-blocks? w))))
                      (letrec*
                       ((g8421
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 2223 52))
                             (display "\n")
                             (landed-on-floor? w)))))
                       g8421))))
                   g8420)))
               (next-world
                (lambda (w tetras)
                  (letrec*
                   ((g8422
                     (letrec*
                      ((x-cnd8423
                        (begin
                          (write '(funapp 2231 35))
                          (display "\n")
                          (landed? w))))
                      (if x-cnd8423
                        (letrec*
                         ((g8424
                           (begin
                             (write '(funapp 2233 42))
                             (display "\n")
                             (touchdown w tetras))))
                         g8424)
                        (letrec*
                         ((g8425
                           (letrec*
                            ((x8427
                              (letrec*
                               ((x8428
                                 (begin
                                   (write '(funapp 2239 40))
                                   (display "\n")
                                   (world-tetra w))))
                               (begin
                                 (write '(funapp 2240 32))
                                 (display "\n")
                                 (tetra-move 0 1 x8428))))
                             (x8426
                              (begin
                                (write '(funapp 2241 37))
                                (display "\n")
                                (world-blocks w))))
                            (begin
                              (write '(funapp 2242 29))
                              (display "\n")
                              (world x8427 x8426)))))
                         g8425)))))
                   g8422)))
               (try-new-tetra
                (lambda (w new-tetra)
                  (letrec*
                   ((g8429
                     (letrec*
                      ((x-cnd8430
                        (letrec*
                         ((x8436
                           (letrec*
                            ((x8437
                              (letrec*
                               ((x8438
                                 (begin
                                   (write '(funapp 2256 40))
                                   (display "\n")
                                   (tetra-blocks new-tetra))))
                               (begin
                                 (write '(funapp 2257 32))
                                 (display "\n")
                                 (blocks-min-x x8438)))))
                            (begin
                              (write '(funapp 2258 29))
                              (display "\n")
                              (< x8437 0))))
                          (x8433
                           (letrec*
                            ((x8434
                              (letrec*
                               ((x8435
                                 (begin
                                   (write '(funapp 2263 40))
                                   (display "\n")
                                   (tetra-blocks new-tetra))))
                               (begin
                                 (write '(funapp 2264 32))
                                 (display "\n")
                                 (blocks-max-x x8435)))))
                            (begin
                              (write '(funapp 2265 29))
                              (display "\n")
                              (>= x8434 board-width))))
                          (x8431
                           (letrec*
                            ((x8432
                              (begin
                                (write '(funapp 2268 37))
                                (display "\n")
                                (world-blocks w))))
                            (begin
                              (write '(funapp 2269 29))
                              (display "\n")
                              (tetra-overlaps-blocks? new-tetra x8432)))))
                         (begin
                           (write '(funapp 2270 26))
                           (display "\n")
                           (or x8436 x8433 x8431)))))
                      (if x-cnd8430
                        (letrec* ((g8439 w)) g8439)
                        (letrec*
                         ((g8440
                           (letrec*
                            ((x8441
                              (begin
                                (write '(funapp 2276 37))
                                (display "\n")
                                (world-blocks w))))
                            (begin
                              (write '(funapp 2277 29))
                              (display "\n")
                              (world new-tetra x8441)))))
                         g8440)))))
                   g8429)))
               (world-move
                (lambda (dx dy w)
                  (letrec*
                   ((g8442
                     (letrec*
                      ((x8443
                        (letrec*
                         ((x8444
                           (begin
                             (write '(funapp 2287 34))
                             (display "\n")
                             (world-tetra w))))
                         (begin
                           (write '(funapp 2288 26))
                           (display "\n")
                           (tetra-move dx dy x8444)))))
                      (begin
                        (write '(funapp 2289 23))
                        (display "\n")
                        (try-new-tetra w x8443)))))
                   g8442)))
               (world-rotate-ccw
                (lambda (w)
                  (letrec*
                   ((g8445
                     (letrec*
                      ((x8446
                        (letrec*
                         ((x8447
                           (begin
                             (write '(funapp 2298 34))
                             (display "\n")
                             (world-tetra w))))
                         (begin
                           (write '(funapp 2299 26))
                           (display "\n")
                           (tetra-rotate-ccw x8447)))))
                      (begin
                        (write '(funapp 2300 23))
                        (display "\n")
                        (try-new-tetra w x8446)))))
                   g8445)))
               (world-rotate-cw
                (lambda (w)
                  (letrec*
                   ((g8448
                     (letrec*
                      ((x8449
                        (letrec*
                         ((x8450
                           (begin
                             (write '(funapp 2309 34))
                             (display "\n")
                             (world-tetra w))))
                         (begin
                           (write '(funapp 2310 26))
                           (display "\n")
                           (tetra-rotate-cw x8450)))))
                      (begin
                        (write '(funapp 2311 23))
                        (display "\n")
                        (try-new-tetra w x8449)))))
                   g8448)))
               (ghost-blocks
                (lambda (w)
                  (letrec*
                   ((g8451
                     (letrec*
                      ((x8452
                        (letrec*
                         ((x8453
                           (letrec*
                            ((x8454
                              (begin
                                (write '(funapp 2322 37))
                                (display "\n")
                                (world-jump-down w))))
                            (begin
                              (write '(funapp 2323 29))
                              (display "\n")
                              (world-tetra x8454)))))
                         (begin
                           (write '(funapp 2324 26))
                           (display "\n")
                           (tetra-change-color
                            x8453
                            (begin
                              (write '(funapp 2324 51))
                              (display "\n")
                              'gray))))))
                      (begin
                        (write '(funapp 2325 23))
                        (display "\n")
                        (tetra-blocks x8452)))))
                   g8451)))
               (world-key-move
                (lambda (w k)
                  (letrec*
                   ((g8455
                     (letrec*
                      ((x-cnd8456
                        (begin
                          (write '(funapp 2332 35))
                          (display "\n")
                          (equal? k "left"))))
                      (if x-cnd8456
                        (letrec*
                         ((g8457
                           (begin
                             (write '(funapp 2334 42))
                             (display "\n")
                             (world-move neg-1 0 w))))
                         g8457)
                        (letrec*
                         ((x-cnd8458
                           (begin
                             (write '(funapp 2336 38))
                             (display "\n")
                             (equal? k "right"))))
                         (if x-cnd8458
                           (letrec*
                            ((g8459
                              (begin
                                (write '(funapp 2338 45))
                                (display "\n")
                                (world-move 1 0 w))))
                            g8459)
                           (letrec*
                            ((x-cnd8460
                              (begin
                                (write '(funapp 2340 41))
                                (display "\n")
                                (equal? k "down"))))
                            (if x-cnd8460
                              (letrec*
                               ((g8461
                                 (begin
                                   (write '(funapp 2342 48))
                                   (display "\n")
                                   (world-jump-down w))))
                               g8461)
                              (letrec*
                               ((x-cnd8462
                                 (begin
                                   (write '(funapp 2344 44))
                                   (display "\n")
                                   (equal? k "a"))))
                               (if x-cnd8462
                                 (letrec*
                                  ((g8463
                                    (begin
                                      (write '(funapp 2346 51))
                                      (display "\n")
                                      (world-rotate-ccw w))))
                                  g8463)
                                 (letrec*
                                  ((x-cnd8464
                                    (begin
                                      (write '(funapp 2348 47))
                                      (display "\n")
                                      (equal? k "s"))))
                                  (if x-cnd8464
                                    (letrec*
                                     ((g8465
                                       (begin
                                         (write '(funapp 2351 46))
                                         (display "\n")
                                         (world-rotate-cw w))))
                                     g8465)
                                    (letrec* ((g8466 w)) g8466)))))))))))))
                   g8455)))
               (image
                (lambda ()
                  (letrec*
                   ((g8467
                     (begin
                       (write '(funapp 2355 51))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2355 56)) (display "\n") 'image)
                        (begin
                          (write '(funapp 2355 63))
                          (display "\n")
                          '())))))
                   g8467)))
               (image?
                (lambda (image7592)
                  (letrec*
                   ((g8468
                     (letrec*
                      ((x8469
                        (begin
                          (write '(funapp 2360 39))
                          (display "\n")
                          (car image7592))))
                      (begin
                        (write '(funapp 2360 57))
                        (display "\n")
                        (eq?
                         x8469
                         (begin
                           (write '(funapp 2360 67))
                           (display "\n")
                           'image))))))
                   g8468)))
               (overlay
                (lambda (i₁ i₂)
                  (letrec*
                   ((g8470
                     (begin (write '(funapp 2362 58)) (display "\n") (image))))
                   g8470)))
               (circle
                (lambda (r m c)
                  (letrec*
                   ((g8471
                     (begin (write '(funapp 2363 57)) (display "\n") (image))))
                   g8471)))
               (rectangle
                (lambda (w h m c)
                  (letrec*
                   ((g8472
                     (begin (write '(funapp 2364 62)) (display "\n") (image))))
                   g8472)))
               (place-image
                (lambda (i₁ r c i₂)
                  (letrec*
                   ((g8473
                     (begin (write '(funapp 2366 54)) (display "\n") (image))))
                   g8473)))
               (empty-scene
                (lambda (w h)
                  (letrec*
                   ((g8474
                     (begin (write '(funapp 2367 60)) (display "\n") (image))))
                   g8474)))
               (list-pick-random
                (lambda (xs)
                  (letrec*
                   ((g8475
                     (letrec*
                      ((x-cnd8476
                        (letrec*
                         ((x8477
                           (begin
                             (write '(funapp 2373 52))
                             (display "\n")
                             (cdr xs))))
                         (begin
                           (write '(funapp 2373 63))
                           (display "\n")
                           (null? x8477)))))
                      (if x-cnd8476
                        (letrec*
                         ((g8478
                           (begin
                             (write '(funapp 2375 42))
                             (display "\n")
                             (car xs))))
                         g8478)
                        (letrec*
                         ((g8479
                           (letrec*
                            ((x8480
                              (begin
                                (write '(funapp 2379 37))
                                (display "\n")
                                (cdr xs))))
                            (begin
                              (write '(funapp 2380 29))
                              (display "\n")
                              (list-pick-random x8480)))))
                         g8479)))))
                   g8475)))
               (neg-1
                (begin (write '(funapp 2383 23)) (display "\n") (random 10)))
               (world->image
                (lambda (w)
                  (letrec*
                   ((g8481
                     (letrec*
                      ((x8485
                        (letrec*
                         ((x8486
                           (letrec*
                            ((x8490
                              (letrec*
                               ((x8491
                                 (begin
                                   (write '(funapp 2395 40))
                                   (display "\n")
                                   (world-tetra w))))
                               (begin
                                 (write '(funapp 2396 32))
                                 (display "\n")
                                 (tetra-blocks x8491))))
                             (x8487
                              (letrec*
                               ((x8489
                                 (begin
                                   (write '(funapp 2399 40))
                                   (display "\n")
                                   (ghost-blocks w)))
                                (x8488
                                 (begin
                                   (write '(funapp 2400 40))
                                   (display "\n")
                                   (world-blocks w))))
                               (begin
                                 (write '(funapp 2401 32))
                                 (display "\n")
                                 (append x8489 x8488)))))
                            (begin
                              (write '(funapp 2402 29))
                              (display "\n")
                              (append x8490 x8487)))))
                         (begin
                           (write '(funapp 2403 26))
                           (display "\n")
                           (blocks->image x8486))))
                       (x8482
                        (letrec*
                         ((x8484
                           (begin
                             (write '(funapp 2406 34))
                             (display "\n")
                             (* board-width block-size)))
                          (x8483
                           (begin
                             (write '(funapp 2407 34))
                             (display "\n")
                             (* board-height block-size))))
                         (begin
                           (write '(funapp 2408 26))
                           (display "\n")
                           (empty-scene x8484 x8483)))))
                      (begin
                        (write '(funapp 2409 23))
                        (display "\n")
                        (place-image x8485 0 0 x8482)))))
                   g8481)))
               (blocks->image
                (lambda (bs)
                  (letrec*
                   ((g8492
                     (letrec*
                      ((x8498
                        (letrec*
                         ((x8504
                           (begin
                             (write '(funapp 2418 34))
                             (display "\n")
                             (b img)))
                          (x8499
                           (letrec*
                            ((x-cnd8500
                              (letrec*
                               ((x8501
                                 (begin
                                   (write '(funapp 2422 48))
                                   (display "\n")
                                   (block-y b))))
                               (begin
                                 (write '(funapp 2422 62))
                                 (display "\n")
                                 (<= 0 x8501)))))
                            (if x-cnd8500
                              (letrec*
                               ((g8502
                                 (begin
                                   (write '(funapp 2424 48))
                                   (display "\n")
                                   (place-block b img))))
                               g8502)
                              (letrec* ((g8503 img)) g8503)))))
                         (begin
                           (write '(funapp 2426 26))
                           (display "\n")
                           (λ x8504 x8499))))
                       (x8493
                        (letrec*
                         ((x8496
                           (letrec*
                            ((x8497
                              (begin
                                (write '(funapp 2431 37))
                                (display "\n")
                                (* board-width block-size))))
                            (begin
                              (write '(funapp 2432 29))
                              (display "\n")
                              (add1 x8497))))
                          (x8494
                           (letrec*
                            ((x8495
                              (begin
                                (write '(funapp 2435 37))
                                (display "\n")
                                (* board-height block-size))))
                            (begin
                              (write '(funapp 2436 29))
                              (display "\n")
                              (add1 x8495)))))
                         (begin
                           (write '(funapp 2437 26))
                           (display "\n")
                           (empty-scene x8496 x8494)))))
                      (begin
                        (write '(funapp 2438 23))
                        (display "\n")
                        (foldr x8498 x8493 bs)))))
                   g8492)))
               (block->image
                (lambda (b)
                  (letrec*
                   ((g8505
                     (letrec*
                      ((x8509
                        (letrec*
                         ((x8512
                           (begin
                             (write '(funapp 2447 34))
                             (display "\n")
                             (add1 block-size)))
                          (x8511
                           (begin
                             (write '(funapp 2448 34))
                             (display "\n")
                             (add1 block-size)))
                          (x8510
                           (begin
                             (write '(funapp 2449 34))
                             (display "\n")
                             (block-color b))))
                         (begin
                           (write '(funapp 2450 26))
                           (display "\n")
                           (rectangle
                            x8512
                            x8511
                            (begin
                              (write '(funapp 2450 48))
                              (display "\n")
                              'solid)
                            x8510))))
                       (x8506
                        (letrec*
                         ((x8508
                           (begin
                             (write '(funapp 2453 34))
                             (display "\n")
                             (add1 block-size)))
                          (x8507
                           (begin
                             (write '(funapp 2453 60))
                             (display "\n")
                             (add1 block-size))))
                         (begin
                           (write '(funapp 2454 26))
                           (display "\n")
                           (rectangle
                            x8508
                            x8507
                            (begin
                              (write '(funapp 2454 48))
                              (display "\n")
                              'outline)
                            (begin
                              (write '(funapp 2454 57))
                              (display "\n")
                              'black))))))
                      (begin
                        (write '(funapp 2455 23))
                        (display "\n")
                        (overlay x8509 x8506)))))
                   g8505)))
               (place-block
                (lambda (b scene)
                  (letrec*
                   ((g8513
                     (letrec*
                      ((x8522
                        (begin
                          (write '(funapp 2462 31))
                          (display "\n")
                          (block->image b)))
                       (x8518
                        (letrec*
                         ((x8520
                           (letrec*
                            ((x8521
                              (begin
                                (write '(funapp 2467 37))
                                (display "\n")
                                (block-x b))))
                            (begin
                              (write '(funapp 2468 29))
                              (display "\n")
                              (* x8521 block-size))))
                          (x8519
                           (begin
                             (write '(funapp 2469 34))
                             (display "\n")
                             (/ block-size 2))))
                         (begin
                           (write '(funapp 2470 26))
                           (display "\n")
                           (+ x8520 x8519))))
                       (x8514
                        (letrec*
                         ((x8516
                           (letrec*
                            ((x8517
                              (begin
                                (write '(funapp 2475 37))
                                (display "\n")
                                (block-y b))))
                            (begin
                              (write '(funapp 2476 29))
                              (display "\n")
                              (* x8517 block-size))))
                          (x8515
                           (begin
                             (write '(funapp 2477 34))
                             (display "\n")
                             (/ block-size 2))))
                         (begin
                           (write '(funapp 2478 26))
                           (display "\n")
                           (+ x8516 x8515)))))
                      (begin
                        (write '(funapp 2479 23))
                        (display "\n")
                        (place-image x8522 x8518 x8514 scene)))))
                   g8513)))
               (world0
                (lambda (tetras)
                  (letrec*
                   ((g8523
                     (letrec*
                      ((x8524
                        (begin
                          (write '(funapp 2486 31))
                          (display "\n")
                          (list-pick-random tetras))))
                      (begin
                        (write '(funapp 2487 23))
                        (display "\n")
                        (world x8524 null)))))
                   g8523))))
              (letrec*
               ((g8525
                 (letrec*
                  ((x8588
                    (begin
                      (write '(funapp 2493 21))
                      (display "\n")
                      ((lambda (j7355 k7356 f7357)
                         (letrec*
                          ((g8589
                            (lambda (g7353 g7354)
                              (letrec*
                               ((g8590
                                 (letrec*
                                  ((x8591
                                    (letrec*
                                     ((x8593
                                       (begin
                                         (write '(funapp 2502 44))
                                         (display "\n")
                                         (POSN/C j7355 k7356 g7353)))
                                      (x8592
                                       (begin
                                         (write '(funapp 2503 44))
                                         (display "\n")
                                         (POSN/C j7355 k7356 g7354))))
                                     (begin
                                       (write '(funapp 2504 36))
                                       (display "\n")
                                       (f7357 x8593 x8592)))))
                                  (begin
                                    (write '(funapp 2505 33))
                                    (display "\n")
                                    (boolean?/c j7355 k7356 x8591)))))
                               g8590))))
                          g8589))
                       (begin (write '(funapp 2508 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2509 21))
                         (display "\n")
                         'importer)
                       posn=?)))
                   (x8583
                    (letrec*
                     ((x8584
                       (letrec*
                        ((x8587 (input))
                         (x8585
                          (letrec*
                           ((x8586 (input)))
                           (begin
                             (write '(funapp 2516 60))
                             (display "\n")
                             (cons
                              x8586
                              (begin
                                (write '(funapp 2516 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2517 25))
                          (display "\n")
                          (cons x8587 x8585)))))
                     (begin
                       (write '(funapp 2518 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2518 27)) (display "\n") 'posn)
                        x8584))))
                   (x8578
                    (letrec*
                     ((x8579
                       (letrec*
                        ((x8582 (input))
                         (x8580
                          (letrec*
                           ((x8581 (input)))
                           (begin
                             (write '(funapp 2524 60))
                             (display "\n")
                             (cons
                              x8581
                              (begin
                                (write '(funapp 2524 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2525 25))
                          (display "\n")
                          (cons x8582 x8580)))))
                     (begin
                       (write '(funapp 2526 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2526 27)) (display "\n") 'posn)
                        x8579)))))
                  (begin
                    (write '(funapp 2527 19))
                    (display "\n")
                    (x8588 x8583 x8578))))
                (g8526
                 (begin
                   (write '(funapp 2528 24))
                   (display "\n")
                   (any/c
                    (begin (write '(funapp 2528 30)) (display "\n") 'module)
                    (begin (write '(funapp 2528 38)) (display "\n") 'importer)
                    COLOR/C)))
                (g8527
                 (begin
                   (write '(funapp 2529 24))
                   (display "\n")
                   (any/c
                    (begin (write '(funapp 2529 30)) (display "\n") 'module)
                    (begin (write '(funapp 2529 38)) (display "\n") 'importer)
                    POSN/C)))
                (g8528
                 (begin
                   (write '(funapp 2530 24))
                   (display "\n")
                   (any/c
                    (begin (write '(funapp 2530 30)) (display "\n") 'module)
                    (begin (write '(funapp 2530 38)) (display "\n") 'importer)
                    BLOCK/C)))
                (g8529
                 (begin
                   (write '(funapp 2531 24))
                   (display "\n")
                   (any/c
                    (begin (write '(funapp 2531 30)) (display "\n") 'module)
                    (begin (write '(funapp 2531 38)) (display "\n") 'importer)
                    TETRA/C)))
                (g8530
                 (begin
                   (write '(funapp 2532 24))
                   (display "\n")
                   (any/c
                    (begin (write '(funapp 2532 30)) (display "\n") 'module)
                    (begin (write '(funapp 2532 38)) (display "\n") 'importer)
                    WORLD/C)))
                (g8531
                 (begin
                   (write '(funapp 2533 24))
                   (display "\n")
                   (any/c
                    (begin (write '(funapp 2533 30)) (display "\n") 'module)
                    (begin (write '(funapp 2533 38)) (display "\n") 'importer)
                    BSET/C)))
                (g8532
                 (begin
                   (write '(funapp 2534 24))
                   (display "\n")
                   (integer?
                    (begin (write '(funapp 2534 33)) (display "\n") 'module)
                    (begin (write '(funapp 2534 41)) (display "\n") 'importer)
                    block-size)))
                (g8533
                 (begin
                   (write '(funapp 2535 24))
                   (display "\n")
                   (integer?
                    (begin (write '(funapp 2535 33)) (display "\n") 'module)
                    (begin (write '(funapp 2535 41)) (display "\n") 'importer)
                    board-width)))
                (g8534
                 (begin
                   (write '(funapp 2536 24))
                   (display "\n")
                   (integer?
                    (begin (write '(funapp 2536 33)) (display "\n") 'module)
                    (begin (write '(funapp 2536 41)) (display "\n") 'importer)
                    board-height)))
                (g8535
                 (letrec*
                  ((x8606
                    (begin
                      (write '(funapp 2540 21))
                      (display "\n")
                      ((lambda (j7360 k7361 f7362)
                         (letrec*
                          ((g8607
                            (lambda (g7358 g7359)
                              (letrec*
                               ((g8608
                                 (letrec*
                                  ((x8609
                                    (letrec*
                                     ((x8611
                                       (begin
                                         (write '(funapp 2549 44))
                                         (display "\n")
                                         (POSN/C j7360 k7361 g7358)))
                                      (x8610
                                       (begin
                                         (write '(funapp 2550 44))
                                         (display "\n")
                                         (BLOCK/C j7360 k7361 g7359))))
                                     (begin
                                       (write '(funapp 2551 36))
                                       (display "\n")
                                       (f7362 x8611 x8610)))))
                                  (begin
                                    (write '(funapp 2552 33))
                                    (display "\n")
                                    (BLOCK/C j7360 k7361 x8609)))))
                               g8608))))
                          g8607))
                       (begin (write '(funapp 2555 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2556 21))
                         (display "\n")
                         'importer)
                       block-rotate-ccw)))
                   (x8601
                    (letrec*
                     ((x8602
                       (letrec*
                        ((x8605 (input))
                         (x8603
                          (letrec*
                           ((x8604 (input)))
                           (begin
                             (write '(funapp 2563 60))
                             (display "\n")
                             (cons
                              x8604
                              (begin
                                (write '(funapp 2563 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2564 25))
                          (display "\n")
                          (cons x8605 x8603)))))
                     (begin
                       (write '(funapp 2565 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2565 27)) (display "\n") 'posn)
                        x8602))))
                   (x8594
                    (letrec*
                     ((x8595
                       (letrec*
                        ((x8600 (input))
                         (x8596
                          (letrec*
                           ((x8599 (input))
                            (x8597
                             (letrec*
                              ((x8598 (input)))
                              (begin
                                (write '(funapp 2575 57))
                                (display "\n")
                                (cons
                                 x8598
                                 (begin
                                   (write '(funapp 2575 68))
                                   (display "\n")
                                   '()))))))
                           (begin
                             (write '(funapp 2576 28))
                             (display "\n")
                             (cons x8599 x8597)))))
                        (begin
                          (write '(funapp 2577 25))
                          (display "\n")
                          (cons x8600 x8596)))))
                     (begin
                       (write '(funapp 2578 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2578 27)) (display "\n") 'block)
                        x8595)))))
                  (begin
                    (write '(funapp 2579 19))
                    (display "\n")
                    (x8606 x8601 x8594))))
                (g8536
                 (letrec*
                  ((x8624
                    (begin
                      (write '(funapp 2583 21))
                      (display "\n")
                      ((lambda (j7365 k7366 f7367)
                         (letrec*
                          ((g8625
                            (lambda (g7363 g7364)
                              (letrec*
                               ((g8626
                                 (letrec*
                                  ((x8627
                                    (letrec*
                                     ((x8629
                                       (begin
                                         (write '(funapp 2592 44))
                                         (display "\n")
                                         (POSN/C j7365 k7366 g7363)))
                                      (x8628
                                       (begin
                                         (write '(funapp 2593 44))
                                         (display "\n")
                                         (BLOCK/C j7365 k7366 g7364))))
                                     (begin
                                       (write '(funapp 2594 36))
                                       (display "\n")
                                       (f7367 x8629 x8628)))))
                                  (begin
                                    (write '(funapp 2595 33))
                                    (display "\n")
                                    (BLOCK/C j7365 k7366 x8627)))))
                               g8626))))
                          g8625))
                       (begin (write '(funapp 2598 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2599 21))
                         (display "\n")
                         'importer)
                       block-rotate-cw)))
                   (x8619
                    (letrec*
                     ((x8620
                       (letrec*
                        ((x8623 (input))
                         (x8621
                          (letrec*
                           ((x8622 (input)))
                           (begin
                             (write '(funapp 2606 60))
                             (display "\n")
                             (cons
                              x8622
                              (begin
                                (write '(funapp 2606 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2607 25))
                          (display "\n")
                          (cons x8623 x8621)))))
                     (begin
                       (write '(funapp 2608 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2608 27)) (display "\n") 'posn)
                        x8620))))
                   (x8612
                    (letrec*
                     ((x8613
                       (letrec*
                        ((x8618 (input))
                         (x8614
                          (letrec*
                           ((x8617 (input))
                            (x8615
                             (letrec*
                              ((x8616 (input)))
                              (begin
                                (write '(funapp 2618 57))
                                (display "\n")
                                (cons
                                 x8616
                                 (begin
                                   (write '(funapp 2618 68))
                                   (display "\n")
                                   '()))))))
                           (begin
                             (write '(funapp 2619 28))
                             (display "\n")
                             (cons x8617 x8615)))))
                        (begin
                          (write '(funapp 2620 25))
                          (display "\n")
                          (cons x8618 x8614)))))
                     (begin
                       (write '(funapp 2621 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2621 27)) (display "\n") 'block)
                        x8613)))))
                  (begin
                    (write '(funapp 2622 19))
                    (display "\n")
                    (x8624 x8619 x8612))))
                (g8537
                 (letrec*
                  ((x8644
                    (begin
                      (write '(funapp 2626 21))
                      (display "\n")
                      ((lambda (j7370 k7371 f7372)
                         (letrec*
                          ((g8645
                            (lambda (g7368 g7369)
                              (letrec*
                               ((g8646
                                 (letrec*
                                  ((x8647
                                    (letrec*
                                     ((x8649
                                       (begin
                                         (write '(funapp 2635 44))
                                         (display "\n")
                                         (BLOCK/C j7370 k7371 g7368)))
                                      (x8648
                                       (begin
                                         (write '(funapp 2636 44))
                                         (display "\n")
                                         (BLOCK/C j7370 k7371 g7369))))
                                     (begin
                                       (write '(funapp 2637 36))
                                       (display "\n")
                                       (f7372 x8649 x8648)))))
                                  (begin
                                    (write '(funapp 2638 33))
                                    (display "\n")
                                    (boolean?/c j7370 k7371 x8647)))))
                               g8646))))
                          g8645))
                       (begin (write '(funapp 2641 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2642 21))
                         (display "\n")
                         'importer)
                       block=?)))
                   (x8637
                    (letrec*
                     ((x8638
                       (letrec*
                        ((x8643 (input))
                         (x8639
                          (letrec*
                           ((x8642 (input))
                            (x8640
                             (letrec*
                              ((x8641 (input)))
                              (begin
                                (write '(funapp 2653 57))
                                (display "\n")
                                (cons
                                 x8641
                                 (begin
                                   (write '(funapp 2653 68))
                                   (display "\n")
                                   '()))))))
                           (begin
                             (write '(funapp 2654 28))
                             (display "\n")
                             (cons x8642 x8640)))))
                        (begin
                          (write '(funapp 2655 25))
                          (display "\n")
                          (cons x8643 x8639)))))
                     (begin
                       (write '(funapp 2656 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2656 27)) (display "\n") 'block)
                        x8638))))
                   (x8630
                    (letrec*
                     ((x8631
                       (letrec*
                        ((x8636 (input))
                         (x8632
                          (letrec*
                           ((x8635 (input))
                            (x8633
                             (letrec*
                              ((x8634 (input)))
                              (begin
                                (write '(funapp 2666 57))
                                (display "\n")
                                (cons
                                 x8634
                                 (begin
                                   (write '(funapp 2666 68))
                                   (display "\n")
                                   '()))))))
                           (begin
                             (write '(funapp 2667 28))
                             (display "\n")
                             (cons x8635 x8633)))))
                        (begin
                          (write '(funapp 2668 25))
                          (display "\n")
                          (cons x8636 x8632)))))
                     (begin
                       (write '(funapp 2669 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2669 27)) (display "\n") 'block)
                        x8631)))))
                  (begin
                    (write '(funapp 2670 19))
                    (display "\n")
                    (x8644 x8637 x8630))))
                (g8538
                 (letrec*
                  ((x8659
                    (begin
                      (write '(funapp 2674 21))
                      (display "\n")
                      ((lambda (j7376 k7377 f7378)
                         (letrec*
                          ((g8660
                            (lambda (g7373 g7374 g7375)
                              (letrec*
                               ((g8661
                                 (letrec*
                                  ((x8662
                                    (letrec*
                                     ((x8665
                                       (begin
                                         (write '(funapp 2683 44))
                                         (display "\n")
                                         (real?/c j7376 k7377 g7373)))
                                      (x8664
                                       (begin
                                         (write '(funapp 2684 44))
                                         (display "\n")
                                         (real?/c j7376 k7377 g7374)))
                                      (x8663
                                       (begin
                                         (write '(funapp 2685 44))
                                         (display "\n")
                                         (BLOCK/C j7376 k7377 g7375))))
                                     (begin
                                       (write '(funapp 2686 36))
                                       (display "\n")
                                       (f7378 x8665 x8664 x8663)))))
                                  (begin
                                    (write '(funapp 2687 33))
                                    (display "\n")
                                    (BLOCK/C j7376 k7377 x8662)))))
                               g8661))))
                          g8660))
                       (begin (write '(funapp 2690 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2691 21))
                         (display "\n")
                         'importer)
                       block-move)))
                   (x8658 (input))
                   (x8657 (input))
                   (x8650
                    (letrec*
                     ((x8651
                       (letrec*
                        ((x8656 (input))
                         (x8652
                          (letrec*
                           ((x8655 (input))
                            (x8653
                             (letrec*
                              ((x8654 (input)))
                              (begin
                                (write '(funapp 2704 57))
                                (display "\n")
                                (cons
                                 x8654
                                 (begin
                                   (write '(funapp 2704 68))
                                   (display "\n")
                                   '()))))))
                           (begin
                             (write '(funapp 2705 28))
                             (display "\n")
                             (cons x8655 x8653)))))
                        (begin
                          (write '(funapp 2706 25))
                          (display "\n")
                          (cons x8656 x8652)))))
                     (begin
                       (write '(funapp 2707 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2707 27)) (display "\n") 'block)
                        x8651)))))
                  (begin
                    (write '(funapp 2708 19))
                    (display "\n")
                    (x8659 x8658 x8657 x8650))))
                (g8539
                 (letrec*
                  ((x8674
                    (begin
                      (write '(funapp 2712 21))
                      (display "\n")
                      ((lambda (j7381 k7382 f7383)
                         (letrec*
                          ((g8675
                            (lambda (g7379 g7380)
                              (letrec*
                               ((g8676
                                 (letrec*
                                  ((x8677
                                    (letrec*
                                     ((x8679
                                       (begin
                                         (write '(funapp 2721 44))
                                         (display "\n")
                                         (BSET/C j7381 k7382 g7379)))
                                      (x8678
                                       (begin
                                         (write '(funapp 2722 44))
                                         (display "\n")
                                         (BLOCK/C j7381 k7382 g7380))))
                                     (begin
                                       (write '(funapp 2723 36))
                                       (display "\n")
                                       (f7383 x8679 x8678)))))
                                  (begin
                                    (write '(funapp 2724 33))
                                    (display "\n")
                                    (boolean?/c j7381 k7382 x8677)))))
                               g8676))))
                          g8675))
                       (begin (write '(funapp 2727 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2728 21))
                         (display "\n")
                         'importer)
                       blocks-contains?)))
                   (x8673 (input))
                   (x8666
                    (letrec*
                     ((x8667
                       (letrec*
                        ((x8672 (input))
                         (x8668
                          (letrec*
                           ((x8671 (input))
                            (x8669
                             (letrec*
                              ((x8670 (input)))
                              (begin
                                (write '(funapp 2740 57))
                                (display "\n")
                                (cons
                                 x8670
                                 (begin
                                   (write '(funapp 2740 68))
                                   (display "\n")
                                   '()))))))
                           (begin
                             (write '(funapp 2741 28))
                             (display "\n")
                             (cons x8671 x8669)))))
                        (begin
                          (write '(funapp 2742 25))
                          (display "\n")
                          (cons x8672 x8668)))))
                     (begin
                       (write '(funapp 2743 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2743 27)) (display "\n") 'block)
                        x8667)))))
                  (begin
                    (write '(funapp 2744 19))
                    (display "\n")
                    (x8674 x8673 x8666))))
                (g8540
                 (letrec*
                  ((x8682
                    (begin
                      (write '(funapp 2748 21))
                      (display "\n")
                      ((lambda (j7386 k7387 f7388)
                         (letrec*
                          ((g8683
                            (lambda (g7384 g7385)
                              (letrec*
                               ((g8684
                                 (letrec*
                                  ((x8685
                                    (letrec*
                                     ((x8687
                                       (begin
                                         (write '(funapp 2757 44))
                                         (display "\n")
                                         (BSET/C j7386 k7387 g7384)))
                                      (x8686
                                       (begin
                                         (write '(funapp 2758 44))
                                         (display "\n")
                                         (BSET/C j7386 k7387 g7385))))
                                     (begin
                                       (write '(funapp 2759 36))
                                       (display "\n")
                                       (f7388 x8687 x8686)))))
                                  (begin
                                    (write '(funapp 2760 33))
                                    (display "\n")
                                    (boolean?/c j7386 k7387 x8685)))))
                               g8684))))
                          g8683))
                       (begin (write '(funapp 2763 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2764 21))
                         (display "\n")
                         'importer)
                       blocks=?)))
                   (x8681 (input))
                   (x8680 (input)))
                  (begin
                    (write '(funapp 2768 19))
                    (display "\n")
                    (x8682 x8681 x8680))))
                (g8541
                 (letrec*
                  ((x8690
                    (begin
                      (write '(funapp 2772 21))
                      (display "\n")
                      ((lambda (j7391 k7392 f7393)
                         (letrec*
                          ((g8691
                            (lambda (g7389 g7390)
                              (letrec*
                               ((g8692
                                 (letrec*
                                  ((x8693
                                    (letrec*
                                     ((x8695
                                       (begin
                                         (write '(funapp 2781 44))
                                         (display "\n")
                                         (BSET/C j7391 k7392 g7389)))
                                      (x8694
                                       (begin
                                         (write '(funapp 2782 44))
                                         (display "\n")
                                         (BSET/C j7391 k7392 g7390))))
                                     (begin
                                       (write '(funapp 2783 36))
                                       (display "\n")
                                       (f7393 x8695 x8694)))))
                                  (begin
                                    (write '(funapp 2784 33))
                                    (display "\n")
                                    (boolean?/c j7391 k7392 x8693)))))
                               g8692))))
                          g8691))
                       (begin (write '(funapp 2787 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2788 21))
                         (display "\n")
                         'importer)
                       blocks-subset?)))
                   (x8689 (input))
                   (x8688 (input)))
                  (begin
                    (write '(funapp 2792 19))
                    (display "\n")
                    (x8690 x8689 x8688))))
                (g8542
                 (letrec*
                  ((x8698
                    (begin
                      (write '(funapp 2796 21))
                      (display "\n")
                      ((lambda (j7396 k7397 f7398)
                         (letrec*
                          ((g8699
                            (lambda (g7394 g7395)
                              (letrec*
                               ((g8700
                                 (letrec*
                                  ((x8701
                                    (letrec*
                                     ((x8703
                                       (begin
                                         (write '(funapp 2805 44))
                                         (display "\n")
                                         (BSET/C j7396 k7397 g7394)))
                                      (x8702
                                       (begin
                                         (write '(funapp 2806 44))
                                         (display "\n")
                                         (BSET/C j7396 k7397 g7395))))
                                     (begin
                                       (write '(funapp 2807 36))
                                       (display "\n")
                                       (f7398 x8703 x8702)))))
                                  (begin
                                    (write '(funapp 2808 33))
                                    (display "\n")
                                    (BSET/C j7396 k7397 x8701)))))
                               g8700))))
                          g8699))
                       (begin (write '(funapp 2811 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2812 21))
                         (display "\n")
                         'importer)
                       blocks-intersect)))
                   (x8697 (input))
                   (x8696 (input)))
                  (begin
                    (write '(funapp 2816 19))
                    (display "\n")
                    (x8698 x8697 x8696))))
                (g8543
                 (letrec*
                  ((x8705
                    (begin
                      (write '(funapp 2820 21))
                      (display "\n")
                      ((lambda (j7400 k7401 f7402)
                         (letrec*
                          ((g8706
                            (lambda (g7399)
                              (letrec*
                               ((g8707
                                 (letrec*
                                  ((x8708
                                    (letrec*
                                     ((x8709
                                       (begin
                                         (write '(funapp 2829 44))
                                         (display "\n")
                                         (BSET/C j7400 k7401 g7399))))
                                     (begin
                                       (write '(funapp 2830 36))
                                       (display "\n")
                                       (f7402 x8709)))))
                                  (begin
                                    (write '(funapp 2831 33))
                                    (display "\n")
                                    (real?/c j7400 k7401 x8708)))))
                               g8707))))
                          g8706))
                       (begin (write '(funapp 2834 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2835 21))
                         (display "\n")
                         'importer)
                       blocks-count)))
                   (x8704 (input)))
                  (begin
                    (write '(funapp 2838 19))
                    (display "\n")
                    (x8705 x8704))))
                (g8544
                 (letrec*
                  ((x8711
                    (begin
                      (write '(funapp 2842 21))
                      (display "\n")
                      ((lambda (j7404 k7405 f7406)
                         (letrec*
                          ((g8712
                            (lambda (g7403)
                              (letrec*
                               ((g8713
                                 (letrec*
                                  ((x8714
                                    (letrec*
                                     ((x8715
                                       (begin
                                         (write '(funapp 2851 44))
                                         (display "\n")
                                         (BSET/C j7404 k7405 g7403))))
                                     (begin
                                       (write '(funapp 2852 36))
                                       (display "\n")
                                       (f7406 x8715)))))
                                  (begin
                                    (write '(funapp 2853 33))
                                    (display "\n")
                                    (boolean?/c j7404 k7405 x8714)))))
                               g8713))))
                          g8712))
                       (begin (write '(funapp 2856 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2857 21))
                         (display "\n")
                         'importer)
                       blocks-overflow?)))
                   (x8710 (input)))
                  (begin
                    (write '(funapp 2860 19))
                    (display "\n")
                    (x8711 x8710))))
                (g8545
                 (letrec*
                  ((x8719
                    (begin
                      (write '(funapp 2864 21))
                      (display "\n")
                      ((lambda (j7410 k7411 f7412)
                         (letrec*
                          ((g8720
                            (lambda (g7407 g7408 g7409)
                              (letrec*
                               ((g8721
                                 (letrec*
                                  ((x8722
                                    (letrec*
                                     ((x8725
                                       (begin
                                         (write '(funapp 2873 44))
                                         (display "\n")
                                         (real?/c j7410 k7411 g7407)))
                                      (x8724
                                       (begin
                                         (write '(funapp 2874 44))
                                         (display "\n")
                                         (real?/c j7410 k7411 g7408)))
                                      (x8723
                                       (begin
                                         (write '(funapp 2875 44))
                                         (display "\n")
                                         (BSET/C j7410 k7411 g7409))))
                                     (begin
                                       (write '(funapp 2876 36))
                                       (display "\n")
                                       (f7412 x8725 x8724 x8723)))))
                                  (begin
                                    (write '(funapp 2877 33))
                                    (display "\n")
                                    (BSET/C j7410 k7411 x8722)))))
                               g8721))))
                          g8720))
                       (begin (write '(funapp 2880 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2881 21))
                         (display "\n")
                         'importer)
                       blocks-move)))
                   (x8718 (input))
                   (x8717 (input))
                   (x8716 (input)))
                  (begin
                    (write '(funapp 2886 19))
                    (display "\n")
                    (x8719 x8718 x8717 x8716))))
                (g8546
                 (letrec*
                  ((x8732
                    (begin
                      (write '(funapp 2890 21))
                      (display "\n")
                      ((lambda (j7415 k7416 f7417)
                         (letrec*
                          ((g8733
                            (lambda (g7413 g7414)
                              (letrec*
                               ((g8734
                                 (letrec*
                                  ((x8735
                                    (letrec*
                                     ((x8737
                                       (begin
                                         (write '(funapp 2899 44))
                                         (display "\n")
                                         (POSN/C j7415 k7416 g7413)))
                                      (x8736
                                       (begin
                                         (write '(funapp 2900 44))
                                         (display "\n")
                                         (BSET/C j7415 k7416 g7414))))
                                     (begin
                                       (write '(funapp 2901 36))
                                       (display "\n")
                                       (f7417 x8737 x8736)))))
                                  (begin
                                    (write '(funapp 2902 33))
                                    (display "\n")
                                    (BSET/C j7415 k7416 x8735)))))
                               g8734))))
                          g8733))
                       (begin (write '(funapp 2905 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2906 21))
                         (display "\n")
                         'importer)
                       blocks-rotate-cw)))
                   (x8727
                    (letrec*
                     ((x8728
                       (letrec*
                        ((x8731 (input))
                         (x8729
                          (letrec*
                           ((x8730 (input)))
                           (begin
                             (write '(funapp 2913 60))
                             (display "\n")
                             (cons
                              x8730
                              (begin
                                (write '(funapp 2913 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2914 25))
                          (display "\n")
                          (cons x8731 x8729)))))
                     (begin
                       (write '(funapp 2915 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2915 27)) (display "\n") 'posn)
                        x8728))))
                   (x8726 (input)))
                  (begin
                    (write '(funapp 2917 19))
                    (display "\n")
                    (x8732 x8727 x8726))))
                (g8547
                 (letrec*
                  ((x8744
                    (begin
                      (write '(funapp 2921 21))
                      (display "\n")
                      ((lambda (j7420 k7421 f7422)
                         (letrec*
                          ((g8745
                            (lambda (g7418 g7419)
                              (letrec*
                               ((g8746
                                 (letrec*
                                  ((x8747
                                    (letrec*
                                     ((x8749
                                       (begin
                                         (write '(funapp 2930 44))
                                         (display "\n")
                                         (POSN/C j7420 k7421 g7418)))
                                      (x8748
                                       (begin
                                         (write '(funapp 2931 44))
                                         (display "\n")
                                         (BSET/C j7420 k7421 g7419))))
                                     (begin
                                       (write '(funapp 2932 36))
                                       (display "\n")
                                       (f7422 x8749 x8748)))))
                                  (begin
                                    (write '(funapp 2933 33))
                                    (display "\n")
                                    (BSET/C j7420 k7421 x8747)))))
                               g8746))))
                          g8745))
                       (begin (write '(funapp 2936 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2937 21))
                         (display "\n")
                         'importer)
                       blocks-rotate-ccw)))
                   (x8739
                    (letrec*
                     ((x8740
                       (letrec*
                        ((x8743 (input))
                         (x8741
                          (letrec*
                           ((x8742 (input)))
                           (begin
                             (write '(funapp 2944 60))
                             (display "\n")
                             (cons
                              x8742
                              (begin
                                (write '(funapp 2944 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2945 25))
                          (display "\n")
                          (cons x8743 x8741)))))
                     (begin
                       (write '(funapp 2946 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2946 27)) (display "\n") 'posn)
                        x8740))))
                   (x8738 (input)))
                  (begin
                    (write '(funapp 2948 19))
                    (display "\n")
                    (x8744 x8739 x8738))))
                (g8548
                 (letrec*
                  ((x8752
                    (begin
                      (write '(funapp 2952 21))
                      (display "\n")
                      ((lambda (j7425 k7426 f7427)
                         (letrec*
                          ((g8753
                            (lambda (g7423 g7424)
                              (letrec*
                               ((g8754
                                 (letrec*
                                  ((x8755
                                    (letrec*
                                     ((x8757
                                       (begin
                                         (write '(funapp 2961 44))
                                         (display "\n")
                                         (BSET/C j7425 k7426 g7423)))
                                      (x8756
                                       (begin
                                         (write '(funapp 2962 44))
                                         (display "\n")
                                         (COLOR/C j7425 k7426 g7424))))
                                     (begin
                                       (write '(funapp 2963 36))
                                       (display "\n")
                                       (f7427 x8757 x8756)))))
                                  (begin
                                    (write '(funapp 2964 33))
                                    (display "\n")
                                    (BSET/C j7425 k7426 x8755)))))
                               g8754))))
                          g8753))
                       (begin (write '(funapp 2967 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2968 21))
                         (display "\n")
                         'importer)
                       blocks-change-color)))
                   (x8751 (input))
                   (x8750 (input)))
                  (begin
                    (write '(funapp 2972 19))
                    (display "\n")
                    (x8752 x8751 x8750))))
                (g8549
                 (letrec*
                  ((x8760
                    (begin
                      (write '(funapp 2976 21))
                      (display "\n")
                      ((lambda (j7430 k7431 f7432)
                         (letrec*
                          ((g8761
                            (lambda (g7428 g7429)
                              (letrec*
                               ((g8762
                                 (letrec*
                                  ((x8763
                                    (letrec*
                                     ((x8765
                                       (begin
                                         (write '(funapp 2985 44))
                                         (display "\n")
                                         (BSET/C j7430 k7431 g7428)))
                                      (x8764
                                       (begin
                                         (write '(funapp 2986 44))
                                         (display "\n")
                                         (real?/c j7430 k7431 g7429))))
                                     (begin
                                       (write '(funapp 2987 36))
                                       (display "\n")
                                       (f7432 x8765 x8764)))))
                                  (begin
                                    (write '(funapp 2988 33))
                                    (display "\n")
                                    (BSET/C j7430 k7431 x8763)))))
                               g8762))))
                          g8761))
                       (begin (write '(funapp 2991 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2992 21))
                         (display "\n")
                         'importer)
                       blocks-row)))
                   (x8759 (input))
                   (x8758 (input)))
                  (begin
                    (write '(funapp 2996 19))
                    (display "\n")
                    (x8760 x8759 x8758))))
                (g8550
                 (letrec*
                  ((x8768
                    (begin
                      (write '(funapp 3000 21))
                      (display "\n")
                      ((lambda (j7435 k7436 f7437)
                         (letrec*
                          ((g8769
                            (lambda (g7433 g7434)
                              (letrec*
                               ((g8770
                                 (letrec*
                                  ((x8771
                                    (letrec*
                                     ((x8773
                                       (begin
                                         (write '(funapp 3009 44))
                                         (display "\n")
                                         (BSET/C j7435 k7436 g7433)))
                                      (x8772
                                       (begin
                                         (write '(funapp 3010 44))
                                         (display "\n")
                                         (real?/c j7435 k7436 g7434))))
                                     (begin
                                       (write '(funapp 3011 36))
                                       (display "\n")
                                       (f7437 x8773 x8772)))))
                                  (begin
                                    (write '(funapp 3012 33))
                                    (display "\n")
                                    (boolean?/c j7435 k7436 x8771)))))
                               g8770))))
                          g8769))
                       (begin (write '(funapp 3015 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3016 21))
                         (display "\n")
                         'importer)
                       full-row?)))
                   (x8767 (input))
                   (x8766 (input)))
                  (begin
                    (write '(funapp 3020 19))
                    (display "\n")
                    (x8768 x8767 x8766))))
                (g8551
                 (letrec*
                  ((x8776
                    (begin
                      (write '(funapp 3024 21))
                      (display "\n")
                      ((lambda (j7440 k7441 f7442)
                         (letrec*
                          ((g8777
                            (lambda (g7438 g7439)
                              (letrec*
                               ((g8778
                                 (letrec*
                                  ((x8779
                                    (letrec*
                                     ((x8781
                                       (begin
                                         (write '(funapp 3033 44))
                                         (display "\n")
                                         (BSET/C j7440 k7441 g7438)))
                                      (x8780
                                       (begin
                                         (write '(funapp 3034 44))
                                         (display "\n")
                                         (BSET/C j7440 k7441 g7439))))
                                     (begin
                                       (write '(funapp 3035 36))
                                       (display "\n")
                                       (f7442 x8781 x8780)))))
                                  (begin
                                    (write '(funapp 3036 33))
                                    (display "\n")
                                    (BSET/C j7440 k7441 x8779)))))
                               g8778))))
                          g8777))
                       (begin (write '(funapp 3039 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3040 21))
                         (display "\n")
                         'importer)
                       blocks-union)))
                   (x8775 (input))
                   (x8774 (input)))
                  (begin
                    (write '(funapp 3044 19))
                    (display "\n")
                    (x8776 x8775 x8774))))
                (g8552
                 (letrec*
                  ((x8783
                    (begin
                      (write '(funapp 3048 21))
                      (display "\n")
                      ((lambda (j7444 k7445 f7446)
                         (letrec*
                          ((g8784
                            (lambda (g7443)
                              (letrec*
                               ((g8785
                                 (letrec*
                                  ((x8786
                                    (letrec*
                                     ((x8787
                                       (begin
                                         (write '(funapp 3057 44))
                                         (display "\n")
                                         (BSET/C j7444 k7445 g7443))))
                                     (begin
                                       (write '(funapp 3058 36))
                                       (display "\n")
                                       (f7446 x8787)))))
                                  (begin
                                    (write '(funapp 3059 33))
                                    (display "\n")
                                    (real?/c j7444 k7445 x8786)))))
                               g8785))))
                          g8784))
                       (begin (write '(funapp 3062 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3063 21))
                         (display "\n")
                         'importer)
                       blocks-max-x)))
                   (x8782 (input)))
                  (begin
                    (write '(funapp 3066 19))
                    (display "\n")
                    (x8783 x8782))))
                (g8553
                 (letrec*
                  ((x8789
                    (begin
                      (write '(funapp 3070 21))
                      (display "\n")
                      ((lambda (j7448 k7449 f7450)
                         (letrec*
                          ((g8790
                            (lambda (g7447)
                              (letrec*
                               ((g8791
                                 (letrec*
                                  ((x8792
                                    (letrec*
                                     ((x8793
                                       (begin
                                         (write '(funapp 3079 44))
                                         (display "\n")
                                         (BSET/C j7448 k7449 g7447))))
                                     (begin
                                       (write '(funapp 3080 36))
                                       (display "\n")
                                       (f7450 x8793)))))
                                  (begin
                                    (write '(funapp 3081 33))
                                    (display "\n")
                                    (real?/c j7448 k7449 x8792)))))
                               g8791))))
                          g8790))
                       (begin (write '(funapp 3084 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3085 21))
                         (display "\n")
                         'importer)
                       blocks-min-x)))
                   (x8788 (input)))
                  (begin
                    (write '(funapp 3088 19))
                    (display "\n")
                    (x8789 x8788))))
                (g8554
                 (letrec*
                  ((x8795
                    (begin
                      (write '(funapp 3092 21))
                      (display "\n")
                      ((lambda (j7452 k7453 f7454)
                         (letrec*
                          ((g8796
                            (lambda (g7451)
                              (letrec*
                               ((g8797
                                 (letrec*
                                  ((x8798
                                    (letrec*
                                     ((x8799
                                       (begin
                                         (write '(funapp 3101 44))
                                         (display "\n")
                                         (BSET/C j7452 k7453 g7451))))
                                     (begin
                                       (write '(funapp 3102 36))
                                       (display "\n")
                                       (f7454 x8799)))))
                                  (begin
                                    (write '(funapp 3103 33))
                                    (display "\n")
                                    (real?/c j7452 k7453 x8798)))))
                               g8797))))
                          g8796))
                       (begin (write '(funapp 3106 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3107 21))
                         (display "\n")
                         'importer)
                       blocks-max-y)))
                   (x8794 (input)))
                  (begin
                    (write '(funapp 3110 19))
                    (display "\n")
                    (x8795 x8794))))
                (g8555
                 (letrec*
                  ((x8801
                    (begin
                      (write '(funapp 3114 21))
                      (display "\n")
                      ((lambda (j7456 k7457 f7458)
                         (letrec*
                          ((g8802
                            (lambda (g7455)
                              (letrec*
                               ((g8803
                                 (letrec*
                                  ((x8804
                                    (letrec*
                                     ((x8805
                                       (begin
                                         (write '(funapp 3123 44))
                                         (display "\n")
                                         (BSET/C j7456 k7457 g7455))))
                                     (begin
                                       (write '(funapp 3124 36))
                                       (display "\n")
                                       (f7458 x8805)))))
                                  (begin
                                    (write '(funapp 3125 33))
                                    (display "\n")
                                    (BSET/C j7456 k7457 x8804)))))
                               g8803))))
                          g8802))
                       (begin (write '(funapp 3128 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3129 21))
                         (display "\n")
                         'importer)
                       eliminate-full-rows)))
                   (x8800 (input)))
                  (begin
                    (write '(funapp 3132 19))
                    (display "\n")
                    (x8801 x8800))))
                (g8556
                 (letrec*
                  ((x8817
                    (begin
                      (write '(funapp 3136 21))
                      (display "\n")
                      ((lambda (j7462 k7463 f7464)
                         (letrec*
                          ((g8818
                            (lambda (g7459 g7460 g7461)
                              (letrec*
                               ((g8819
                                 (letrec*
                                  ((x8820
                                    (letrec*
                                     ((x8823
                                       (begin
                                         (write '(funapp 3145 44))
                                         (display "\n")
                                         (integer?/c j7462 k7463 g7459)))
                                      (x8822
                                       (begin
                                         (write '(funapp 3146 44))
                                         (display "\n")
                                         (integer?/c j7462 k7463 g7460)))
                                      (x8821
                                       (begin
                                         (write '(funapp 3147 44))
                                         (display "\n")
                                         (TETRA/C j7462 k7463 g7461))))
                                     (begin
                                       (write '(funapp 3148 36))
                                       (display "\n")
                                       (f7464 x8823 x8822 x8821)))))
                                  (begin
                                    (write '(funapp 3149 33))
                                    (display "\n")
                                    (TETRA/C j7462 k7463 x8820)))))
                               g8819))))
                          g8818))
                       (begin (write '(funapp 3152 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3153 21))
                         (display "\n")
                         'importer)
                       tetra-move)))
                   (x8816 (input))
                   (x8815 (input))
                   (x8806
                    (letrec*
                     ((x8807
                       (letrec*
                        ((x8810
                          (letrec*
                           ((x8811
                             (letrec*
                              ((x8814 (input))
                               (x8812
                                (letrec*
                                 ((x8813 (input)))
                                 (begin
                                   (write '(funapp 3167 60))
                                   (display "\n")
                                   (cons
                                    x8813
                                    (begin
                                      (write '(funapp 3167 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3168 31))
                                (display "\n")
                                (cons x8814 x8812)))))
                           (begin
                             (write '(funapp 3169 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3169 33))
                                (display "\n")
                                'posn)
                              x8811))))
                         (x8808
                          (letrec*
                           ((x8809 (input)))
                           (begin
                             (write '(funapp 3170 60))
                             (display "\n")
                             (cons
                              x8809
                              (begin
                                (write '(funapp 3170 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 3171 25))
                          (display "\n")
                          (cons x8810 x8808)))))
                     (begin
                       (write '(funapp 3172 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 3172 27)) (display "\n") 'tetra)
                        x8807)))))
                  (begin
                    (write '(funapp 3173 19))
                    (display "\n")
                    (x8817 x8816 x8815 x8806))))
                (g8557
                 (letrec*
                  ((x8833
                    (begin
                      (write '(funapp 3177 21))
                      (display "\n")
                      ((lambda (j7466 k7467 f7468)
                         (letrec*
                          ((g8834
                            (lambda (g7465)
                              (letrec*
                               ((g8835
                                 (letrec*
                                  ((x8836
                                    (letrec*
                                     ((x8837
                                       (begin
                                         (write '(funapp 3186 44))
                                         (display "\n")
                                         (TETRA/C j7466 k7467 g7465))))
                                     (begin
                                       (write '(funapp 3187 36))
                                       (display "\n")
                                       (f7468 x8837)))))
                                  (begin
                                    (write '(funapp 3188 33))
                                    (display "\n")
                                    (TETRA/C j7466 k7467 x8836)))))
                               g8835))))
                          g8834))
                       (begin (write '(funapp 3191 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3192 21))
                         (display "\n")
                         'importer)
                       tetra-rotate-ccw)))
                   (x8824
                    (letrec*
                     ((x8825
                       (letrec*
                        ((x8828
                          (letrec*
                           ((x8829
                             (letrec*
                              ((x8832 (input))
                               (x8830
                                (letrec*
                                 ((x8831 (input)))
                                 (begin
                                   (write '(funapp 3204 60))
                                   (display "\n")
                                   (cons
                                    x8831
                                    (begin
                                      (write '(funapp 3204 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3205 31))
                                (display "\n")
                                (cons x8832 x8830)))))
                           (begin
                             (write '(funapp 3206 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3206 33))
                                (display "\n")
                                'posn)
                              x8829))))
                         (x8826
                          (letrec*
                           ((x8827 (input)))
                           (begin
                             (write '(funapp 3207 60))
                             (display "\n")
                             (cons
                              x8827
                              (begin
                                (write '(funapp 3207 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 3208 25))
                          (display "\n")
                          (cons x8828 x8826)))))
                     (begin
                       (write '(funapp 3209 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 3209 27)) (display "\n") 'tetra)
                        x8825)))))
                  (begin
                    (write '(funapp 3210 19))
                    (display "\n")
                    (x8833 x8824))))
                (g8558
                 (letrec*
                  ((x8847
                    (begin
                      (write '(funapp 3214 21))
                      (display "\n")
                      ((lambda (j7470 k7471 f7472)
                         (letrec*
                          ((g8848
                            (lambda (g7469)
                              (letrec*
                               ((g8849
                                 (letrec*
                                  ((x8850
                                    (letrec*
                                     ((x8851
                                       (begin
                                         (write '(funapp 3223 44))
                                         (display "\n")
                                         (TETRA/C j7470 k7471 g7469))))
                                     (begin
                                       (write '(funapp 3224 36))
                                       (display "\n")
                                       (f7472 x8851)))))
                                  (begin
                                    (write '(funapp 3225 33))
                                    (display "\n")
                                    (TETRA/C j7470 k7471 x8850)))))
                               g8849))))
                          g8848))
                       (begin (write '(funapp 3228 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3229 21))
                         (display "\n")
                         'importer)
                       tetra-rotate-cw)))
                   (x8838
                    (letrec*
                     ((x8839
                       (letrec*
                        ((x8842
                          (letrec*
                           ((x8843
                             (letrec*
                              ((x8846 (input))
                               (x8844
                                (letrec*
                                 ((x8845 (input)))
                                 (begin
                                   (write '(funapp 3241 60))
                                   (display "\n")
                                   (cons
                                    x8845
                                    (begin
                                      (write '(funapp 3241 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3242 31))
                                (display "\n")
                                (cons x8846 x8844)))))
                           (begin
                             (write '(funapp 3243 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3243 33))
                                (display "\n")
                                'posn)
                              x8843))))
                         (x8840
                          (letrec*
                           ((x8841 (input)))
                           (begin
                             (write '(funapp 3244 60))
                             (display "\n")
                             (cons
                              x8841
                              (begin
                                (write '(funapp 3244 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 3245 25))
                          (display "\n")
                          (cons x8842 x8840)))))
                     (begin
                       (write '(funapp 3246 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 3246 27)) (display "\n") 'tetra)
                        x8839)))))
                  (begin
                    (write '(funapp 3247 19))
                    (display "\n")
                    (x8847 x8838))))
                (g8559
                 (letrec*
                  ((x8862
                    (begin
                      (write '(funapp 3251 21))
                      (display "\n")
                      ((lambda (j7475 k7476 f7477)
                         (letrec*
                          ((g8863
                            (lambda (g7473 g7474)
                              (letrec*
                               ((g8864
                                 (letrec*
                                  ((x8865
                                    (letrec*
                                     ((x8867
                                       (begin
                                         (write '(funapp 3260 44))
                                         (display "\n")
                                         (TETRA/C j7475 k7476 g7473)))
                                      (x8866
                                       (begin
                                         (write '(funapp 3261 44))
                                         (display "\n")
                                         (BSET/C j7475 k7476 g7474))))
                                     (begin
                                       (write '(funapp 3262 36))
                                       (display "\n")
                                       (f7477 x8867 x8866)))))
                                  (begin
                                    (write '(funapp 3263 33))
                                    (display "\n")
                                    (boolean?/c j7475 k7476 x8865)))))
                               g8864))))
                          g8863))
                       (begin (write '(funapp 3266 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3267 21))
                         (display "\n")
                         'importer)
                       tetra-overlaps-blocks?)))
                   (x8853
                    (letrec*
                     ((x8854
                       (letrec*
                        ((x8857
                          (letrec*
                           ((x8858
                             (letrec*
                              ((x8861 (input))
                               (x8859
                                (letrec*
                                 ((x8860 (input)))
                                 (begin
                                   (write '(funapp 3279 60))
                                   (display "\n")
                                   (cons
                                    x8860
                                    (begin
                                      (write '(funapp 3279 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3280 31))
                                (display "\n")
                                (cons x8861 x8859)))))
                           (begin
                             (write '(funapp 3281 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3281 33))
                                (display "\n")
                                'posn)
                              x8858))))
                         (x8855
                          (letrec*
                           ((x8856 (input)))
                           (begin
                             (write '(funapp 3282 60))
                             (display "\n")
                             (cons
                              x8856
                              (begin
                                (write '(funapp 3282 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 3283 25))
                          (display "\n")
                          (cons x8857 x8855)))))
                     (begin
                       (write '(funapp 3284 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 3284 27)) (display "\n") 'tetra)
                        x8854))))
                   (x8852 (input)))
                  (begin
                    (write '(funapp 3286 19))
                    (display "\n")
                    (x8862 x8853 x8852))))
                (g8560
                 (letrec*
                  ((x8879
                    (begin
                      (write '(funapp 3290 21))
                      (display "\n")
                      ((lambda (j7489 k7490 f7491)
                         (letrec*
                          ((g8880
                            (lambda (g7478
                                     g7479
                                     g7480
                                     g7481
                                     g7482
                                     g7483
                                     g7484
                                     g7485
                                     g7486
                                     g7487
                                     g7488)
                              (letrec*
                               ((g8881
                                 (letrec*
                                  ((x8882
                                    (letrec*
                                     ((x8893
                                       (begin
                                         (write '(funapp 3309 44))
                                         (display "\n")
                                         (COLOR/C j7489 k7490 g7478)))
                                      (x8892
                                       (begin
                                         (write '(funapp 3310 44))
                                         (display "\n")
                                         (real?/c j7489 k7490 g7479)))
                                      (x8891
                                       (begin
                                         (write '(funapp 3311 44))
                                         (display "\n")
                                         (real?/c j7489 k7490 g7480)))
                                      (x8890
                                       (begin
                                         (write '(funapp 3312 44))
                                         (display "\n")
                                         (integer?/c j7489 k7490 g7481)))
                                      (x8889
                                       (begin
                                         (write '(funapp 3313 44))
                                         (display "\n")
                                         (integer?/c j7489 k7490 g7482)))
                                      (x8888
                                       (begin
                                         (write '(funapp 3314 44))
                                         (display "\n")
                                         (integer?/c j7489 k7490 g7483)))
                                      (x8887
                                       (begin
                                         (write '(funapp 3315 44))
                                         (display "\n")
                                         (integer?/c j7489 k7490 g7484)))
                                      (x8886
                                       (begin
                                         (write '(funapp 3316 44))
                                         (display "\n")
                                         (integer?/c j7489 k7490 g7485)))
                                      (x8885
                                       (begin
                                         (write '(funapp 3317 44))
                                         (display "\n")
                                         (integer?/c j7489 k7490 g7486)))
                                      (x8884
                                       (begin
                                         (write '(funapp 3318 44))
                                         (display "\n")
                                         (integer?/c j7489 k7490 g7487)))
                                      (x8883
                                       (begin
                                         (write '(funapp 3319 44))
                                         (display "\n")
                                         (integer?/c j7489 k7490 g7488))))
                                     (begin
                                       (write '(funapp 3320 36))
                                       (display "\n")
                                       (f7491
                                        x8893
                                        x8892
                                        x8891
                                        x8890
                                        x8889
                                        x8888
                                        x8887
                                        x8886
                                        x8885
                                        x8884
                                        x8883)))))
                                  (begin
                                    (write '(funapp 3332 33))
                                    (display "\n")
                                    (TETRA/C j7489 k7490 x8882)))))
                               g8881))))
                          g8880))
                       (begin (write '(funapp 3335 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3336 21))
                         (display "\n")
                         'importer)
                       build-tetra-blocks)))
                   (x8878 (input))
                   (x8877 (input))
                   (x8876 (input))
                   (x8875 (input))
                   (x8874 (input))
                   (x8873 (input))
                   (x8872 (input))
                   (x8871 (input))
                   (x8870 (input))
                   (x8869 (input))
                   (x8868 (input)))
                  (begin
                    (write '(funapp 3349 19))
                    (display "\n")
                    (x8879
                     x8878
                     x8877
                     x8876
                     x8875
                     x8874
                     x8873
                     x8872
                     x8871
                     x8870
                     x8869
                     x8868))))
                (g8561
                 (letrec*
                  ((x8904
                    (begin
                      (write '(funapp 3364 21))
                      (display "\n")
                      ((lambda (j7494 k7495 f7496)
                         (letrec*
                          ((g8905
                            (lambda (g7492 g7493)
                              (letrec*
                               ((g8906
                                 (letrec*
                                  ((x8907
                                    (letrec*
                                     ((x8909
                                       (begin
                                         (write '(funapp 3373 44))
                                         (display "\n")
                                         (TETRA/C j7494 k7495 g7492)))
                                      (x8908
                                       (begin
                                         (write '(funapp 3374 44))
                                         (display "\n")
                                         (COLOR/C j7494 k7495 g7493))))
                                     (begin
                                       (write '(funapp 3375 36))
                                       (display "\n")
                                       (f7496 x8909 x8908)))))
                                  (begin
                                    (write '(funapp 3376 33))
                                    (display "\n")
                                    (TETRA/C j7494 k7495 x8907)))))
                               g8906))))
                          g8905))
                       (begin (write '(funapp 3379 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3380 21))
                         (display "\n")
                         'importer)
                       tetra-change-color)))
                   (x8895
                    (letrec*
                     ((x8896
                       (letrec*
                        ((x8899
                          (letrec*
                           ((x8900
                             (letrec*
                              ((x8903 (input))
                               (x8901
                                (letrec*
                                 ((x8902 (input)))
                                 (begin
                                   (write '(funapp 3392 60))
                                   (display "\n")
                                   (cons
                                    x8902
                                    (begin
                                      (write '(funapp 3392 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3393 31))
                                (display "\n")
                                (cons x8903 x8901)))))
                           (begin
                             (write '(funapp 3394 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3394 33))
                                (display "\n")
                                'posn)
                              x8900))))
                         (x8897
                          (letrec*
                           ((x8898 (input)))
                           (begin
                             (write '(funapp 3395 60))
                             (display "\n")
                             (cons
                              x8898
                              (begin
                                (write '(funapp 3395 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 3396 25))
                          (display "\n")
                          (cons x8899 x8897)))))
                     (begin
                       (write '(funapp 3397 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 3397 27)) (display "\n") 'tetra)
                        x8896))))
                   (x8894 (input)))
                  (begin
                    (write '(funapp 3399 19))
                    (display "\n")
                    (x8904 x8895 x8894))))
                (g8562
                 (letrec*
                  ((x8924
                    (begin
                      (write '(funapp 3403 21))
                      (display "\n")
                      ((lambda (j7499 k7500 f7501)
                         (letrec*
                          ((g8925
                            (lambda (g7497 g7498)
                              (letrec*
                               ((g8926
                                 (letrec*
                                  ((x8927
                                    (letrec*
                                     ((x8929
                                       (begin
                                         (write '(funapp 3412 44))
                                         (display "\n")
                                         (WORLD/C j7499 k7500 g7497)))
                                      (x8928
                                       (begin
                                         (write '(funapp 3413 44))
                                         (display "\n")
                                         (string?/c j7499 k7500 g7498))))
                                     (begin
                                       (write '(funapp 3414 36))
                                       (display "\n")
                                       (f7501 x8929 x8928)))))
                                  (begin
                                    (write '(funapp 3415 33))
                                    (display "\n")
                                    (WORLD/C j7499 k7500 x8927)))))
                               g8926))))
                          g8925))
                       (begin (write '(funapp 3418 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3419 21))
                         (display "\n")
                         'importer)
                       world-key-move)))
                   (x8911
                    (letrec*
                     ((x8912
                       (letrec*
                        ((x8915
                          (letrec*
                           ((x8916
                             (letrec*
                              ((x8919
                                (letrec*
                                 ((x8920
                                   (letrec*
                                    ((x8923 (input))
                                     (x8921
                                      (letrec*
                                       ((x8922 (input)))
                                       (begin
                                         (write '(funapp 3437 40))
                                         (display "\n")
                                         (cons
                                          x8922
                                          (begin
                                            (write '(funapp 3437 51))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3438 37))
                                      (display "\n")
                                      (cons x8923 x8921)))))
                                 (begin
                                   (write '(funapp 3439 34))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3439 39))
                                      (display "\n")
                                      'posn)
                                    x8920))))
                               (x8917
                                (letrec*
                                 ((x8918 (input)))
                                 (begin
                                   (write '(funapp 3441 60))
                                   (display "\n")
                                   (cons
                                    x8918
                                    (begin
                                      (write '(funapp 3441 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3442 31))
                                (display "\n")
                                (cons x8919 x8917)))))
                           (begin
                             (write '(funapp 3443 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3443 33))
                                (display "\n")
                                'tetra)
                              x8916))))
                         (x8913
                          (letrec*
                           ((x8914 (input)))
                           (begin
                             (write '(funapp 3444 60))
                             (display "\n")
                             (cons
                              x8914
                              (begin
                                (write '(funapp 3444 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 3445 25))
                          (display "\n")
                          (cons x8915 x8913)))))
                     (begin
                       (write '(funapp 3446 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 3446 27)) (display "\n") 'world)
                        x8912))))
                   (x8910 (input)))
                  (begin
                    (write '(funapp 3448 19))
                    (display "\n")
                    (x8924 x8911 x8910))))
                (g8563
                 (letrec*
                  ((x8944
                    (begin
                      (write '(funapp 3452 21))
                      (display "\n")
                      ((lambda (j7504 k7505 f7506)
                         (letrec*
                          ((g8945
                            (lambda (g7502 g7503)
                              (letrec*
                               ((g8946
                                 (letrec*
                                  ((x8947
                                    (letrec*
                                     ((x8951
                                       (begin
                                         (write '(funapp 3461 44))
                                         (display "\n")
                                         (WORLD/C j7504 k7505 g7502)))
                                      (x8948
                                       (letrec*
                                        ((x8949
                                          (letrec*
                                           ((x8950
                                             (begin
                                               (write '(funapp 3466 50))
                                               (display "\n")
                                               (listof TETRA/C))))
                                           (begin
                                             (write '(funapp 3467 42))
                                             (display "\n")
                                             (and/c cons?/c x8950)))))
                                        (begin
                                          (write '(funapp 3468 39))
                                          (display "\n")
                                          (x8949 j7504 k7505 g7503)))))
                                     (begin
                                       (write '(funapp 3469 36))
                                       (display "\n")
                                       (f7506 x8951 x8948)))))
                                  (begin
                                    (write '(funapp 3470 33))
                                    (display "\n")
                                    (WORLD/C j7504 k7505 x8947)))))
                               g8946))))
                          g8945))
                       (begin (write '(funapp 3473 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3474 21))
                         (display "\n")
                         'importer)
                       next-world)))
                   (x8931
                    (letrec*
                     ((x8932
                       (letrec*
                        ((x8935
                          (letrec*
                           ((x8936
                             (letrec*
                              ((x8939
                                (letrec*
                                 ((x8940
                                   (letrec*
                                    ((x8943 (input))
                                     (x8941
                                      (letrec*
                                       ((x8942 (input)))
                                       (begin
                                         (write '(funapp 3492 40))
                                         (display "\n")
                                         (cons
                                          x8942
                                          (begin
                                            (write '(funapp 3492 51))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3493 37))
                                      (display "\n")
                                      (cons x8943 x8941)))))
                                 (begin
                                   (write '(funapp 3494 34))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3494 39))
                                      (display "\n")
                                      'posn)
                                    x8940))))
                               (x8937
                                (letrec*
                                 ((x8938 (input)))
                                 (begin
                                   (write '(funapp 3496 60))
                                   (display "\n")
                                   (cons
                                    x8938
                                    (begin
                                      (write '(funapp 3496 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3497 31))
                                (display "\n")
                                (cons x8939 x8937)))))
                           (begin
                             (write '(funapp 3498 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3498 33))
                                (display "\n")
                                'tetra)
                              x8936))))
                         (x8933
                          (letrec*
                           ((x8934 (input)))
                           (begin
                             (write '(funapp 3499 60))
                             (display "\n")
                             (cons
                              x8934
                              (begin
                                (write '(funapp 3499 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 3500 25))
                          (display "\n")
                          (cons x8935 x8933)))))
                     (begin
                       (write '(funapp 3501 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 3501 27)) (display "\n") 'world)
                        x8932))))
                   (x8930 (input)))
                  (begin
                    (write '(funapp 3503 19))
                    (display "\n")
                    (x8944 x8931 x8930))))
                (g8564
                 (letrec*
                  ((x8965
                    (begin
                      (write '(funapp 3507 21))
                      (display "\n")
                      ((lambda (j7508 k7509 f7510)
                         (letrec*
                          ((g8966
                            (lambda (g7507)
                              (letrec*
                               ((g8967
                                 (letrec*
                                  ((x8968
                                    (letrec*
                                     ((x8969
                                       (begin
                                         (write '(funapp 3516 44))
                                         (display "\n")
                                         (WORLD/C j7508 k7509 g7507))))
                                     (begin
                                       (write '(funapp 3517 36))
                                       (display "\n")
                                       (f7510 x8969)))))
                                  (begin
                                    (write '(funapp 3518 33))
                                    (display "\n")
                                    (BSET/C j7508 k7509 x8968)))))
                               g8967))))
                          g8966))
                       (begin (write '(funapp 3521 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3522 21))
                         (display "\n")
                         'importer)
                       ghost-blocks)))
                   (x8952
                    (letrec*
                     ((x8953
                       (letrec*
                        ((x8956
                          (letrec*
                           ((x8957
                             (letrec*
                              ((x8960
                                (letrec*
                                 ((x8961
                                   (letrec*
                                    ((x8964 (input))
                                     (x8962
                                      (letrec*
                                       ((x8963 (input)))
                                       (begin
                                         (write '(funapp 3540 40))
                                         (display "\n")
                                         (cons
                                          x8963
                                          (begin
                                            (write '(funapp 3540 51))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3541 37))
                                      (display "\n")
                                      (cons x8964 x8962)))))
                                 (begin
                                   (write '(funapp 3542 34))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3542 39))
                                      (display "\n")
                                      'posn)
                                    x8961))))
                               (x8958
                                (letrec*
                                 ((x8959 (input)))
                                 (begin
                                   (write '(funapp 3544 60))
                                   (display "\n")
                                   (cons
                                    x8959
                                    (begin
                                      (write '(funapp 3544 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3545 31))
                                (display "\n")
                                (cons x8960 x8958)))))
                           (begin
                             (write '(funapp 3546 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3546 33))
                                (display "\n")
                                'tetra)
                              x8957))))
                         (x8954
                          (letrec*
                           ((x8955 (input)))
                           (begin
                             (write '(funapp 3547 60))
                             (display "\n")
                             (cons
                              x8955
                              (begin
                                (write '(funapp 3547 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 3548 25))
                          (display "\n")
                          (cons x8956 x8954)))))
                     (begin
                       (write '(funapp 3549 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 3549 27)) (display "\n") 'world)
                        x8953)))))
                  (begin
                    (write '(funapp 3550 19))
                    (display "\n")
                    (x8965 x8952))))
                (g8565
                 (letrec*
                  ((x8971
                    (begin
                      (write '(funapp 3554 21))
                      (display "\n")
                      ((lambda (j7512 k7513 f7514)
                         (letrec*
                          ((g8972
                            (lambda (g7511)
                              (letrec*
                               ((g8973
                                 (letrec*
                                  ((x8974
                                    (letrec*
                                     ((x8975
                                       (begin
                                         (write '(funapp 3563 44))
                                         (display "\n")
                                         (any/c j7512 k7513 g7511))))
                                     (begin
                                       (write '(funapp 3564 36))
                                       (display "\n")
                                       (f7514 x8975)))))
                                  (begin
                                    (write '(funapp 3565 33))
                                    (display "\n")
                                    (boolean?/c j7512 k7513 x8974)))))
                               g8973))))
                          g8972))
                       (begin (write '(funapp 3568 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3569 21))
                         (display "\n")
                         'importer)
                       image?)))
                   (x8970 (input)))
                  (begin
                    (write '(funapp 3572 19))
                    (display "\n")
                    (x8971 x8970))))
                (g8566
                 (letrec*
                  ((x8978
                    (begin
                      (write '(funapp 3576 21))
                      (display "\n")
                      ((lambda (j7517 k7518 f7519)
                         (letrec*
                          ((g8979
                            (lambda (g7515 g7516)
                              (letrec*
                               ((g8980
                                 (letrec*
                                  ((x8981
                                    (letrec*
                                     ((x8983
                                       (begin
                                         (write '(funapp 3585 44))
                                         (display "\n")
                                         (image? j7517 k7518 g7515)))
                                      (x8982
                                       (begin
                                         (write '(funapp 3586 44))
                                         (display "\n")
                                         (image? j7517 k7518 g7516))))
                                     (begin
                                       (write '(funapp 3587 36))
                                       (display "\n")
                                       (f7519 x8983 x8982)))))
                                  (begin
                                    (write '(funapp 3588 33))
                                    (display "\n")
                                    (image? j7517 k7518 x8981)))))
                               g8980))))
                          g8979))
                       (begin (write '(funapp 3591 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3592 21))
                         (display "\n")
                         'importer)
                       overlay)))
                   (x8977 (input))
                   (x8976 (input)))
                  (begin
                    (write '(funapp 3596 19))
                    (display "\n")
                    (x8978 x8977 x8976))))
                (g8567
                 (letrec*
                  ((x8987
                    (begin
                      (write '(funapp 3600 21))
                      (display "\n")
                      ((lambda (j7523 k7524 f7525)
                         (letrec*
                          ((g8988
                            (lambda (g7520 g7521 g7522)
                              (letrec*
                               ((g8989
                                 (letrec*
                                  ((x8990
                                    (letrec*
                                     ((x8993
                                       (begin
                                         (write '(funapp 3609 44))
                                         (display "\n")
                                         (real?/c j7523 k7524 g7520)))
                                      (x8992
                                       (begin
                                         (write '(funapp 3610 44))
                                         (display "\n")
                                         (real?/c j7523 k7524 g7521)))
                                      (x8991
                                       (begin
                                         (write '(funapp 3611 44))
                                         (display "\n")
                                         (string?/c j7523 k7524 g7522))))
                                     (begin
                                       (write '(funapp 3612 36))
                                       (display "\n")
                                       (f7525 x8993 x8992 x8991)))))
                                  (begin
                                    (write '(funapp 3613 33))
                                    (display "\n")
                                    (image? j7523 k7524 x8990)))))
                               g8989))))
                          g8988))
                       (begin (write '(funapp 3616 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3617 21))
                         (display "\n")
                         'importer)
                       circle)))
                   (x8986 (input))
                   (x8985 (input))
                   (x8984 (input)))
                  (begin
                    (write '(funapp 3622 19))
                    (display "\n")
                    (x8987 x8986 x8985 x8984))))
                (g8568
                 (letrec*
                  ((x8998
                    (begin
                      (write '(funapp 3626 21))
                      (display "\n")
                      ((lambda (j7530 k7531 f7532)
                         (letrec*
                          ((g8999
                            (lambda (g7526 g7527 g7528 g7529)
                              (letrec*
                               ((g9000
                                 (letrec*
                                  ((x9001
                                    (letrec*
                                     ((x9005
                                       (begin
                                         (write '(funapp 3635 44))
                                         (display "\n")
                                         (real?/c j7530 k7531 g7526)))
                                      (x9004
                                       (begin
                                         (write '(funapp 3636 44))
                                         (display "\n")
                                         (real?/c j7530 k7531 g7527)))
                                      (x9003
                                       (begin
                                         (write '(funapp 3637 44))
                                         (display "\n")
                                         (COLOR/C j7530 k7531 g7528)))
                                      (x9002
                                       (begin
                                         (write '(funapp 3638 44))
                                         (display "\n")
                                         (COLOR/C j7530 k7531 g7529))))
                                     (begin
                                       (write '(funapp 3639 36))
                                       (display "\n")
                                       (f7532 x9005 x9004 x9003 x9002)))))
                                  (begin
                                    (write '(funapp 3640 33))
                                    (display "\n")
                                    (image? j7530 k7531 x9001)))))
                               g9000))))
                          g8999))
                       (begin (write '(funapp 3643 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3644 21))
                         (display "\n")
                         'importer)
                       rectangle)))
                   (x8997 (input))
                   (x8996 (input))
                   (x8995 (input))
                   (x8994 (input)))
                  (begin
                    (write '(funapp 3650 19))
                    (display "\n")
                    (x8998 x8997 x8996 x8995 x8994))))
                (g8569
                 (letrec*
                  ((x9010
                    (begin
                      (write '(funapp 3654 21))
                      (display "\n")
                      ((lambda (j7537 k7538 f7539)
                         (letrec*
                          ((g9011
                            (lambda (g7533 g7534 g7535 g7536)
                              (letrec*
                               ((g9012
                                 (letrec*
                                  ((x9013
                                    (letrec*
                                     ((x9017
                                       (begin
                                         (write '(funapp 3663 44))
                                         (display "\n")
                                         (image/c j7537 k7538 g7533)))
                                      (x9016
                                       (begin
                                         (write '(funapp 3664 44))
                                         (display "\n")
                                         (real?/c j7537 k7538 g7534)))
                                      (x9015
                                       (begin
                                         (write '(funapp 3665 44))
                                         (display "\n")
                                         (real?/c j7537 k7538 g7535)))
                                      (x9014
                                       (begin
                                         (write '(funapp 3666 44))
                                         (display "\n")
                                         (image/c j7537 k7538 g7536))))
                                     (begin
                                       (write '(funapp 3667 36))
                                       (display "\n")
                                       (f7539 x9017 x9016 x9015 x9014)))))
                                  (begin
                                    (write '(funapp 3668 33))
                                    (display "\n")
                                    (image/c j7537 k7538 x9013)))))
                               g9012))))
                          g9011))
                       (begin (write '(funapp 3671 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3672 21))
                         (display "\n")
                         'importer)
                       place-image)))
                   (x9009 (input))
                   (x9008 (input))
                   (x9007 (input))
                   (x9006 (input)))
                  (begin
                    (write '(funapp 3678 19))
                    (display "\n")
                    (x9010 x9009 x9008 x9007 x9006))))
                (g8570
                 (letrec*
                  ((x9020
                    (begin
                      (write '(funapp 3682 21))
                      (display "\n")
                      ((lambda (j7542 k7543 f7544)
                         (letrec*
                          ((g9021
                            (lambda (g7540 g7541)
                              (letrec*
                               ((g9022
                                 (letrec*
                                  ((x9023
                                    (letrec*
                                     ((x9025
                                       (begin
                                         (write '(funapp 3691 44))
                                         (display "\n")
                                         (real?/c j7542 k7543 g7540)))
                                      (x9024
                                       (begin
                                         (write '(funapp 3692 44))
                                         (display "\n")
                                         (real?/c j7542 k7543 g7541))))
                                     (begin
                                       (write '(funapp 3693 36))
                                       (display "\n")
                                       (f7544 x9025 x9024)))))
                                  (begin
                                    (write '(funapp 3694 33))
                                    (display "\n")
                                    (image? j7542 k7543 x9023)))))
                               g9022))))
                          g9021))
                       (begin (write '(funapp 3697 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3698 21))
                         (display "\n")
                         'importer)
                       empty-scene)))
                   (x9019 (input))
                   (x9018 (input)))
                  (begin
                    (write '(funapp 3702 19))
                    (display "\n")
                    (x9020 x9019 x9018))))
                (g8571
                 (letrec*
                  ((x9027
                    (begin
                      (write '(funapp 3706 21))
                      (display "\n")
                      ((lambda (j7546 k7547 f7548)
                         (letrec*
                          ((g9028
                            (lambda (g7545)
                              (letrec*
                               ((g9029
                                 (letrec*
                                  ((x9030
                                    (letrec*
                                     ((x9031
                                       (letrec*
                                        ((x9032
                                          (letrec*
                                           ((x9033
                                             (begin
                                               (write '(funapp 3719 50))
                                               (display "\n")
                                               (listof TETRA/C))))
                                           (begin
                                             (write '(funapp 3720 42))
                                             (display "\n")
                                             (and/c cons?/c x9033)))))
                                        (begin
                                          (write '(funapp 3721 39))
                                          (display "\n")
                                          (x9032 j7546 k7547 g7545)))))
                                     (begin
                                       (write '(funapp 3722 36))
                                       (display "\n")
                                       (f7548 x9031)))))
                                  (begin
                                    (write '(funapp 3723 33))
                                    (display "\n")
                                    (TETRA/C j7546 k7547 x9030)))))
                               g9029))))
                          g9028))
                       (begin (write '(funapp 3726 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3727 21))
                         (display "\n")
                         'importer)
                       list-pick-random)))
                   (x9026 (input)))
                  (begin
                    (write '(funapp 3730 19))
                    (display "\n")
                    (x9027 x9026))))
                (g8572
                 (begin
                   (write '(funapp 3731 24))
                   (display "\n")
                   (integer?/c
                    (begin (write '(funapp 3731 35)) (display "\n") 'module)
                    (begin (write '(funapp 3731 43)) (display "\n") 'importer)
                    neg-1)))
                (g8573
                 (letrec*
                  ((x9047
                    (begin
                      (write '(funapp 3735 21))
                      (display "\n")
                      ((lambda (j7550 k7551 f7552)
                         (letrec*
                          ((g9048
                            (lambda (g7549)
                              (letrec*
                               ((g9049
                                 (letrec*
                                  ((x9050
                                    (letrec*
                                     ((x9051
                                       (begin
                                         (write '(funapp 3744 44))
                                         (display "\n")
                                         (WORLD/C j7550 k7551 g7549))))
                                     (begin
                                       (write '(funapp 3745 36))
                                       (display "\n")
                                       (f7552 x9051)))))
                                  (begin
                                    (write '(funapp 3746 33))
                                    (display "\n")
                                    (image/c j7550 k7551 x9050)))))
                               g9049))))
                          g9048))
                       (begin (write '(funapp 3749 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3750 21))
                         (display "\n")
                         'importer)
                       world->image)))
                   (x9034
                    (letrec*
                     ((x9035
                       (letrec*
                        ((x9038
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
                                         (write '(funapp 3768 40))
                                         (display "\n")
                                         (cons
                                          x9045
                                          (begin
                                            (write '(funapp 3768 51))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3769 37))
                                      (display "\n")
                                      (cons x9046 x9044)))))
                                 (begin
                                   (write '(funapp 3770 34))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3770 39))
                                      (display "\n")
                                      'posn)
                                    x9043))))
                               (x9040
                                (letrec*
                                 ((x9041 (input)))
                                 (begin
                                   (write '(funapp 3772 60))
                                   (display "\n")
                                   (cons
                                    x9041
                                    (begin
                                      (write '(funapp 3772 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3773 31))
                                (display "\n")
                                (cons x9042 x9040)))))
                           (begin
                             (write '(funapp 3774 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3774 33))
                                (display "\n")
                                'tetra)
                              x9039))))
                         (x9036
                          (letrec*
                           ((x9037 (input)))
                           (begin
                             (write '(funapp 3775 60))
                             (display "\n")
                             (cons
                              x9037
                              (begin
                                (write '(funapp 3775 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 3776 25))
                          (display "\n")
                          (cons x9038 x9036)))))
                     (begin
                       (write '(funapp 3777 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 3777 27)) (display "\n") 'world)
                        x9035)))))
                  (begin
                    (write '(funapp 3778 19))
                    (display "\n")
                    (x9047 x9034))))
                (g8574
                 (letrec*
                  ((x9053
                    (begin
                      (write '(funapp 3782 21))
                      (display "\n")
                      ((lambda (j7554 k7555 f7556)
                         (letrec*
                          ((g9054
                            (lambda (g7553)
                              (letrec*
                               ((g9055
                                 (letrec*
                                  ((x9056
                                    (letrec*
                                     ((x9057
                                       (begin
                                         (write '(funapp 3791 44))
                                         (display "\n")
                                         (BSET/C j7554 k7555 g7553))))
                                     (begin
                                       (write '(funapp 3792 36))
                                       (display "\n")
                                       (f7556 x9057)))))
                                  (begin
                                    (write '(funapp 3793 33))
                                    (display "\n")
                                    (image/c j7554 k7555 x9056)))))
                               g9055))))
                          g9054))
                       (begin (write '(funapp 3796 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3797 21))
                         (display "\n")
                         'importer)
                       blocks->image)))
                   (x9052 (input)))
                  (begin
                    (write '(funapp 3800 19))
                    (display "\n")
                    (x9053 x9052))))
                (g8575
                 (letrec*
                  ((x9065
                    (begin
                      (write '(funapp 3804 21))
                      (display "\n")
                      ((lambda (j7558 k7559 f7560)
                         (letrec*
                          ((g9066
                            (lambda (g7557)
                              (letrec*
                               ((g9067
                                 (letrec*
                                  ((x9068
                                    (letrec*
                                     ((x9069
                                       (begin
                                         (write '(funapp 3813 44))
                                         (display "\n")
                                         (BLOCK/C j7558 k7559 g7557))))
                                     (begin
                                       (write '(funapp 3814 36))
                                       (display "\n")
                                       (f7560 x9069)))))
                                  (begin
                                    (write '(funapp 3815 33))
                                    (display "\n")
                                    (image/c j7558 k7559 x9068)))))
                               g9067))))
                          g9066))
                       (begin (write '(funapp 3818 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3819 21))
                         (display "\n")
                         'importer)
                       block->image)))
                   (x9058
                    (letrec*
                     ((x9059
                       (letrec*
                        ((x9064 (input))
                         (x9060
                          (letrec*
                           ((x9063 (input))
                            (x9061
                             (letrec*
                              ((x9062 (input)))
                              (begin
                                (write '(funapp 3830 57))
                                (display "\n")
                                (cons
                                 x9062
                                 (begin
                                   (write '(funapp 3830 68))
                                   (display "\n")
                                   '()))))))
                           (begin
                             (write '(funapp 3831 28))
                             (display "\n")
                             (cons x9063 x9061)))))
                        (begin
                          (write '(funapp 3832 25))
                          (display "\n")
                          (cons x9064 x9060)))))
                     (begin
                       (write '(funapp 3833 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 3833 27)) (display "\n") 'block)
                        x9059)))))
                  (begin
                    (write '(funapp 3834 19))
                    (display "\n")
                    (x9065 x9058))))
                (g8576
                 (letrec*
                  ((x9078
                    (begin
                      (write '(funapp 3838 21))
                      (display "\n")
                      ((lambda (j7563 k7564 f7565)
                         (letrec*
                          ((g9079
                            (lambda (g7561 g7562)
                              (letrec*
                               ((g9080
                                 (letrec*
                                  ((x9081
                                    (letrec*
                                     ((x9083
                                       (begin
                                         (write '(funapp 3847 44))
                                         (display "\n")
                                         (BLOCK/C j7563 k7564 g7561)))
                                      (x9082
                                       (begin
                                         (write '(funapp 3848 44))
                                         (display "\n")
                                         (image/c j7563 k7564 g7562))))
                                     (begin
                                       (write '(funapp 3849 36))
                                       (display "\n")
                                       (f7565 x9083 x9082)))))
                                  (begin
                                    (write '(funapp 3850 33))
                                    (display "\n")
                                    (image/c j7563 k7564 x9081)))))
                               g9080))))
                          g9079))
                       (begin (write '(funapp 3853 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3854 21))
                         (display "\n")
                         'importer)
                       place-block)))
                   (x9071
                    (letrec*
                     ((x9072
                       (letrec*
                        ((x9077 (input))
                         (x9073
                          (letrec*
                           ((x9076 (input))
                            (x9074
                             (letrec*
                              ((x9075 (input)))
                              (begin
                                (write '(funapp 3865 57))
                                (display "\n")
                                (cons
                                 x9075
                                 (begin
                                   (write '(funapp 3865 68))
                                   (display "\n")
                                   '()))))))
                           (begin
                             (write '(funapp 3866 28))
                             (display "\n")
                             (cons x9076 x9074)))))
                        (begin
                          (write '(funapp 3867 25))
                          (display "\n")
                          (cons x9077 x9073)))))
                     (begin
                       (write '(funapp 3868 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 3868 27)) (display "\n") 'block)
                        x9072))))
                   (x9070 (input)))
                  (begin
                    (write '(funapp 3870 19))
                    (display "\n")
                    (x9078 x9071 x9070))))
                (g8577
                 (letrec*
                  ((x9085
                    (begin
                      (write '(funapp 3874 21))
                      (display "\n")
                      ((lambda (j7567 k7568 f7569)
                         (letrec*
                          ((g9086
                            (lambda (g7566)
                              (letrec*
                               ((g9087
                                 (letrec*
                                  ((x9088
                                    (letrec*
                                     ((x9089
                                       (letrec*
                                        ((x9090
                                          (letrec*
                                           ((x9091
                                             (begin
                                               (write '(funapp 3887 50))
                                               (display "\n")
                                               (listof TETRA/C))))
                                           (begin
                                             (write '(funapp 3888 42))
                                             (display "\n")
                                             (and/c cons?/c x9091)))))
                                        (begin
                                          (write '(funapp 3889 39))
                                          (display "\n")
                                          (x9090 j7567 k7568 g7566)))))
                                     (begin
                                       (write '(funapp 3890 36))
                                       (display "\n")
                                       (f7569 x9089)))))
                                  (begin
                                    (write '(funapp 3891 33))
                                    (display "\n")
                                    (WORLD/C j7567 k7568 x9088)))))
                               g9087))))
                          g9086))
                       (begin (write '(funapp 3894 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3895 21))
                         (display "\n")
                         'importer)
                       world0)))
                   (x9084 (input)))
                  (begin
                    (write '(funapp 3898 19))
                    (display "\n")
                    (x9085 x9084)))))
               g8577))))
           g7606))))
       g7604)))
    g7603)))
