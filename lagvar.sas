%macro lagvar(varlist,firmid=gvkey,year=fyear,nlag=1,pre=L,suf=);
%* lag variables in varlist;
%* set them equal to missing if it is not the right lag;
%* make sure your dataset is sorted by firmid and date;
%local xn var n;
%do n = 1 %to &nlag;
_l&n&firmid = lag&n(&firmid);
_l&n&year = lag&n(&year);
%do xn = 1 %to %nvarlist(&varlist);
	%let var=%scan(&varlist,&xn);
	&pre&n&var&suf = lag&n(&var);
	label &pre&n&var&suf = "Lag (&n) value of &var";
	if &firmid ne _l&n&firmid or &year ne _l&n&year + &n then &pre&n&var&suf=.;
%end;
%end;
drop _l: ;
%mend lagvar;
 
