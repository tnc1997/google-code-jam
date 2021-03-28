import 'dart:io';

import 'package:nesting_depth/nesting_depth.dart';

void main(List<String> arguments) {
  var t = int.parse(stdin.readLineSync());

  for (var x = 1; x <= t; x++) {
    var s = stdin.readLineSync();

    var y = insertMinNoOfOpeningAndClosingParenthesis(s);

    print('Case #$x: $y');
  }
}
