import 'dart:io';

import 'package:squary/squary.dart';

void main(List<String> arguments) {
  final T = int.parse(stdin.readLineSync());

  for (var x = 1; x <= T; x++) {
    final NK = stdin.readLineSync().split(' ').map(int.parse).toList();

    final E = stdin.readLineSync().split(' ').map(int.parse).toList();

    final y = getElements(NK[1], E);

    print('Case #$x: ${y?.join(' ') ?? 'IMPOSSIBLE'}');
  }
}
