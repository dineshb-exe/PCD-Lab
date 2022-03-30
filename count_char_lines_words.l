%{
#include<stdio.h>
int wc=0,chc=0,lc=0;
%}

word [^ \t\n]+

%%
{word} {wc++;chc+=yyleng;}
\n {chc++;lc++;}
. chc++;
%%

int main(int argc,char** argv){
	if(argc>1){
		FILE* fp;
		fp=fopen(argv[1],"r");
		if(!fp){
			printf("Couldn't open file!!\n");
			exit(1);
		}
		yyin=fp;
	}
	yylex();
	printf("Words: %d\t Characters: %d\tLines: %d\n",wc,chc,lc);
	return 0;
}
int yywrap(){
	return 1;
}

