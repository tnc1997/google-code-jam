import 'package:punched_cards/punched_cards.dart';
import 'package:test/test.dart';

void main() {
  test('drawPunchedCardAsciiArt', () {
    expect(
      drawPunchedCardAsciiArt(3, 4),
      '''..+-+-+-+
..|.|.|.|
+-+-+-+-+
|.|.|.|.|
+-+-+-+-+
|.|.|.|.|
+-+-+-+-+''',
    );

    expect(
      drawPunchedCardAsciiArt(2, 2),
      '''..+-+
..|.|
+-+-+
|.|.|
+-+-+''',
    );

    expect(
      drawPunchedCardAsciiArt(2, 3),
      '''..+-+-+
..|.|.|
+-+-+-+
|.|.|.|
+-+-+-+''',
    );
  });
}
