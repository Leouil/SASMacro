%macro nvarlist(list);
%* Count the number of words in &LIST;
%* Returns that number;
%local count;
%let count=0; 
%do %while(%qscan(&list,&count+1,%str( )) ne %str());
 %let count = %eval(&count+1);
%end;
%* Return that number;
&count
%mend nvarlist;
