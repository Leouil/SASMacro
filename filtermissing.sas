%macro filtermissing(varlist);
%local xn var;
%do xn = 1 %to %nvarlist(&varlist);
	%let var=%scan(&varlist,&xn);
	if missing(&var) then delete;
%end;
%mend filtermissing;
