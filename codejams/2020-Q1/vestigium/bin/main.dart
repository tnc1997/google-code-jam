import 'dart:io';

import 'package:vestigium/vestigium.dart';

void main(List<String> arguments) {
  var t = int.parse(stdin.readLineSync());

  for (var x = 1; x <= t; x++) {
    var n = int.parse(stdin.readLineSync());

    var matrix = <List<int>>[];

    for (var i = 0; i < n; i++) {
      var row = stdin
          .readLineSync()
          .split(' ')
          .map((input) => int.parse(input))
          .toList();

      matrix.add(row);
    }

    var result = computeTraceAndCheckIfNaturalLatinSquare(matrix);

    print('Case #$x: ${result.item1} ${result.item2} ${result.item3}');
  }
}
