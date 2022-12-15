cont: read0`$"C:\\_git\\advent2022q\\day9\\inp.one";
cont: raze {l: " " vs x; ("J"$l[1]) #`$l[0] } each cont;
//cont

he: (0;0);
k1: (0;0);
k2: (0;0);
k3: (0;0);
k4: (0;0);
k5: (0;0);
k6: (0;0);
k7: (0;0);
k8: (0;0);
tl: (0;0);
getNext: {[one;two]
  hX: one[0]; hY: one[1]; tX: two[0]; tY: two[1];
  if [(2 > abs tY-hY) and (2 > abs tX-hX); :(tX;tY)];
  if[(tY=hY) and (tX<>hX); :(tX-signum (tX-hX);tY)];
  if[(tX=hX) and (tY<>hY); :(tX;tY-signum (tY-hY))];
  if[(tX < hX) and (tY<hY); :(tX+1;tY+1)];
  if[(tX < hX) and (tY>hY); :(tX+1;tY-1)];
  if[(tX > hX) and (tY>hY); :(tX-1;tY-1)];
  if[(tX > hX) and (tY<hY); :(tX-1;tY+1)];
  'hmm
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
  he:: getNewHead[m;he[0];he[1]]; 
  k1:: getNext[he; k1];
  k2:: getNext[k1; k2];
  k3:: getNext[k2; k3];
  k4:: getNext[k3; k4];
  k5:: getNext[k4; k5];
  k6:: getNext[k5; k6];
  k7:: getNext[k6; k7];
  k8:: getNext[k7; k8];
  tl:: getNext[k8; tl];  
  :tl
} each cont;

count distinct allMoves