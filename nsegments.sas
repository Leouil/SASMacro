/*  
    Macro:          nSegments.sas
    Created by:     Joost Impink
    Date:           March 2014
 
    Macro to count the number of segments (either industry segments or geo segments)
  
    Variables required:
        dsin            dataset in (needs to have gkvey, fyear and datadate)
        dsout           dataset out
        type            'ind' (default) or 'geo'
        unique          'true' (default) or 'false', count unique segments only     
                        (segments with the same industry count as 1 segment)
                        only relevant for industry segments     
        sicsreq         'true' (default) or 'false'; if true: require industry sic code (sics)
                        no be nonempty  
        var             name of variable to create        
        segmerged       location (libname + dataset name) of wrds_seg_merged 
                        e.g. segments.wrds_segmerged    
 
    Dependencies:
        - the macro requires local access to wrds_segmerged (Compustat) in a local libray
        - %runquit macro
         %macro runquit;                
            ; run; quit;                           
            %if &syserr. ne 0 %then %do;                  
            %abort cancel ;                   
            %end;                      
         %mend runquit;   
*/
 
%macro nSegments(dsin=, dsout=, type="bus", unique="true", sicsreq="true", var=, segmerged=comp.wrds_segmerged);
 
    /*  Vars needed from dsin */
    data seg1 (keep = gvkey fyear datadate);
    set &dsin;
    %runquit;
 
    /*  Select segments segments */
    proc sql;
        create table seg2 as
        select 
            a.gvkey, a.fyear, b.SICS1 as sics
        from
            seg1 a,
            &segmerged b
        where
            a.gvkey = b.gvkey
            /* use segment info of year of 10-K (not later years) */
            and a.datadate = b.datadate
            and a.datadate = b.srcdate
            /* operating or business segments */   
            %if &type eq "ind" %then %do;
                and b.stype IN ("BUSSEG", "OPSEG")  
            %end;
            /* business segments */   
            %else %if &type eq "bus" %then %do;
                and b.stype = "BUSSEG"  
            %end;            
            /* geo segments */
            %else %do;
                and b.stype in ("GEOSEG","OPSEG")
            %end;           
            /* drop segments with missing sics1 ? */
            %if &sicsreq eq "true" %then %do;
                and b.SICS1 ne "" 
            %end;
            and b.SALES ne .
            and b.SALES > 0
            ;   
    %runquit;
 
    /*  Unique industries? (only relevant for type "ind")*/
    %if &type eq "ind" and &unique eq "true" %then %do;
 
    /*  Drop segments with same industry */
    proc sort data=seg2 nodupkey; by gvkey fyear sics;%runquit;
    %end;
 
    /*  Count #segments  */
    proc sql;
        create table seg3 as
        select distinct gvkey, fyear, count(*) as numSegs from seg2
        group by gvkey, fyear
    ;
    %runquit;
 
    /*  Create output dataset */
    proc sql;
        create table &dsout as
        select a.*, b.numSegs as &var
        from
            &dsin a
        LEFT JOIN
            seg3 b
        ON
            a.gvkey = b.gvkey
        and a.fyear = b.fyear;      
    %runquit;
 
    /*  Cleanup */
    proc datasets library=work;
      delete seg1 - seg3 ;
    %runquit;
%mend;
