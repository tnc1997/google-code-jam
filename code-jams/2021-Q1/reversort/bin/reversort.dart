import 'dart:io';

import 'package:reversort/reversort.dart';

void main(List<String> arguments) {
  final T = int.parse(stdin.readLineSync());

  for (var x = 1; x <= T; x++) {
    final N = int.parse(stdin.readLineSync());

    final L = stdin.readLineSync().split(' ').map(int.parse).toList();

    final y = calculateTotalCost(L);

    print('Case #$x: $y');
  }
}
