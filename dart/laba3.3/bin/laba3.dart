import 'dart:io';
import 'dart:math';
import 'dart:collection';
import 'dart:async';
import 'dart:convert';

List<int> transforming(String bub_0) {
  // функция принимает стринг
  List<int> a = []; // создается пустой массив
  String bub = ""; // создается пустоая строка
  bool m = true; //бул м труе

  for (int i = 0; i < bub_0.length; i++) {
    //перебор строки
    while (bub_0[i] != " " && m) {
      //работает цикл пока текущий элемнт не пробел
      bub += bub_0[i];
      if (i < bub_0.length - 1) {
        //проверка есть ли следущее
        i++; //если есть то и++
      } else {
        m = false; //если нет то заканчиваем перебор
      }
    }
    a.add(int.parse(bub)); //добавляет число в массив
    bub = ""; //обнуляет временную переменную
  }
  return (a);
}

void main() async {
  // var list = [1, 9, 6, 7, 4, 8, 5];
  final file = File('input.txt');

  Stream<String> lines = file
      .openRead() //читает файл
      .transform(utf8.decoder) // Decode bytes to UTF-8.
      .transform(LineSplitter()); // Convert stream to individual lines.
  List<String> ai = []; // создаем пустой массив, который принимает строки
  await for (var line in lines) {
    // перебирает строки
    ai.add(line); // каждую линию добавляют как отделаьный элемент массива
  }
  var list = transforming(ai[0]);
  int index1 = 0;
  int index2 = 0;
  int volume = 0;
  for (int i = 0; i < list.length - 1; i++) {
    for (int j = 1 + i; j < list.length; j++) {
      int visot = list[i] < list[j] ? list[i] : list[j];
      int lenght = j - i;
      if (volume < visot * lenght) {
        volume = visot * lenght;
      }
    }
  }
  print(volume);
}