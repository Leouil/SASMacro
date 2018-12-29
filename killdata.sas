%macro killdata(lib=work);
proc datasets nolist lib=&lib memtype=data nolist kill;
quit;
%mend;
