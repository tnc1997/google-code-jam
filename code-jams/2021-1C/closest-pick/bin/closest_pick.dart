import 'dart:io';

import 'package:closest_pick/closest_pick.dart';

void main(List<String> arguments) {
  final T = int.parse(stdin.readLineSync());

  for (var x = 1; x <= T; x++) {
    final NK = stdin.readLineSync().split(' ').map(int.parse).toList();

    final P = stdin.readLineSync().split(' ').map(int.parse).toList();

    final y = calculateMaximumProbability(NK[1], P);

    print('Case #$x: $y');
  }
}
