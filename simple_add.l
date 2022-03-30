%{
#include<stdio.h>
int a,b,c; /*Global variables*/
%}

/*Rule Section*/
%%
"a" printf("Enter the value of a: "); scanf("%d",&a);
"b" printf("Enter the value of b: "); scanf("%d",&b);
"c" printf("The sum of %d and %d is: %d",a,b,c=a+b);
%%

int main()
{
	// The function that starts the analysis
	yylex();	
}




