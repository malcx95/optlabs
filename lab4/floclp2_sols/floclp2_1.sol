Problem:    p2
Rows:       18
Columns:    18
Non-zeros:  69
Status:     OPTIMAL
Objective:  cost = 3880 (MINimum)

   No.   Row name   St   Activity     Lower bound   Upper bound    Marginal
------ ------------ -- ------------- ------------- ------------- -------------
     1 cost         B           3880                             
     2 constr1[1]   NU             0                          -0      -8.97701 
     3 constr1[2]   B            -64                          -0 
     4 constr1[3]   B              0                          -0 
     5 constr2[1]   NS            92            92             =        22.977 
     6 constr2[2]   NS            82            82             =        13.977 
     7 constr2[3]   NS            83            83             =            23 
     8 constr2[4]   NS            69            69             =             5 
     9 constr2[5]   NS            74            74             =        14.977 
    10 constr3[1,1] B            -92                          -0 
    11 constr3[1,2] B              0                          -0 
    12 constr3[1,3] NU             0                          -0      -8.02299 
    13 constr3[2,1] NU             0                          -0       -13.977 
    14 constr3[2,2] B            -82                          -0 
    15 constr3[2,3] B            -83                          -0 
    16 constr3[3,1] NU             0                          -0      -6.97701 
    17 constr3[3,2] NU             0                          -0      -2.97701 
    18 constr3[3,3] B              0                          -0 

   No. Column name  St   Activity     Lower bound   Upper bound    Marginal
------ ------------ -- ------------- ------------- ------------- -------------
     1 x[1,1]       B              0             0               
     2 x[1,2]       B             82             0               
     3 x[1,3]       B             83             0               
     4 x[1,4]       NL             0             0                      27.977 
     5 x[1,5]       B             74             0               
     6 x[2,1]       B             92             0               
     7 x[2,2]       NL             0             0                     8.02299 
     8 x[2,3]       NL             0             0                           3 
     9 x[2,4]       B             69             0               
    10 x[2,5]       NL             0             0                     6.02299 
    11 x[3,1]       B              0             0               
    12 x[3,2]       B              0             0               
    13 x[3,3]       B              0             0               
    14 x[3,4]       NL             0             0                          23 
    15 x[3,5]       NL             0             0                     9.02299 
    16 y[1]         NU             1             0             1      -2222.41 
    17 y[2]         NU             1             0             1      -519.885 
    18 y[3]         B              0             0             1 

Karush-Kuhn-Tucker optimality conditions:

KKT.PE: max.abs.err = 2.84e-14 on row 12
        max.rel.err = 2.26e-14 on row 16
        High quality

KKT.PB: max.abs.err = 1.41e-14 on row 18
        max.rel.err = 1.41e-14 on row 18
        High quality

KKT.DE: max.abs.err = 1.36e-12 on column 18
        max.rel.err = 7.69e-16 on column 18
        High quality

KKT.DB: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

End of output
