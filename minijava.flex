%%

%class LexerMiniJava
%unicode
%cup
%line
%column
%standalone

/*
%{
	StringBuffer string = new StringBuffer();
%}
*/

FimLinha = \r|\n|\r\n
Entrada = [^\r\n]
EspacoBranco = {FimLinha} | [ \t\f]

Comentario = "/*" [^*] ~"*/"

Id = [_a-zA-Z][a-zA-Z0-9_]*
Inteiro = [1-9][0-9]* | 0
Real = {Inteiro}'.'{Inteiro}+ 

/* Declarando estado para ler STRING */
%state STRING

%%

/* keywords */
<YYINITIAL> {
	/* Inteiro */
	{Inteiro} 			{ return symbol(sym.INTEGER_LITERAL); }
	{Real} 				{ return symbol(sym.FLOAT_LITERAL); }

	/* Achou String */
	\" 					{ string.setLength(0); yybegin(STRING); }
	
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
	"="					{ System.out.println("Delimitador"); }
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

	/* Id */
	{Id} 		{ return symbol(sym.IDENTIFIER); }

	/* Comentarios */
	{Comentario} 			{ }
	
	/* Espaço em Branco */
	{EspacoBranco} 		{ }
}

<STRING> {
	\" 					{ yybegin(YYINITIAL); return symbol(sym.STRING_LITERAL, string.toString()); }
	[^\n\r\"\\]+ 		{ string.append( yytext() ); }
	\\t 				{ string.append(’\t’); }
	\\n 				{ string.append(’\n’); }
	\\r 				{ string.append(’\r’); }
	\\ 					{ string.append(’\\’); }
}			

[^] { throw new Error("PARSE ERROR!!!"); }
