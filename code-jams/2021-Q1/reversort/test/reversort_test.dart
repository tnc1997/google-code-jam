import 'package:reversort/reversort.dart';
import 'package:test/test.dart';

void main() {
  test('calculateTotalCost', () {
    expect(
      calculateTotalCost([4, 2, 1, 3]),
      6,
    );

    expect(
      calculateTotalCost([1, 2]),
      1,
    );

    expect(
      calculateTotalCost([7, 6, 5, 4, 3, 2, 1]),
      12,
    );
  });
}
