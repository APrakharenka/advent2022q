cont: read0`$"C:\\_git\\advent2022q\\day1\\inp.one";
cont: {?[0Nj = "J"$x;"*";x]}'[cont];
cont2: "*" vs "," sv string `$cont;
cont3: {"," vs x}'[cont2];
cont4: {"J"$(x where (count each x) <> 0)}'[cont3];
res: sum each cont4;
//max res
//70720
sum 3# desc res
//207148