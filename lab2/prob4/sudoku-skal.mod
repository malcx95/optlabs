# Sudoku

# x[i,j,k] = 1 if pos (i,j) contains digit k.
var x{1..9,1..9,1..9} binary;

param given{1..9,1..9};

# write model here ....

subject to row_cond{i in 1..9, k in 1..9}:
    sum {j in 1..9} x[i,j,k] = 1;

subject to col_cond{j in 1..9, k in 1..9}:
    sum {i in 1..9} x[i,j,k] = 1;

subject to square_cond{sqx in 0..2, sqy in 0..2, k in 1..9}:
    sum {i in 1..3, j in 1..3} x[sqx * 3 + i,sqy * 3 + j,k] = 1;

# Assign given digits
subject to fix{i in 1..9, j in 1..9: given[i,j]>0}: x[i,j,given[i,j]]=1;

solve;
    
# Display the result
printf("\nSudoku solution:\n");
for{i in 1..9} {
  for{j in 1..9} {
    printf "%2d",sum{k in 1..9} k*x[i,j,k];
  }
  printf "\n";
}
printf "\n";

end;
