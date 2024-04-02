%{ 
   #include <ctype.h> 
   #include <stdio.h> 
   #define YYSTYPE double /* double type for yacc stack */ 
   int operands = 0;
   int operators = 0;
   int flag = 0;
%} 

%start StartSymbol
%token NUMBER

%%
StartSymbol: S{
         printf("\nTotal Operands=%d, Operators=%d\n", operands, operators);
         return 0;
        };
 S     :  S'+'S {operators++;}
       |  S'-'S {operators++;}
       |  S'*'S {operators++;}
       |  S'/'S {operators++;}
       |  NUMBER {operands++;}
       ;
%% 
int main()
{
   printf("\nEnter Any Arithmetic Expression which can have operations Addition, Subtraction, Multiplication, Division:\n");
   yyparse();
   if(flag==0)   printf("\nEntered arithmetic expression is Valid\n\n");
   return 0;
}
  
void yyerror()
{
   printf("\nEntered arithmetic expression is Invalid\n\n");
   flag=1;
}