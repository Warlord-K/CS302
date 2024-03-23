%{ 
%}
%% 
[a-zA-Z] |
[0-9] |
\" |
\' |
\, |
\+ |
\- |
\* |
\/ |
\= |
\. |
\< |
\> |
\# |
\n |
\; {/* Ignore Symbols */};
[ \t]     { /* skip blanks and tabs */ } 
.      { return yytext[0]; }
%% 