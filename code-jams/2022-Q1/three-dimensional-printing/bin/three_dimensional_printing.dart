import 'dart:io';

import 'package:three_dimensional_printing/three_dimensional_printing.dart';

void main(List<String> arguments) {
  final T = int.parse(stdin.readLineSync());

  for (var x = 1; x <= T; x++) {
    var i = <List<int>>[];

    for (var y = 0; y < 3; y++) {
      i.add(stdin.readLineSync().split(' ').map(int.parse).toList());
    }

    final y = calculateColor(i);

    print('Case #$x: ${y?.join(' ') ?? 'IMPOSSIBLE'}');
  }
}
