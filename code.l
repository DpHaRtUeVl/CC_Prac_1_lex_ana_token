%{
#include<stdio.h>
#include<string.h>
int key = 0;
int valid = 0;
int invalid = 0;
int nums = 0;
%}

/* Rules Section*/

%%
"if"|"int"|"float"|"while"|"else"|"for"|"void"|"main"|"printf"|"scanf"|"getchar" {key++;}
[a-z A-Z_][a-z A-Z 0-9]* {valid++;}
[0-9]* {nums++;}
^[^a-z A-Z_] {invalid++;}

"\n" {printf("key:\t%d\nvalid:\t%d\ninvalid:%d\nnums:\t%d\n\n", key,valid,invalid,nums);}

.;
%%

int yywrap(void){}

int main()
{
    // The function that starts the analysis
    yylex();

    return 0;
}
