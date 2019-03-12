/* filename ummacros "\\research.bus.miami.edu\code_examples\SAS\Macros"; */
options sasautos=(sasautos ummacros);
options sysprint="Adobe PDF";

libname umcrsp 
("\\research.bus.miami.edu\data\wrds\crsp\recent\a_ccm", "\\research.bus.miami.edu\data\wrds\crsp\recent\a_indexes",
"\\research.bus.miami.edu\data\wrds\crsp\recent\a_stock","\\research.bus.miami.edu\data\wrds\crsp\recent\a_treas_bd",
"\\research.bus.miami.edu\data\wrds\crsp\recent\a_treas_bm","\\research.bus.miami.edu\data\wrds\crsp\recent\a_treasuries",
"\\research.bus.miami.edu\data\wrds\crsp\recent\a_ziman");

libname UMCOMP
("\\research.bus.miami.edu\data\wrds\comp\recent\seghist",
 "\\research.bus.miami.edu\data\wrds\comp\recent\nam",
 "\\research.bus.miami.edu\data\wrds\comp\recent\nam\company",
 "\\research.bus.miami.edu\data\wrds\comp\recent\nam\currency",
 "\\research.bus.miami.edu\data\wrds\comp\recent\nam\dictionary",
 "\\research.bus.miami.edu\data\wrds\comp\recent\nam\economy",
 "\\research.bus.miami.edu\data\wrds\comp\recent\nam\index",
 "\\research.bus.miami.edu\data\wrds\comp\recent\nam\industry",
 "\\research.bus.miami.edu\data\wrds\comp\recent\nam\insider",
 "\\research.bus.miami.edu\data\wrds\comp\recent\nam\institution",
 "\\research.bus.miami.edu\data\wrds\comp\recent\nam\pension",
 "\\research.bus.miami.edu\data\wrds\comp\recent\nam\rating",
 "\\research.bus.miami.edu\data\wrds\comp\recent\nam\security",
 "\\research.bus.miami.edu\data\wrds\comp\recent\nam\segments_current",
 "\\research.bus.miami.edu\data\wrds\comp\recent\nam\transparency",
 "\\research.bus.miami.edu\data\wrds\comp\recent\bank",
 "\\research.bus.miami.edu\data\wrds\comp\recent\execcomp",
 "\\research.bus.miami.edu\data\wrds\comp\recent\marginaltax");

 libname UMIBES "\\research.bus.miami.edu\data\wrds\ibes\recent\ibes";
 
libname UMAUDIT 
("\\research.bus.miami.edu\data\wrds\audit\recent\audit_comp",
 "\\research.bus.miami.edu\data\wrds\audit\recent\corp_legal");
 
 libname UMTFN "\\research.bus.miami.edu\data\wrds\tfn\s34";

 libname UMOPTM ("\\research.bus.miami.edu\data\wrds\optionm\temp\sasdata",
 "\\research.bus.miami.edu\data\wrds\optionm\temp\sasdata\europe");
 
 libname UMCIQ
 ("\\research.bus.miami.edu\data\wrds\capitaliq\2015-01-18\capitaliq\sasdata\helper",
 "\\research.bus.miami.edu\data\wrds\capitaliq\2015-01-18\capitaliq\sasdata\pplintel");
 
 libname UMGOVPX 
 ("\\research.bus.miami.edu\data\wrds\govpx\temp\sasdata");
 
  
 libname UMTAQ "\\research.bus.miami.edu\data\wrds\taq\temp\taq\sasdata";
 
 libname UMFF "\\research.bus.miami.edu\data\wrds\ff\2015-05-01";
 
 
