import 'package:reversort_engineering/reversort_engineering.dart';
import 'package:test/test.dart';

void main() {
  test('findListOfDistinctIntegers', () {
    expect(
      findListOfDistinctIntegers(4, 6),
      [1, 3, 4, 2],
    );

    expect(
      findListOfDistinctIntegers(2, 1),
      [1, 2],
    );

    expect(
      findListOfDistinctIntegers(7, 12),
      [1, 2, 3, 5, 7, 6, 4],
    );

    expect(
      findListOfDistinctIntegers(7, 2),
      null,
    );

    expect(
      findListOfDistinctIntegers(2, 1000),
      null,
    );
  });
}
