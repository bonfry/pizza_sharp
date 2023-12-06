import 'package:pizza_sharp/ast.dart';

typedef ProcessOperationCallback = void Function(Node node);
typedef TransformOperationCallback = Node Function(Node node);

extension ScriptFileTransfromExtension on ScriptFile {
  void process(ProcessOperationCallback operation) {
    operation(this);

    for (var line in lines) {
      line.process(operation);
    }
  }
}

extension StatementTransfromExtension on Statement {
  void process(ProcessOperationCallback operation) {
    operation(this);

    switch (this) {
      case VarDeclaration statement:
        statement.value.process(operation);
        break;
      case Assignment statement:
        statement.value.process(operation);
        break;
      default:
        throw UnsupportedError('Unknown statement type');
    }
  }
}

extension ExpressionTransformExtension on Expression {
  void process(ProcessOperationCallback operation) {
    operation(this);

    switch (this) {
      case BinaryExpression expr:
        expr.process(operation);
        break;
      case IntLit _:
      case DecLit _:
      case VarReference _:
        break;
      default:
        throw UnsupportedError('Unknown expression type');
    }
  }

  Node transform(TransformOperationCallback operation) {
    switch (this) {
      case BinaryExpression expr:
        final newBinaryExpr = expr.transform(operation);
        return operation(newBinaryExpr);
      case IntLit expr:
        return operation(expr);
      case DecLit expr:
        return operation(expr);
      case VarReference expr:
        return operation(expr);
      default:
        throw UnsupportedError('Unknown expression type');
    }
  }
}

extension BinaryExpressionTransformExtension on BinaryExpression {
  void process(ProcessOperationCallback operation) {
    operation(this);

    switch (this) {
      case SumExpression expr:
        expr.process(operation);
        break;
      case MultiplicationExpression expr:
        expr.process(operation);
        break;
      case SubExpression expr:
        expr.process(operation);
        break;
      case DivisionExpression expr:
        expr.process(operation);
        break;
      default:
        throw UnsupportedError('Unknown expression type');
    }
  }

  Node transform(TransformOperationCallback operation) {
    Node newBinaryExpression;

    switch (this) {
      case SumExpression expr:
        newBinaryExpression = expr.transform(operation);
        break;
      case MultiplicationExpression expr:
        newBinaryExpression = expr.transform(operation);
        break;
      case SubExpression expr:
        newBinaryExpression = expr.transform(operation);
        break;
      case DivisionExpression expr:
        newBinaryExpression = expr.transform(operation);
        break;
      default:
        throw UnsupportedError('Unknown expression type');
    }

    return operation(newBinaryExpression);
  }
}

extension SumExpressionTransfromExtension on SumExpression {
  void process(ProcessOperationCallback operation) {
    operation(this);

    left.process(operation);
    right.process(operation);
  }

  Node transform(TransformOperationCallback operation) {
    final newRight = right.transform(operation);
    final newLeft = left.transform(operation);

    return operation(SumExpression(
      left: newLeft as Expression,
      right: newRight as Expression,
    ));
  }
}

extension SubExpressionTransfromExtension on SubExpression {
  void process(ProcessOperationCallback operation) {
    operation(this);

    left.process(operation);
    right.process(operation);
  }

  Node transform(TransformOperationCallback operation) {
    final newRight = right.transform(operation);
    final newLeft = left.transform(operation);

    return operation(SubExpression(
      left: newLeft as Expression,
      right: newRight as Expression,
    ));
  }
}

extension MultiplicationExpressionTransfromExtension
    on MultiplicationExpression {
  void process(ProcessOperationCallback operation) {
    operation(this);

    left.process(operation);
    right.process(operation);
  }

  Node transform(TransformOperationCallback operation) {
    final newRight = right.transform(operation);
    final newLeft = left.transform(operation);

    return operation(MultiplicationExpression(
      left: newLeft as Expression,
      right: newRight as Expression,
    ));
  }
}

extension DivisionExpressionTransfromExtension on DivisionExpression {
  void process(ProcessOperationCallback operation) {
    operation(this);

    left.process(operation);
    right.process(operation);
  }

  Node transform(TransformOperationCallback operation) {
    final newRight = right.transform(operation);
    final newLeft = left.transform(operation);

    return operation(DivisionExpression(
      left: newLeft as Expression,
      right: newRight as Expression,
    ));
  }
}
