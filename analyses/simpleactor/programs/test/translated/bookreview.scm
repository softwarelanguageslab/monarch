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
               (meta (lambda (v) v))
               (+
                (letrec ((xj7789 'server) (xk7790 'client))
                  ((lambda (j7793 k7794 f7795)
                     (lambda (g7791 g7792)
                       (number?/c
                        j7793
                        k7794
                        (f7795
                         (number?/c k7794 j7793 g7791)
                         (number?/c k7794 j7793 g7792)))))
                   xj7789
                   xk7790
                   (lambda (a b) (orig-+ a b)))))
               (-
                (letrec ((xj7796 'server) (xk7797 'client))
                  ((lambda (j7800 k7801 f7802)
                     (lambda (g7798 g7799)
                       (number?/c
                        j7800
                        k7801
                        (f7802
                         (number?/c k7801 j7800 g7798)
                         (number?/c k7801 j7800 g7799)))))
                   xj7796
                   xk7797
                   (lambda (a b) (orig-- a b)))))
               (*
                (letrec ((xj7803 'server) (xk7804 'client))
                  ((lambda (j7807 k7808 f7809)
                     (lambda (g7805 g7806)
                       (number?/c
                        j7807
                        k7808
                        (f7809
                         (number?/c k7808 j7807 g7805)
                         (number?/c k7808 j7807 g7806)))))
                   xj7803
                   xk7804
                   (lambda (a b) (orig-* a b)))))
               (<
                (letrec ((xj7810 'server) (xk7811 'client))
                  ((lambda (j7814 k7815 f7816)
                     (lambda (g7812 g7813)
                       (boolean?/c
                        j7814
                        k7815
                        (f7816
                         (number?/c k7815 j7814 g7812)
                         (number?/c k7815 j7814 g7813)))))
                   xj7810
                   xk7811
                   (lambda (a b) (orig-< a b)))))
               (>
                (letrec ((xj7817 'server) (xk7818 'client))
                  ((lambda (j7821 k7822 f7823)
                     (lambda (g7819 g7820)
                       (boolean?/c
                        j7821
                        k7822
                        (f7823
                         (number?/c k7822 j7821 g7819)
                         (number?/c k7822 j7821 g7820)))))
                   xj7817
                   xk7818
                   (lambda (a b) (orig-> a b)))))
               (<=
                (letrec ((xj7824 'server) (xk7825 'client))
                  ((lambda (j7828 k7829 f7830)
                     (lambda (g7826 g7827)
                       (boolean?/c
                        j7828
                        k7829
                        (f7830
                         (number?/c k7829 j7828 g7826)
                         (number?/c k7829 j7828 g7827)))))
                   xj7824
                   xk7825
                   (lambda (a b) (orig-<= a b)))))
               (>=
                (letrec ((xj7831 'server) (xk7832 'client))
                  ((lambda (j7835 k7836 f7837)
                     (lambda (g7833 g7834)
                       (boolean?/c
                        j7835
                        k7836
                        (f7837
                         (number?/c k7836 j7835 g7833)
                         (number?/c k7836 j7835 g7834)))))
                   xj7831
                   xk7832
                   (lambda (a b) (orig->= a b)))))
               (add1 (lambda (x) (+ x 1)))
               (/
                (letrec ((xj7838 'server) (xk7839 'client))
                  ((lambda (j7842 k7843 f7844)
                     (lambda (g7840 g7841)
                       (number?/c
                        j7842
                        k7843
                        (f7844
                         (number?/c k7843 j7842 g7840)
                         (number?/c k7843 j7842 g7841)))))
                   xj7838
                   xk7839
                   (lambda (a b) (orig-/ a b)))))
               (car
                (letrec ((xj7845 'server) (xk7846 'client))
                  ((lambda (j7848 k7849 f7850)
                     (lambda (g7847)
                       (any/c
                        j7848
                        k7849
                        (f7850 (pair?/c k7849 j7848 g7847)))))
                   xj7845
                   xk7846
                   (lambda (p) (orig-car p)))))
               (cdr
                (letrec ((xj7851 'server) (xk7852 'client))
                  ((lambda (j7854 k7855 f7856)
                     (lambda (g7853)
                       (any/c
                        j7854
                        k7855
                        (f7856 (pair?/c k7855 j7854 g7853)))))
                   xj7851
                   xk7852
                   (lambda (p) (orig-cdr p)))))
               (vector?/c
                (lambda (g7857 g7858 g7859)
                  (if (vector? g7859) g7859 (blame g7857 'vector?))))
               (vector-ref
                (letrec ((xj7860 'server) (xk7861 'client))
                  ((lambda (j7864 k7865 f7866)
                     (lambda (g7862 g7863)
                       (any/c
                        j7864
                        k7865
                        (f7866
                         (vector?/c k7865 j7864 g7862)
                         (integer?/c k7865 j7864 g7863)))))
                   xj7860
                   xk7861
                   (lambda (v i) (orig-vector-ref v i)))))
               (vector-set!
                (letrec ((xj7867 'server) (xk7868 'client))
                  ((lambda (j7872 k7873 f7874)
                     (lambda (g7869 g7870 g7871)
                       (any/c
                        j7872
                        k7873
                        (f7874
                         (vector?/c k7873 j7872 g7869)
                         (integer?/c k7873 j7872 g7870)
                         (any/c k7873 j7872 g7871)))))
                   xj7867
                   xk7868
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
               (bookreview/c
                (lambda (corr-id k)
                  (lambda (j7876)
                    (letrec ((r
                              (lambda (trace7880)
                                (receive
                                 (('finish
                                   (begin
                                     (if (member 'get-book-review trace7880)
                                       #t
                                       (blame j7876))))
                                  ((pair rcv7879 message7878)
                                   (match
                                    message7878
                                    (((cons
                                       'get-book-review
                                       (cons x7881 x7882))
                                      (begin
                                        ((dyn send^)
                                         rcv7879
                                         (letrec ((x7883
                                                   (actor? j7876 j7876 x7881))
                                                  (x7884
                                                   ((and/c
                                                     number?/c
                                                     (=/c corr-id))
                                                    j7876
                                                    j7876
                                                    x7882)))
                                           (cons
                                            'enhanced
                                            (cons
                                             ((lambda (actor-ref corr-id)
                                                (lambda (j7886)
                                                  (letrec ((r
                                                            (lambda (trace7890)
                                                              (receive
                                                               (('finish
                                                                 (begin
                                                                   (if (member
                                                                        'get-ratings
                                                                        trace7890)
                                                                     #t
                                                                     (blame
                                                                      j7886))))
                                                                ((pair
                                                                  rcv7889
                                                                  message7888)
                                                                 (match
                                                                  message7888
                                                                  (((cons
                                                                     'get-ratings
                                                                     (cons
                                                                      x7891
                                                                      x7892))
                                                                    (begin
                                                                      ((dyn
                                                                        send^)
                                                                       rcv7889
                                                                       (letrec ((x7893
                                                                                 (actor?
                                                                                  j7886
                                                                                  j7886
                                                                                  x7891))
                                                                                (x7894
                                                                                 ((and/c
                                                                                   number?/c
                                                                                   (=/c
                                                                                    corr-id))
                                                                                  j7886
                                                                                  j7886
                                                                                  x7892)))
                                                                         (cons
                                                                          'enhanced
                                                                          (cons
                                                                           ((lambda (actor-ref
                                                                                     corr-id)
                                                                              (lambda (j7896)
                                                                                (letrec ((r
                                                                                          (lambda (trace7900)
                                                                                            (receive
                                                                                             (('finish
                                                                                               (begin
                                                                                                 (if (member
                                                                                                      'reply-book-ratings
                                                                                                      trace7900)
                                                                                                   #t
                                                                                                   (blame
                                                                                                    j7896))))
                                                                                              ((pair
                                                                                                rcv7899
                                                                                                message7898)
                                                                                               (match
                                                                                                message7898
                                                                                                (((cons
                                                                                                   'reply-book-ratings
                                                                                                   x7901)
                                                                                                  (begin
                                                                                                    ((dyn
                                                                                                      send^)
                                                                                                     rcv7899
                                                                                                     (letrec ((x7902
                                                                                                               ((and/c
                                                                                                                 number?/c
                                                                                                                 (=/c
                                                                                                                  corr-id))
                                                                                                                j7896
                                                                                                                j7896
                                                                                                                x7901)))
                                                                                                       (cons
                                                                                                        'enhanced
                                                                                                        (cons
                                                                                                         ((lambda (corr-id)
                                                                                                            (lambda (j7904)
                                                                                                              (letrec ((r
                                                                                                                        (lambda (trace7908)
                                                                                                                          (receive
                                                                                                                           (('finish
                                                                                                                             (begin
                                                                                                                               (if (member
                                                                                                                                    'reply-book-reviews
                                                                                                                                    trace7908)
                                                                                                                                 #t
                                                                                                                                 (blame
                                                                                                                                  j7904))))
                                                                                                                            ((pair
                                                                                                                              rcv7907
                                                                                                                              message7906)
                                                                                                                             (match
                                                                                                                              message7906
                                                                                                                              (((cons
                                                                                                                                 'reply-book-reviews
                                                                                                                                 x7909)
                                                                                                                                (begin
                                                                                                                                  ((dyn
                                                                                                                                    send^)
                                                                                                                                   rcv7907
                                                                                                                                   (letrec ((x7910
                                                                                                                                             ((and/c
                                                                                                                                               number?/c
                                                                                                                                               (=/c
                                                                                                                                                corr-id))
                                                                                                                                              j7904
                                                                                                                                              j7904
                                                                                                                                              x7909)))
                                                                                                                                     (cons
                                                                                                                                      'enhanced
                                                                                                                                      (cons
                                                                                                                                       (k
                                                                                                                                        x7910)
                                                                                                                                       (cons
                                                                                                                                        j7904
                                                                                                                                        (cons
                                                                                                                                         'reply-book-reviews
                                                                                                                                         x7910))))))
                                                                                                                                  (r
                                                                                                                                   (cons
                                                                                                                                    'reply-book-reviews
                                                                                                                                    trace7908))))))))))))
                                                                                                                (spawn^
                                                                                                                 (r
                                                                                                                  (list))))))
                                                                                                          x7902)
                                                                                                         (cons
                                                                                                          j7896
                                                                                                          (cons
                                                                                                           'reply-book-ratings
                                                                                                           x7902))))))
                                                                                                    (r
                                                                                                     (cons
                                                                                                      'reply-book-ratings
                                                                                                      trace7900))))))))))))
                                                                                  (spawn^
                                                                                   (r
                                                                                    (list))))))
                                                                            x7893
                                                                            x7894)
                                                                           (cons
                                                                            j7886
                                                                            (cons
                                                                             'get-ratings
                                                                             (cons
                                                                              x7893
                                                                              x7894)))))))
                                                                      (r
                                                                       (cons
                                                                        'get-ratings
                                                                        trace7890))))))))))))
                                                    (spawn^ (r (list))))))
                                              x7883
                                              x7884)
                                             (cons
                                              j7876
                                              (cons
                                               'get-book-review
                                               (cons x7883 x7884)))))))
                                        (r
                                         (cons
                                          'get-book-review
                                          trace7880))))))))))))
                      (spawn^ (r (list)))))))
               (bookdetails/c
                (lambda (corr-id k)
                  (lambda (j7912)
                    (letrec ((r
                              (lambda (trace7916)
                                (receive
                                 (('finish
                                   (begin
                                     (if (member 'get-details trace7916)
                                       #t
                                       (blame j7912))))
                                  ((pair rcv7915 message7914)
                                   (match
                                    message7914
                                    (((cons 'get-details (cons x7917 x7918))
                                      (begin
                                        ((dyn send^)
                                         rcv7915
                                         (letrec ((x7919
                                                   (actor? j7912 j7912 x7917))
                                                  (x7920
                                                   ((and/c
                                                     number?/c
                                                     (=/c corr-id))
                                                    j7912
                                                    j7912
                                                    x7918)))
                                           (cons
                                            'enhanced
                                            (cons
                                             ((lambda (actor-ref corr-id)
                                                (lambda (j7922)
                                                  (letrec ((r
                                                            (lambda (trace7926)
                                                              (receive
                                                               (('finish
                                                                 (begin
                                                                   (if (member
                                                                        'reply-book-details
                                                                        trace7926)
                                                                     #t
                                                                     (blame
                                                                      j7922))))
                                                                ((pair
                                                                  rcv7925
                                                                  message7924)
                                                                 (match
                                                                  message7924
                                                                  (((cons
                                                                     'reply-book-details
                                                                     x7927)
                                                                    (begin
                                                                      ((dyn
                                                                        send^)
                                                                       rcv7925
                                                                       (letrec ((x7928
                                                                                 ((and/c
                                                                                   number?/c
                                                                                   (=/c
                                                                                    corr-id))
                                                                                  j7922
                                                                                  j7922
                                                                                  x7927)))
                                                                         (cons
                                                                          'enhanced
                                                                          (cons
                                                                           (k
                                                                            x7928)
                                                                           (cons
                                                                            j7922
                                                                            (cons
                                                                             'reply-book-details
                                                                             x7928))))))
                                                                      (r
                                                                       (cons
                                                                        'reply-book-details
                                                                        trace7926))))))))))))
                                                    (spawn^ (r (list))))))
                                              x7919
                                              x7920)
                                             (cons
                                              j7912
                                              (cons
                                               'get-details
                                               (cons x7919 x7920)))))))
                                        (r
                                         (cons
                                          'get-details
                                          trace7916))))))))))))
                      (spawn^ (r (list)))))))
               (bookinfo/c
                (lambda (k7931 j7932 a7930)
                  (lambda (v7933)
                    (letrec ((result7950
                              ((lambda (k7935 j7936 v7937)
                                 (match
                                  v7937
                                  (((cons 'get-book-details (cons x7938 x7939))
                                    (letrec ((x7940 (actor? k7935 j7936 x7938))
                                             (x7941
                                              (number?/c k7935 j7936 x7939)))
                                      (cons
                                       'enhanced
                                       (cons
                                        ((lambda (client-ref corr-id)
                                           (bookreview/c
                                            corr-id
                                            (lambda ags
                                              (bookdetails/c
                                               corr-id
                                               (lambda ags
                                                 (lambda (j7943)
                                                   (letrec ((r
                                                             (lambda (trace7947)
                                                               (receive
                                                                (('finish
                                                                  (begin
                                                                    (if (member
                                                                         'reply-bookinfo
                                                                         trace7947)
                                                                      #t
                                                                      (blame
                                                                       j7943))))
                                                                 ((pair
                                                                   rcv7946
                                                                   message7945)
                                                                  (match
                                                                   message7945
                                                                   (((cons
                                                                      'reply-bookinfo
                                                                      x7948)
                                                                     (begin
                                                                       ((dyn
                                                                         send^)
                                                                        rcv7946
                                                                        (letrec ((x7949
                                                                                  ((and/c
                                                                                    number?/c
                                                                                    (=/c
                                                                                     corr-id))
                                                                                   j7943
                                                                                   j7943
                                                                                   x7948)))
                                                                          (cons
                                                                           'enhanced
                                                                           (cons
                                                                            (unconstrained/c
                                                                             x7949)
                                                                            (cons
                                                                             j7943
                                                                             (cons
                                                                              'reply-bookinfo
                                                                              x7949))))))
                                                                       (r
                                                                        (cons
                                                                         'reply-bookinfo
                                                                         trace7947))))))))))))
                                                     (spawn^ (r (list))))))))))
                                         x7940
                                         x7941)
                                        (cons
                                         j7936
                                         (cons
                                          'get-book-details
                                          (cons x7940 x7941))))))))))
                               k7931
                               j7932
                               v7933)))
                      (if result7950 (a7930 result7950) (blame k7931))))))
               (client
                (lambda (bookinfo)
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (('start
                        (begin
                          (bookinfo
                           (cons 'get-book-details (cons (dyn self) (fresh))))
                          (client bookinfo)))
                       ((cons 'reply-bookinfo corr-id)
                        (begin (displayln 'done) (client bookinfo)))
                       ((cons 'enhanced (cons k7952 (cons j7956 'start)))
                        (letrec ((kc7953 (k7952 j7956))
                                 (old-send7957 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv7954 msg7955)
                               (old-send7957 kc7953 (cons rcv7954 msg7955)))))
                           (begin
                             (bookinfo
                              (cons
                               'get-book-details
                               (cons (dyn self) (fresh))))
                             (old-send7957 kc7953 'finish)))
                          (client bookinfo)))
                       ((cons
                         'enhanced
                         (cons
                          k7959
                          (cons j7963 (cons 'reply-bookinfo corr-id))))
                        (letrec ((kc7960 (k7959 j7963))
                                 (old-send7964 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv7961 msg7962)
                               (old-send7964 kc7960 (cons rcv7961 msg7962)))))
                           (begin
                             (displayln 'done)
                             (old-send7964 kc7960 'finish)))
                          (client bookinfo)))))))))
               (bookinfo
                (lambda (book-review book-details clients)
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (((cons 'get-book-details (cons client correlation-id))
                        (begin
                          (book-review
                           (cons
                            'get-book-review
                            (cons (dyn self) correlation-id)))
                          (bookinfo
                           book-review
                           book-details
                           (add-client client correlation-id clients))))
                       ((cons 'reply-book-reviews correlation-id)
                        (begin
                          (letrec ((client
                                    (find-client correlation-id clients)))
                            (displayln "got the book reviews")
                            (book-details
                             (cons
                              'get-details
                              (cons (dyn self) correlation-id))))
                          (bookinfo book-review book-details clients)))
                       ((cons 'reply-book-details correlation-id)
                        (begin
                          (letrec ((client
                                    (find-client correlation-id clients)))
                            (client (cons 'reply-bookinfo correlation-id)))
                          (bookinfo
                           book-review
                           book-details
                           (remassoc correlation-id clients))))
                       ((cons
                         'enhanced
                         (cons
                          k7966
                          (cons
                           j7970
                           (cons
                            'get-book-details
                            (cons client correlation-id)))))
                        (letrec ((kc7967 (k7966 j7970))
                                 (old-send7971 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv7968 msg7969)
                               (old-send7971 kc7967 (cons rcv7968 msg7969)))))
                           (begin
                             (book-review
                              (cons
                               'get-book-review
                               (cons (dyn self) correlation-id)))
                             (old-send7971 kc7967 'finish)))
                          (bookinfo
                           book-review
                           book-details
                           (add-client client correlation-id clients))))
                       ((cons
                         'enhanced
                         (cons
                          k7973
                          (cons
                           j7977
                           (cons 'reply-book-reviews correlation-id))))
                        (letrec ((kc7974 (k7973 j7977))
                                 (old-send7978 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv7975 msg7976)
                               (old-send7978 kc7974 (cons rcv7975 msg7976)))))
                           (begin
                             (letrec ((client
                                       (find-client correlation-id clients)))
                               (displayln "got the book reviews")
                               (book-details
                                (cons
                                 'get-details
                                 (cons (dyn self) correlation-id))))
                             (old-send7978 kc7974 'finish)))
                          (bookinfo book-review book-details clients)))
                       ((cons
                         'enhanced
                         (cons
                          k7980
                          (cons
                           j7984
                           (cons 'reply-book-details correlation-id))))
                        (letrec ((kc7981 (k7980 j7984))
                                 (old-send7985 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv7982 msg7983)
                               (old-send7985 kc7981 (cons rcv7982 msg7983)))))
                           (begin
                             (letrec ((client
                                       (find-client correlation-id clients)))
                               (client (cons 'reply-bookinfo correlation-id)))
                             (old-send7985 kc7981 'finish)))
                          (bookinfo
                           book-review
                           book-details
                           (remassoc correlation-id clients))))))))))
               (bookreview
                (lambda (book-ratings clients)
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (((cons 'get-book-review (cons sender correlation-id))
                        (begin
                          (book-ratings
                           (cons
                            'get-ratings
                            (cons (dyn self) correlation-id)))
                          (bookreview
                           book-ratings
                           (add-client sender correlation-id clients))))
                       ((cons 'reply-book-ratings correlation-id)
                        (begin
                          (letrec ((client
                                    (find-client correlation-id clients)))
                            (displayln "got the ratings")
                            (client (cons 'reply-book-reviews correlation-id)))
                          (bookreview
                           book-ratings
                           (remassoc correlation-id clients))))
                       ((cons
                         'enhanced
                         (cons
                          k7987
                          (cons
                           j7991
                           (cons
                            'get-book-review
                            (cons sender correlation-id)))))
                        (letrec ((kc7988 (k7987 j7991))
                                 (old-send7992 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv7989 msg7990)
                               (old-send7992 kc7988 (cons rcv7989 msg7990)))))
                           (begin
                             (book-ratings
                              (cons
                               'get-ratings
                               (cons (dyn self) correlation-id)))
                             (old-send7992 kc7988 'finish)))
                          (bookreview
                           book-ratings
                           (add-client sender correlation-id clients))))
                       ((cons
                         'enhanced
                         (cons
                          k7994
                          (cons
                           j7998
                           (cons 'reply-book-ratings correlation-id))))
                        (letrec ((kc7995 (k7994 j7998))
                                 (old-send7999 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv7996 msg7997)
                               (old-send7999 kc7995 (cons rcv7996 msg7997)))))
                           (begin
                             (letrec ((client
                                       (find-client correlation-id clients)))
                               (displayln "got the ratings")
                               (client
                                (cons 'reply-book-reviews correlation-id)))
                             (old-send7999 kc7995 'finish)))
                          (bookreview
                           book-ratings
                           (remassoc correlation-id clients))))))))))
               (bookratings
                (lambda ()
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (((cons 'get-ratings (cons sender correlation-id))
                        (begin
                          (sender (cons 'reply-book-ratings correlation-id))
                          (bookratings)))
                       ((cons
                         'enhanced
                         (cons
                          k8001
                          (cons
                           j8005
                           (cons 'get-ratings (cons sender correlation-id)))))
                        (letrec ((kc8002 (k8001 j8005))
                                 (old-send8006 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv8003 msg8004)
                               (old-send8006 kc8002 (cons rcv8003 msg8004)))))
                           (begin
                             (sender (cons 'reply-book-ratings correlation-id))
                             (old-send8006 kc8002 'finish)))
                          (bookratings)))))))))
               (bookdetails
                (lambda ()
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (((cons 'get-details (cons sender correlation-id))
                        (begin
                          (sender (cons 'reply-book-details correlation-id))
                          (bookdetails)))
                       ((cons
                         'enhanced
                         (cons
                          k8008
                          (cons
                           j8012
                           (cons 'get-details (cons sender correlation-id)))))
                        (letrec ((kc8009 (k8008 j8012))
                                 (old-send8013 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv8010 msg8011)
                               (old-send8013 kc8009 (cons rcv8010 msg8011)))))
                           (begin
                             (sender (cons 'reply-book-details correlation-id))
                             (old-send8013 kc8009 'finish)))
                          (bookdetails)))))))))
               (bookratings-actor
                (letrec ((act (spawn^ (bookratings))))
                  (lambda (msg) ((dyn send^) act msg))))
               (bookdetails-actor
                (letrec ((act (spawn^ (bookdetails))))
                  (lambda (msg) ((dyn send^) act msg))))
               (bookreview-actor
                (letrec ((act (spawn^ (bookreview bookratings-actor '()))))
                  (lambda (msg) ((dyn send^) act msg))))
               (bookinfo-actor-unmonitored
                (letrec ((act
                          (spawn^
                           (bookinfo bookreview-actor bookdetails-actor '()))))
                  (lambda (msg) ((dyn send^) act msg))))
               (bookinfo-actor
                (letrec ((xj8015 (loc 'client)) (xk8016 (loc 'server)))
                  (bookinfo/c xj8015 xk8016 bookinfo-actor-unmonitored)))
               (client-actor
                (letrec ((act (spawn^ (client bookinfo-actor))))
                  (lambda (msg) ((dyn send^) act msg)))))
        (client-actor 'start)))))
