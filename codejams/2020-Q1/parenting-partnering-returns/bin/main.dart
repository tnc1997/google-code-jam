import 'dart:io';

import 'package:parenting_partnering_returns/parenting_partnering_returns.dart';

void main(List<String> arguments) {
  var t = int.parse(stdin.readLineSync());

  for (var x = 1; x <= t; x++) {
    var n = int.parse(stdin.readLineSync());

    var activities = List<Activity>(n);

    for (var i = 0; i < n; i++) {
      var se = stdin
          .readLineSync()
          .split(' ')
          .map((input) => int.parse(input))
          .toList();

      activities[i] = Activity(se[0], se[1]);
    }

    var y = findAnySchedule(activities);

    print('Case #$x: $y');
  }
}
