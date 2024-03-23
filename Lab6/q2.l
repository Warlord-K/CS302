%{ 
%}
%% 
[a-zA-Z] |
[0-9] |
\" |
\. |
\< |
\> |
\# |
\n |
\; {/* Do Nothing */};
[ \t]     { /* skip blanks and tabs */ } 
.      { return yytext[0]; }
%% 