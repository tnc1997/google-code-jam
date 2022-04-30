import 'dart:io';

import 'package:punched_cards/punched_cards.dart';

void main(List<String> arguments) {
  final T = int.parse(stdin.readLineSync());

  for (var x = 1; x <= T; x++) {
    final RC = stdin.readLineSync().split(' ').map(int.parse).toList();

    final y = drawPunchedCardAsciiArt(RC[0], RC[1]);

    print('Case #$x:\n$y');
  }
}
