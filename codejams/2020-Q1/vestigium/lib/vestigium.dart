import 'dart:collection';

import 'package:tuple/tuple.dart';

Tuple3<int, int, int> computeTraceAndCheckIfNaturalLatinSquare(
  List<List<int>> matrix,
) {
  var c = 0;
  var k = 0;
  var r = 0;

  for (var i = 0; i < matrix.length; i++) {
    k += matrix[i][i];

    var column = HashSet<int>();
    var row = HashSet<int>();

    column.addAll(matrix.map((e) => e[i]));
    row.addAll(matrix[i]);

    if (column.length != matrix.length) c += 1;
    if (row.length != matrix.length) r += 1;
  }

  return Tuple3(k, r, c);
}
