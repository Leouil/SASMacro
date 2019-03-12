*libname dbtmp odbc dsn="Mysql32test";
*libname sqlite odbc dsn="SQLite32";
libname audit "\\tsclient\E\workingdata\audit";
libname bank "\\tsclient\E\workingdata\bank";
libname comp "\\tsclient\E\workingdata\comp";
libname crsp "\\tsclient\E\workingdata\crsp";
libname execcomp "\\tsclient\E\workingdata\execcomp";
libname fisd "\\tsclient\E\workingdata\fisd";
libname tfn "\\tsclient\E\workingdata\tfn";
libname insider "\\tsclient\E\workingdata\insiders";
libname ibes "\\tsclient\E\workingdata\ibes";
libname dealscan "\\tsclient\E\workingdata\dealscan";
libname varpool "\\tsclient\E\workingdata\varpool";
filename mymacros '\\tsclient\E\workingdoc\Mysasmacros';

options nocenter
        sasautos=(sasautos mymacros)
        mautosource
        ;
*       fmtsearch=(formlib project);
