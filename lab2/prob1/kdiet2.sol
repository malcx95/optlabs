Problem:    kdiet
Rows:       15
Columns:    9 (9 integer, 0 binary)
Non-zeros:  125
Status:     INTEGER OPTIMAL
Objective:  totalpris = 15.05 (MINimum)

   No.   Row name        Activity     Lower bound   Upper bound
------ ------------    ------------- ------------- -------------
     1 totalpris               15.05                             
     2 minnytta[Cal]
                                3950          2000               
     3 minnytta[Carbo]
                                 352           350               
     4 minnytta[Protein]
                                 177            55               
     5 minnytta[VitA]
                                 102           100               
     6 minnytta[VitC]
                                 115           100               
     7 minnytta[Calc]
                                 255           100               
     8 minnytta[Iron]
                                 100           100               
     9 maxnytta[Cal]
                                3950                       99999 
    10 maxnytta[Carbo]
                                 352                         375 
    11 maxnytta[Protein]
                                 177                       99999 
    12 maxnytta[VitA]
                                 102                       99999 
    13 maxnytta[VitC]
                                 115                       99999 
    14 maxnytta[Calc]
                                 255                       99999 
    15 maxnytta[Iron]
                                 100                       99999 

   No. Column name       Activity     Lower bound   Upper bound
------ ------------    ------------- ------------- -------------
     1 port['Quarter Pounder w/ Cheese']
                    *              4             0           100 
     2 port['McLean Deluxe w/ Cheese']
                    *              0             0           100 
     3 port['Big Mac']
                    *              0             0           100 
     4 port[Filet-O-Fish]
                    *              1             0           100 
     5 port['McGrilled Chicken']
                    *              0             0           100 
     6 port['Fries, small']
                    *              5             0           100 
     7 port['Sausage McMuffin']
                    *              0             0           100 
     8 port['1% Lowfat Milk']
                    *              4             0           100 
     9 port['Orange Juice']
                    *              0             0           100 

Integer feasibility conditions:

KKT.PE: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

KKT.PB: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

End of output
