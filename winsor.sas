*******************************************************************;
* Trim or winsorize macro                                          ;
* byvar = none for no byvar                                        ;
* type  = delete/winsor (delete will trim, winsor will winsorize   ;
* dsetin = dataset to winsorize/trim                               ;
* dsetout = dataset to output with winsorized/trimmed values       ;
* byvar = subsetting variables to winsorize/trim on                ;
*******************************************************************;

%macro winsor(vars, dsetin=, dsetout=, by=none, type=winsor, pctl=1 99);

%if &dsetout = %then %let dsetout = &dsetin;
    
%let varL=;
%let varH=;
%let xn=1;

%do %until ( %scan(&vars,&xn)= );
    %let token = %scan(&vars,&xn);
    %let varL = &varL &token.L;
    %let varH = &varH &token.H;
    %let xn=%EVAL(&xn + 1);
%end;

%let xn=%eval(&xn-1);

data xtemp;
    set &dsetin;
    run;
/**/
/*proc means n mean std p1 p5 p25 median p75 p95 p99;*/
/*	var &vars;*/
/*run;*/

%if &by = none %then %do;

    data xtemp;
        set xtemp;
        _mrgdum = 1;
        run;

    %let by = _mrgdum;

%end;

proc sort data = xtemp;
    by &by;
    run;

proc univariate data = xtemp noprint;
    by &by;
    var &vars;
    output out = xtemp_pctl PCTLPTS = &pctl PCTLPRE = &vars PCTLNAME = L H;
    run;

data &dsetout;
    merge xtemp xtemp_pctl;
    by &by;
    array trimvars{&xn} &vars;
    array trimvarl{&xn} &varL;
    array trimvarh{&xn} &varH;

    do i = 1 to dim(trimvars);

        %if &type = winsor %then %do;
            if not missing(trimvars{i}) then do;
              if (trimvars{i} < trimvarl{i}) then trimvars{i} = trimvarl{i};
              if (trimvars{i} > trimvarh{i}) then trimvars{i} = trimvarh{i};
            end;
        %end;

        %else %do;
            if not missing(trimvars{i}) then do;
              if (trimvars{i} < trimvarl{i}) then trimvars{i} = .;
              if (trimvars{i} > trimvarh{i}) then trimvars{i} = .;
            end;
        %end;

    end;
    drop &varL &varH i;
    %if &by = _mrgdum %then %do;
	drop _mrgdum;
    %end;
    run;
/*proc means n mean std p1 p5 p25 median p75 p95 p99;*/
/*	var &vars;*/
/*run;*/
%mend winsor;
