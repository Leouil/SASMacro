%macro interact(varlist,interact,pre=int_);
%local i;
	%do i = 1 %to %nvarlist(&varlist);
		&pre.%scan(&varlist,&i) = %scan(&varlist,&i) * &interact;
	%end;
%mend interact;
