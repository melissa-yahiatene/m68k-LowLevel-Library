                 org          $4
vector__01       dc.l         main


                 org          $500

main             movea.l      #string,a0

lowerCount       clr.l        d0

loop             move.b       (a0)+,d1
                 beq          quit
                 
                 cmp.b        #'a',d1
                 blo          loop
                 cmp.b        #'z',d1
                 bhi          loop
                 addq.l       #1,d0
                 bra          loop
                 
quit             illegal

                 org          $550
                 
string           dc.b         "Cette chaine comporte 28 minuscules.",0