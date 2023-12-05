parser grammar PizzaSharpParser;

options { tokenVocab=PizzaSharpLexer; }

scriptFile: line+ ;

line: statement (NEWLINE | EOF) ;

statement
    : varDeclaration #varDeclarationStatement
    | assignment #assignmentStatement
    ;

varDeclaration: VAR assignment;

assignment: ID ASSIGN expression;

expression
    : INTLIT #integerLiteral
    | DECLIT #decimalLiteral
    | ID #varReference
    | left=expression operator=(TIMES | DIVIDE) right=expression #binaryExpression
    | left=expression operator=(PLUS | MINUS) right=expression #binaryExpression
    ; 