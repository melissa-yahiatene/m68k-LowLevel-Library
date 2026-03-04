                org         $4
           
vector_001      dc.l        main

                org         $500

main            movea.l     #string1,a0
                jsr         lowerCount
                
                movea.l     #string2,a0
                jsr         lowerCount
                
                illegal
                
lowerCount      movem.l     d1/a0,-(a7)

                clr.l       d0

\loop           move.b      (a0)+,d1
                beq         \quit

                cmp.b      #'a',d1
                blo        \loop

                cmp.b      #'z',d1
                bhi        \loop
                
                addq.l     #1,d0
                bra        \loop
                
\quit           movem.l    (a7)+,d1/a0
                rts
                
                org        $550
                
string1         dc.b       "Cette chaine comporte 28 minuscules.",0
string2         dc.b       "Celle-ci en comporte 16.",0