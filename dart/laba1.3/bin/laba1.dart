import 'dart:io';
import 'dart:math';

void main() {
  List<String> list = [];

  bool a = true;

  while (a) {
    String b = stdin.readLineSync()!;
    if (b != " " && b != "") {
      list.add(b);
    } else {
      a = false;
    }
  }

  int min = int.parse(list[0]);
  int min_lenght = list[0].length;
  int max = int.parse(list[0]);
  int max_lenght = list[0].length;

  for (int i = 0; i < list.length; i++) {
    if (min_lenght > list[i].length) {
      min = int.parse(list[i]);
      min_lenght = list[i].length;
    } else if (max_lenght < list[i].length) {
      max = int.parse(list[i]);
      max_lenght = list[i].length;
    }
  }
  print(min);
  print(max);
}