#lang simpleactor
(letrec ((any? (lambda (v) #t))
         (meta (lambda (v) v))
         (member
          (lambda (v lst)
            (begin
              (match
               lst
               (((list) #f)
                ((pair v1 vs) (if (eq? v v1) #t (member v vs))))))))
         (loopy-actor (lambda () (receive ((_ (loopy-actor))))))
         (unconstrained/c (lambda payload (lambda j (spawn^ loopy-actor))))
         (actor? (lambda (k j v) v))
         (nonzero? (lambda (v) (not (= v 0)))))
  (begin
    (letrec ((assert (lambda (cnd) (if cnd '() (error "assertion failed"))))
             (>=
              (lambda (x y)
                (assert (number? x))
                (letrec ((val2490 (> x y)))
                  (if val2490
                    val2490
                    (letrec ((val2491 (= x y))) (if val2491 val2491 #f))))))
             (<=
              (lambda (x y)
                (assert (number? x))
                (letrec ((val2492 (< x y)))
                  (if val2492
                    val2492
                    (letrec ((val2493 (= x y))) (if val2493 val2493 #f))))))
             (> (lambda (x y) (assert (number? x)) (not (<= x y))))
             (orig-+ +)
             (orig-- -)
             (orig-* *)
             (orig-/ /)
             (orig-> >)
             (orig-< <)
             (orig-= =)
             (orig->= >=)
             (orig-<= <=)
             (orig-car car)
             (orig-cdr cdr)
             (orig-cons cons)
             (orig-vector-ref vector-ref)
             (orig-vector-set! vector-set!))
      '()
      (letrec ((empty '())
               (listof
                (lambda (contract)
                  (lambda (k j lst) (map (lambda (v) (contract k j v)) lst))))
               (real?/c
                (lambda (g2509 g2510 g2511)
                  (if (real? g2511) g2511 (blame g2509 'real?))))
               (boolean?/c
                (lambda (g2512 g2513 g2514)
                  (if (boolean? g2514) g2514 (blame g2512 'boolean?))))
               (number?/c
                (lambda (g2515 g2516 g2517)
                  (if (number? g2517) g2517 (blame g2515 'number?))))
               (any/c
                (lambda (g2518 g2519 g2520)
                  (if ((lambda (v) #t) g2520)
                    g2520
                    (blame g2518 '(lambda (v) #t)))))
               (any?/c
                (lambda (g2521 g2522 g2523)
                  (if ((lambda (v) #t) g2523)
                    g2523
                    (blame g2521 '(lambda (v) #t)))))
               (cons?/c
                (lambda (g2524 g2525 g2526)
                  (if (pair? g2526) g2526 (blame g2524 'pair?))))
               (cons/c
                (lambda (k1 k2)
                  (lambda (k j v) (cons (k1 k j (car v)) (k2 k j (cdr v))))))
               (pair?/c
                (lambda (g2527 g2528 g2529)
                  (if (pair? g2529) g2529 (blame g2527 'pair?))))
               (integer?/c
                (lambda (g2530 g2531 g2532)
                  (if (integer? g2532) g2532 (blame g2530 'integer?))))
               (symbol?/c
                (lambda (g2533 g2534 g2535)
                  (if (symbol? g2535) g2535 (blame g2533 'symbol?))))
               (string?/c
                (lambda (g2536 g2537 g2538)
                  (if (string? g2538) g2538 (blame g2536 'string?))))
               (and/c
                (lambda (c1 c2)
                  (lambda (k j v) (if (c1 k j v) (c2 k j v) #f))))
               (or/c
                (lambda (c1 c2)
                  (lambda (k j v)
                    (letrec ((val2494 (c1 k j v)))
                      (if val2494 val2494 (c2 k j v))))))
               (null?/c
                (lambda (g2539 g2540 g2541)
                  (if (null? g2541) g2541 (blame g2539 'null?))))
               (list-of
                (lambda (contract)
                  (lambda (k j v)
                    (if (null? v)
                      '()
                      (orig-cons
                       (contract k j (car v))
                       ((list-of contract) k j (cdr v)))))))
               (any? (lambda (v) #t))
               (nonzero? (lambda (v) (not (= v 0))))
               (nonzero?/c
                (lambda (g2542 g2543 g2544)
                  (if ((lambda (v) (not (= v 0))) g2544)
                    g2544
                    (blame g2542 '(lambda (v) (not (= v 0)))))))
               (>=/c
                (lambda (n)
                  (lambda (g2545 g2546 g2547)
                    (if ((lambda (v) (orig->= v n)) g2547)
                      g2547
                      (blame g2545 '(lambda (v) (orig->= v n)))))))
               (>/c
                (lambda (n)
                  (lambda (g2548 g2549 g2550)
                    (if ((lambda (v) (orig-> v n)) g2550)
                      g2550
                      (blame g2548 '(lambda (v) (orig-> v n)))))))
               (</c
                (lambda (n)
                  (lambda (g2551 g2552 g2553)
                    (if ((lambda (v) (orig-< v n)) g2553)
                      g2553
                      (blame g2551 '(lambda (v) (orig-< v n)))))))
               (<=/c
                (lambda (n)
                  (lambda (g2554 g2555 g2556)
                    (if ((lambda (v) (orig-<= v n)) g2556)
                      g2556
                      (blame g2554 '(lambda (v) (orig-<= v n)))))))
               (=/c
                (lambda (n)
                  (lambda (g2557 g2558 g2559)
                    (if ((lambda (v) (orig-= v n)) g2559)
                      g2559
                      (blame g2557 '(lambda (v) (orig-= v n)))))))
               (meta (lambda (v) v))
               (+
                (letrec ((xj2560 'server) (xk2561 'client))
                  ((lambda (j2564 k2565 f2566)
                     (lambda (g2562 g2563)
                       (number?/c
                        j2564
                        k2565
                        (f2566
                         (number?/c k2565 j2564 g2562)
                         (number?/c k2565 j2564 g2563)))))
                   xj2560
                   xk2561
                   (lambda (a b) (orig-+ a b)))))
               (-
                (letrec ((xj2567 'server) (xk2568 'client))
                  ((lambda (j2571 k2572 f2573)
                     (lambda (g2569 g2570)
                       (number?/c
                        j2571
                        k2572
                        (f2573
                         (number?/c k2572 j2571 g2569)
                         (number?/c k2572 j2571 g2570)))))
                   xj2567
                   xk2568
                   (lambda (a b) (orig-- a b)))))
               (*
                (letrec ((xj2574 'server) (xk2575 'client))
                  ((lambda (j2578 k2579 f2580)
                     (lambda (g2576 g2577)
                       (number?/c
                        j2578
                        k2579
                        (f2580
                         (number?/c k2579 j2578 g2576)
                         (number?/c k2579 j2578 g2577)))))
                   xj2574
                   xk2575
                   (lambda (a b) (orig-* a b)))))
               (<
                (letrec ((xj2581 'server) (xk2582 'client))
                  ((lambda (j2585 k2586 f2587)
                     (lambda (g2583 g2584)
                       (boolean?/c
                        j2585
                        k2586
                        (f2587
                         (number?/c k2586 j2585 g2583)
                         (number?/c k2586 j2585 g2584)))))
                   xj2581
                   xk2582
                   (lambda (a b) (orig-< a b)))))
               (>
                (letrec ((xj2588 'server) (xk2589 'client))
                  ((lambda (j2592 k2593 f2594)
                     (lambda (g2590 g2591)
                       (boolean?/c
                        j2592
                        k2593
                        (f2594
                         (number?/c k2593 j2592 g2590)
                         (number?/c k2593 j2592 g2591)))))
                   xj2588
                   xk2589
                   (lambda (a b) (orig-> a b)))))
               (<=
                (letrec ((xj2595 'server) (xk2596 'client))
                  ((lambda (j2599 k2600 f2601)
                     (lambda (g2597 g2598)
                       (boolean?/c
                        j2599
                        k2600
                        (f2601
                         (number?/c k2600 j2599 g2597)
                         (number?/c k2600 j2599 g2598)))))
                   xj2595
                   xk2596
                   (lambda (a b) (orig-<= a b)))))
               (>=
                (letrec ((xj2602 'server) (xk2603 'client))
                  ((lambda (j2606 k2607 f2608)
                     (lambda (g2604 g2605)
                       (boolean?/c
                        j2606
                        k2607
                        (f2608
                         (number?/c k2607 j2606 g2604)
                         (number?/c k2607 j2606 g2605)))))
                   xj2602
                   xk2603
                   (lambda (a b) (orig->= a b)))))
               (add1 (lambda (x) (+ x 1)))
               (/
                (letrec ((xj2609 'server) (xk2610 'client))
                  ((lambda (j2613 k2614 f2615)
                     (lambda (g2611 g2612)
                       (number?/c
                        j2613
                        k2614
                        (f2615
                         (number?/c k2614 j2613 g2611)
                         (number?/c k2614 j2613 g2612)))))
                   xj2609
                   xk2610
                   (lambda (a b) (orig-/ a b)))))
               (car
                (letrec ((xj2616 'server) (xk2617 'client))
                  ((lambda (j2619 k2620 f2621)
                     (lambda (g2618)
                       (any/c
                        j2619
                        k2620
                        (f2621 (pair?/c k2620 j2619 g2618)))))
                   xj2616
                   xk2617
                   (lambda (p) (orig-car p)))))
               (cdr
                (letrec ((xj2622 'server) (xk2623 'client))
                  ((lambda (j2625 k2626 f2627)
                     (lambda (g2624)
                       (any/c
                        j2625
                        k2626
                        (f2627 (pair?/c k2626 j2625 g2624)))))
                   xj2622
                   xk2623
                   (lambda (p) (orig-cdr p)))))
               (vector?/c
                (lambda (g2628 g2629 g2630)
                  (if (vector? g2630) g2630 (blame g2628 'vector?))))
               (vector-ref
                (letrec ((xj2631 'server) (xk2632 'client))
                  ((lambda (j2635 k2636 f2637)
                     (lambda (g2633 g2634)
                       (any/c
                        j2635
                        k2636
                        (f2637
                         (vector?/c k2636 j2635 g2633)
                         (integer?/c k2636 j2635 g2634)))))
                   xj2631
                   xk2632
                   (lambda (v i) (orig-vector-ref v i)))))
               (vector-set!
                (letrec ((xj2638 'server) (xk2639 'client))
                  ((lambda (j2643 k2644 f2645)
                     (lambda (g2640 g2641 g2642)
                       (any/c
                        j2643
                        k2644
                        (f2645
                         (vector?/c k2644 j2643 g2640)
                         (integer?/c k2644 j2643 g2641)
                         (any/c k2644 j2643 g2642)))))
                   xj2638
                   xk2639
                   (lambda (vec i v) (orig-vector-set! vec i v)))))
               (cdddr (lambda (x) (cdr (cdr (cdr x)))))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (assert (procedure? f))
                  (assert (list? l))
                  (if (null? l) '() (cons (f (car l)) (map f (cdr l))))))
               (cdar (lambda (x) (cdr (car x))))
               (cadadr (lambda (x) (car (cdr (car (cdr x))))))
               (cdadar (lambda (x) (cdr (car (cdr (car x))))))
               (call-with-output-file
                (lambda (filename proc)
                  (assert (string? filename))
                  (assert (procedure? proc))
                  (letrec ((output-port (open-output-file filename))
                           (res (proc output-port)))
                    (close-output-port output-port)
                    res)))
               (caddr (lambda (x) (car (cdr (cdr x)))))
               (cdaadr (lambda (x) (cdr (car (car (cdr x))))))
               (assq
                (lambda (k l)
                  (assert (list? l))
                  (if (null? l)
                    #f
                    (if (eq? (caar l) k) (car l) (assq k (cdr l))))))
               (even? (lambda (x) (= 0 (modulo x 2))))
               (char<=?
                (lambda (c1 c2)
                  (assert (char? c1))
                  (assert (char? c2))
                  (letrec ((val2495 (char<? c1 c2)))
                    (if val2495 val2495 (char=? c1 c2)))))
               (cdddar (lambda (x) (cdr (cdr (cdr (car x))))))
               (list-tail
                (lambda (x k)
                  (assert (list? x))
                  (assert (number? k))
                  (if (zero? k) x (list-tail (cdr x) (- k 1)))))
               (halt (lambda () '()))
               (char-alphabetic?
                (lambda (c) (if (char-ci>=? c #\a) (char-ci<=? c #\z) #f)))
               (char-whitespace?
                (lambda (c)
                  (letrec ((val2496 (= (char->integer c) 9)))
                    (if val2496
                      val2496
                      (letrec ((val2497 (= (char->integer c) 10)))
                        (if val2497 val2497 (= (char->integer c) 32)))))))
               (cddar (lambda (x) (cdr (cdr (car x)))))
               (positive? (lambda (x) (assert (number? x)) (> x 0)))
               (string=? (lambda (s1 s2) (bool-top)))
               ($pc '())
               (ref-set set-car!)
               (void (lambda () #f))
               (cddr (lambda (x) (cdr (cdr x))))
               (truncate
                (lambda (x)
                  (assert (number? x))
                  (if (< x 0) (ceiling x) (floor x))))
               ($cmp '())
               (bool-top (lambda () (if (> (random) 0.5) #t #f)))
               (equal?
                (lambda (a b)
                  (letrec ((val2498 (eq? a b)))
                    (if val2498
                      val2498
                      (letrec ((val2499 (if (null? a) (null? b) #f)))
                        (if val2499
                          val2499
                          (letrec ((val2500
                                    (if (string? a)
                                      (if (string? b) (string=? a b) #f)
                                      #f)))
                            (if val2500
                              val2500
                              (letrec ((val2501
                                        (if (pair? a)
                                          (if (pair? b)
                                            (if (equal? (car a) (car b))
                                              (equal? (cdr a) (cdr b))
                                              #f)
                                            #f)
                                          #f)))
                                (if val2501
                                  val2501
                                  (if (vector? a)
                                    (if (vector? b)
                                      (letrec ((n (vector-length a)))
                                        (if (= (vector-length b) n)
                                          (letrec ((loop
                                                    (lambda (i)
                                                      (letrec ((val2502
                                                                (= i n)))
                                                        (if val2502
                                                          val2502
                                                          (if (equal?
                                                               (vector-ref a i)
                                                               (vector-ref
                                                                b
                                                                i))
                                                            (loop (+ i 1))
                                                            #f))))))
                                            (loop 0))
                                          #f))
                                      #f)
                                    #f)))))))))))
               (cdaaar (lambda (x) (cdr (car (car (car x))))))
               (caaddr (lambda (x) (car (car (cdr (cdr x))))))
               (eqv? (lambda (x y) (eq? x y)))
               (call-with-input-file
                (lambda (filename proc)
                  (assert (string? filename))
                  (assert (procedure? proc))
                  (letrec ((input-port (open-input-file filename))
                           (res (proc input-port)))
                    (close-input-port input-port)
                    res)))
               (ref (lambda (x) (cons x '())))
               (char>=?
                (lambda (c1 c2)
                  (assert (char? c1))
                  (assert (char? c2))
                  (letrec ((val2503 (char>? c1 c2)))
                    (if val2503 val2503 (char=? c1 c2)))))
               (cdaar (lambda (x) (cdr (car (car x)))))
               (cdaddr (lambda (x) (cdr (car (cdr (cdr x))))))
               (__toplevel_cdr cdr)
               (cadar (lambda (x) (car (cdr (car x)))))
               (caadr (lambda (x) (car (car (cdr x)))))
               (char-ci>?
                (lambda (c1 c2)
                  (assert (char? c1))
                  (assert (char? c2))
                  (not (char-ci<=? c1 c2))))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar (lambda (x) (car (car (car (car x))))))
               (negative? (lambda (x) (assert (number? x)) (< x 0)))
               (memv (lambda (e l) (memq e l)))
               (caaar (lambda (x) (car (car (car x)))))
               (debug (lambda (e) '()))
               (reverse
                (lambda (l)
                  (assert (list? l))
                  (if (null? l)
                    '()
                    (append (reverse (cdr l)) (list (car l))))))
               (caaadr (lambda (x) (car (car (car (cdr x))))))
               (cddadr (lambda (x) (cdr (cdr (car (cdr x))))))
               (odd? (lambda (x) (assert (number? x)) (= 1 (modulo x 2))))
               (caadar (lambda (x) (car (car (cdr (car x))))))
               (apply
                (lambda (proc args)
                  (assert (procedure? proc))
                  (assert (list? args))
                  (if (null? args)
                    (begin (proc))
                    (if (null? (cdr args))
                      (begin (proc (car args)))
                      (if (null? (cddr args))
                        (begin (proc (car args) (cadr args)))
                        (if (null? (cdddr args))
                          (begin (proc (car args) (cadr args) (caddr args)))
                          (if (null? (cddddr args))
                            (begin
                              (proc
                               (car args)
                               (cadr args)
                               (caddr args)
                               (cadddr args)))
                            (if (null? (cdr (cddddr args)))
                              (begin
                                (proc
                                 (car args)
                                 (cadr args)
                                 (caddr args)
                                 (cadddr args)
                                 (car (cddddr args))))
                              (if (null? (cddr (cddddr args)))
                                (begin
                                  (proc
                                   (car args)
                                   (cadr args)
                                   (caddr args)
                                   (cadddr args)
                                   (car (cddddr args))
                                   (cadr (cddddr args))))
                                (if (null? (cdddr (cddddr args)))
                                  (begin
                                    (proc
                                     (car args)
                                     (cadr args)
                                     (caddr args)
                                     (cadddr args)
                                     (car (cddddr args))
                                     (cadr (cddddr args))
                                     (caddr (cddddr args))))
                                  (begin (error "Unsupported call."))))))))))))
               (member
                (lambda (e l)
                  (assert (list? l))
                  (if (null? l)
                    #f
                    (if (equal? (car l) e) l (member e (cdr l))))))
               (cddddr (lambda (x) (cdr (cdr (cdr (cdr x))))))
               (cadddr (lambda (x) (car (cdr (cdr (cdr x))))))
               (int-top (lambda () (random 42)))
               (zero? (lambda (x) (assert (number? x)) (= x 0)))
               (string>=?
                (lambda (s1 s2)
                  (letrec ((val2504 (string>? s1 s2)))
                    (if val2504 val2504 (string=? s1 s2)))))
               (cadr (lambda (x) (car (cdr x))))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec ((val2505 (if (pair? l) (list? (cdr l)) #f)))
                    (if val2505 val2505 (null? l)))))
               (cddaar (lambda (x) (cdr (cdr (car (car x))))))
               (char-numeric?
                (lambda (c) (if (char<=? #\0 c) (char<=? c #\9) #f)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (assert (list? l))
                  (if (null? l)
                    #f
                    (if (eqv? (caar l) k) (car l) (assq k (cdr l))))))
               (not (lambda (x) (if x #f #t)))
               (__toplevel_append (lambda (l1 l2) (append l1 l2)))
               (memq
                (lambda (e l)
                  (assert (list? l))
                  (if (null? l) #f (if (eq? (car l) e) l (memq e (cdr l))))))
               (cadaar (lambda (x) (car (cdr (car (car x))))))
               (length
                (lambda (l)
                  (assert (list? l))
                  (letrec ((rec
                            (lambda (l) (if (null? l) 0 (+ 1 (rec (cdr l)))))))
                    (rec l))))
               (char-ci<=?
                (lambda (c1 c2)
                  (assert (char? c1))
                  (assert (char? c2))
                  (letrec ((val2506 (char-ci<? c1 c2)))
                    (if val2506 val2506 (char-ci=? c1 c2)))))
               (string>? (lambda (s1 s2) (not (string<=? s1 s2))))
               (cdadr (lambda (x) (cdr (car (cdr x)))))
               (assoc
                (lambda (k l)
                  (assert (list? l))
                  (if (null? l)
                    #f
                    (if (equal? (caar l) k) (car l) (assoc k (cdr l))))))
               (caar (lambda (x) (car (car x))))
               (char>?
                (lambda (c1 c2)
                  (assert (char? c1))
                  (assert (char? c2))
                  (not (char<=? c1 c2))))
               (string<=?
                (lambda (s1 s2)
                  (letrec ((val2507 (string<? s1 s2)))
                    (if val2507 val2507 (string=? s1 s2)))))
               (for-each
                (lambda (f l)
                  (assert (procedure? f))
                  (assert (list? l))
                  (if (null? l)
                    #t
                    (if (pair? l)
                      (begin (f (car l)) (for-each f (cdr l)))
                      '()))))
               (abs (lambda (x) (assert (number? x)) (if (< x 0) (- 0 x) x)))
               (char-ci>=?
                (lambda (c1 c2)
                  (assert (char? c1))
                  (assert (char? c2))
                  (letrec ((val2508 (char-ci>? c1 c2)))
                    (if val2508 val2508 (char-ci=? c1 c2)))))
               (caddar (lambda (x) (car (cdr (cdr (car x))))))
               (newline (lambda () #f))
               (lcm (lambda (m n) (/ (abs (* m n)) (gcd m n))))
               (deref car)
               (list-ref
                (lambda (l index)
                  (assert (list? l))
                  (assert (number? index))
                  (assert (< index (length l)))
                  (if (= index 0) (car l) (list-ref (cdr l) (- index 1)))))
               (gcd (lambda (a b) (if (= b 0) a (gcd b (modulo a b)))))
               (server/c
                (lambda (k2648 j2649 a2647)
                  (lambda (v2650)
                    (letrec ((result2663
                              ((lambda (k2652 j2653 v2654)
                                 (match
                                  v2654
                                  (((cons 'request x2655)
                                    (letrec ((x2656
                                              (actor? k2652 j2653 x2655)))
                                      (cons
                                       'enhanced
                                       (cons
                                        ((lambda (client-ref)
                                           (lambda (j2658)
                                             (letrec ((r
                                                       (lambda (trace2662)
                                                         (receive
                                                          (('finish
                                                            (begin
                                                              (if (member
                                                                   'reply
                                                                   trace2662)
                                                                #t
                                                                (blame
                                                                 j2658))))
                                                           ((pair
                                                             rcv2661
                                                             message2660)
                                                            (match
                                                             message2660
                                                             (('reply
                                                               (begin
                                                                 ((dyn send^)
                                                                  rcv2661
                                                                  (letrec ()
                                                                    (cons
                                                                     'enhanced
                                                                     (cons
                                                                      (unconstrained/c)
                                                                      (cons
                                                                       j2658
                                                                       'reply)))))
                                                                 (r
                                                                  (cons
                                                                   'reply
                                                                   trace2662))))))))))))
                                               (spawn^ (r (list))))))
                                         x2656)
                                        (cons
                                         j2653
                                         (cons 'request x2656)))))))))
                               k2648
                               j2649
                               v2650)))
                      (if result2663 (a2647 result2663) (blame k2648))))))
               (server-behavior
                (lambda ()
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (((cons 'request sender)
                        (begin (sender 'reply) (server-behavior)))
                       ((cons
                         'enhanced
                         (cons k2665 (cons j2669 (cons 'request sender))))
                        (letrec ((kc2666 (k2665 j2669))
                                 (old-send2670 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv2667 msg2668)
                               (print-env)
                               (old-send2670 kc2666 (cons rcv2667 msg2668)))))
                           (begin
                             (sender 'reply)
                             (old-send2670 kc2666 'finish)))
                          (server-behavior)))))))))
               (client-behavior
                (lambda ()
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (((cons 'start server)
                        (begin
                          (server (cons 'request (dyn self)))
                          (client-behavior)))
                       ('reply (begin (displayln 'reply-received)))
                       ((cons
                         'enhanced
                         (cons k2672 (cons j2676 (cons 'start server))))
                        (letrec ((kc2673 (k2672 j2676))
                                 (old-send2677 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv2674 msg2675)
                               (old-send2677 kc2673 (cons rcv2674 msg2675)))))
                           (begin
                             (server (cons 'request (dyn self)))
                             (old-send2677 kc2673 'finish)))
                          (client-behavior)))
                       ((cons 'enhanced (cons k2679 (cons j2683 'reply)))
                        (letrec ((kc2680 (k2679 j2683))
                                 (old-send2684 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv2681 msg2682)
                               (old-send2684 kc2680 (cons rcv2681 msg2682)))))
                           (begin (old-send2684 kc2680 'finish)))
                          (displayln 'reply-received)))))))))
               (client
                (letrec ((act (spawn^ (client-behavior))))
                  (lambda (msg) ((dyn send^) act msg))))
               (server-unmonitored
                (letrec ((act (spawn^ (server-behavior))))
                  (lambda (msg) ((dyn send^) act msg))))
               (server
                (letrec ((xj2686 (loc 'client)) (xk2687 (loc 'server)))
                  (server/c xj2686 xk2687 server-unmonitored))))
        (client (cons 'start server))))))
