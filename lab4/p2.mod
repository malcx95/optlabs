
param e := 1;

param m;
param n;
param s{1..m};
param d{1..n};
param f{1..m};
param c{1..m, 1..n};

var x{1..m, 1..n} integer, >= 0;
var y{1..m} binary;

minimize cost: (sum {i in 1..m, j in 1..n} c[i, j] * x[i, j]) + 
                (sum {i in 1..m} e * f[i] * y[i]);

subject to constr1{i in 1..m}:
    sum {j in 1..n} x[i,j] <= s[i] * y[i];

subject to constr2{j in 1..n}:
    sum {i in 1..m} x[i,j] = d[j];

subject to constr3{i in 1..m, j in 1..m}:
    x[i, j] <= d[j] * y[i];

solve;

printf " *** Optimum: *** \n";
printf "Cost: %d\n", cost;

