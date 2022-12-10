cont: read0`$"C:\\_git\\advent2022q\\day5\\inp.one.stack";
stack: {x[;1]} 4 cut trim flip -1 _ cont;
stack: (!). (1+til count stack; stack);

cont: read0`$"C:\\_git\\advent2022q\\day5\\inp.one.move";
moves: {"J"$(x[1];x[3];x[5])} each {" " vs x} each cont;
//for task 1 mm should be reversed
{fr: stack[x[1]]; mm: x[0] # fr; left: x[0] _ fr; new: mm,stack[x[2]]; stack[x[1]]: left; stack[x[2]]: new; (mm;left;new) } each moves;
value stack[;0]

//move 1 from 2 to 1
//move 3 from 1 to 3
//move 2 from 2 to 1
//move 1 from 1 to 2

//2 HRFTQVWNN