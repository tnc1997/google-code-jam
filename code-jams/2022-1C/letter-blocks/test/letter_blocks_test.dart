import 'package:letter_blocks/letter_blocks.dart';
import 'package:test/test.dart';

void main() {
  test('getMegaTower', () {
    expect(
      getMegaTower(['CODE', 'JAM', 'MIC', 'EEL', 'ZZZZZ']),
      'JAMMICCODEEELZZZZZ',
    );

    expect(
      getMegaTower(['CODE', 'JAM', 'MIC', 'EEL', 'ZZZZZ', 'EEK']),
      null,
    );

    expect(
      getMegaTower(['OY', 'YO']),
      null,
    );

    expect(
      getMegaTower(['HASH', 'CODE']),
      null,
    );

    expect(
      getMegaTower(['A', 'AA', 'BB', 'A', 'BA', 'BB']),
      'BBBBBAAAAA',
    );

    expect(
      getMegaTower(['CAT', 'TAX']),
      null,
    );
  });
}
