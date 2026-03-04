                org         $4
           
vector_001      dc.l        main

                org         $500

main            movea.l     #string1,a0
                jsr         alphaCount
                
                movea.l     #string2,a0
                jsr         alphaCount
                
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
                
                
upperCount      movem.l     d1/a0,-(a7)

                clr.l       d0

\loop           move.b      (a0)+,d1
                beq         \quit

                cmp.b      #'A',d1
                blo        \loop

                cmp.b      #'Z',d1
                bhi        \loop
                
                addq.l     #1,d0
                bra        \loop
                
\quit           movem.l    (a7)+,d1/a0
                rts
                
digitCount      movem.l     d1/a0,-(a7)

                clr.l       d0

\loop           move.b      (a0)+,d1
                beq         \quit

                cmp.b      #'0',d1
                blo        \loop

                cmp.b      #'9',d1
                bhi        \loop
                
                addq.l     #1,d0
                bra        \loop
                
\quit           movem.l    (a7)+,d1/a0
                rts
                
alphaCount      jsr        lowerCount
                move.l     d0,-(a7)
                
                jsr        upperCount
                add.l     d0,(a7)
                
                jsr        digitCount
                add.l     (a7)+,d0
                
                rts
                
                org        $600

string1         dc.b       "Cette chaine comporte 46 caracteres alphanumeriques.",0
string2         dc.b       "Celle-ci en comporte 19.",0
