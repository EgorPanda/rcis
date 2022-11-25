import 'dart:io';
import 'dart:math';

void main() {
  var arr = [];
  for (int i = 0; i < 10; i++) {
    arr.add(Random().nextInt(10));
  }
  print(arr);

  int min_index = 0;
  int min = arr.first;
  for (int i = 0; i < arr.length; i++) {
    if (min > arr[i]) {
      min = arr[i];
      min_index = i;
    }
  }
  print("минимальный элемент $min");
  print("Индект $min_index");
}
