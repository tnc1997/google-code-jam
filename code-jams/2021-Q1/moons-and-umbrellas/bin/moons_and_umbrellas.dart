import 'dart:io';

import 'package:moons_and_umbrellas/moons_and_umbrellas.dart';

void main(List<String> arguments) {
  final T = int.parse(stdin.readLineSync());

  for (var x = 1; x <= T; x++) {
    final XYS = stdin.readLineSync().split(' ');

    final y = calculateMinimumCost(
      int.parse(XYS[0]),
      int.parse(XYS[1]),
      XYS[2],
    );

    print('Case #$x: $y');
  }
}
