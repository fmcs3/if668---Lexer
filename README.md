MiniJava
Lexer Minijava - Exercicio da cadeira Compiladores.

Este exercício tem o objetivo de exercitar os conceitos de análise léxica vistos em sala de aula. A ideia é implementar um analisador léxico para a linguagem MiniJava, que consiste em um subconjunto de Java, cujos elementos léxicos são descritos abaixo.

Utilize a linguagem de sua preferência para implementar o analisador, sendo permitido o uso de geradores de analisadores léxicos, como os listados nos links da postagem de algumas aulas atrás. Alguns programas válidos em MiniJava estão em anexo nesta postagem.

O código do seu analisador léxico deve estar em um repositório acessível online, como GitHub ou BitBucket. Responda esta tarefa colocando o link para o repositório com a sua resposta.

** Elementos Léxicos de MiniJava **

Whitespace: espaços em branco, quebra de linha, tabulação e carriage return;

Comentários: qualquer texto entre /* e */;

Palavras-chave e operadores: class, public, extends, static, void, int, boolean, while, if, else, return, ||, &&, ==, !=, <, <=, >, >=, +, -, *, /, %, !, false, true, this, new;

Delimitadores: ; . , = ( ) { } [ ]

Identificadores: um identificador começa com uma letra ou underline e é seguido por qualquer quantidade de letras, underline e dígitos. Apenas letras entre A/a e Z/z são permitidos, há diferença entre maiúscula e minúscula. Palavras-chave não são identificadores;

Literais Inteiros: uma sequência de dígitos iniciada com qualquer um dos dígitos entre 1 e 9 e seguida por qualquer número de dígitos entre 0 e 9. O dígito 0 também é um inteiro.

Literais ponto flutuante: Uma parte inteira seguida de uma parte fracionária, separada por ponto. Na parte fracionária, podemos incluir um expoente, seguindo os exemplos dos slides de análise léxica.

Comentários e whitespace não tem significado algum, exceto para separar os tokens.

Para testar, passar como parâmetro o de entrada no main Lexer.java Este Lexer imprime os Tokens encontrados.
