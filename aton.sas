%macro aton(var_convert);
%local i;
%do i=1 %to %nvarlist(&var_convert);
	%let var=%scan(&var_convert,&i);
	tmp&var=input(&var,8.); 
	drop &var; 
	rename tmp&var=&var;
%end;
%mend;
