 
%{
      #include "y.tab.h"
    extern int yylval; 
%}
 
%% 
[1]  {return ONE;}
[0]  {return ZERO;}
[\.] {return DEC;}
[ \t]     { /* skip blanks and tabs */ } 
\n|. {return yytext[0];}
%% 