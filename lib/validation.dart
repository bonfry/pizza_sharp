import 'dart:io';

import 'package:antlr4/src/util/bit_set.dart';
import 'package:antlr4/antlr4.dart';
import 'package:equatable/equatable.dart';

import 'package:pizza_sharp/antlr/PizzaSharpLexer.dart';
import 'package:pizza_sharp/antlr/PizzaSharpParser.dart';
import 'package:pizza_sharp/ast.dart';

extension NodeProcessExtension on Node {
  void specificProcess<T extends Node>(void Function(T) operation) {
    process((node) {
      if (node is T) operation(node);
    });
  }
}

class Error with EquatableMixin {
  final String message;
  final Point position;

  Error(this.message, this.position);

  @override
  List<Object?> get props => [message, position];
}

extension ScriptFileValidator on ScriptFile {
  List<Error> validate() {
    final errors = <Error>[];
    final varsByName = <String, VarDeclaration>{};

    specificProcess<VarDeclaration>((node) {
      if (varsByName.containsKey(node.varName)) {
        errors.add(
          Error(
            'Variable ${node.varName} already declared',
            node.position!.start,
          ),
        );
      } else {
        varsByName[node.varName] = node;
      }
    });

    specificProcess<VarReference>((node) {
      if (!varsByName.containsKey(node.varName)) {
        errors.add(
          Error(
            'Variable ${node.varName} not declared',
            node.position!.start,
          ),
        );
      } else if (node.position! < varsByName[node.varName]!.position!) {
        errors.add(
          Error(
            'Variable ${node.varName} not declared',
            node.position!.start,
          ),
        );
      }
    });

    specificProcess<Assignment>((node) {
      if (!varsByName.containsKey(node.varName)) {
        errors.add(
          Error(
            'Variable ${node.varName} not declared',
            node.position!.start,
          ),
        );
      } else if (node.position! < varsByName[node.varName]!.position!) {
        errors.add(
          Error(
            'Variable ${node.varName} not declared',
            node.position!.start,
          ),
        );
      }
    });

    return errors;
  }
}

class AntlrParsingResult with EquatableMixin {
  final ScriptFileContext? root;
  final List<Error> errors;

  AntlrParsingResult(this.root, this.errors);

  bool isCorrect() => errors.isEmpty && root != null;

  @override
  List<Object?> get props => [root, errors];
}

extension StringToStreamExtension on String {
  InputStream toStream() => InputStream.fromString(this);
}

extension FileToStreamExtension on File {
  Future<InputStream> toStream() => InputStream.fromPath(path);
}

class _ErrorListener implements ErrorListener {
  final Function(String, Point)? onError;

  _ErrorListener({this.onError});

  @override
  void reportAmbiguity(
    Parser recognizer,
    DFA dfa,
    int startIndex,
    int stopIndex,
    bool exact,
    BitSet? ambigAlts,
    ATNConfigSet configs,
  ) {
    // Ignored for now
  }

  @override
  void reportAttemptingFullContext(
    Parser recognizer,
    DFA dfa,
    int startIndex,
    int stopIndex,
    BitSet? conflictingAlts,
    ATNConfigSet configs,
  ) {
    // Ignored for now
  }

  @override
  void reportContextSensitivity(
    Parser recognizer,
    DFA dfa,
    int startIndex,
    int stopIndex,
    int prediction,
    ATNConfigSet configs,
  ) {
    // Ignored for now
  }

  @override
  void syntaxError(
      Recognizer<ATNSimulator> recognizer,
      Object? offendingSymbol,
      int? line,
      int charPositionInLine,
      String msg,
      RecognitionException<IntStream>? e) {
    onError?.call(msg, Point(line!, charPositionInLine));
  }
}

final class PizzaSharpAntlrParserFacade {
  static AntlrParsingResult parseFromText(String text) =>
      parse(text.toStream());

  static Future<AntlrParsingResult> parseFromFile(File file) async =>
      parse(await file.toStream());

  static AntlrParsingResult parse(InputStream input) {
    final lexicalAndSyntaticErrors = <Error>[];
    final listener = _ErrorListener(
      onError: (msg, point) => lexicalAndSyntaticErrors.add(
        Error(msg, point),
      ),
    );

    final lexer = PizzaSharpLexer(input);
    lexer.removeErrorListeners();
    lexer.addErrorListener(listener);

    final parser = PizzaSharpParser(CommonTokenStream(lexer));
    parser.removeErrorListeners();
    parser.addErrorListener(listener);

    final antlrRoot = parser.scriptFile();

    return AntlrParsingResult(antlrRoot, lexicalAndSyntaticErrors);
  }
}

class ParsingResult with EquatableMixin {
  final ScriptFile? root;
  final List<Error> errors;

  ParsingResult(this.root, this.errors);

  bool isCorrect() => errors.isEmpty && root != null;

  @override
  List<Object?> get props => [root, errors];
}

final class PizzaSharpParserFacade {
  static ParsingResult parseFromText(String text) => parse(text.toStream());

  static Future<ParsingResult> parseFromFile(File file) async =>
      parse(await file.toStream());

  static ParsingResult parse(InputStream input) {
    final parsingResult = PizzaSharpAntlrParserFacade.parse(input);
    final lexicalAndSyntaticErrors = parsingResult.errors;
    final antlrRoot = parsingResult.root;
    final astRoot = antlrRoot?.toAst(true);
    final semanticErrors = astRoot?.validate() ?? [];
    final parsingErrors = [...lexicalAndSyntaticErrors, ...semanticErrors];

    return ParsingResult(astRoot, parsingErrors);
  }
}
