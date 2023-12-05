// Generated from d://Progetti personali//pizza_sharp//grammar//PizzaSharpParser.g4 by ANTLR 4.13.1
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'PizzaSharpParser.dart';

/// This abstract class defines a complete listener for a parse tree produced by
/// [PizzaSharpParser].
abstract class PizzaSharpParserListener extends ParseTreeListener {
  /// Enter a parse tree produced by [PizzaSharpParser.scriptFile].
  /// [ctx] the parse tree
  void enterScriptFile(ScriptFileContext ctx);
  /// Exit a parse tree produced by [PizzaSharpParser.scriptFile].
  /// [ctx] the parse tree
  void exitScriptFile(ScriptFileContext ctx);

  /// Enter a parse tree produced by [PizzaSharpParser.line].
  /// [ctx] the parse tree
  void enterLine(LineContext ctx);
  /// Exit a parse tree produced by [PizzaSharpParser.line].
  /// [ctx] the parse tree
  void exitLine(LineContext ctx);

  /// Enter a parse tree produced by the [varDeclarationStatement]
  /// labeled alternative in [file.parserName>.statement].
  /// [ctx] the parse tree
  void enterVarDeclarationStatement(VarDeclarationStatementContext ctx);
  /// Exit a parse tree produced by the [varDeclarationStatement]
  /// labeled alternative in [PizzaSharpParser.statement].
  /// [ctx] the parse tree
  void exitVarDeclarationStatement(VarDeclarationStatementContext ctx);

  /// Enter a parse tree produced by the [assignmentStatement]
  /// labeled alternative in [file.parserName>.statement].
  /// [ctx] the parse tree
  void enterAssignmentStatement(AssignmentStatementContext ctx);
  /// Exit a parse tree produced by the [assignmentStatement]
  /// labeled alternative in [PizzaSharpParser.statement].
  /// [ctx] the parse tree
  void exitAssignmentStatement(AssignmentStatementContext ctx);

  /// Enter a parse tree produced by [PizzaSharpParser.varDeclaration].
  /// [ctx] the parse tree
  void enterVarDeclaration(VarDeclarationContext ctx);
  /// Exit a parse tree produced by [PizzaSharpParser.varDeclaration].
  /// [ctx] the parse tree
  void exitVarDeclaration(VarDeclarationContext ctx);

  /// Enter a parse tree produced by [PizzaSharpParser.assignment].
  /// [ctx] the parse tree
  void enterAssignment(AssignmentContext ctx);
  /// Exit a parse tree produced by [PizzaSharpParser.assignment].
  /// [ctx] the parse tree
  void exitAssignment(AssignmentContext ctx);

  /// Enter a parse tree produced by the [binaryExpression]
  /// labeled alternative in [file.parserName>.expression].
  /// [ctx] the parse tree
  void enterBinaryExpression(BinaryExpressionContext ctx);
  /// Exit a parse tree produced by the [binaryExpression]
  /// labeled alternative in [PizzaSharpParser.expression].
  /// [ctx] the parse tree
  void exitBinaryExpression(BinaryExpressionContext ctx);

  /// Enter a parse tree produced by the [decimalLiteral]
  /// labeled alternative in [file.parserName>.expression].
  /// [ctx] the parse tree
  void enterDecimalLiteral(DecimalLiteralContext ctx);
  /// Exit a parse tree produced by the [decimalLiteral]
  /// labeled alternative in [PizzaSharpParser.expression].
  /// [ctx] the parse tree
  void exitDecimalLiteral(DecimalLiteralContext ctx);

  /// Enter a parse tree produced by the [integerLiteral]
  /// labeled alternative in [file.parserName>.expression].
  /// [ctx] the parse tree
  void enterIntegerLiteral(IntegerLiteralContext ctx);
  /// Exit a parse tree produced by the [integerLiteral]
  /// labeled alternative in [PizzaSharpParser.expression].
  /// [ctx] the parse tree
  void exitIntegerLiteral(IntegerLiteralContext ctx);

  /// Enter a parse tree produced by the [varReference]
  /// labeled alternative in [file.parserName>.expression].
  /// [ctx] the parse tree
  void enterVarReference(VarReferenceContext ctx);
  /// Exit a parse tree produced by the [varReference]
  /// labeled alternative in [PizzaSharpParser.expression].
  /// [ctx] the parse tree
  void exitVarReference(VarReferenceContext ctx);
}