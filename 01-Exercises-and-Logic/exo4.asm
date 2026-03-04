                org        $4
vector_001      dc.l       main

                org        $500

main            movea.l    #string,a0

strlen          clr.l       d0
                
loop            tst.b      (a0)+
                beq        quit

                addq.l     #1,d0
                bra        loop

quit            illegal

                org        $550
                
string          dc.b       "Cette chaine comporte 36 caracteres.",0
