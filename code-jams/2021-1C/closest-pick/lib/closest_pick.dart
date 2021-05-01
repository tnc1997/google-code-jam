double calculateMaximumProbability(int K, List<int> P) {
  var y = 0.0;

  for (var i = 1; i <= K; i++) {
    for (var j = i; j <= K; j++) {
      var a = 0;

      for (var c = 1; c <= K; c++) {
        if (_doTicketsWin(i, j, c, P)) {
          a += 1;
        }
      }

      if (a / K > y) {
        y = a / K;
      }
    }
  }

  return y;
}

bool _doTicketsWin(int i, int j, int c, List<int> P) {
  var p = P.reduce((value, element) {
    return (element - c).abs() < (value - c).abs() ? element : value;
  });

  return (i - c).abs() < (p - c).abs() || (j - c).abs() < (p - c).abs();
}
