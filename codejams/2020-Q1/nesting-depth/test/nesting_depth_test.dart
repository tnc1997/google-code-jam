import 'package:nesting_depth/nesting_depth.dart';
import 'package:test/test.dart';

void main() {
  test('insertMinNoOfOpeningAndClosingParenthesis', () {
    expect(
      insertMinNoOfOpeningAndClosingParenthesis('0000'),
      '0000',
    );

    expect(
      insertMinNoOfOpeningAndClosingParenthesis('101'),
      '(1)0(1)',
    );

    expect(
      insertMinNoOfOpeningAndClosingParenthesis('111000'),
      '(111)000',
    );

    expect(
      insertMinNoOfOpeningAndClosingParenthesis('1'),
      '(1)',
    );

    expect(
      insertMinNoOfOpeningAndClosingParenthesis('021'),
      '0((2)1)',
    );

    expect(
      insertMinNoOfOpeningAndClosingParenthesis('312'),
      '(((3))1(2))',
    );

    expect(
      insertMinNoOfOpeningAndClosingParenthesis('4'),
      '((((4))))',
    );

    expect(
      insertMinNoOfOpeningAndClosingParenthesis('221'),
      '((22)1)',
    );
  });
}
