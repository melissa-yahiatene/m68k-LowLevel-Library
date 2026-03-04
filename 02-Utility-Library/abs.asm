                org         $4
           
vector_001      dc.l        main

                org         $500
                
main            move.l      #-55,d0
                jsr         abs 
                
                move.l      #-874,d0
                jsr         abs
                
                illegal
                
abs             tst.l       d0

                bpl         \quit
                neg.l       d0

\quit           rts