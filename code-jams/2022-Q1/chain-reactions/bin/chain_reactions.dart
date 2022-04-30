import 'dart:io';

import 'package:chain_reactions/chain_reactions.dart';

void main(List<String> arguments) {
  final T = int.parse(stdin.readLineSync());

  for (var x = 1; x <= T; x++) {
    var N = int.parse(stdin.readLineSync());

    var F = stdin.readLineSync().split(' ').map(int.parse).toList();
    var P = stdin.readLineSync().split(' ').map(int.parse).toList();

    final y = calculateMaximumFun(F, P);

    print('Case #$x: $y');
  }
}
