digit [0-9]
letter [a-zA-z]
ws     [ \t\n]
%%
ws {return 1;}
"if" { printf ("if\n"); return 5;}
"else" { printf("else\n"); return 6;}
{letter}({letter}|{digit})* {printf("id: %s\n",yytext); return 2;}
{digit}+       { printf ("num: %s\n",yytext); return 3;}
.             {return 4;}
%%

int yywrap (void) {return 1;}

int main(int argc, char*argv[]){

 yyin= fopen (argv[1],"r");
 int tokentag;
 tokentag=1;
 while (tokentag!=0)
        tokentag = yylex();
return 0;

}
