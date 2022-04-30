List<int> getElements(int K, List<int> E) {
  if (E.every((element) => element == 0)) {
    return [0];
  }

  final sum = E.reduce(_add);

  final element = (E.map(_square).reduce(_add) - _square(sum)) / _add(sum, sum);

  return element % 1 == 0 ? [element.truncate()] : null;
}

int _add(int a, int b) => a + b;

int _square(int x) => x * x;
