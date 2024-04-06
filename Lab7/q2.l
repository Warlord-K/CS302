 
%{
    #include "y.tab.h"
    extern int yylval; 
    #include <stdio.h>
%}
 
%% 
([a-zA-Z0-9]|\.)+@[a-zA-Z0-9][a-zA-Z0-9][a-zA-Z0-9]*\.([a-zA-Z0-9]+\.?)+[a-zA-Z0-9] {return EMAIL;}

[ \t]     { /* skip blanks and tabs */ } 
\n|. {return yytext[0];}
%% 