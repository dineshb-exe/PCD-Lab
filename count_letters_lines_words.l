%{
#include<stdio.h>
int lc=0,wc=0,slc=0,clc=0,dc=0,splc=0,total=0;
%}
%%
[\n] {wc++;lc++;}
[\t ] {wc++;}
[a-z] {slc++;}
[A-Z] {clc++;}
[0-9] {dc++;}
. {splc++;}
%%

int main(int argc,char** argv){
	FILE* fp;
	if(argc>1){
		fp=fopen(argv[1],"r");
		if(!fp){
			perror("File doesn't exist! \n");
			exit(1);
		}
		yyin=fp;
		yylex();
		total=slc+clc+dc+splc+lc;
		printf("Lines: %d\nWords: %d\nSmall Case Letters: %d\nCapital Letters: %d\nDigits: %d\nSpecial Characters: %d\n,Total Number of characters: %d\n",lc,wc,slc,clc,dc,splc,total);
			
	}
	else{
		printf("Enter the file as argument!\n");
	}
}
int yywrap(){
	return 1;
}

