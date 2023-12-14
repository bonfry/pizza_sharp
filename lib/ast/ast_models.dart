import 'package:equatable/equatable.dart';

abstract class Node with EquatableMixin {
  @override
  List<Object?> get props => [];
}

class Point extends Equatable {
  final int line;
  final int column;

  Point(this.line, this.column);

  @override
  List<Object?> get props => [line, column];
}

class Position extends Equatable {
  final Point start;
  final Point end;

  Position(this.start, this.end);

  operator <(Position other) {
    return start.line < other.start.line ||
        (start.line == other.start.line && start.column < other.start.column);
  }

  operator >(Position other) {
    return start.line > other.start.line ||
        (start.line == other.start.line && start.column > other.start.column);
  }

  operator <=(Position other) {
    return start.line <= other.start.line ||
        (start.line == other.start.line && start.column <= other.start.column);
  }

  operator >=(Position other) {
    return start.line >= other.start.line ||
        (start.line == other.start.line && start.column >= other.start.column);
  }

  @override
  List<Object?> get props => [start, end];
}

Position pos(int startLine, int startColumn, int endLine, int endColumn) {
  return Position(Point(startLine, startColumn), Point(endLine, endColumn));
}

final class ScriptFile extends Node {
  final List<Statement> lines;
  final Position? position;

  ScriptFile(this.lines, [this.position]);

  @override
  List<Object?> get props => [lines, position];
}

abstract class Statement extends Node {}

abstract class Expression extends Node {}

abstract class Type extends Node {}

/* Types */

class IntType extends Type {}

class DecimalType extends Type {}

/* Expressions */

abstract class BinaryExpression extends Expression {
  final Expression left;
  final Expression right;
  final Position? position;

  BinaryExpression({required this.left, required this.right, this.position});

  @override
  List<Object?> get props => [left, right, position];
}

class SumExpression extends BinaryExpression {
  SumExpression({
    required super.left,
    required super.right,
    super.position,
  });
}

class SubExpression extends BinaryExpression {
  SubExpression({
    required super.left,
    required super.right,
    super.position,
  });
}

class MultiplicationExpression extends BinaryExpression {
  MultiplicationExpression({
    required super.left,
    required super.right,
    super.position,
  });
}

class DivisionExpression extends BinaryExpression {
  DivisionExpression({
    required super.left,
    required super.right,
    super.position,
  });
}

class VarReference extends Expression {
  final String varName;
  final Position? position;

  VarReference(this.varName, [this.position]);

  @override
  List<Object?> get props => [varName, position];
}

class IntLit extends Expression {
  final String value;
  final Position? position;

  IntLit(this.value, [this.position]);

  @override
  List<Object?> get props => [value, position];
}

class DecLit extends Expression {
  final String value;
  final Position? position;

  DecLit(this.value, [this.position]);

  @override
  List<Object?> get props => [value, position];
}

class VarDeclaration extends Statement {
  final String varName;
  final Expression value;
  final Position? position;

  VarDeclaration(this.varName, this.value, [this.position]);

  @override
  List<Object?> get props => [varName, value, position];
}

class Assignment extends Statement {
  final String varName;
  final Expression value;
  final Position? position;

  Assignment(this.varName, this.value, [this.position]);

  @override
  List<Object?> get props => [varName, value, position];
}
