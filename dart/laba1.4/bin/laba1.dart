import 'dart:io';
import 'dart:math';

List<int> zapol(int min, int max) {
  List<int> ai =
      List.generate(10, (index) => (Random().nextInt(max - min) + min));

  return (ai);
}

void main() {
  print("введите мин");
  int min = int.parse(stdin.readLineSync()!);
  print("введите мах");
  int max = int.parse(stdin.readLineSync()!);

  List ai = zapol(min, max);

  for (int i = 0; i < ai.length; i++) {
    stdout.write("${ai[i]} ");
  }
}