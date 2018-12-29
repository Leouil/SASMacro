/*  Table with means, medians, standard deviations for two groups
    as well as the differences for these groups (with significance levels)
 
    To use this macro, you will need a dataset that holds a variable that 
    divides the sample in two. The sample included below splits Funda
    firm-years after 2009 in firm-years with a market cap smaller versus 
    larger than $750 million.
 
    The script will provide mean, median, standard deviation, #obs for
    the variables for the two groups.
 
    It also will generate the significance levels for the t-test in the
    difference in means and a Wilcoxon-Mann-Whitney test for the difference
    in medians.
 
    The actual differences in means and medians are not computed (can easily
    be computed by subtracting the means, medians).
 
    The macro generates three datasets (outp is passed to macro): 
        - outp          table with means, medians, std, #obs 
        - outp_test1    table with t-tests  (test for differences in means)
        - outp_test2    table with Wilcoxon-etc (test for differences in medians)
     
    These tables can be exported for further processing to create the actual table.
     
    Dependencies:
    This macro uses the %runquit macro
        %macro runquit;                
            ; run; quit;                           
            %if &syserr. ne 0 %then %do;                  
            %abort cancel ;                   
            %end;                      
        %mend runquit;   
 
*/
 
%macro ttest(dset=, byvar=, vars=, outp=);
 
    /*
        Macro that creates three tables:
        - outp          table with means, medians, std, #obs
        - outp _test1   table with t-tests  (test for differences in means)
        - outp _test2   table with Wilcoxon-etc (test for differences in medians)
 
         
        Variables:
        - dset  input dataset
        - outp  output dataset (with statistics)
        - vars  variables
        - by    variable to group on (single variable)
 
    */
    data temp;set &dset;run;
    proc sort data = temp; by &byvar;%runquit;
 
    proc means data=temp NOPRINT ;
    OUTPUT OUT=_table1 mean= median= N= STD=/autoname;
    var &vars;
    by &byvar ;
    %runquit;
 
    /*    Difference in means: t-test  */
 
    proc ttest H0=0 DATA=temp ;
       CLASS  &byvar ;
       VAR &vars;
       ods output TTests =work.t1_ttest_ttests Statistics =work.t1_ttest_stats  ;
    %runquit;
 
    /*  Create table with Variable, mean, Probt, tValue */
 
    proc sql;
          create table _table1_test1 as
          select a.Variable, a.tValue * -1 as tValue, a.Probt, b.Mean * -1 as Mean
          from
                work.t1_ttest_ttests a,
                work.t1_ttest_stats b
          where
                a.Variable = b.Variable
          and a.Method = "Satterthwaite"
          and b.class = "Diff (1-2)"    ;
    %runquit;
 
    /*  Formatting of variables */
 
    data _table1_test1;
    set _table1_test1;
    format tValue 8.2;
    format Probt 8.3;
    format Mean 8.3;
    %runquit;
 
    /*    Difference in medians: Wilcoxon-Mann-Whitney test */
 
    proc npar1way data = temp wilcoxon;
      class &byvar;
      var &vars;
      ods output WilcoxonTest = _table1_test2  ;
    %runquit;
 
    data _table1_test2 (keep = Variable pVal);
    set _table1_test2;
    if Name1 eq "P2_WIL";   /* 2-sided p-value;*/
    pVal = nValue1;
    format pVal 8.3;
    %runquit;
 
    data &outp;         set _table1;
    data &outp._test1;  set _table1_test1;
    data &outp._test2;  set _table1_test2;%runquit;
 
    /*  Clean up; */
 
    proc datasets library=work;
       delete temp t1_ttest_ttests t1_ttest_stats _table1 _table1_test1 _table1_test2;
    %runquit;
 
%mend;
