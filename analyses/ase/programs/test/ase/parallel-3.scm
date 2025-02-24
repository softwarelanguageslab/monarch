(letrec ((z (lambda (x) (blame x 0)))) (parallel (z (loc 'server)) 5 (z (loc 'server)) 6))
                    
