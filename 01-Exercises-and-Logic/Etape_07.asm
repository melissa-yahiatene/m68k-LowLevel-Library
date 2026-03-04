             org       $4
vector_001   dc.l      main

             org       $500

main         move.l    #$76543210,d1
             ror.w     #4,d1
             ror.b     #4,d1
             rol.w     #4,d1
