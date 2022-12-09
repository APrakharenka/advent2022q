cont: read0`$"C:\\_git\\advent2022q\\day4\\inp.one";
t: flip (`nn`ori) ! ((til count cont); cont);
t: update spl: {"," vs x} each ori from t;
t: update one: {"J"$ "-" vs x} each spl[;0] from t;
t: update two: {"J"$ "-" vs x} each spl[;1] from t;
t: update one_from: one[;0], one_to: one[;1], two_from: two[;0], two_to: two[;1] from t;
one_two: select from t where one_from <= two_from, one_to >= two_to;
two_one: select from t where two_from <= one_from, two_to >= one_to;
count select distinct nn from one_two uj two_one

//2-4,6-8
//599