import 'dart:io';
import 'dart:math';

void main() {
  double sr = 0;
  double sum = 0;
  int pr = 1;
  int chisla_lenght = 0;
  bool c = true;

  while (c) {
    int a = int.parse(stdin.readLineSync()!);

    if (a == 0) {
      c = false;
    } else {
      chisla_lenght++;
      sum += a;
      pr *= a;

    }
  }
  sr = (sum / chisla_lenght);

  print('Summa= $sum');
  print('Proizwedenie= $pr');
  print('Srednee arifmet= $sr');
}