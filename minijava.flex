%%

%class LexerMiniJava
%unicode
%line
%column
%standalone

FimLinha = \r|\n|\r\n
Entrada = [^\r\n]
EspacoBranco = {FimLinha} | [ \t\f]

Comentario = "/*" [^*] ~"*/"

Id = [_a-zA-Z][a-zA-Z0-9_]*
Inteiro = [1-9][0-9]* | 0
Real = {Inteiro}'.'{Inteiro}+ 

%%

/* keywords */
	/* Inteiro */
	{Inteiro} 			{ System.out.println("INTEIRO"); }
	{Real} 				{ System.out.println("REAL"); }

	/* Operadores */
	"=" 				{ System.out.println("EQ"); }
	"==" 				{ System.out.println("EQEQ"); }
	">" 				{ System.out.println("GT"); }
	"<" 				{ System.out.println("LT"); }
	">=" 				{ System.out.println("GTEQ"); }
	"<=" 				{ System.out.println("LTEQ"); }
	"+" 				{ System.out.println("PLUS"); }
	"-" 				{ System.out.println("MINUS"); }
	"/"				    { System.out.println("DIV"); }
	"*"				    { System.out.println("MULT"); }
	"%"				    { System.out.println("MOD"); }
	"!"				    { System.out.println("NEG"); }

	/*Delimitadores*/
	";"					{ System.out.println("Delimitador"); }
	"."					{ System.out.println("Delimitador"); }
	"("					{ System.out.println("Delimitador"); }
	")"					{ System.out.println("Delimitador"); }
	"{"					{ System.out.println("Delimitador"); }
	"}"					{ System.out.println("Delimitador"); }
	"["					{ System.out.println("Delimitador"); }
	"]"					{ System.out.println("Delimitador"); }

	/* Outros */
	"false"				{ System.out.println("FALSE"); }
	"true"				{ System.out.println("TRUE"); }
    "class"				{ System.out.println("CLASS"); }
    "public"			{ System.out.println("PUBLIC"); }
    "extends"			{ System.out.println("EXTENDS"); }
    "static"			{ System.out.println("STATIC"); }
    "void"				{ System.out.println("VOID"); }
    "int"				{ System.out.println("INT"); }
    "boolean"			{ System.out.println("BOOLEAN"); }
    "while"				{ System.out.println("WHILE"); }
    "if"				{ System.out.println("IF"); }
    "else"				{ System.out.println("ELSE"); }
    "return"			{ System.out.println("RETURN"); }
    "this"				{ System.out.println("THIS"); }
    "new"				{ System.out.println("NEW"); }

	/* Comentarios */
	{Comentario} 			{ }
	
	/* Espaço em Branco */
	{EspacoBranco} 		{ }

	/* Id */
	{Id} 		{ System.out.println("IDENTIFIER"); }
	
[^] { throw new Error("LEXICAL ERROR!!!"); }
