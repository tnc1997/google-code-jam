int calculateMaximumFun(List<int> F, List<int> P) {
  var max = 0;

  var initiators = <int>[];

  for (var i = 1; i <= P.length; i++) {
    if (!P.contains(i)) {
      initiators.add(i);
    }
  }

  for (final initiators in _permute(initiators)) {
    var current = 0;

    final triggered = <int>[];

    for (var module in initiators) {
      var max = 0;

      do {
        if (triggered.contains(module)) {
          break;
        }

        triggered.add(module);

        if (F[module - 1] > max) {
          max = F[module - 1];
        }

        module = P[module - 1];
      } while (module != 0);

      current += max;
    }

    if (current > max) {
      max = current;
    }
  }

  return max;
}

Iterable<List<T>> _permute<T>(List<T> permutation) sync* {
  yield permutation.toList();

  var c = List.filled(permutation.length, 0);
  var i = 1;

  while (i < permutation.length) {
    if (c[i] < i) {
      final k = i % 2 != 0 ? c[i] : 0;
      final t = permutation[i];

      permutation[i] = permutation[k];
      permutation[k] = t;

      c[i]++;
      i = 1;

      yield permutation.toList();
    } else {
      c[i] = 0;
      i++;
    }
  }
}
