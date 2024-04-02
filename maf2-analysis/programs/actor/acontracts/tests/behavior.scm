;; TEST

(define x (behavior/c
            (message/c 'ping any-recipient (string?) unconstrained/c)))

x
