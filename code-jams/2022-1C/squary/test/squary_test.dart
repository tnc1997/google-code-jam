import 'package:squary/squary.dart';
import 'package:test/test.dart';

void main() {
  test('getElements', () {
    expect(
      getElements(1, [-2, 6]),
      [3],
    );

    expect(
      getElements(1, [-10, 10]),
      null,
    );

    expect(
      getElements(1, [0]),
      [0],
    );

    expect(
      getElements(1, [2, -2, 2]),
      [2],
    );
  });
}
