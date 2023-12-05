// Generated from d://Progetti personali//pizza_sharp//grammar//PizzaSharpParser.g4 by ANTLR 4.13.1
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'PizzaSharpParserListener.dart';
import 'PizzaSharpParserBaseListener.dart';
const int RULE_scriptFile = 0, RULE_line = 1, RULE_statement = 2, RULE_varDeclaration = 3, 
          RULE_assignment = 4, RULE_expression = 5;
class PizzaSharpParser extends Parser {
  static final checkVersion = () => RuntimeMetaData.checkVersion('4.13.1', RuntimeMetaData.VERSION);
  static const int TOKEN_EOF = IntStream.EOF;

  static final List<DFA> _decisionToDFA = List.generate(
      _ATN.numberOfDecisions, (i) => DFA(_ATN.getDecisionState(i), i));
  static final PredictionContextCache _sharedContextCache = PredictionContextCache();
  static const int TOKEN_NEWLINE = 1, TOKEN_WS = 2, TOKEN_VAR = 3, TOKEN_PRINT = 4, 
                   TOKEN_INTLIT = 5, TOKEN_DECLIT = 6, TOKEN_PLUS = 7, TOKEN_MINUS = 8, 
                   TOKEN_TIMES = 9, TOKEN_DIVIDE = 10, TOKEN_ASSIGN = 11, 
                   TOKEN_LPAREN = 12, TOKEN_RPAREN = 13, TOKEN_ID = 14;

  @override
  final List<String> ruleNames = [
    'scriptFile', 'line', 'statement', 'varDeclaration', 'assignment', 'expression'
  ];

  static final List<String?> _LITERAL_NAMES = [
      null, null, null, "'dato'", "'mostra'", null, null, "'piu'", "'meno'", 
      "'per'", "'diviso'", "'uguale'", "'('", "')'"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, "NEWLINE", "WS", "VAR", "PRINT", "INTLIT", "DECLIT", "PLUS", 
      "MINUS", "TIMES", "DIVIDE", "ASSIGN", "LPAREN", "RPAREN", "ID"
  ];
  static final Vocabulary VOCABULARY = VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

  @override
  Vocabulary get vocabulary {
    return VOCABULARY;
  }

  @override
  String get grammarFileName => 'PizzaSharpParser.g4';

  @override
  List<int> get serializedATN => _serializedATN;

  @override
  ATN getATN() {
   return _ATN;
  }

  PizzaSharpParser(TokenStream input) : super(input) {
    interpreter = ParserATNSimulator(this, _ATN, _decisionToDFA, _sharedContextCache);
  }

