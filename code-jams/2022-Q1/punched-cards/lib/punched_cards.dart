String drawPunchedCardAsciiArt(int R, int C) {
  final buffer = StringBuffer();

  for (var i = 0; i < (R * 2) + 1; i++) {
    for (var j = 0; j < (C * 2) + 1; j++) {
      if ((i == 0 || i == 1) && (j == 0 || j == 1)) {
        buffer.write('.');
      } else if (i % 2 == 0 && j % 2 == 0) {
        buffer.write('+');
      } else if (i % 2 == 0 && j % 2 == 1) {
        buffer.write('-');
      } else if (i % 2 == 1 && j % 2 == 0) {
        buffer.write('|');
      } else {
        buffer.write('.');
      }
    }

    if (i < R * 2) {
      buffer.writeln();
    }
  }

  return buffer.toString();
}
