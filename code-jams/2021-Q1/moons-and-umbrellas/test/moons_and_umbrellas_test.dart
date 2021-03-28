import 'package:moons_and_umbrellas/moons_and_umbrellas.dart';
import 'package:test/test.dart';

void main() {
  test('calculateMinimumCost', () {
    expect(
      calculateMinimumCost(
        2,
        3,
        'CJ?CC?',
      ),
      5,
    );

    expect(
      calculateMinimumCost(
        4,
        2,
        'CJCJ',
      ),
      10,
    );

    expect(
      calculateMinimumCost(
        1,
        3,
        'C?J',
      ),
      1,
    );

    expect(
      calculateMinimumCost(
        2,
        5,
        '??J???',
      ),
      0,
    );

    expect(
      calculateMinimumCost(
        2,
        3,
        '?',
      ),
      0,
    );
  });
}
