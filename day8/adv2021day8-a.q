cont: read0`$"C:\\_git\\advent2022q\\day8\\inp.one";
cont: {[l] {"J"$x} each l} each cont;
contFli: flip cont


res: enlist (-1;-1)

rowInd: 0;
do[count cont;
  row: cont[rowInd];
  colInd: 0;
  rowMax: -1;
  do[count row;
    if[cont[rowInd;colInd] > rowMax; res::res,enlist(rowInd,colInd); rowMax: cont[rowInd;colInd]];
    colInd: colInd + 1;
  ];
  rowInd: rowInd+1;
];
rowInd: 0;
do[count cont;
  row: cont[rowInd];
  colInd: -1 + count row;
  rowMax: -1;
  do[count row;
    if[cont[rowInd;colInd] > rowMax; res::res,enlist(rowInd,colInd); rowMax: cont[rowInd;colInd]];
    colInd: colInd - 1;
  ];
  rowInd: rowInd+1;
];
colInd: 0;
do[count cont[0];
  rowInd: 0;
  colMax: -1;
  do[count cont;
    if[cont[rowInd;colInd] > colMax; res::res,enlist(rowInd,colInd); colMax: cont[rowInd;colInd]];
    rowInd: rowInd+ 1;
  ];
  colInd: colInd+1;
];
colInd: 0;
do[count cont[0];
  rowInd: -1 + count cont;
  colMax: -1;
  do[count cont;
    if[cont[rowInd;colInd] > colMax; res::res,enlist(rowInd,colInd); colMax: cont[rowInd;colInd]];
    rowInd: rowInd - 1;
  ];
  colInd: colInd+1;
];

distinct 1 _res

score: {
  vv: cont[x;y];
  row: cont[x];
  rowPre: y #row;
  rowPos: (1+y) _row;
  col: contFli[y];
  colPre: x #col;
  colPos: (1+x) _col;
  sights: {[x;vv]{$[(last -1^x) < z; x,y; x]}[;;vv] over x}[;vv] each (reverse rowPre;rowPos; reverse colPre;colPos);
  {x*y} over count each sights
};
//score[0;0]
max {score[x[0];x[1]]} each raze {{(x;y)}[x;] each til count cont[0]}'[til count cont]
//part 2 263670j


1 2 1 2 *\:
{x,y} over 1 2 1 2

{$[(last -1^x) < z; x,y; x]}[;;3] over 1 2 9 3 3 4 5

{{(x;y)}[x;] each til 10}'[til 10]

{{(x;y)}[x;] each til count cont[0]}'[til count cont]



cont: {[l] {"J"$x} each l} each "\n" vs 
"30373
25512
65332
33549
35390";
contFli: flip cont


rowInd: 0;
do[count cont;
  row: cont[rowInd];
  {res::res,enlist(rowInd,x)} each row? distinct maxs row; 
  rowInd: rowInd+1;
];


{"J"$x} each "12321" \&: 
1	0j, 0j
2	0j, 3j
3	1j, 0j
4	1j, 1j
5	2j, 0j
6	3j, 0j
7	3j, 2j
8	3j, 4j
9	4j, 0j
10	4j, 1j
11	4j, 3j


maxs 2 3 4 3 
li: 2 3 4 3 4
li? distinct maxs li 

(til 4) cross til 2