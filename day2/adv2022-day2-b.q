cont: read0`$"C:\\_git\\advent2022q\\day2\\inp.one";
cont2: `${" " vs x} each cont;

dict: (!) . flip (
  (`A`X; 3+0); //C
  (`A`Z; 2+6); //B
  (`A`Y; 1+3); //A
  (`C`X; 2+0); //B
  (`C`Z; 1+6); //A
  (`C`Y; 3+3); //C
  (`B`X; 1+0); //A
  (`B`Z; 3+6); //C
  (`B`Y; 2+3)  //B
);

sum {x[1]} each  {(x;dict[x])} each cont2
