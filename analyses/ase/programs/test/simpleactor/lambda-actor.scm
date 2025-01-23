;; Demonstrates a translation from the higher-level 
;; λα to the simple actor language.
(letrec 
 ((beh (behavior (x)
         ((inc () 
               (print x)
               (send self inc)
               (become beh (+ x 1)))))))

 (begin
   (send (spawn beh 0) inc)
   (wait-until-all-finished)))

