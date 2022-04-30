import 'package:chain_reactions/chain_reactions.dart';
import 'package:test/test.dart';

void main() {
  test('calculateMaximumFun', () {
    expect(
      calculateMaximumFun(
        [60, 20, 40, 50],
        [0, 1, 1, 2],
      ),
      110,
    );

    expect(
      calculateMaximumFun(
        [3, 2, 1, 4, 5],
        [0, 1, 1, 1, 0],
      ),
      14,
    );

    expect(
      calculateMaximumFun(
        [100, 100, 100, 90, 80, 100, 90, 100],
        [0, 1, 2, 1, 2, 3, 1, 3],
      ),
      490,
    );
  });
}
