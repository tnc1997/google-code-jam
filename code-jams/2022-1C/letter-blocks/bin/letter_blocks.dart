import 'dart:io';

import 'package:letter_blocks/letter_blocks.dart';

void main(List<String> arguments) {
  final T = int.parse(stdin.readLineSync());

  for (var x = 1; x <= T; x++) {
    final N = int.parse(stdin.readLineSync());

    final S = stdin.readLineSync().split(' ');

    final y = getMegaTower(S);

    print('Case #$x: ${y ?? 'IMPOSSIBLE'}');
  }
}
