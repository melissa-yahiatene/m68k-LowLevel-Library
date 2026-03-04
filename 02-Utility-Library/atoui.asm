                org         $4
           
vector_001      dc.l        main

                org         $500

main            movea.l     #string1,a0
                jsr         atoui
                
                movea.l     #string2,a0
                jsr         atoui
                
                movea.l     #string3,a0
                jsr         atoui

                illegal
                
atoui           movem.l     d1/a0,-(a7)

                clr.l       d0
                clr.l       d1
                
\loop           move.b      (a0)+,d1
                beq         \quit
                subi.b      #'0',d1
                mulu.b      #10,d0
                add.l       d1,d0
                bra         \loop
                
\quit           movem.l     (a7)+,d1/a0
                rts
                
                
                org         $550
            
string1         dc.b        "52146",0
string2         dc.b        "309",0
string3         dc.b        "2570",0