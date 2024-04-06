%{ 
   #include <ctype.h> 
   #include <stdio.h> 
   int val = 1;
   int value = 0;
   #define YYSTYPE double /* double type for yacc stack */ 
%} 
%start Lines
%token ONE
%token ZERO
%%
 Lines :  Lines S '\n' {printf("Decimal: %d\n", value); value = 0; val = 1;}
       |  S '\n' {printf("Decimal: %d\n", value); value = 0; val = 1;}
       |  error '\n' {yyerror("Not BINARY");
                        yyerrok;};
 S     :  ZERO S {val *= 2;}
       |  ONE S  {value+=val; val *= 2;};
       | ;

%% 
void yyerror(char * s){   
 fprintf (stderr, "%s\n", s);
} 
  
int main() 
{
    printf("\nEnter Binary\n");
    yyparse();
    return 0;
}  