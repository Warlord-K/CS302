%{ 
   #include <ctype.h> 
   #include <stdio.h> 
   #define YYSTYPE double /* double type for yacc stack */ 
%} 

%start Lines
%token DIGIT

%%
 Lines :  Lines S '\n' {printf("Digit\n");}
       |  S '\n' {printf("Digit\n");}
       |  error '\n' {yyerror("Not a Digit");
                        yyerrok;};
 S : DIGIT;

%% 

void yyerror(char * s)
/* yacc error handler */
{   
 fprintf (stderr, "%s\n", s);
} 
  
int main() 
{
    printf("\nEnter Something\n");
    yyparse();
    return 0;
}  