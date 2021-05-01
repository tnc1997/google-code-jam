int calculateNextRoaringYear(int Y) {
  for (var y = Y + 1;; y++) {
    if (_isRoaringYear(y)) {
      return y;
    }
  }
}

bool _isConsecutiveSequentialList(List<String> list) {
  for (var i = 1; i < list.length; i++) {
    if (list[i].startsWith('0') || list[i - 1].startsWith('0')) {
      return false;
    }

    if ((int.parse(list[i]) - int.parse(list[i - 1])) != 1) {
      return false;
    }
  }

  return true;
}

bool _isRoaringYear(int y) {
  var splits = _split(y.toString()).where((element) => element.length > 1);

  for (var split in splits) {
    if (_isConsecutiveSequentialList(split)) {
      return true;
    }
  }

  return false;
}

List<List<String>> _split(
  String right, [
  List<List<String>> result,
  List<String> left,
]) {
  result ??= [];
  left ??= [];

  result.add([...left, right]);

  if (right.length > 1) {
    for (var i = 1; i < right.length; i++) {
      _split(right.substring(i), result, [...left, right.substring(0, i)]);
    }
  }

  return result;
}
