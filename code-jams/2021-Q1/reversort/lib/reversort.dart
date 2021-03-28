int calculateTotalCost(List<int> L) {
  var y = 0;

  for (var i = 0; i < L.length - 1; i++) {
    num a = double.infinity;
    int j;

    for (var b = i; b < L.length; b++) {
      final c = L[b];
      if (c < a) {
        a = c;
        j = b;
      }
    }

    y += j - i + 1;

    for (var d = i, e = j; d < e; d++, e--) {
      final f = L[d];
      L[d] = L[e];
      L[e] = f;
    }
  }

  return y;
}
