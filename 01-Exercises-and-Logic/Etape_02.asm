                  org      $4
vector_001        dc.l     main

                  org      $500

main              move.b   #18,d0
                  move.b   #12,d1
                  add.b    d0,d1
                  
                  illegal