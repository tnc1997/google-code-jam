import 'package:reversort/reversort.dart';

List<int> findListOfDistinctIntegers(int N, int C) {
  for (var L in _generatePermutations(
    List.generate(N, (index) => index + 1),
    N,
  )) {
    if (calculateTotalCost([...L]) == C) {
      return L;
    }
  }

  return null;
}

Iterable<List<int>> _generatePermutations(
  List<int> list,
  int n, [
  int start = 0,
]) sync* {
  for (var i = start; i < list.length; i++) {
    if (n > 1) {
      _swap(list, start, i);

      for (var permutation in _generatePermutations(
        list,
        n - 1,
        start + 1,
      )) {
        yield <int>[list[start], ...permutation];
      }

      _swap(list, start, i);
    } else {
      yield <int>[list[i]];
    }
  }
}

void _swap(List<int> list, int i, int j) {
  final temp = list[i];
  list[i] = list[j];
  list[j] = temp;
}
