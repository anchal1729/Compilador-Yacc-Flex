digit [0-9]
ponto [.]
aspas ["]
letter [a-zA-z]
string  \"[^"\n]*["\n]
op [M][A][I][S]|[M][E][N][O][S]|[V][E][Z][E][S]|[D][I][V]|[R][E][S][T][O]
ws     [ \t\n]
%%
ws {return 1;}
"if" { printf ("if\n"); return 2;}
"else" { printf("else\n"); return 3;}
{op}      {printf ("op: %s\n",yytext); return 8;}
{letter}({letter}|{digit})* {printf("id: %s\n",yytext); return 4;}
{digit}+       { printf ("inteiro: %s\n",yytext); return 5;}
{digit}+{ponto}{digit}+       { printf ("real: %s\n",yytext); return 6;}
{string}  {printf ("string: %s\n",yytext); return 7;}

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
