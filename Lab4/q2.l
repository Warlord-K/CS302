%{
   int num_printfs = 0;
   int num_scanfs = 0;
%}

/* Rule Section */
%%

printf\(.*\) num_printfs++;
scanf(.*) num_scanfs++;
. ;
[\n] ;
%%

int yywrap()
{
   printf("Number of Printfs: %d\n", num_printfs);
   printf("Number of Scanfs: %d\n", num_scanfs);
 return 1;
}