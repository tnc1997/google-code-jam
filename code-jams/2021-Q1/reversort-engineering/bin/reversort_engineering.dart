import 'dart:io';

import 'package:reversort_engineering/reversort_engineering.dart';

void main(List<String> arguments) {
  final T = int.parse(stdin.readLineSync());

  for (var x = 1; x <= T; x++) {
    final NC = stdin.readLineSync().split(' ').map(int.parse).toList();

    final y = findListOfDistinctIntegers(NC[0], NC[1]);

    print('Case #$x: ${y?.join(' ') ?? 'IMPOSSIBLE'}');
  }
}
