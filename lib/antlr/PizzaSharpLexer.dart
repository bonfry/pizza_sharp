// Generated from d://Progetti personali//pizza_sharp//grammar//PizzaSharpLexer.g4 by ANTLR 4.13.1
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';


class PizzaSharpLexer extends Lexer {
  static final checkVersion = () => RuntimeMetaData.checkVersion('4.13.1', RuntimeMetaData.VERSION);

  static final List<DFA> _decisionToDFA = List.generate(
        _ATN.numberOfDecisions, (i) => DFA(_ATN.getDecisionState(i), i));
  static final PredictionContextCache _sharedContextCache = PredictionContextCache();
  static const int
    TOKEN_NEWLINE = 1, TOKEN_WS = 2, TOKEN_VAR = 3, TOKEN_PRINT = 4, TOKEN_INTLIT = 5, 
    TOKEN_DECLIT = 6, TOKEN_PLUS = 7, TOKEN_MINUS = 8, TOKEN_TIMES = 9, 
    TOKEN_DIVIDE = 10, TOKEN_ASSIGN = 11, TOKEN_LPAREN = 12, TOKEN_RPAREN = 13, 
    TOKEN_ID = 14;
  @override
  final List<String> channelNames = [
    'DEFAULT_TOKEN_CHANNEL', 'HIDDEN'
  ];

  @override
  final List<String> modeNames = [
    'DEFAULT_MODE'
  ];

  @override
  final List<String> ruleNames = [
    'NEWLINE', 'WS', 'VAR', 'PRINT', 'INTLIT', 'DECLIT', 'PLUS', 'MINUS', 
    'TIMES', 'DIVIDE', 'ASSIGN', 'LPAREN', 'RPAREN', 'ID'
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


  PizzaSharpLexer(CharStream input) : super(input) {
    interpreter = LexerATNSimulator(_ATN, _decisionToDFA, _sharedContextCache, recog: this);
  }

  @override
  List<int> get serializedATN => _serializedATN;

  @override
  String get grammarFileName => 'PizzaSharpLexer.g4';

  @override
  ATN getATN() { return _ATN; }

  static const List<int> _serializedATN = [
      4,0,14,115,6,-1,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,
      6,7,6,2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,
      13,1,0,1,0,1,0,3,0,33,8,0,1,1,4,1,36,8,1,11,1,12,1,37,1,1,1,1,1,2,
      1,2,1,2,1,2,1,2,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,4,1,4,1,4,5,4,57,8,4,
      10,4,12,4,60,9,4,3,4,62,8,4,1,5,1,5,1,5,5,5,67,8,5,10,5,12,5,70,9,
      5,3,5,72,8,5,1,5,1,5,4,5,76,8,5,11,5,12,5,77,1,6,1,6,1,6,1,6,1,7,1,
      7,1,7,1,7,1,7,1,8,1,8,1,8,1,8,1,9,1,9,1,9,1,9,1,9,1,9,1,9,1,10,1,10,
      1,10,1,10,1,10,1,10,1,10,1,11,1,11,1,12,1,12,1,13,4,13,112,8,13,11,
      13,12,13,113,0,0,14,1,1,3,2,5,3,7,4,9,5,11,6,13,7,15,8,17,9,19,10,
      21,11,23,12,25,13,27,14,1,0,5,2,0,10,10,13,13,2,0,9,9,32,32,1,0,49,
      57,1,0,48,57,2,0,65,90,97,122,122,0,1,1,0,0,0,0,3,1,0,0,0,0,5,1,0,
      0,0,0,7,1,0,0,0,0,9,1,0,0,0,0,11,1,0,0,0,0,13,1,0,0,0,0,15,1,0,0,0,
      0,17,1,0,0,0,0,19,1,0,0,0,0,21,1,0,0,0,0,23,1,0,0,0,0,25,1,0,0,0,0,
      27,1,0,0,0,1,32,1,0,0,0,3,35,1,0,0,0,5,41,1,0,0,0,7,46,1,0,0,0,9,61,
      1,0,0,0,11,71,1,0,0,0,13,79,1,0,0,0,15,83,1,0,0,0,17,88,1,0,0,0,19,
      92,1,0,0,0,21,99,1,0,0,0,23,106,1,0,0,0,25,108,1,0,0,0,27,111,1,0,
      0,0,29,30,5,13,0,0,30,33,5,10,0,0,31,33,7,0,0,0,32,29,1,0,0,0,32,31,
      1,0,0,0,33,2,1,0,0,0,34,36,7,1,0,0,35,34,1,0,0,0,36,37,1,0,0,0,37,
      35,1,0,0,0,37,38,1,0,0,0,38,39,1,0,0,0,39,40,6,1,0,0,40,4,1,0,0,0,
      41,42,5,100,0,0,42,43,5,97,0,0,43,44,5,116,0,0,44,45,5,111,0,0,45,
      6,1,0,0,0,46,47,5,109,0,0,47,48,5,111,0,0,48,49,5,115,0,0,49,50,5,
      116,0,0,50,51,5,114,0,0,51,52,5,97,0,0,52,8,1,0,0,0,53,62,5,48,0,0,
      54,58,7,2,0,0,55,57,7,3,0,0,56,55,1,0,0,0,57,60,1,0,0,0,58,56,1,0,
      0,0,58,59,1,0,0,0,59,62,1,0,0,0,60,58,1,0,0,0,61,53,1,0,0,0,61,54,
      1,0,0,0,62,10,1,0,0,0,63,72,5,48,0,0,64,68,7,2,0,0,65,67,7,3,0,0,66,
      65,1,0,0,0,67,70,1,0,0,0,68,66,1,0,0,0,68,69,1,0,0,0,69,72,1,0,0,0,
      70,68,1,0,0,0,71,63,1,0,0,0,71,64,1,0,0,0,72,73,1,0,0,0,73,75,5,46,
      0,0,74,76,7,3,0,0,75,74,1,0,0,0,76,77,1,0,0,0,77,75,1,0,0,0,77,78,
      1,0,0,0,78,12,1,0,0,0,79,80,5,112,0,0,80,81,5,105,0,0,81,82,5,117,
      0,0,82,14,1,0,0,0,83,84,5,109,0,0,84,85,5,101,0,0,85,86,5,110,0,0,
      86,87,5,111,0,0,87,16,1,0,0,0,88,89,5,112,0,0,89,90,5,101,0,0,90,91,
      5,114,0,0,91,18,1,0,0,0,92,93,5,100,0,0,93,94,5,105,0,0,94,95,5,118,
      0,0,95,96,5,105,0,0,96,97,5,115,0,0,97,98,5,111,0,0,98,20,1,0,0,0,
      99,100,5,117,0,0,100,101,5,103,0,0,101,102,5,117,0,0,102,103,5,97,
      0,0,103,104,5,108,0,0,104,105,5,101,0,0,105,22,1,0,0,0,106,107,5,40,
      0,0,107,24,1,0,0,0,108,109,5,41,0,0,109,26,1,0,0,0,110,112,7,4,0,0,
      111,110,1,0,0,0,112,113,1,0,0,0,113,111,1,0,0,0,113,114,1,0,0,0,114,
      28,1,0,0,0,9,0,32,37,58,61,68,71,77,113,1,6,0,0
  ];

  static final ATN _ATN =
      ATNDeserializer().deserialize(_serializedATN);
}