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
         (unconstrained/c #f)
         (actor? (lambda (k j) (lambda (v) v)))
         (nonzero? (lambda (v) (not (= v 0)))))
  (begin
    (letrec ((assert (lambda (cnd) (if cnd '() (error "assertion failed"))))
             (>=
              (lambda (x y)
                (assert (number? x))
                (letrec ((val1579 (> x y)))
                  (if val1579
                    val1579
                    (letrec ((val1580 (= x y))) (if val1580 val1580 #f))))))
             (<=
              (lambda (x y)
                (assert (number? x))
                (letrec ((val1581 (< x y)))
                  (if val1581
                    val1581
                    (letrec ((val1582 (= x y))) (if val1582 val1582 #f))))))
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
                (lambda (g1598 g1599 g1600)
                  (if (real? g1600) g1600 (blame g1598 'real?))))
               (boolean?/c
                (lambda (g1601 g1602 g1603)
                  (if (boolean? g1603) g1603 (blame g1601 'boolean?))))
               (number?/c
                (lambda (g1604 g1605 g1606)
                  (if (number? g1606) g1606 (blame g1604 'number?))))
               (any/c
                (lambda (g1607 g1608 g1609)
                  (if ((lambda (v) #t) g1609)
                    g1609
                    (blame g1607 '(lambda (v) #t)))))
               (any?/c
                (lambda (g1610 g1611 g1612)
                  (if ((lambda (v) #t) g1612)
                    g1612
                    (blame g1610 '(lambda (v) #t)))))
               (cons?/c
                (lambda (g1613 g1614 g1615)
                  (if (pair? g1615) g1615 (blame g1613 'pair?))))
               (cons/c
                (lambda (k1 k2)
                  (lambda (k j v) (cons (k1 k j (car v)) (k2 k j (cdr v))))))
               (pair?/c
                (lambda (g1616 g1617 g1618)
                  (if (pair? g1618) g1618 (blame g1616 'pair?))))
               (integer?/c
                (lambda (g1619 g1620 g1621)
                  (if (integer? g1621) g1621 (blame g1619 'integer?))))
               (symbol?/c
                (lambda (g1622 g1623 g1624)
                  (if (symbol? g1624) g1624 (blame g1622 'symbol?))))
               (string?/c
                (lambda (g1625 g1626 g1627)
                  (if (string? g1627) g1627 (blame g1625 'string?))))
               (and/c
                (lambda (c1 c2)
                  (lambda (k j v) (if (c1 k j v) (c2 k j v) #f))))
               (or/c
                (lambda (c1 c2)
                  (lambda (k j v)
                    (letrec ((val1583 (c1 k j v)))
                      (if val1583 val1583 (c2 k j v))))))
               (null?/c
                (lambda (g1628 g1629 g1630)
                  (if (null? g1630) g1630 (blame g1628 'null?))))
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
                (lambda (g1631 g1632 g1633)
                  (if ((lambda (v) (not (= v 0))) g1633)
                    g1633
                    (blame g1631 '(lambda (v) (not (= v 0)))))))
               (>=/c
                (lambda (n)
                  (lambda (g1634 g1635 g1636)
                    (if ((lambda (v) (orig->= v n)) g1636)
                      g1636
                      (blame g1634 '(lambda (v) (orig->= v n)))))))
               (>/c
                (lambda (n)
                  (lambda (g1637 g1638 g1639)
                    (if ((lambda (v) (orig-> v n)) g1639)
                      g1639
                      (blame g1637 '(lambda (v) (orig-> v n)))))))
               (</c
                (lambda (n)
                  (lambda (g1640 g1641 g1642)
                    (if ((lambda (v) (orig-< v n)) g1642)
                      g1642
                      (blame g1640 '(lambda (v) (orig-< v n)))))))
               (<=/c
                (lambda (n)
                  (lambda (g1643 g1644 g1645)
                    (if ((lambda (v) (orig-<= v n)) g1645)
                      g1645
                      (blame g1643 '(lambda (v) (orig-<= v n)))))))
               (=/c
                (lambda (n)
                  (lambda (g1646 g1647 g1648)
                    (if ((lambda (v) (orig-= v n)) g1648)
                      g1648
                      (blame g1646 '(lambda (v) (orig-= v n)))))))
               (meta (lambda (v) v))
               (+
                (letrec ((xj1649 'server) (xk1650 'client))
                  ((lambda (j1653 k1654 f1655)
                     (lambda (g1651 g1652)
                       (number?/c
                        j1653
                        k1654
                        (f1655
                         (number?/c j1653 k1654 g1651)
                         (number?/c j1653 k1654 g1652)))))
                   xj1649
                   xk1650
                   (lambda (a b) (orig-+ a b)))))
               (-
                (letrec ((xj1656 'server) (xk1657 'client))
                  ((lambda (j1660 k1661 f1662)
                     (lambda (g1658 g1659)
                       (number?/c
                        j1660
                        k1661
                        (f1662
                         (number?/c j1660 k1661 g1658)
                         (number?/c j1660 k1661 g1659)))))
                   xj1656
                   xk1657
                   (lambda (a b) (orig-- a b)))))
               (*
                (letrec ((xj1663 'server) (xk1664 'client))
                  ((lambda (j1667 k1668 f1669)
                     (lambda (g1665 g1666)
                       (number?/c
                        j1667
                        k1668
                        (f1669
                         (number?/c j1667 k1668 g1665)
                         (number?/c j1667 k1668 g1666)))))
                   xj1663
                   xk1664
                   (lambda (a b) (orig-* a b)))))
               (<
                (letrec ((xj1670 'server) (xk1671 'client))
                  ((lambda (j1674 k1675 f1676)
                     (lambda (g1672 g1673)
                       (boolean?/c
                        j1674
                        k1675
                        (f1676
                         (number?/c j1674 k1675 g1672)
                         (number?/c j1674 k1675 g1673)))))
                   xj1670
                   xk1671
                   (lambda (a b) (orig-< a b)))))
               (>
                (letrec ((xj1677 'server) (xk1678 'client))
                  ((lambda (j1681 k1682 f1683)
                     (lambda (g1679 g1680)
                       (boolean?/c
                        j1681
                        k1682
                        (f1683
                         (number?/c j1681 k1682 g1679)
                         (number?/c j1681 k1682 g1680)))))
                   xj1677
                   xk1678
                   (lambda (a b) (orig-> a b)))))
               (<=
                (letrec ((xj1684 'server) (xk1685 'client))
                  ((lambda (j1688 k1689 f1690)
                     (lambda (g1686 g1687)
                       (boolean?/c
                        j1688
                        k1689
                        (f1690
                         (number?/c j1688 k1689 g1686)
                         (number?/c j1688 k1689 g1687)))))
                   xj1684
                   xk1685
                   (lambda (a b) (orig-<= a b)))))
               (>=
                (letrec ((xj1691 'server) (xk1692 'client))
                  ((lambda (j1695 k1696 f1697)
                     (lambda (g1693 g1694)
                       (boolean?/c
                        j1695
                        k1696
                        (f1697
                         (number?/c j1695 k1696 g1693)
                         (number?/c j1695 k1696 g1694)))))
                   xj1691
                   xk1692
                   (lambda (a b) (orig->= a b)))))
               (add1 (lambda (x) (+ x 1)))
               (/
                (letrec ((xj1698 'server) (xk1699 'client))
                  ((lambda (j1702 k1703 f1704)
                     (lambda (g1700 g1701)
                       (number?/c
                        j1702
                        k1703
                        (f1704
                         (number?/c j1702 k1703 g1700)
                         (number?/c j1702 k1703 g1701)))))
                   xj1698
                   xk1699
                   (lambda (a b) (orig-/ a b)))))
               (car
                (letrec ((xj1705 'server) (xk1706 'client))
                  ((lambda (j1708 k1709 f1710)
                     (lambda (g1707)
                       (any/c
                        j1708
                        k1709
                        (f1710 (pair?/c j1708 k1709 g1707)))))
                   xj1705
                   xk1706
                   (lambda (p) (orig-car p)))))
               (cdr
                (letrec ((xj1711 'server) (xk1712 'client))
                  ((lambda (j1714 k1715 f1716)
                     (lambda (g1713)
                       (any/c
                        j1714
                        k1715
                        (f1716 (pair?/c j1714 k1715 g1713)))))
                   xj1711
                   xk1712
                   (lambda (p) (orig-cdr p)))))
               (cons
                (letrec ((xj1717 'server) (xk1718 'client))
                  ((lambda (j1721 k1722 f1723)
                     (lambda (g1719 g1720)
                       (pair?/c
                        j1721
                        k1722
                        (f1723
                         (any/c j1721 k1722 g1719)
                         (any/c j1721 k1722 g1720)))))
                   xj1717
                   xk1718
                   (lambda (a b) (orig-cons a b)))))
               (vector?/c
                (lambda (g1724 g1725 g1726)
                  (if (vector? g1726) g1726 (blame g1724 'vector?))))
               (vector-ref
                (letrec ((xj1727 'server) (xk1728 'client))
                  ((lambda (j1730 k1731 f1732)
                     (lambda (g1729)
                       (integer?/c
                        j1730
                        k1731
                        (f1732 (vector?/c j1730 k1731 g1729)))))
                   xj1727
                   xk1728
                   (lambda (v i) (orig-vector-ref v i)))))
               (vector-set!
                (letrec ((xj1733 'server) (xk1734 'client))
                  ((lambda (j1737 k1738 f1739)
                     (lambda (g1735 g1736)
                       (any/c
                        j1737
                        k1738
                        (f1739
                         (vector?/c j1737 k1738 g1735)
                         (integer?/c j1737 k1738 g1736)))))
                   xj1733
                   xk1734
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
                  (letrec ((val1584 (char<? c1 c2)))
                    (if val1584 val1584 (char=? c1 c2)))))
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
                  (letrec ((val1585 (= (char->integer c) 9)))
                    (if val1585
                      val1585
                      (letrec ((val1586 (= (char->integer c) 10)))
                        (if val1586 val1586 (= (char->integer c) 32)))))))
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
                  (letrec ((val1587 (eq? a b)))
                    (if val1587
                      val1587
                      (letrec ((val1588 (if (null? a) (null? b) #f)))
                        (if val1588
                          val1588
                          (letrec ((val1589
                                    (if (string? a)
                                      (if (string? b) (string=? a b) #f)
                                      #f)))
                            (if val1589
                              val1589
                              (letrec ((val1590
                                        (if (pair? a)
                                          (if (pair? b)
                                            (if (equal? (car a) (car b))
                                              (equal? (cdr a) (cdr b))
                                              #f)
                                            #f)
                                          #f)))
                                (if val1590
                                  val1590
                                  (if (vector? a)
                                    (if (vector? b)
                                      (letrec ((n (vector-length a)))
                                        (if (= (vector-length b) n)
                                          (letrec ((loop
                                                    (lambda (i)
                                                      (letrec ((val1591
                                                                (= i n)))
                                                        (if val1591
                                                          val1591
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
                  (letrec ((val1592 (char>? c1 c2)))
                    (if val1592 val1592 (char=? c1 c2)))))
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
                  (letrec ((val1593 (string>? s1 s2)))
                    (if val1593 val1593 (string=? s1 s2)))))
               (cadr (lambda (x) (car (cdr x))))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec ((val1594 (if (pair? l) (list? (cdr l)) #f)))
                    (if val1594 val1594 (null? l)))))
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
                  (letrec ((val1595 (char-ci<? c1 c2)))
                    (if val1595 val1595 (char-ci=? c1 c2)))))
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
                  (letrec ((val1596 (string<? s1 s2)))
                    (if val1596 val1596 (string=? s1 s2)))))
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
                  (letrec ((val1597 (char-ci>? c1 c2)))
                    (if val1597 val1597 (char-ci=? c1 c2)))))
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
               (gcd (lambda (a b) (if (= b 0) a (gcd b (modulo a b))))))
        (letrec ((ping-behavior
                  (lambda ()
                    (letrec ((real-self self^))
                      (parametrize
                       ((self (lambda (m) ((dyn send^) real-self m))))
                       (receive
                        (((pair 'ping sender)
                          (begin
                            (print 'ping)
                            (sender (pair 'pong (self^)))
                            (ping-behavior)))
                         ((pair
                           'enhanced
                           (pair k1740 (pair j1744 (pair 'ping sender))))
                          (letrec ((kc1741 (k1740 j1744))
                                   (old-send1745 (dyn send^)))
                            (parametrize
                             ((send^
                               (lambda (rcv1742 msg1743)
                                 (old-send1745
                                  kc1741
                                  (pair rcv1742 msg1743)))))
                             (begin
                               (print 'ping)
                               (sender (pair 'pong (self^)))
                               (old-send1745 kc1741 'finish)))
                            (ping-behavior)))))))))
                 (pong-behavior
                  (lambda ()
                    (letrec ((real-self self^))
                      (parametrize
                       ((self (lambda (m) ((dyn send^) real-self m))))
                       (receive
                        (((pair 'pong sender)
                          (begin
                            (print 'pong)
                            (sender (pair 'ping (self^)))
                            (pong-behavior)))
                         ((pair
                           'enhanced
                           (pair k1747 (pair j1751 (pair 'pong sender))))
                          (letrec ((kc1748 (k1747 j1751))
                                   (old-send1752 (dyn send^)))
                            (parametrize
                             ((send^
                               (lambda (rcv1749 msg1750)
                                 (old-send1752
                                  kc1748
                                  (pair rcv1749 msg1750)))))
                             (begin
                               (print 'pong)
                               (sender (pair 'ping (self^)))
                               (old-send1752 kc1748 'finish)))
                            (pong-behavior)))))))))
                 (ping/c
                  (lambda ()
                    (lambda (k1756 j1757 a1755)
                      (lambda (v1758)
                        (letrec ((message1754
                                  (match
                                   v1758
                                   (((pair 'ping x1760)
                                     (pair
                                      'enhanced
                                      (pair
                                       (lambda (j1762)
                                         (letrec ((r
                                                   (lambda (trace1766)
                                                     (receive
                                                      (('finish
                                                        (begin
                                                          (if (member
                                                               'pong
                                                               trace1766)
                                                            #t
                                                            (blame j1762))))
                                                       ((pair
                                                         rcv1765
                                                         message1764)
                                                        (match
                                                         message1764
                                                         (((pair 'pong x1767)
                                                           (begin
                                                             ((dyn send^)
                                                              rcv1765
                                                              (pair
                                                               'enhanced
                                                               (pair
                                                                (lambda (j1769)
                                                                  (letrec ((r
                                                                            (lambda (trace1773)
                                                                              (receive
                                                                               (('finish
                                                                                 (begin))
                                                                                ((pair
                                                                                  rcv1772
                                                                                  message1771)
                                                                                 (ping/c)))))))
                                                                    (spawn^
                                                                     (r
                                                                      (list)))))
                                                                (pair
                                                                 j1762
                                                                 (pair
                                                                  'pong
                                                                  ((actor?
                                                                    j1762
                                                                    j1762)
                                                                   x1767))))))
                                                             (r
                                                              (pair
                                                               'pong
                                                               trace1766))))))))))))
                                           (spawn^ (r (list)))))
                                       (pair
                                        j1757
                                        (pair
                                         'ping
                                         ((actor? k1756 j1757) x1760))))))
                                    (x1759 (blame k1756))))))
                          (a1755 message1754)))))))
          (letrec ((ping
                    (letrec ((xj1774 'client) (xk1775 'server))
                      ((ping/c)
                       xj1774
                       xk1775
                       (letrec ((act (spawn^ (ping-behavior))))
                         (lambda (msg) ((dyn send^) act msg))))))
                   (pong
                    (letrec ((act (spawn^ (pong-behavior))))
                      (lambda (msg) ((dyn send^) act msg)))))
            (begin (ping (pair 'ping pong)) (wait-until-all-finished))))))))
