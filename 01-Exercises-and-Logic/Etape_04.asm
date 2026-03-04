               org      $4
vector_001     dc.l     main


               org      $500
               
main           move.l   #tab,a0

               move.b   (a0)+,d0
               add.b    (a0)+,d0
               add.b    (a0)+,d0
               add.b    (a0)+,d0
               add.b    (a0),d0
               
               move.b   d0,sum
               
               illegal
               
               org      $550
               
tab            dc.b     18,3,5,9,14
sum            ds.b     1