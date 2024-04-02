%{ 
   #include <ctype.h> 
   #include <stdio.h> 
   #define YYSTYPE double /* double type for yacc stack */ 
%} 

%start Lines
%token STRING1
%token STRING2
%%
 Lines :  Lines S '\n' {printf("Vaild Email\n");}
       |  S '\n' {printf("Valid Email\n");}
       |  error '\n' {yyerror("Invalid Email");
                        yyerrok;};
 S : STRING1 '@' STRING1 | STRING2 '@' STRING1; 

%% 
 

void yyerror(char * s)
/* yacc error handler */
{   
 fprintf (stderr, "%s\n", s);
} 
  
int main() 
{
    printf("\nEnter Email\n");
    yyparse();
    return 0;
}  