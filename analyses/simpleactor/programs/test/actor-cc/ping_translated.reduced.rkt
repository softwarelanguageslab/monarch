(letrec ((ping-behavior
          (lambda ()

            (receive (('ping print) ((pair enhanced (pair k7402 j7406))
                                     (letrec ((kc7403 (k7402 j7406)) (old-send7407 send^))
                                       (parametrize ((send^ kc7403)) 'done) (ping-behavior)))))))
         (pong-behavior self^)
         (ping/c (lambda ()
                   (lambda (k7418 j7419 a7417)

                     (letrec ((message7416 (pair 'enhanced
                                                 (pair (lambda (j7424)
                                                         (trace j7424)
                                                         (letrec ((r 'finish))
                                                           (spawn^ r)))
                                                       j7419))))
                       (a7417 message7416))))))

  (letrec ((xj7436 'client) (xk7437 'server))
    ((ping/c) xj7436
              xk7437
              (letrec ((act (spawn^ (ping-behavior))))
                (lambda (msg) (send^ act msg))))))
