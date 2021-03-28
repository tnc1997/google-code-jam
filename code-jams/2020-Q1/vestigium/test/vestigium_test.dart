import 'package:tuple/tuple.dart';
import 'package:vestigium/vestigium.dart';
import 'package:test/test.dart';

void main() {
  test('computeTraceAndCheckIfNaturalLatinSquare', () {
    expect(
      computeTraceAndCheckIfNaturalLatinSquare([
        [1, 2, 3, 4],
        [2, 1, 4, 3],
        [3, 4, 1, 2],
        [4, 3, 2, 1],
      ]),
      Tuple3(4, 0, 0),
    );

    expect(
      computeTraceAndCheckIfNaturalLatinSquare([
        [2, 2, 2, 2],
        [2, 3, 2, 3],
        [2, 2, 2, 3],
        [2, 2, 2, 2],
      ]),
      Tuple3(9, 4, 4),
    );

    expect(
      computeTraceAndCheckIfNaturalLatinSquare([
        [2, 1, 3],
        [1, 3, 2],
        [1, 2, 3],
      ]),
      Tuple3(8, 0, 2),
    );
  });
}
