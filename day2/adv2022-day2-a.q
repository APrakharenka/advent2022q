cont: read0`$"C:\\_git\\advent2022q\\day2\\inp.one";
cont2: `${" " vs x} each cont;

dict: (!) . flip (
  (`A`X; 1+3);
  (`A`Z; 3+0);
  (`A`Y; 2+6);
  (`C`X; 1+6);
  (`C`Z; 3+3);
  (`C`Y; 2+0);
  (`B`X; 1+0);
  (`B`Z; 3+6);
  (`B`Y; 2+3)
);

sum {x[1]} each  {(x;dict[x])} each cont2
 