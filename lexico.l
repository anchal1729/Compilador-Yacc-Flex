%{
#include <stdlib.h>
#include "definicoes.h"
#include "sintatico.tab.h"
void yyerror(char *);
%}
%%
[a-z][a-z|A-Z|0-9]*       {
                yylval.sIndex = *yytext - 'a';
                return VARIABLE;
            }
[0-9]+      {
                yylval.iValue = atoi(yytext);
                return INTEGER;
            }
[-()=+*/;{}.] {
                return *yytext;
             }

"MAIS"                  return '+';
"MENOS"                  return '-';
"VEZES"                  return '*';
"DIV"                   return '/';
"RESTO"                 return '%';
"MAIORIGUAL"            return GE;
"ABREPAREN"             return '(';
"FECHAPAREN"            return ')';
"ABRECHAVE"             return '{';
"FECHACHAVE"            return '}';
"RECEBE"                return '=';
"MAIOR"                 return '>';
"MENOR"                 return '<';
"MENORIGUAL"            return LE;
"IGUAL"            return EQ;
"NIGUAL"            return NE;
"Enquanto"         return WHILE;
"Se"            return IF;
"Senao"          return ELSE;
"Imprime"         return PRINT;


[ \t\n]+        ;       /* ignore whitespace */
.               yyerror("Unknown character");
%%
int yywrap(void) {
    return 1;
}
