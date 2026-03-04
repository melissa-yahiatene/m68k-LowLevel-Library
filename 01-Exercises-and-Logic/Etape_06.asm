             org       $4
vector_001   dc.l      main

             org       $500

main         move.l    #$CD503874,d0
             move.l    #$1011D9AB,d1
             move.l    #$66554422,d2
             move.l    #$04030201,d3
               

             move.l    #$E2FF5D42,d4
			 move.l    #$22713689,d5
			 move.l    #$11250708,d6
			 move.l    #$61BDF12A,d7

			 
			 add.l     d4,d0
			 addx.l    d5,d1
			 addx.l    d6,d2
			 addx.l    d7,d3
			 
			 illegal
