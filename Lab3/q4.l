%{
   int num_words = 0;
%}

/* Rule Section */
%%

\\\\.*[\n] num_words++;
\\\*[^\*\\]*\*\\ num_words++;
. ;
[\n] ;
%%

int yywrap()
{
   printf("Number of Comments: %d\n", num_words);
 return 1;
}