cont: read0`$"C:\\_git\\advent2022q\\day10\\inp.one";

li: raze { $[x like "addx*"; :(0;"J"$(" " vs x)[1]); 0] } each cont;

li2: flip (1+til count li;li);
li3: flip (flip li2), enlist  1+sums li2[;1];

t: flip `step`add`xAfter!flip li3;
t: update vv: step * 1^(prev xAfter) from t;
t: update line: floor (step-1) % 40, ctr: (step-1) mod 40 from t;
t: update pi: {$[2 > abs x-y;"#";"."]}'[ctr; 1^prev xAfter] from t;
0N 40 #t`pi

