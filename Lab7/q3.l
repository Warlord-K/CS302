 
%{
      #include "y.tab.h"
    extern int yylval; 
%}
 
%% 
[0-9]  {return DIGIT;}
[ \t]     { /* skip blanks and tabs */ } 
\n|. {return yytext[0];}
%% 