(letrec ((ping-behavior (lambda ()

                          (receive ((sender print) ((pair k7402 j7406)
                                                    (letrec ((kc7403 (k7402 j7406))
                                                             (old-send7407 (dyn send^)))
                                                      (parametrize ((send^ (lambda (rcv7404 msg7405)
                                                                             (old-send7407 kc7403
                                                                                           rcv7404))))
                                                                   (begin
                                                                     print
                                                                     sender
                                                                     (old-send7407 kc7403 finish)
                                                                     (ping-behavior)))))))))

         (real-self self^)

         (ping/c
          (lambda ()
            (lambda (k7418 j7419 a7417)

              (letrec ((message7416

                        (lambda (j7424)

                          (letrec ((r (lambda (trace7428)
                                        (receive ((finish #t)
                                                  ((pair rcv7427 message7426)
                                                   (match message7426
                                                     ((x7429 (begin
                                                               (send^ rcv7427
                                                                      (pair (letrec ((r trace7435))
                                                                              (trace FOO)
                                                                              (spawn^ r))
                                                                            (j7424 x7429)))

                                                               r))))))))))
                            (spawn^ (r list))))))
                (a7417 message7416))))))

  ((ping/c) xj7436
            xk7437
            (letrec ((act (spawn^ (ping-behavior))))
              (lambda (msg) (send^ act msg)))))
