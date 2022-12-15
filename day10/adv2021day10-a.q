cont: read0`$"C:\\_git\\advent2022q\\day10\\inp.one";

li: raze { $[x like "addx*"; :(0;"J"$(" " vs x)[1]); 0] } each cont;

li2: flip (1+til count li;li);
li3: flip (flip li2), enlist  1+sums li2[;1];

t: flip `step`add`xAfter!flip li3;
t: update vv: step * 1^(prev xAfter) from t;

sum {x`vv} select from t where step in (20;60;100;140;180;220)

//14420

//cont: "\n" vs "noop
//addx 3
//addx -5";



