List<int> calculateColor(List<List<int>> i) {
  final mins = <int>[];
  var sum = 0;

  for (var j = 0; j < 4; j++) {
    int min;

    for (var k = 0; k < i.length; k++) {
      if (min == null || i[k][j] < min) {
        min = i[k][j];
      }
    }

    if (sum + min >= 1000000) {
      mins.add(1000000 - sum);
      sum = 1000000;
    } else {
      mins.add(min);
      sum += min;
    }
  }

  if (sum == 1000000) {
    return mins;
  } else {
    return null;
  }
}
