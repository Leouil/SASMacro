%macro tr0all(varlist);
%local xn var;
%do xn = 1 %to %nvarlist(&varlist);
	%let var=%scan(&varlist,&xn);
	&var = coalesce(&var, 0);
%end;
%mend tr0all;
