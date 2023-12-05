import 'package:antlr4/antlr4.dart';
import 'package:pizza_sharp/antlr/PizzaSharpLexer.dart';
import 'package:pizza_sharp/antlr/PizzaSharpParser.dart';
import 'package:pizza_sharp/ast.dart';
import 'package:pizza_sharp/ast_mapper.dart';
import 'package:test/test.dart';

ScriptFileContext parseCode(String code) {
  final lexer = PizzaSharpLexer(InputStream.fromString(code));
  final parser = PizzaSharpParser(CommonTokenStream(lexer));

  return parser.scriptFile();
}

void main() {
  test('mapSimpleFile', () {
    final code = '''
      dato A uguale 1.2
      A uguale 2
    ''';

    final parsedCode = parseCode(code);
    final astCode = parsedCode.toAst();

    final expectedAstCode = ScriptFile(
      <Statement>[
        VarDeclaration('A', DecLit('1.2')),
        Assignment('A', IntLit('2')),
      ],
    );

    expect(astCode, expectedAstCode);
  });
}
