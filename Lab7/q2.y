%{ 
   #include <ctype.h> 
   #include <stdio.h> 
   #define YYSTYPE double /* double type for yacc stack */ 
%} 

%start Lines
%token EMAIL
%%
 Lines :  Lines EMAIL '\n' {printf("Vaild Email\n");}
       |  EMAIL '\n' {printf("Valid Email\n");}
       |  error '\n' {yyerror("Invalid Email");
                        yyerrok;};
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