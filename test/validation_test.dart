import 'package:pizza_sharp/ast.dart';
import 'package:pizza_sharp/validation.dart';
import 'package:test/test.dart';

void main() {
  // test(
  //   'testVarAssignment',
  //   () {
  //     final result = PizzaSharpParserFacade.parseFromText('dato A uguale 1.2');
  //     expect(result.errors, []);
  //   },
  // );

  test(
    'duplicateVar',
    () {
      final result = PizzaSharpParserFacade.parseFromText('''dato A uguale 1.2
                                                             dato A uguale 2''');

      expect(
        result.errors,
        <Error>[
          Error(
            "Variable A already declared",
            Point(2, 61),
          )
        ],
      );
    },
  );
}
