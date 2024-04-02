 
%{
    #include "y.tab.h"
    extern int yylval; 
    #include <stdio.h>
%}
 
%% 
[a-zA-Z]((*(_?[a-zA-Z0-9]+)*(-?[a-zA-Z0-9]+)*)\.)* {return STRING2;}
[a-zA-Z](\.?[a-zA-Z0-9]+[a-zA-Z0-9]+)* {return STRING1;}
[ \t]     { /* skip blanks and tabs */ } 
\n|. {return yytext[0];}
%% 