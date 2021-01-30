Data Anreg;
input Konsumsi_pakan bobot_badan;
datalines;
87.1 4.6
93.1 5.1
89.8 4.8
91.4 4.2
89.3 5.1
86.2 4.5
98.2 5.1
89.6 5.1
90.2 6.3
87.8 4.6
;
proc corr data=anreg;
/*untuk analisis corelasi*/;
var Konsumsi_pakan bobot_badan;
proc sgplot data=anreg;
scatter y=Konsumsi_pakan x=bobot_badan;
proc gplot=anreg;
plot Konsumsi_pakan*bobot_badan;
ods grapics on;
proc reg data=anreg;
model Konsumsi_pakan=bobot_badan/SPEC;
output out=resids R=Res;
Proc univariate data=resids NORMAL PLOT;
Var res;
run;
