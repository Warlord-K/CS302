%{ 
   #include <ctype.h> 
   #include <stdio.h> 
   #define YYSTYPE double /* double type for yacc stack */ 
   int flag = 0;
%} 

%%
 S     :  '(' S ')' 
       |  '{' S '}'
       | S S 
       | ;
%% 
int main()
{
   yyparse();
   if(flag==0)   printf("\nParenthesis are balanced\n\n");
   return 0;
}

void yyerror()
{
   printf("\nParenthesis are not balanced\n\n");
   flag=1;
}