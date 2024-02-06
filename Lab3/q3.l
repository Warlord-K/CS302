%{
   int num_words = 0;
%}

/* Rule Section */
%%

[a-zA-Z0-9]+ num_words++;
. ;
[\n] ;
%%

int yywrap()
{
   printf("Number of Words: %d\n", num_words);
 return 1;
}