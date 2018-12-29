%macro ct(data);
proc contents data=&data;run;
%mend;
