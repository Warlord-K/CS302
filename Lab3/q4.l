%{
   int num_comments = 0;
%}

/* Rule Section */
%%

\/\/.*[\n] num_comments++;
\/\*[^\*\/]*\*\/ num_comments++;
. ;
[\n] ;
%%

int yywrap()
{
   printf("Number of Comments: %d\n", num_comments);
 return 1;
}