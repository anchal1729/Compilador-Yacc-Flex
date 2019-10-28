# Compilador-Yacc-Flex
A Compiler for languague abacate, i've created for a university project. Wrote with help of Flex and yacc tools.
To use the lexico.l type "flex lexico.l" in shell, it will create a file named lex.yy.c then type "bison -d sintatico.y", it will create 2 tables. To compile type " gcc -o compilador.exe sintatico.tab.c lex.yy.c aux.c" 

Um compilador para a linguagem abacate que eu fiz para um trabalho da universidade. Escrito com ajuda das ferramentas flex e yacc.
Para usar o lexico.l digite "flex lexico.l" no shell, isso vai criar um arquivo chamado lex.yy.c, compile usando o gcc : "gcc lex.yy.c -o lexico.exe"
Para excutar use "./lexico.exe teste.txt"
