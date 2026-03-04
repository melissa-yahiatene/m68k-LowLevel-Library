                org         $4
           
vector_001      dc.l        main

                org         $500

main            movea.l     #string1,a0
                jsr         strlen
                
                movea.l     #string2,a0
                jsr         strlen
                
                illegal
                
strlen          move.l      a0,-(a7)

                clr.l       d0

\loop           tst.b       (a0)+
                beq         \quit

                addq.l      #1,d0
                bra         \loop
                 
\quit           movea.l     (a7)+,a0
                rts

                org         $550
                
string1         dc.b        "Cette chaine comporte 36 caracteres.",0
string2         dc.b        "Celle-ci en comporte 24.",0
