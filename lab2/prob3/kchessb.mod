# Chess (b)

var x{1..8, 1..8} binary;

maximize total: sum {i in 1..8, j in 1..8} x[i, j];

subject to row_cond{j in 1..8}:
    sum {i in 1..8} x[i, j] <= 1;

subject to col_cond{i in 1..8}:
    sum {j in 1..8} x[i, j] <= 1;

subject to diag_cond1{k in 0..6}:
	sum {i in 1..(8-k)} x[i+k,i] <= 1;

subject to diag_cond2{k in 1..6}:
	sum {i in 1..(8-k)} x[i,i+k] <= 1;

subject to diag_cond3{k in 1..6}:
	sum {i in 1..(8-k)} x[i,9-k-i] <= 1;

subject to diag_cond4{k in 0..6}:
	sum {i in 1..(8-k)} x[i+k,9-i] <= 1;

solve;

printf " *** Optimum: *** \n";

for {i in 1..8} {
	for {j in 1..8} {
		printf x[i, j];
	}
	printf "\n";
}
