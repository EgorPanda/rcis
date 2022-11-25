import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'dart:math';

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
  final file = File('nums.txt');

  Stream<String> lines = file
      .openRead() //читает файл
      .transform(utf8.decoder) // Decode bytes to UTF-8.
      .transform(LineSplitter()); // Convert stream to individual lines.
  List<String> ai = []; // создаем пустой массив, который принимает строки
  await for (var line in lines) {
    // перебирает строки
    ai.add(line); // каждую линию добавляют как отделаьный элемент массива
  }
  String aip = '';
  List<int> a = transforming(ai[0]);
  print(a);
  for (int i = 0; i < a.length; i++) {
    if (a[i] % 2 == 0) {
      a.remove(a[i]);
    }
  }
  print(a);
  for (int i = 0; i < a.length; i++) {
    aip = aip + a[i].toString() + " ";
  }
  var sink = file.openWrite(); //  открываем файл outpu

  sink.write(aip);
  sink.close();
}