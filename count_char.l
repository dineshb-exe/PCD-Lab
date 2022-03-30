%{
#include<stdio.h>
int vow=0,num=0,let=0;
%}
%%
[aeiouAEIOU] vow++;
[0-9] num++;
[a-zA-Z] let++;
"#" printf("Vowels: %d\tDigits: %d\tLetters: %d\n",vow,num,let);
%%

int main(){
	yylex();
	return 0;
}

int yywrap(){
	return 0;
}