  ScriptFileContext scriptFile() {
    dynamic _localctx = ScriptFileContext(context, state);
    enterRule(_localctx, 0, RULE_scriptFile);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 13; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 12;
        line();
        state = 15; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while (_la == TOKEN_VAR || _la == TOKEN_ID);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  LineContext line() {
    dynamic _localctx = LineContext(context, state);
    enterRule(_localctx, 2, RULE_line);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 17;
      statement();
      state = 18;
      _la = tokenStream.LA(1)!;
      if (!(_la == TOKEN_EOF || _la == TOKEN_NEWLINE)) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  StatementContext statement() {
    dynamic _localctx = StatementContext(context, state);
    enterRule(_localctx, 4, RULE_statement);
    try {
      state = 22;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_VAR:
        _localctx = VarDeclarationStatementContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 20;
        varDeclaration();
        break;
      case TOKEN_ID:
        _localctx = AssignmentStatementContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 21;
        assignment();
        break;
      default:
        throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  VarDeclarationContext varDeclaration() {
    dynamic _localctx = VarDeclarationContext(context, state);
    enterRule(_localctx, 6, RULE_varDeclaration);
    try {
      enterOuterAlt(_localctx, 1);
      state = 24;
      match(TOKEN_VAR);
      state = 25;
      assignment();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  AssignmentContext assignment() {
    dynamic _localctx = AssignmentContext(context, state);
    enterRule(_localctx, 8, RULE_assignment);
    try {
      enterOuterAlt(_localctx, 1);
      state = 27;
      match(TOKEN_ID);
      state = 28;
      match(TOKEN_ASSIGN);
      state = 29;
      expression(0);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ExpressionContext expression([int _p = 0]) {
    final _parentctx = context;
    final _parentState = state;
    dynamic _localctx = ExpressionContext(context, _parentState);
    var _prevctx = _localctx;
    var _startState = 10;
    enterRecursionRule(_localctx, 10, RULE_expression, _p);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 35;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_INTLIT:
        _localctx = IntegerLiteralContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;

        state = 32;
        match(TOKEN_INTLIT);
        break;
      case TOKEN_DECLIT:
        _localctx = DecimalLiteralContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 33;
        match(TOKEN_DECLIT);
        break;
      case TOKEN_ID:
        _localctx = VarReferenceContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 34;
        match(TOKEN_ID);
        break;
      default:
        throw NoViableAltException(this);
      }
      context!.stop = tokenStream.LT(-1);
      state = 45;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 4, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = _localctx;
          state = 43;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 3, context)) {
          case 1:
            _localctx = BinaryExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 37;
            if (!(precpred(context, 2))) {
              throw FailedPredicateException(this, "precpred(context, 2)");
            }
            state = 38;
            _localctx.operator_ = tokenStream.LT(1);
            _la = tokenStream.LA(1)!;
            if (!(_la == TOKEN_TIMES || _la == TOKEN_DIVIDE)) {
              _localctx.operator_ = errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            state = 39;
            _localctx.right = expression(3);
            break;
          case 2:
            _localctx = BinaryExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 40;
            if (!(precpred(context, 1))) {
              throw FailedPredicateException(this, "precpred(context, 1)");
            }
            state = 41;
            _localctx.operator_ = tokenStream.LT(1);
            _la = tokenStream.LA(1)!;
            if (!(_la == TOKEN_PLUS || _la == TOKEN_MINUS)) {
              _localctx.operator_ = errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            state = 42;
            _localctx.right = expression(2);
            break;
          } 
        }
        state = 47;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 4, context);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      unrollRecursionContexts(_parentctx);
    }
    return _localctx;
  }

  @override
  bool sempred(RuleContext? _localctx, int ruleIndex, int predIndex) {
    switch (ruleIndex) {
    case 5:
      return _expression_sempred(_localctx as ExpressionContext?, predIndex);
    }
    return true;
  }
  bool _expression_sempred(dynamic _localctx, int predIndex) {
    switch (predIndex) {
      case 0: return precpred(context, 2);
      case 1: return precpred(context, 1);
    }
    return true;
  }

  static const List<int> _serializedATN = [
      4,1,14,49,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,1,0,4,0,
      14,8,0,11,0,12,0,15,1,1,1,1,1,1,1,2,1,2,3,2,23,8,2,1,3,1,3,1,3,1,4,
      1,4,1,4,1,4,1,5,1,5,1,5,1,5,3,5,36,8,5,1,5,1,5,1,5,1,5,1,5,1,5,5,5,
      44,8,5,10,5,12,5,47,9,5,1,5,0,1,10,6,0,2,4,6,8,10,0,3,1,1,1,1,1,0,
      9,10,1,0,7,8,48,0,13,1,0,0,0,2,17,1,0,0,0,4,22,1,0,0,0,6,24,1,0,0,
      0,8,27,1,0,0,0,10,35,1,0,0,0,12,14,3,2,1,0,13,12,1,0,0,0,14,15,1,0,
      0,0,15,13,1,0,0,0,15,16,1,0,0,0,16,1,1,0,0,0,17,18,3,4,2,0,18,19,7,
      0,0,0,19,3,1,0,0,0,20,23,3,6,3,0,21,23,3,8,4,0,22,20,1,0,0,0,22,21,
      1,0,0,0,23,5,1,0,0,0,24,25,5,3,0,0,25,26,3,8,4,0,26,7,1,0,0,0,27,28,
      5,14,0,0,28,29,5,11,0,0,29,30,3,10,5,0,30,9,1,0,0,0,31,32,6,5,-1,0,
      32,36,5,5,0,0,33,36,5,6,0,0,34,36,5,14,0,0,35,31,1,0,0,0,35,33,1,0,
      0,0,35,34,1,0,0,0,36,45,1,0,0,0,37,38,10,2,0,0,38,39,7,1,0,0,39,44,
      3,10,5,3,40,41,10,1,0,0,41,42,7,2,0,0,42,44,3,10,5,2,43,37,1,0,0,0,
      43,40,1,0,0,0,44,47,1,0,0,0,45,43,1,0,0,0,45,46,1,0,0,0,46,11,1,0,
      0,0,47,45,1,0,0,0,5,15,22,35,43,45
  ];

  static final ATN _ATN =
      ATNDeserializer().deserialize(_serializedATN);
}
class ScriptFileContext extends ParserRuleContext {
  List<LineContext> lines() => getRuleContexts<LineContext>();
  LineContext? line(int i) => getRuleContext<LineContext>(i);
  ScriptFileContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_scriptFile;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is PizzaSharpParserListener) listener.enterScriptFile(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is PizzaSharpParserListener) listener.exitScriptFile(this);
  }
}

class LineContext extends ParserRuleContext {
  StatementContext? statement() => getRuleContext<StatementContext>(0);
  TerminalNode? NEWLINE() => getToken(PizzaSharpParser.TOKEN_NEWLINE, 0);
  TerminalNode? EOF() => getToken(PizzaSharpParser.TOKEN_EOF, 0);
  LineContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_line;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is PizzaSharpParserListener) listener.enterLine(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is PizzaSharpParserListener) listener.exitLine(this);
  }
}

