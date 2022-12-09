cont: read0`$"C:\\_git\\advent2022q\\day3\\inp.one";
groups: 3 cut cont;
uni: {a: x[0] where x[0] in x[1]; a where a in x[2]} each groups;
t: flip (enlist `bb) ! enlist {first x} each uni;

t4: update num: {x[0]} each `long$ string bb from t;
t5: update pr1: ?[(num < 123) and num > 96; num - 96; 0] from t4;
t6: update pr2: ?[(num < 91) and num > 64; 26 + num - 64; 0] from t5;
t7: update pr: pr1+pr2 from t6;
select sum pr from t7
/2444

