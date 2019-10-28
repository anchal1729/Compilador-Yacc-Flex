%{
#include <stdlib.h>
#include "calc3.h"
#include "sintatico.tab.h"
void yyerror(char *);
%}
%%
[a-z]       {
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
"MENOS"                  return '+';
"VEZES"                  return '*';
"DIV"                   return '/';
"RESTO"                 return '%';
"MAIORIGUAL"            return GE;
"ABREPAREN"             return '(';
"FECHAPAREN"            return ')';
"RECEBE"                return '=';
"MAIOR"                 return '>';
"MENOR"                 return '<';
"MENORIGUAL"            return LE;
"IGUAL"            return EQ;
"NIGUAL"            return NE;
"bixofeio"         return WHILE;
"se"            return IF;
"senao"          return ELSE;
"print"         return PRINT;
[ \t\n]+        ;       /* ignore whitespace */
.               yyerror("Unknown character");
%%
int yywrap(void) {
    return 1;
}
