 
%{
   /* Definition section */
  #include<stdio.h>
  #include "y.tab.h"
  extern int yylval;
%}
 
%% 
[0-9]+ {
          yylval = atoi(yytext);
          return NUMBER;
       }
[ \t]     { /* skip blanks and tabs */ } 
\n|.      { return yytext[0]; }
%% 

int yywrap()
{
 return 1;
}