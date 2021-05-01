import 'dart:io';

import 'package:roaring_years/roaring_years.dart';

void main(List<String> arguments) {
  final T = int.parse(stdin.readLineSync());

  for (var x = 1; x <= T; x++) {
    final Y = int.parse(stdin.readLineSync());

    final z = calculateNextRoaringYear(Y);

    print('Case #$x: $z');
  }
}
