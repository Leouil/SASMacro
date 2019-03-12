*libname dbtmp odbc dsn="Mysql32test";
*libname sqlite odbc dsn="SQLite32";
libname audit "E:\workingdata\audit";
libname bank "E:\workingdata\bank";
libname comp "E:\workingdata\comp";
libname crsp "E:\workingdata\crsp";
libname execcomp "E:\workingdata\execcomp";
libname fisd "E:\workingdata\fisd";
libname tfn "E:\workingdata\tfn";
libname insider "E:\workingdata\insiders";
libname ibes "E:\workingdata\ibes";
libname dealscan "E:\workingdata\dealscan";
libname varpool "E:\workingdata\varpool";
filename mymacros 'E:\workingdoc\Mysasmacros';

options nocenter
        sasautos=(sasautos mymacros)
        mautosource
        ;
*       fmtsearch=(formlib project);
