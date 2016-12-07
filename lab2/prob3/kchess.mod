# Chess

var x{1..8, 1..8} binary;

maximize total: sum {i in 1..8, j in 1..8} x[i, j];

subject to row_cond{j in 1..8}:
    sum {i in 1..8} x[i, j] <= 1;

subject to col_cond{i in 1..8}:
    sum {j in 1..8} x[i, j] <= 1;

solve;

printf " *** Optimum: *** \n";
display x;

