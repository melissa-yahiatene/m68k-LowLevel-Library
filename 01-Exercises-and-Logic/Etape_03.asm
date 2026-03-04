             org      $4
vector_001   dc.l     main

             org      $500
             
main         move.w   number1,d0
             add.w   number2,d0
             move.w   d0,sum
             
             illegal
             
             org      $550

number1      dc.w     $2222
number2      dc.w     $5555
sum          ds.w     1