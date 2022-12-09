cont: read0`$"C:\\_git\\advent2022q\\day3\\inp.one";
cont2: {s: `long$(count x) % 2; (s#x;s _ x)} each cont;
t: flip `one`two!flip cont2;
t2: update chl: { x where x in y}'[one;two] from t;
t3: update ch: {`$x[0]} each chl from t2;
t4: update num: {x[0]} each `long$ string ch from t3;
t5: update pr1: ?[(num < 123) and num > 96; num - 96; 0] from t4;
t6: update pr2: ?[(num < 91) and num > 64; 26 + num - 64; 0] from t5;
t7: update pr: pr1+pr2 from t6;
select sum pr from t7


`long$"z"
//A - 65
//Z - 90
//a - 97
//z - 122


a: "vJrwpWtwJgWr";
b: "hcsFMMfFFhFp";

a where a in b

//0	("vJrwpWtwJgWr";"hcsFMMfFFhFp")

