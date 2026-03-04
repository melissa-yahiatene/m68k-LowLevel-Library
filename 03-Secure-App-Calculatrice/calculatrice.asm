                org         $0

vector_000      dc.l        $ffb500
vector_001      dc.l        main


                org         $500

main            lea          sTest,a0
                move.b       #24,d1
                move.b       #20,d2
                jsr          print

                illegal


isCharError     movem.l      d1/a0,-(a7)

                tst.b        (a0)
                beq          \true

\loop           move.b      (a0)+,d1
                beq         \false
                
                cmpi.b       #'0',d1
                blo         \true
                
                cmpi.b       #'9',d1
                bhi         \true 
                
                bra	        \loop
                
\true           ori.b       #00000100,ccr
                bra         \quit
                
\false          andi.b       #11111011,ccr
                bra         \quit
                
\quit           movem.l     (a7)+,d1/a0
                rts


strlen          move.l      a0,-(a7)

                clr.l       d0

\loop           tst.b       (a0)+
                beq         \quit

                addq.l      #1,d0
                bra         \loop
                 
\quit           movea.l     (a7)+,a0
                rts
                
isMaxError      movem.l      d1/d2/a0/a1,-(a7)

                jsr          strlen
                cmpi.l       #5,d0
                blo          \false
                bhi          \true 
                
                movea.l      #max,a1
                
\loop           move.b       (a0)+,d1
                beq          \false

                move.b       (a1)+,d2
                cmp.b        d2,d1

                bhi          \true

                blo          \false

                bra          \loop

                
\true           ori.b       #00000100,ccr
                bra         \quit
                
\false          andi.b      #11111011,ccr
                bra         \quit
                
\quit           movem.l     (a7)+,d1/d2/a0/a1
                rts
                
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
                
convert         jsr          isCharError
                beq          \false

                jsr          isMaxError
                beq          \false
                
                jsr          atoui
                
\false          andi.b       #11111011,ccr
                rts
\true           ori.b        #00000100,ccr
                rts
                
print           movem.l      d0/d1/a0,-(a7)

\loop           move.b       (a0)+,d0
                beq          \quit

                jsr          PrintChar
                
                addq.b       #1,d1
                bra          \loop
                
\quit           movem.l      (a7)+,d0/d1/a0
                rts


PrintChar       incbin       "PrintChar.bin"


                org          $600

max             dc.b         "32767",0

sTest           dc.b         "Hello World",0







