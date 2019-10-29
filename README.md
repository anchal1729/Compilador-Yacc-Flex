# Compilador-Yacc-Flex
A Compiler for languague abacate, i've created for a university project. Wrote with help of Flex and yacc tools.
To use the lexico.l type "flex lexico.l" in shell, it will create a file named lex.yy.c then type "bison -d sintatico.y", it will create 2 tables.
 To compile type " gcc -o compilador.exe sintatico.tab.c lex.yy.c execucoes.c" 
To execute use "./compilador.exe <input.abacate"

Um compilador para a linguagem abacate que eu fiz para um trabalho da universidade. Escrito com ajuda das ferramentas flex e yacc.
Para usar o lexico.l digite "flex lexico.l" no shell, isso vai criar um arquivo chamado lex.yy.c, então digite "bison -d sintatico.y", para criar 2 tabelas;
Compile usando o gcc : "gcc -o compilador.exe sintatico.tab.c lex.yy.c execucoes.c"
Para excutar use "./compilador.exe <input.abacate"
