import 'package:closest_pick/closest_pick.dart';
import 'package:test/test.dart';

void main() {
  test('calculateMaximumProbability', () {
    expect(
      calculateMaximumProbability(
        10,
        [
          1,
          3,
          7,
        ],
      ),
      0.5,
    );

    expect(
      calculateMaximumProbability(
        10,
        [
          4,
          1,
          7,
          3,
        ],
      ),
      0.4,
    );

    expect(
      calculateMaximumProbability(
        3,
        [
          1,
          2,
          3,
          2,
        ],
      ),
      0.0,
    );

    expect(
      calculateMaximumProbability(
        4,
        [
          1,
          2,
          4,
          2,
        ],
      ),
      0.25,
    );
  });
}
