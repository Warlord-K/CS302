%{
  #include<stdio.h>
%}
  
%token NUMBER
%start Start 

%left '+' '-'
%left '*' '/'

%%
Start : A{
         printf("\nOutput = %d\n", $$);
         return 0;
        };

 A : A'-'B {$$=$1-$3; printf("- ");} | B; 
 B : B'+'C {$$=$1+$3; printf("+ ");} | C;
 C : C'*'D {$$=$1*$3; printf("* ");} | D;
 D : E'/'D {$$=$1/$3; printf("/ ");} | E;
 E : NUMBER {$$=$1; printf("%d ", $1);};
%%

int main()
{
   printf("\nEnter Expression:\n");
   yyparse();
   return 0;
}
void yyerror(){}