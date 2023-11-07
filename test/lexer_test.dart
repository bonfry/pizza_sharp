import 'package:antlr4/antlr4.dart';
import 'package:pizza_sharp/antlr/PizzaSharpLexer.dart';
import 'package:test/test.dart';

PizzaSharpLexer _lexerForCode(String code) {
  var lexer = PizzaSharpLexer(InputStream.fromString(code));
  return lexer;
}

List<String> _tokens(PizzaSharpLexer lexer) {
  final tokens = <String>[];
  late Token currentToken;

  do {
    currentToken = lexer.nextToken();

    switch (currentToken.type) {
      case Token.EOF:
        tokens.add('EOF');
        break;
      case != PizzaSharpLexer.TOKEN_WS:
        tokens.add(lexer.ruleNames[currentToken.type - 1]);
        break;
    }
  } while (currentToken.type != Token.EOF);

  return tokens;
}

void main() {
  test('parseVarDeclarationAssignedAnIntegerLiteral', () {
    final lexer = _lexerForCode('dato a uguale 12');
    final tokens = _tokens(lexer);

    expect(tokens, ["VAR", "ID", "ASSIGN", "INTLIT", "EOF"]);
  });

  test('parseVarDeclarationAssignedADecimalLiteral', () {
    final lexer = _lexerForCode('dato a uguale 12.3');
    final tokens = _tokens(lexer);

    expect(tokens, ["VAR", "ID", "ASSIGN", "DECLIT", "EOF"]);
  });

  test('parseVarDeclarationAssignedASum', () {
    final lexer = _lexerForCode('dato a uguale 12.3 piu 4');
    final tokens = _tokens(lexer);

    expect(tokens, ["VAR", "ID", "ASSIGN", "DECLIT", "PLUS", "INTLIT", "EOF"]);
  });
}
