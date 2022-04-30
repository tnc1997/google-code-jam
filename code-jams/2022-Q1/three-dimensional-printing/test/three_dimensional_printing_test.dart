import 'package:three_dimensional_printing/three_dimensional_printing.dart';
import 'package:test/test.dart';

void main() {
  test('calculateColor', () {
    expect(
      calculateColor(
        [
          [300000, 200000, 300000, 500000],
          [300000, 200000, 500000, 300000],
          [300000, 500000, 300000, 200000],
        ],
      ),
      [300000, 200000, 300000, 200000],
    );

    expect(
      calculateColor(
        [
          [1000000, 1000000, 0, 0],
          [0, 1000000, 1000000, 1000000],
          [999999, 999999, 999999, 999999],
        ],
      ),
      null,
    );

    expect(
      calculateColor(
        [
          [768763, 148041, 178147, 984173],
          [699508, 515362, 534729, 714381],
          [949704, 625054, 946212, 951187],
        ],
      ),
      [699508, 148041, 152451, 0],
    );
  });
}
