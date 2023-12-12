lexer grammar PizzaSharpLexer;

//White space
NEWLINE: '\r\n' | '\r' | '\n';
WS: ('\t' | ' ')+ -> skip;

//Keywords
VAR: 'dato';
PRINT: 'mostra';

//Literal
INTLIT: '0' | [1-9][0-9]*;
DECLIT: ('0' | [1-9][0-9]*) '.' [0-9]+; 

//Operators
PLUS: 'piu';
MINUS: 'meno';
TIMES: 'per';
DIVIDE: 'diviso';
ASSIGN: 'uguale';
LPAREN: '(';
RPAREN: ')';

//Identifiers
ID: [a-zA-Z]+ ;