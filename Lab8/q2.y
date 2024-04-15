%{ 
   #include <ctype.h> 
   #include <stdio.h> 
   float val = 1.0;
   float value = 0.0;
   float decval = 0.5;
   #define YYSTYPE double /* double type for yacc stack */ 
%} 
%start Lines
%token ONE
%token ZERO
%token DEC
%%
 Lines :  Lines S DEC R '\n' {printf("Decimal: %.6f\n", value); value = 0.0; val = 1; decval = 0.5;}
       |  S DEC R '\n' {printf("Decimal: %.6f\n", value); value = 0.0; val = 1; decval = 0.5;}
       |  error '\n' {yyerror("Not BINARY");
                        yyerrok;};
 S     :  ZERO S {val *= 2;}
       |  ONE S  {value+=val; val *= 2;};
       | ;
 R     :  R ZERO {decval /= 2;}
       |  R ONE {value+=decval; decval /= 2;};
       | ;

%%   
int main(){
    printf("\nEnter Binary\n");
    yyparse();
    return 0;
}  
void yyerror(char * s){   
 fprintf (stderr, "%s\n", s);
} 