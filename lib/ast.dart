abstract class Node {}

class Point {
  final int line;
  final int column;

  Point(this.line, this.column);
}

class Position {
  final Point start;
  final Point end;

  Position(this.start, this.end);
}

Position pos(int startLine, int startColumn, int endLine, int endColumn) {
  return Position(Point(startLine, startColumn), Point(endLine, endColumn));
}

final class ScriptFile extends Node {
  final List<Statement> lines;
  final Position? position;

  ScriptFile(this.lines, [this.position]);

  @override
  operator ==(o) {
    if (o is ScriptFile) {
      return o.lines == lines;
    } else {
      return false;
    }
  }

  @override
  int get hashCode => Object.hashAll(lines);
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
  operator ==(o) {
    if (o is BinaryExpression) {
      return o.left == left && o.right == right;
    } else {
      return false;
    }
  }

  @override
  int get hashCode => Object.hashAll([left, right]);
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
  operator ==(o) {
    if (o is VarReference) {
      return o.varName == varName;
    } else {
      return false;
    }
  }

  @override
  int get hashCode => varName.hashCode;
}

class IntLit extends Expression {
  final String value;
  final Position? position;

  IntLit(this.value, [this.position]);

  @override
  operator ==(o) {
    if (o is IntLit) {
      return o.value == value;
    } else {
      return false;
    }
  }

  @override
  int get hashCode => value.hashCode;
}

class DecLit extends Expression {
  final String value;
  final Position? position;

  DecLit(this.value, [this.position]);

  @override
  operator ==(o) {
    if (o is DecLit) {
      return o.value == value;
    } else {
      return false;
    }
  }

  @override
  int get hashCode => value.hashCode;
}

class VarDeclaration extends Statement {
  final String varName;
  final Expression value;
  final Position? position;

  VarDeclaration(this.varName, this.value, [this.position]);

  @override
  operator ==(o) {
    if (o is VarDeclaration) {
      return o.value == value && o.varName == varName;
    } else {
      return false;
    }
  }

  @override
  int get hashCode => Object.hashAll([varName, value]);
}

class Assignment extends Statement {
  final String varName;
  final Expression value;
  final Position? position;

  Assignment(this.varName, this.value, [this.position]);

  @override
  operator ==(o) {
    if (o is Assignment) {
      return o.value == value && o.varName == varName;
    } else {
      return false;
    }
  }

  @override
  int get hashCode => Object.hashAll([varName, value]);
}
