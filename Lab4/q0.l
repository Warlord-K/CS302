%{
    #include<stdio.h> 
    #include<string.h>
    int skip = 2;
%}

%%
[a-z] {
        char c = yytext[0] + skip;
        if (c < 'a'){
        c -= skip;
        c -= 26;
        c += skip;
        } 
        if (c > 'z') c -= 26;
        fprintf(yyout, "%d %d %d\n", yytext[0], c, skip); 
        fprintf(yyout, "%c %c\n", yytext[0], c); 
        skip++;
        if(skip > 25) skip = 1;
    }
%%


int yywrap()
{
    printf("\n");
 return 1;
}