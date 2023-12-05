import 'package:antlr4/antlr4.dart';
import 'package:pizza_sharp/antlr/PizzaSharpLexer.dart';
import 'package:pizza_sharp/antlr/PizzaSharpParser.dart';
import 'package:pizza_sharp/parse_tree.dart';
import 'package:test/test.dart';

Future<PizzaSharpLexer> lexerForResource(String resourceName) async {
  var lexer = PizzaSharpLexer(
    await InputStream.fromPath('test_scripts/$resourceName.pizza'),
  );

  return lexer;
}

Future<ScriptFileContext> parseResource(String resourceName) async {
  final lexer = await lexerForResource(resourceName);
  return PizzaSharpParser(CommonTokenStream(lexer)).scriptFile();
}

void main() {
  test("parseAdditionAssignment", () async {
    final script = await parseResource("addition_assignment");
    final parseTree = toParseTree(script);

    expect(
      parseTree.multiLineString(),
      """ScriptFileContext
  LineContext
    AssignmentStatementContext
      AssignmentContext
        T[A]
        T[uguale]
        BinaryExpressionContext
          DecimalLiteralContext
            T[1.2]
          T[piu]
          IntegerLiteralContext
            T[3]
    T[<EOF>]
""",
    );
  });

  test("parseSimplestVarDecl", () async {
    final script = await parseResource("simplest_var_decl");
    final parseTree = toParseTree(script);

    expect(
      parseTree.multiLineString(),
      """ScriptFileContext
  LineContext
    VarDeclarationStatementContext
      VarDeclarationContext
        T[dato]
        AssignmentContext
          T[A]
          T[uguale]
          DecimalLiteralContext
            T[1.2]
    T[<EOF>]
""",
    );
  });

  test("parsePrecedenceExpressions", () async {
    final script = await parseResource("precedence_expression");
    final parseTree = toParseTree(script);

    expect(
      parseTree.multiLineString(),
      """ScriptFileContext
  LineContext
    VarDeclarationStatementContext
      VarDeclarationContext
        T[dato]
        AssignmentContext
          T[A]
          T[uguale]
          BinaryExpressionContext
            BinaryExpressionContext
              DecimalLiteralContext
                T[1.2]
              T[per]
              IntegerLiteralContext
                T[6]
            T[piu]
            IntegerLiteralContext
              T[3]
    T[<EOF>]
""",
    );
  });
}
