import 'package:parenting_partnering_returns/parenting_partnering_returns.dart';
import 'package:test/test.dart';

void main() {
  test('findAnySchedule', () {
    expect(
      findAnySchedule([
        Activity(360, 480),
        Activity(420, 540),
        Activity(600, 660),
      ]),
      'CJC',
    );

    expect(
      findAnySchedule([
        Activity(0, 1440),
        Activity(1, 3),
        Activity(2, 4),
      ]),
      'IMPOSSIBLE',
    );

    expect(
      findAnySchedule([
        Activity(99, 150),
        Activity(1, 100),
        Activity(100, 301),
        Activity(2, 5),
        Activity(150, 250),
      ]),
      'JCCJJ',
    );

    expect(
      findAnySchedule([
        Activity(0, 720),
        Activity(720, 1440),
      ]),
      'CC',
    );
  });
}
