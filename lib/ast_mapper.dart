import 'package:antlr4/antlr4.dart';
import 'package:pizza_sharp/antlr/PizzaSharpLexer.dart';
import 'package:pizza_sharp/antlr/PizzaSharpParser.dart';
import 'package:pizza_sharp/ast.dart';

extension TokenExtension on Token {
  startPoint() => Point(line!, charPositionInLine);
  endPoint() => Point(line!, charPositionInLine + text!.length);
}

extension ParserRuleContextExtension on ParserRuleContext {
  Position? toPosition(bool considerPosition) {
    return considerPosition
        ? Position(start!.startPoint(), stop!.endPoint())
        : null;
  }
}

extension ScriptFileContextExtension on ScriptFileContext {
  ScriptFile toAst([bool considerPosition = false]) {
    return ScriptFile(
      lines().map((e) => e.statement()!.toAst()).toList(),
      toPosition(considerPosition),
    );
  }
}

extension StatementContextExtension on StatementContext {
  Statement toAst([bool considerPosition = false]) {
    switch (this) {
      case VarDeclarationStatementContext statement:
        final varDecl = statement.varDeclaration()!;
        return VarDeclaration(
          varDecl.assignment()!.ID()!.text!,
          varDecl.assignment()!.expression()!.toAst(),
          toPosition(considerPosition),
        );
      case AssignmentStatementContext statement:
        final assignment = statement.assignment()!;
        return Assignment(
          assignment.ID()!.text!,
          assignment.expression()!.toAst(),
          toPosition(considerPosition),
        );
      default:
        throw UnsupportedError('Unknown statement type');
    }
  }
}

extension ExpressionContextExtension on ExpressionContext {
  Expression toAst([bool considerPosition = false]) {
    return switch (this) {
      BinaryExpressionContext expr => expr.toAst(considerPosition),
      IntegerLiteralContext intLit => IntLit(
          intLit.text,
          toPosition(considerPosition),
        ),
      DecimalLiteralContext decLit => DecLit(
          decLit.text,
          toPosition(considerPosition),
        ),
      VarReferenceContext varRef => VarReference(
          varRef.text,
          toPosition(considerPosition),
        ),
      _ => throw UnsupportedError('Unknown expression type'),
    };
  }
}

extension BinaryExpressionContextExtension on BinaryExpressionContext {
  Expression toAst([bool considerPosition = false]) {
    return switch (operator_) {
      PizzaSharpLexer.TOKEN_PLUS => SumExpression(
          left: left!.toAst(),
          right: right!.toAst(),
          position: toPosition(considerPosition),
        ),
      PizzaSharpLexer.TOKEN_MINUS => SubExpression(
          left: left!.toAst(),
          right: right!.toAst(),
          position: toPosition(considerPosition),
        ),
      PizzaSharpLexer.TOKEN_TIMES => MultiplicationExpression(
          left: left!.toAst(),
          right: right!.toAst(),
          position: toPosition(considerPosition),
        ),
      PizzaSharpLexer.TOKEN_DIVIDE => DivisionExpression(
          left: left!.toAst(),
          right: right!.toAst(),
          position: toPosition(considerPosition),
        ),
      _ => throw UnsupportedError('Unknown expression type')
    };
  }
}
