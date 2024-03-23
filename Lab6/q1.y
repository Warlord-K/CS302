%{
  #include<stdio.h>
%}
  
%token NUMBER
%start Start 

%left '+' '-'
%left '*' '/' '%'
%left '(' ')'

%%
Start : expr{
         printf("Output = %d\n", $$);
         return 0;
        };

 expr : expr'+'expr {$$=$1+$3;} | expr'-'expr {$$=$1-$3;} | expr'*'expr {$$=$1*$3;}
      | expr'/'expr {$$=$1/$3;} | expr'%'expr {$$=$1%$3;} |'('expr')' {$$=$2;} 
      | NUMBER {$$=$1;};
%%

int main()
{
   printf("\nEnter Expression:\n");
   yyparse();
   return 0;
}

void yyerror(){}