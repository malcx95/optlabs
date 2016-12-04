# Coverage stuff

param n;
param m;

param a{1..m,1..n};

var x{1..n} binary;

minimize total: sum {j in 1..n} x[j];

subject to cover{i in 1..m}:
    sum {j in 1..n} a[i, j] * x[j] >= 1;

solve;

printf " *** Optimum: *** \n";
printf{j in 1..n: x[j]>0} " Lift plate %d\n",j;

end;

