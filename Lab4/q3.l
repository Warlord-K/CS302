%{
   int num_pos_f = 0;
   int num_neg_f = 0;
   int num_pos = 0;
   int num_neg = 0;
%}

%%
[-][0-9]+[/|.][0-9]+ ++num_neg_f;
\+?[0-9]*[/|.][0-9]* ++num_pos_f;
[-][0-9]+ ++num_neg;
\+?[0-9]* ++num_pos;
. ;
[\n] ;
%%


int yywrap()
{
   printf("Number of Postive Integers: %d\n", num_pos);
   printf("Number of Negative Integers: %d\n", num_neg);
   printf("Number of Postive Fractions: %d\n", num_pos_f);
   printf("Number of Negative Fractions: %d\n", num_neg_f);
 return 1;
}