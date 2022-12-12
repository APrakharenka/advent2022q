cont: read0`$"C:\\_git\\advent2022q\\day7\\inp.one";
comInd: where cont like "$*";
getOutput: {[fr;to]
  if[to=0Nj; to:count cont];
  if[fr=to; : ""];
  (to-fr)# fr _ cont
};

t: flip (enlist `ind) ! enlist comInd;
t: update com: cont[ind] from t;
t: update out: getOutput'[ind+1; next ind] from t;
t: update com_name: `$com[;(2;3)], com_arg: `${4 _x} each com from t;
root: (`D;(enlist `root);0j);
dic: (enlist root[1])!enlist root;

{
  //x`com_name;
  if[(`cd = x`com_name) and (`$"/") = x[`com_arg]; 
    cur:: dic[enlist `root];
    : ::
  ];
  if[(`cd = x`com_name) and (`$"..") = x[`com_arg]; 
    path: -1 _cur[1];
    cur:: dic[path];
    :path
  ];
  if[`cd = x`com_name;
    path: cur[1],x`com_arg;
    cur:: (`D;path;0j);
    dic[path]: cur;
    :path
  ];
  if[`ls = x`com_name;
    files: {" " vs x} each (x`out) where not (x`out) like "dir *";
    {
      path: cur[1],`$x[1];
      dic[path]: (`F;path;"J"$x[0]);
    } each files;
    :files
  ];
  x`com_name
} each t;
sizes: (enlist (enlist `root)) ! enlist 0;
//sizes
// sizes:: sizes,enlist(path;item[2]); 
calcSizes: {[path]
  item: dic[path];
  if[`F =item[0]; :item[2]];
  if[`D =item[0]; 
    ch: (key dic) where {[path;cp] ((1+count path) = count cp) and path ~ (count path)#cp}[path;] each  (key dic);
    chSizes: calcSizes each ch;

    dirSize: sum chSizes;
    sizes[path]: dirSize; 
    :dirSize
  ];
};
calcSizes[enlist `root];
sum (value sizes) where (value sizes) < 100000
//1611443

//needed 2080344
{x where x>= 2080344}asc value sizes
//2086088



// (key dic) where {[path;cp] ((count path) < count cp) and path ~ (count path)#cp}[`root`a;] each  (key dic)
// cur: (`F;(`root`a);178j)
// getOutput[2;6]

cont: "\n" vs "$ cd /
$ ls
dir a
14848514 b.txt
8504156 c.dat
dir d
$ cd a
$ ls
dir e
29116 f
2557 g
62596 h.lst
$ cd e
$ ls
584 i
$ cd ..
$ cd ..
$ cd d
$ ls
4060174 j
8033020 d.log
5626152 d.ext
7214296 k";