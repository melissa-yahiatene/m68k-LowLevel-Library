                org        $4

Vector_001      dc.l       Main


                org        $500

Main            movea.l    #string,a0

SpaceCount      clr.l       d0

loop            move.b      (a0)+,d1
                beq         quit

                cmp.b      #' ',d1

                bne        loop
                
                addq.l     #1,d0
                bra        loop
                
quit            illegal

                org        $550

string          dc.b       "Cette chaine comporte 4 espaces.",0


