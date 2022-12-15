cont: read0`$"C:\\_git\\advent2022q\\day9\\inp.one";
cont: raze {l: " " vs x; ("J"$l[1]) #`$l[0] } each cont;
//cont

he: (0;0);
tl: (0;0);
getNewTail: {[hX;hY;tX;tY]
  if[-2 = tY-hY; :(hX;hY-1)];
  if[ 2 = tY-hY; :(hX;hY+1)];
  if[-2 = tX-hX; :(hX-1;hY)];
  if[ 2 = tX-hX; :(hX+1;hY)];
  (tX;tY)
};
getNewHead: {[m;x;y]
  $[m = `R; (x+1;y);
    m = `L; (x-1;y);
    m = `D; (x;y+1);
    m = `U; (x;y-1)
  ]
};
// getNewHead[`D;0;0]
allMoves: {[m] 
  newH: getNewHead[m;he[0];he[1]];
  he:: newH;
  newT: getNewTail[he[0];he[1];tl[0];tl[1]];
  tl:: newT;
  :tl
} each cont;

count distinct allMoves
//6256j



cont: "\n" vs "R 4
U 4
L 3
D 1
R 4
D 1
L 5
R 2";