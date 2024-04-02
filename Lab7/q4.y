%{ 
   #include <ctype.h> 
   #include <stdio.h> 
   #define YYSTYPE double /* double type for yacc stack */ 
   int counta = 0;
   int countb = 0;
%} 

%start Lines

%%
 Lines :  S '\n' {return 0;}
       |  error '\n' {yyerror("Not OK");
                        yyerrok;};
 S     :  A B
       |   /* empty */    ;
 A     :  A A
       |  'A' {counta++;};
 B     :  B B
       |  'B' {countb++;};

%% 
 

void yyerror(char * s)
/* yacc error handler */
{   
 fprintf (stderr, "%s\n", s);
} 
  
int main() 
{
    printf("\nEnter Expression\n");
    yyparse();
    if(counta == countb){
        printf("OK\n");
    }else{
        printf("Not OK\n");
    }
    return 0;
}  