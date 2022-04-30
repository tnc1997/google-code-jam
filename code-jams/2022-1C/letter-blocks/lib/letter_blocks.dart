String getMegaTower(List<String> S) {
  for (final permutation in _permute(S)) {
    final megaTower = permutation.join();

    if (_isContiguous(megaTower)) {
      return megaTower;
    }
  }

  return null;
}

bool _isContiguous(String string) {
  for (var i = 0; i < string.length; i++) {
    var k = true;

    for (var j = i + 1; j < string.length; j++) {
      if (k) {
        if (string[i] != string[j]) {
          k = false;
        }

        continue;
      } else {
        if (string[i] == string[j]) {
          return false;
        }
      }
    }
  }

  return true;
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
