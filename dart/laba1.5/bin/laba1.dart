import 'dart:io';
import 'dart:math';

void main() {
  String str = stdin.readLineSync()!;
  int quantity_word = 1;
  bool a = false;
  for (int i = 0; i < str.length; i++) {
    if (str[i] != " ") {
      a = true;
    } else if (str[i] == " " && a) {
      quantity_word++;
    }
  }

  if (a) {
    str = "start" + str + "end";
    print(quantity_word);
    print(str);
  } else {
    print("нет слов");
  }
}