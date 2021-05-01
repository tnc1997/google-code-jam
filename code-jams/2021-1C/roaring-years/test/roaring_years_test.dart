import 'package:roaring_years/roaring_years.dart';
import 'package:test/test.dart';

void main() {
  test('calculateNextRoaringYear', () {
    expect(
      calculateNextRoaringYear(2020),
      2021,
    );

    expect(
      calculateNextRoaringYear(2021),
      2122,
    );

    expect(
      calculateNextRoaringYear(68000),
      78910,
    );

    expect(
      calculateNextRoaringYear(101),
      123,
    );
  });
}
