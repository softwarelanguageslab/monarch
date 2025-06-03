;; This should result in either a set abstraction mailbox for test-act
; with both messages 'foo' and 'bar' or a set of graph abstractions containing both messages.
(letrec
  ((test-act (spawn^ 10)))

  (if (bool-top)
    (send^ test-act 'foo)
    (send^ test-act 'bar)))