class StatementContext extends ParserRuleContext {
  StatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_statement;
 
  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class VarDeclarationContext extends ParserRuleContext {
  TerminalNode? VAR() => getToken(PizzaSharpParser.TOKEN_VAR, 0);
  AssignmentContext? assignment() => getRuleContext<AssignmentContext>(0);
  VarDeclarationContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_varDeclaration;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is PizzaSharpParserListener) listener.enterVarDeclaration(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is PizzaSharpParserListener) listener.exitVarDeclaration(this);
  }
}

class AssignmentContext extends ParserRuleContext {
  TerminalNode? ID() => getToken(PizzaSharpParser.TOKEN_ID, 0);
  TerminalNode? ASSIGN() => getToken(PizzaSharpParser.TOKEN_ASSIGN, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  AssignmentContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_assignment;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is PizzaSharpParserListener) listener.enterAssignment(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is PizzaSharpParserListener) listener.exitAssignment(this);
  }
}

class ExpressionContext extends ParserRuleContext {
  ExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_expression;
 
  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class AssignmentStatementContext extends StatementContext {
  AssignmentContext? assignment() => getRuleContext<AssignmentContext>(0);
  AssignmentStatementContext(StatementContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is PizzaSharpParserListener) listener.enterAssignmentStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is PizzaSharpParserListener) listener.exitAssignmentStatement(this);
  }
}

class VarDeclarationStatementContext extends StatementContext {
  VarDeclarationContext? varDeclaration() => getRuleContext<VarDeclarationContext>(0);
  VarDeclarationStatementContext(StatementContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is PizzaSharpParserListener) listener.enterVarDeclarationStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is PizzaSharpParserListener) listener.exitVarDeclarationStatement(this);
  }
}class BinaryExpressionContext extends ExpressionContext {
  ExpressionContext? left;
  Token? operator_;
  ExpressionContext? right;
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
  TerminalNode? TIMES() => getToken(PizzaSharpParser.TOKEN_TIMES, 0);
  TerminalNode? DIVIDE() => getToken(PizzaSharpParser.TOKEN_DIVIDE, 0);
  TerminalNode? PLUS() => getToken(PizzaSharpParser.TOKEN_PLUS, 0);
  TerminalNode? MINUS() => getToken(PizzaSharpParser.TOKEN_MINUS, 0);
  BinaryExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is PizzaSharpParserListener) listener.enterBinaryExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is PizzaSharpParserListener) listener.exitBinaryExpression(this);
  }
}

class DecimalLiteralContext extends ExpressionContext {
  TerminalNode? DECLIT() => getToken(PizzaSharpParser.TOKEN_DECLIT, 0);
  DecimalLiteralContext(ExpressionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is PizzaSharpParserListener) listener.enterDecimalLiteral(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is PizzaSharpParserListener) listener.exitDecimalLiteral(this);
  }
}

class IntegerLiteralContext extends ExpressionContext {
  TerminalNode? INTLIT() => getToken(PizzaSharpParser.TOKEN_INTLIT, 0);
  IntegerLiteralContext(ExpressionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is PizzaSharpParserListener) listener.enterIntegerLiteral(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is PizzaSharpParserListener) listener.exitIntegerLiteral(this);
  }
}

class VarReferenceContext extends ExpressionContext {
  TerminalNode? ID() => getToken(PizzaSharpParser.TOKEN_ID, 0);
  VarReferenceContext(ExpressionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is PizzaSharpParserListener) listener.enterVarReference(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is PizzaSharpParserListener) listener.exitVarReference(this);
  }
}