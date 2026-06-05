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
                (letrec ((val7719 (> x y)))
                  (if val7719
                    val7719
                    (letrec ((val7720 (= x y))) (if val7720 val7720 #f))))))
             (<=
              (lambda (x y)
                (assert (number? x))
                (letrec ((val7721 (< x y)))
                  (if val7721
                    val7721
                    (letrec ((val7722 (= x y))) (if val7722 val7722 #f))))))
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
                (lambda (g7738 g7739 g7740)
                  (if (real? g7740) g7740 (blame g7738 'real?))))
               (boolean?/c
                (lambda (g7741 g7742 g7743)
                  (if (boolean? g7743) g7743 (blame g7741 'boolean?))))
               (number?/c
                (lambda (g7744 g7745 g7746)
                  (if (number? g7746) g7746 (blame g7744 'number?))))
               (any/c
                (lambda (g7747 g7748 g7749)
                  (if ((lambda (v) #t) g7749)
                    g7749
                    (blame g7747 '(lambda (v) #t)))))
               (any?/c
                (lambda (g7750 g7751 g7752)
                  (if ((lambda (v) #t) g7752)
                    g7752
                    (blame g7750 '(lambda (v) #t)))))
               (cons?/c
                (lambda (g7753 g7754 g7755)
                  (if (pair? g7755) g7755 (blame g7753 'pair?))))
               (cons/c
                (lambda (k1 k2)
                  (lambda (k j v) (cons (k1 k j (car v)) (k2 k j (cdr v))))))
               (pair?/c
                (lambda (g7756 g7757 g7758)
                  (if (pair? g7758) g7758 (blame g7756 'pair?))))
               (integer?/c
                (lambda (g7759 g7760 g7761)
                  (if (integer? g7761) g7761 (blame g7759 'integer?))))
               (symbol?/c
                (lambda (g7762 g7763 g7764)
                  (if (symbol? g7764) g7764 (blame g7762 'symbol?))))
               (string?/c
                (lambda (g7765 g7766 g7767)
                  (if (string? g7767) g7767 (blame g7765 'string?))))
               (and/c
                (lambda (c1 c2)
                  (lambda (k j v) (if (c1 k j v) (c2 k j v) #f))))
               (or/c
                (lambda (c1 c2)
                  (lambda (k j v)
                    (letrec ((val7723 (c1 k j v)))
                      (if val7723 val7723 (c2 k j v))))))
               (null?/c
                (lambda (g7768 g7769 g7770)
                  (if (null? g7770) g7770 (blame g7768 'null?))))
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
                (lambda (g7771 g7772 g7773)
                  (if ((lambda (v) (not (= v 0))) g7773)
                    g7773
                    (blame g7771 '(lambda (v) (not (= v 0)))))))
               (>=/c
                (lambda (n)
                  (lambda (g7774 g7775 g7776)
                    (if ((lambda (v) (orig->= v n)) g7776)
                      g7776
                      (blame g7774 '(lambda (v) (orig->= v n)))))))
               (>/c
                (lambda (n)
                  (lambda (g7777 g7778 g7779)
                    (if ((lambda (v) (orig-> v n)) g7779)
                      g7779
                      (blame g7777 '(lambda (v) (orig-> v n)))))))
               (</c
                (lambda (n)
                  (lambda (g7780 g7781 g7782)
                    (if ((lambda (v) (orig-< v n)) g7782)
                      g7782
                      (blame g7780 '(lambda (v) (orig-< v n)))))))
               (<=/c
                (lambda (n)
                  (lambda (g7783 g7784 g7785)
                    (if ((lambda (v) (orig-<= v n)) g7785)
                      g7785
                      (blame g7783 '(lambda (v) (orig-<= v n)))))))
               (=/c
                (lambda (n)
                  (lambda (g7786 g7787 g7788)
                    (if ((lambda (v) (orig-= v n)) g7788)
                      g7788
                      (blame g7786 '(lambda (v) (orig-= v n)))))))
               (string=?/c
                (lambda (s)
                  (lambda (g7789 g7790 g7791)
                    (if ((lambda (v) (string=? s v)) g7791)
                      g7791
                      (blame g7789 '(lambda (v) (string=? s v)))))))
               (meta (lambda (v) v))
               (+
                (letrec ((xj7792 'server) (xk7793 'client))
                  ((lambda (j7796 k7797 f7798)
                     (lambda (g7794 g7795)
                       (number?/c
                        j7796
                        k7797
                        (f7798
                         (number?/c k7797 j7796 g7794)
                         (number?/c k7797 j7796 g7795)))))
                   xj7792
                   xk7793
                   (lambda (a b) (orig-+ a b)))))
               (-
                (letrec ((xj7799 'server) (xk7800 'client))
                  ((lambda (j7803 k7804 f7805)
                     (lambda (g7801 g7802)
                       (number?/c
                        j7803
                        k7804
                        (f7805
                         (number?/c k7804 j7803 g7801)
                         (number?/c k7804 j7803 g7802)))))
                   xj7799
                   xk7800
                   (lambda (a b) (orig-- a b)))))
               (*
                (letrec ((xj7806 'server) (xk7807 'client))
                  ((lambda (j7810 k7811 f7812)
                     (lambda (g7808 g7809)
                       (number?/c
                        j7810
                        k7811
                        (f7812
                         (number?/c k7811 j7810 g7808)
                         (number?/c k7811 j7810 g7809)))))
                   xj7806
                   xk7807
                   (lambda (a b) (orig-* a b)))))
               (<
                (letrec ((xj7813 'server) (xk7814 'client))
                  ((lambda (j7817 k7818 f7819)
                     (lambda (g7815 g7816)
                       (boolean?/c
                        j7817
                        k7818
                        (f7819
                         (number?/c k7818 j7817 g7815)
                         (number?/c k7818 j7817 g7816)))))
                   xj7813
                   xk7814
                   (lambda (a b) (orig-< a b)))))
               (>
                (letrec ((xj7820 'server) (xk7821 'client))
                  ((lambda (j7824 k7825 f7826)
                     (lambda (g7822 g7823)
                       (boolean?/c
                        j7824
                        k7825
                        (f7826
                         (number?/c k7825 j7824 g7822)
                         (number?/c k7825 j7824 g7823)))))
                   xj7820
                   xk7821
                   (lambda (a b) (orig-> a b)))))
               (<=
                (letrec ((xj7827 'server) (xk7828 'client))
                  ((lambda (j7831 k7832 f7833)
                     (lambda (g7829 g7830)
                       (boolean?/c
                        j7831
                        k7832
                        (f7833
                         (number?/c k7832 j7831 g7829)
                         (number?/c k7832 j7831 g7830)))))
                   xj7827
                   xk7828
                   (lambda (a b) (orig-<= a b)))))
               (>=
                (letrec ((xj7834 'server) (xk7835 'client))
                  ((lambda (j7838 k7839 f7840)
                     (lambda (g7836 g7837)
                       (boolean?/c
                        j7838
                        k7839
                        (f7840
                         (number?/c k7839 j7838 g7836)
                         (number?/c k7839 j7838 g7837)))))
                   xj7834
                   xk7835
                   (lambda (a b) (orig->= a b)))))
               (add1 (lambda (x) (+ x 1)))
               (/
                (letrec ((xj7841 'server) (xk7842 'client))
                  ((lambda (j7845 k7846 f7847)
                     (lambda (g7843 g7844)
                       (number?/c
                        j7845
                        k7846
                        (f7847
                         (number?/c k7846 j7845 g7843)
                         (number?/c k7846 j7845 g7844)))))
                   xj7841
                   xk7842
                   (lambda (a b) (orig-/ a b)))))
               (car
                (letrec ((xj7848 'server) (xk7849 'client))
                  ((lambda (j7851 k7852 f7853)
                     (lambda (g7850)
                       (any/c
                        j7851
                        k7852
                        (f7853 (pair?/c k7852 j7851 g7850)))))
                   xj7848
                   xk7849
                   (lambda (p) (orig-car p)))))
               (cdr
                (letrec ((xj7854 'server) (xk7855 'client))
                  ((lambda (j7857 k7858 f7859)
                     (lambda (g7856)
                       (any/c
                        j7857
                        k7858
                        (f7859 (pair?/c k7858 j7857 g7856)))))
                   xj7854
                   xk7855
                   (lambda (p) (orig-cdr p)))))
               (vector?/c
                (lambda (g7860 g7861 g7862)
                  (if (vector? g7862) g7862 (blame g7860 'vector?))))
               (vector-ref
                (letrec ((xj7863 'server) (xk7864 'client))
                  ((lambda (j7867 k7868 f7869)
                     (lambda (g7865 g7866)
                       (any/c
                        j7867
                        k7868
                        (f7869
                         (vector?/c k7868 j7867 g7865)
                         (integer?/c k7868 j7867 g7866)))))
                   xj7863
                   xk7864
                   (lambda (v i) (orig-vector-ref v i)))))
               (vector-set!
                (letrec ((xj7870 'server) (xk7871 'client))
                  ((lambda (j7875 k7876 f7877)
                     (lambda (g7872 g7873 g7874)
                       (any/c
                        j7875
                        k7876
                        (f7877
                         (vector?/c k7876 j7875 g7872)
                         (integer?/c k7876 j7875 g7873)
                         (any/c k7876 j7875 g7874)))))
                   xj7870
                   xk7871
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
                  (letrec ((val7724 (char<? c1 c2)))
                    (if val7724 val7724 (char=? c1 c2)))))
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
                  (letrec ((val7725 (= (char->integer c) 9)))
                    (if val7725
                      val7725
                      (letrec ((val7726 (= (char->integer c) 10)))
                        (if val7726 val7726 (= (char->integer c) 32)))))))
               (cddar (lambda (x) (cdr (cdr (car x)))))
               (positive? (lambda (x) (assert (number? x)) (> x 0)))
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
                  (letrec ((val7727 (eq? a b)))
                    (if val7727
                      val7727
                      (letrec ((val7728 (if (null? a) (null? b) #f)))
                        (if val7728
                          val7728
                          (letrec ((val7729
                                    (if (string? a)
                                      (if (string? b) (string=? a b) #f)
                                      #f)))
                            (if val7729
                              val7729
                              (letrec ((val7730
                                        (if (pair? a)
                                          (if (pair? b)
                                            (if (equal? (car a) (car b))
                                              (equal? (cdr a) (cdr b))
                                              #f)
                                            #f)
                                          #f)))
                                (if val7730
                                  val7730
                                  (if (vector? a)
                                    (if (vector? b)
                                      (letrec ((n (vector-length a)))
                                        (if (= (vector-length b) n)
                                          (letrec ((loop
                                                    (lambda (i)
                                                      (letrec ((val7731
                                                                (= i n)))
                                                        (if val7731
                                                          val7731
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
                  (letrec ((val7732 (char>? c1 c2)))
                    (if val7732 val7732 (char=? c1 c2)))))
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
                    (if (equal? (car l) e) #t (member e (cdr l))))))
               (cddddr (lambda (x) (cdr (cdr (cdr (cdr x))))))
               (cadddr (lambda (x) (car (cdr (cdr (cdr x))))))
               (int-top (lambda () (random 42)))
               (zero? (lambda (x) (assert (number? x)) (= x 0)))
               (string>=?
                (lambda (s1 s2)
                  (letrec ((val7733 (string>? s1 s2)))
                    (if val7733 val7733 (string=? s1 s2)))))
               (cadr (lambda (x) (car (cdr x))))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec ((val7734 (if (pair? l) (list? (cdr l)) #f)))
                    (if val7734 val7734 (null? l)))))
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
                  (letrec ((val7735 (char-ci<? c1 c2)))
                    (if val7735 val7735 (char-ci=? c1 c2)))))
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
                  (letrec ((val7736 (string<? s1 s2)))
                    (if val7736 val7736 (string=? s1 s2)))))
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
                  (letrec ((val7737 (char-ci>? c1 c2)))
                    (if val7737 val7737 (char-ci=? c1 c2)))))
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
               (remassoc
                (lambda (key lst)
                  (if (null? lst)
                    '()
                    (if (eq? key (car (car lst)))
                      (remassoc key (cdr lst))
                      (cons (car lst) (remassoc key (cdr lst)))))))
               (add-client
                (lambda (client correlation-identifier clients)
                  (cons (cons correlation-identifier client) clients)))
               (find-client
                (lambda (correlation-identifier clients)
                  (letrec ((element (assoc correlation-identifier clients)))
                    (if element
                      (cdr element)
                      (error
                       (format
                        "could not find client with the given correlation identifier ~a"
                        correlation-identifier))))))
               (local-dns/c
                (lambda (k7880 j7881 a7879)
                  (lambda (v7882)
                    (letrec ((result7941
                              ((lambda (k7884 j7885 v7886)
                                 (match
                                  v7886
                                  (((cons 'query (cons x7887 x7888))
                                    (letrec ((x7889 (actor? k7884 j7885 x7887))
                                             (x7890
                                              (number?/c k7884 j7885 x7888)))
                                      (cons
                                       'enhanced
                                       (cons
                                        ((lambda (sender cookie)
                                           (lambda (j7892)
                                             (letrec ((r
                                                       (lambda (trace7896)
                                                         (receive
                                                          (('finish
                                                            (begin
                                                              (if (member
                                                                   'get-hostname
                                                                   trace7896)
                                                                #t
                                                                (blame
                                                                 j7892))))
                                                           ((pair
                                                             rcv7895
                                                             message7894)
                                                            (match
                                                             message7894
                                                             (((cons
                                                                'get-hostname
                                                                (cons
                                                                 x7897
                                                                 x7898))
                                                               (begin
                                                                 ((dyn send^)
                                                                  rcv7895
                                                                  (letrec ((x7899
                                                                            (actor?
                                                                             j7892
                                                                             j7892
                                                                             x7897))
                                                                           (x7900
                                                                            ((and/c
                                                                              number?/c
                                                                              (=/c
                                                                               cookie))
                                                                             j7892
                                                                             j7892
                                                                             x7898)))
                                                                    (cons
                                                                     'enhanced
                                                                     (cons
                                                                      ((lambda (self-actor
                                                                                cookie)
                                                                         (lambda (j7902)
                                                                           (letrec ((r
                                                                                     (lambda (trace7906)
                                                                                       (receive
                                                                                        (('finish
                                                                                          (begin
                                                                                            (if (member
                                                                                                 'reply-hostname
                                                                                                 trace7906)
                                                                                              #t
                                                                                              (blame
                                                                                               j7902))))
                                                                                         ((pair
                                                                                           rcv7905
                                                                                           message7904)
                                                                                          (match
                                                                                           message7904
                                                                                           (((cons
                                                                                              'reply-hostname
                                                                                              (cons
                                                                                               x7907
                                                                                               x7908))
                                                                                             (begin
                                                                                               ((dyn
                                                                                                 send^)
                                                                                                rcv7905
                                                                                                (letrec ((x7909
                                                                                                          (string?/c
                                                                                                           j7902
                                                                                                           j7902
                                                                                                           x7907))
                                                                                                         (x7910
                                                                                                          ((and/c
                                                                                                            number?/c
                                                                                                            (=/c
                                                                                                             cookie))
                                                                                                           j7902
                                                                                                           j7902
                                                                                                           x7908)))
                                                                                                  (cons
                                                                                                   'enhanced
                                                                                                   (cons
                                                                                                    ((lambda (hostname
                                                                                                              cookie)
                                                                                                       (lambda (j7912)
                                                                                                         (letrec ((r
                                                                                                                   (lambda (trace7916)
                                                                                                                     (receive
                                                                                                                      (('finish
                                                                                                                        (begin
                                                                                                                          (if (member
                                                                                                                               'get-ip
                                                                                                                               trace7916)
                                                                                                                            #t
                                                                                                                            (blame
                                                                                                                             j7912))))
                                                                                                                       ((pair
                                                                                                                         rcv7915
                                                                                                                         message7914)
                                                                                                                        (match
                                                                                                                         message7914
                                                                                                                         (((cons
                                                                                                                            'get-ip
                                                                                                                            (cons
                                                                                                                             x7917
                                                                                                                             (cons
                                                                                                                              x7918
                                                                                                                              x7919)))
                                                                                                                           (begin
                                                                                                                             ((dyn
                                                                                                                               send^)
                                                                                                                              rcv7915
                                                                                                                              (letrec ((x7920
                                                                                                                                        (actor?
                                                                                                                                         j7912
                                                                                                                                         j7912
                                                                                                                                         x7917))
                                                                                                                                       (x7921
                                                                                                                                        ((and/c
                                                                                                                                          string?/c
                                                                                                                                          (string=?/c
                                                                                                                                           hostname))
                                                                                                                                         j7912
                                                                                                                                         j7912
                                                                                                                                         x7918))
                                                                                                                                       (x7922
                                                                                                                                        ((and/c
                                                                                                                                          number?/c
                                                                                                                                          (=/c
                                                                                                                                           cookie))
                                                                                                                                         j7912
                                                                                                                                         j7912
                                                                                                                                         x7919)))
                                                                                                                                (cons
                                                                                                                                 'enhanced
                                                                                                                                 (cons
                                                                                                                                  ((lambda (self-actor
                                                                                                                                            hostname
                                                                                                                                            cookie)
                                                                                                                                     (lambda (j7924)
                                                                                                                                       (letrec ((r
                                                                                                                                                 (lambda (trace7928)
                                                                                                                                                   (receive
                                                                                                                                                    (('finish
                                                                                                                                                      (begin
                                                                                                                                                        (if (member
                                                                                                                                                             'reply-ip
                                                                                                                                                             trace7928)
                                                                                                                                                          #t
                                                                                                                                                          (blame
                                                                                                                                                           j7924))))
                                                                                                                                                     ((pair
                                                                                                                                                       rcv7927
                                                                                                                                                       message7926)
                                                                                                                                                      (match
                                                                                                                                                       message7926
                                                                                                                                                       (((cons
                                                                                                                                                          'reply-ip
                                                                                                                                                          (cons
                                                                                                                                                           x7929
                                                                                                                                                           x7930))
                                                                                                                                                         (begin
                                                                                                                                                           ((dyn
                                                                                                                                                             send^)
                                                                                                                                                            rcv7927
                                                                                                                                                            (letrec ((x7931
                                                                                                                                                                      (number?/c
                                                                                                                                                                       j7924
                                                                                                                                                                       j7924
                                                                                                                                                                       x7929))
                                                                                                                                                                     (x7932
                                                                                                                                                                      ((and/c
                                                                                                                                                                        number?/c
                                                                                                                                                                        (=/c
                                                                                                                                                                         cookie))
                                                                                                                                                                       j7924
                                                                                                                                                                       j7924
                                                                                                                                                                       x7930)))
                                                                                                                                                              (cons
                                                                                                                                                               'enhanced
                                                                                                                                                               (cons
                                                                                                                                                                ((lambda (ip
                                                                                                                                                                          cookie)
                                                                                                                                                                   (lambda (j7934)
                                                                                                                                                                     (letrec ((r
                                                                                                                                                                               (lambda (trace7938)
                                                                                                                                                                                 (receive
                                                                                                                                                                                  (('finish
                                                                                                                                                                                    (begin
                                                                                                                                                                                      (if (member
                                                                                                                                                                                           'reply
                                                                                                                                                                                           trace7938)
                                                                                                                                                                                        #t
                                                                                                                                                                                        (blame
                                                                                                                                                                                         j7934))))
                                                                                                                                                                                   ((pair
                                                                                                                                                                                     rcv7937
                                                                                                                                                                                     message7936)
                                                                                                                                                                                    (match
                                                                                                                                                                                     message7936
                                                                                                                                                                                     (((cons
                                                                                                                                                                                        'reply
                                                                                                                                                                                        x7939)
                                                                                                                                                                                       (begin
                                                                                                                                                                                         ((dyn
                                                                                                                                                                                           send^)
                                                                                                                                                                                          rcv7937
                                                                                                                                                                                          (letrec ((x7940
                                                                                                                                                                                                    ((and/c
                                                                                                                                                                                                      number?/c
                                                                                                                                                                                                      (=/c
                                                                                                                                                                                                       ip))
                                                                                                                                                                                                     j7934
                                                                                                                                                                                                     j7934
                                                                                                                                                                                                     x7939)))
                                                                                                                                                                                            (cons
                                                                                                                                                                                             'enhanced
                                                                                                                                                                                             (cons
                                                                                                                                                                                              (unconstrained/c
                                                                                                                                                                                               x7940)
                                                                                                                                                                                              (cons
                                                                                                                                                                                               j7934
                                                                                                                                                                                               (cons
                                                                                                                                                                                                'reply
                                                                                                                                                                                                x7940))))))
                                                                                                                                                                                         (r
                                                                                                                                                                                          (cons
                                                                                                                                                                                           'reply
                                                                                                                                                                                           trace7938))))))))))))
                                                                                                                                                                       (spawn^
                                                                                                                                                                        (r
                                                                                                                                                                         (list))))))
                                                                                                                                                                 x7931
                                                                                                                                                                 x7932)
                                                                                                                                                                (cons
                                                                                                                                                                 j7924
                                                                                                                                                                 (cons
                                                                                                                                                                  'reply-ip
                                                                                                                                                                  (cons
                                                                                                                                                                   x7931
                                                                                                                                                                   x7932)))))))
                                                                                                                                                           (r
                                                                                                                                                            (cons
                                                                                                                                                             'reply-ip
                                                                                                                                                             trace7928))))))))))))
                                                                                                                                         (spawn^
                                                                                                                                          (r
                                                                                                                                           (list))))))
                                                                                                                                   x7920
                                                                                                                                   x7921
                                                                                                                                   x7922)
                                                                                                                                  (cons
                                                                                                                                   j7912
                                                                                                                                   (cons
                                                                                                                                    'get-ip
                                                                                                                                    (cons
                                                                                                                                     x7920
                                                                                                                                     (cons
                                                                                                                                      x7921
                                                                                                                                      x7922))))))))
                                                                                                                             (r
                                                                                                                              (cons
                                                                                                                               'get-ip
                                                                                                                               trace7916))))))))))))
                                                                                                           (spawn^
                                                                                                            (r
                                                                                                             (list))))))
                                                                                                     x7909
                                                                                                     x7910)
                                                                                                    (cons
                                                                                                     j7902
                                                                                                     (cons
                                                                                                      'reply-hostname
                                                                                                      (cons
                                                                                                       x7909
                                                                                                       x7910)))))))
                                                                                               (r
                                                                                                (cons
                                                                                                 'reply-hostname
                                                                                                 trace7906))))))))))))
                                                                             (spawn^
                                                                              (r
                                                                               (list))))))
                                                                       x7899
                                                                       x7900)
                                                                      (cons
                                                                       j7892
                                                                       (cons
                                                                        'get-hostname
                                                                        (cons
                                                                         x7899
                                                                         x7900)))))))
                                                                 (r
                                                                  (cons
                                                                   'get-hostname
                                                                   trace7896))))))))))))
                                               (spawn^ (r (list))))))
                                         x7889
                                         x7890)
                                        (cons
                                         j7885
                                         (cons
                                          'query
                                          (cons x7889 x7890))))))))))
                               k7880
                               j7881
                               v7882)))
                      (if result7941 (a7879 result7941) (blame k7880))))))
               (client
                (lambda (local-dns)
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (('start
                        (begin
                          (local-dns (cons 'query (cons (dyn self) (fresh))))
                          (client local-dns)))
                       ((cons 'reply ip) (begin (displayln ip) (terminate)))
                       ((cons 'enhanced (cons k7943 (cons j7947 'start)))
                        (letrec ((kc7944 (k7943 j7947))
                                 (old-send7948 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv7945 msg7946)
                               (old-send7948 kc7944 (cons rcv7945 msg7946)))))
                           (begin
                             (local-dns
                              (cons 'query (cons (dyn self) (fresh))))
                             (old-send7948 kc7944 'finish)))
                          (client local-dns)))
                       ((cons
                         'enhanced
                         (cons k7950 (cons j7954 (cons 'reply ip))))
                        (letrec ((kc7951 (k7950 j7954))
                                 (old-send7955 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv7952 msg7953)
                               (old-send7955 kc7951 (cons rcv7952 msg7953)))))
                           (begin
                             (displayln ip)
                             (old-send7955 kc7951 'finish)))
                          (terminate)))))))))
               (local-dns
                (lambda (internal external clients)
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (((cons 'query (cons sender cookie))
                        (begin
                          (internal
                           (cons 'get-hostname (cons (dyn self) cookie)))
                          (local-dns
                           internal
                           external
                           (add-client sender cookie clients))))
                       ((cons 'reply-hostname (cons hostname cookie))
                        (begin
                          (external
                           (cons
                            'get-ip
                            (cons (dyn self) (cons hostname cookie))))
                          (local-dns internal external clients)))
                       ((cons 'reply-ip (cons ip cookie))
                        (begin
                          (letrec ((client (find-client cookie clients)))
                            (client (cons 'reply ip)))
                          (local-dns
                           internal
                           external
                           (remassoc cookie clients))))
                       ((cons
                         'enhanced
                         (cons
                          k7957
                          (cons j7961 (cons 'query (cons sender cookie)))))
                        (letrec ((kc7958 (k7957 j7961))
                                 (old-send7962 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv7959 msg7960)
                               (old-send7962 kc7958 (cons rcv7959 msg7960)))))
                           (begin
                             (internal
                              (cons 'get-hostname (cons (dyn self) cookie)))
                             (old-send7962 kc7958 'finish)))
                          (local-dns
                           internal
                           external
                           (add-client sender cookie clients))))
                       ((cons
                         'enhanced
                         (cons
                          k7964
                          (cons
                           j7968
                           (cons 'reply-hostname (cons hostname cookie)))))
                        (letrec ((kc7965 (k7964 j7968))
                                 (old-send7969 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv7966 msg7967)
                               (old-send7969 kc7965 (cons rcv7966 msg7967)))))
                           (begin
                             (external
                              (cons
                               'get-ip
                               (cons (dyn self) (cons hostname cookie))))
                             (old-send7969 kc7965 'finish)))
                          (local-dns internal external clients)))
                       ((cons
                         'enhanced
                         (cons
                          k7971
                          (cons j7975 (cons 'reply-ip (cons ip cookie)))))
                        (letrec ((kc7972 (k7971 j7975))
                                 (old-send7976 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv7973 msg7974)
                               (old-send7976 kc7972 (cons rcv7973 msg7974)))))
                           (begin
                             (letrec ((client (find-client cookie clients)))
                               (client (cons 'reply ip)))
                             (old-send7976 kc7972 'finish)))
                          (local-dns
                           internal
                           external
                           (remassoc cookie clients))))))))))
               (internal-server
                (lambda ()
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (((cons 'get-hostname (cons sender cookie))
                        (begin
                          (sender
                           (cons 'reply-hostname (cons (fresh-string) cookie)))
                          (internal-server)))
                       ((cons
                         'enhanced
                         (cons
                          k7978
                          (cons
                           j7982
                           (cons 'get-hostname (cons sender cookie)))))
                        (letrec ((kc7979 (k7978 j7982))
                                 (old-send7983 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv7980 msg7981)
                               (old-send7983 kc7979 (cons rcv7980 msg7981)))))
                           (begin
                             (sender
                              (cons
                               'reply-hostname
                               (cons (fresh-string) cookie)))
                             (old-send7983 kc7979 'finish)))
                          (internal-server)))))))))
               (external-server
                (lambda ()
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (((cons 'get-ip (cons sender (cons hostname cookie)))
                        (begin
                          (sender (cons 'reply-ip (cons (fresh) cookie)))
                          (external-server)))
                       ((cons
                         'enhanced
                         (cons
                          k7985
                          (cons
                           j7989
                           (cons
                            'get-ip
                            (cons sender (cons hostname cookie))))))
                        (letrec ((kc7986 (k7985 j7989))
                                 (old-send7990 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv7987 msg7988)
                               (old-send7990 kc7986 (cons rcv7987 msg7988)))))
                           (begin
                             (sender (cons 'reply-ip (cons (fresh) cookie)))
                             (old-send7990 kc7986 'finish)))
                          (external-server)))))))))
               (internal-actor
                (letrec ((act (spawn^ (internal-server))))
                  (lambda (msg) ((dyn send^) act msg))))
               (external-actor
                (letrec ((act (spawn^ (external-server))))
                  (lambda (msg) ((dyn send^) act msg))))
               (local-dns-unmonitored
                (letrec ((act
                          (spawn^
                           (local-dns internal-actor external-actor '()))))
                  (lambda (msg) ((dyn send^) act msg))))
               (local-dns-actor
                (letrec ((xj7992 (loc 'client)) (xk7993 (loc 'server)))
                  (local-dns/c xj7992 xk7993 local-dns-unmonitored)))
               (client-actor
                (letrec ((act (spawn^ (client local-dns-actor))))
                  (lambda (msg) ((dyn send^) act msg)))))
        (client-actor 'start)))))
