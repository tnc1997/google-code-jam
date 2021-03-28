import 'dart:io';

Future<void> main(List<String> arguments) async {
  final TNQ = stdin.readLineSync().split(' ').map(int.parse).toList();

  for (var x = 1; x <= TNQ[0]; x++) {
    final list = List.generate(TNQ[1], (index) => index + 1);

    for (var a = 0; a < list.length - 2; a++) {
      for (var b = a + 1; b < list.length - 1; b++) {
        for (var c = b + 1; c < list.length; c++) {
          final i = list[a];
          final j = list[b];
          final k = list[c];
          stdout.writeln('$i $j $k');
          await stdout.flush();
          final L = int.parse(stdin.readLineSync());
          if (L == i) {
            final temp = list[a];
            list[a] = list[b];
            list[b] = temp;
          } else if (L == k) {
            final temp = list[b];
            list[b] = list[c];
            list[c] = temp;
          }
        }
      }
    }

    stdout.writeln(list.join(' '));
    await stdout.flush();

    if (int.parse(stdin.readLineSync()) != 1) {
      throw Exception();
    }
  }
}
