             org       $4
vector_001   dc.l      main

             org       $500

main         move.b    #$B4,d0
             add.b     #$4C,d0
             
             move.w    #$B4,d1
             add.w     #$4C,d1
             
             move.w    #$4AC9,d1
             add.w     #$D841,d1
            
             move.l    #$FFFFFFFF,d1
             add.l     #$00000015,d1
             
             illegal
