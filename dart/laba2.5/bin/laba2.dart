import 'dart:io';
import 'dart:math';

Map<String,dynamic> vichislenie(Map<String,dynamic> temperature) {
for(String key in temperature.keys){
  double a = 0;
  for (int i=0; i<30;i++){
    a +=temperature[key][i];
  }
temperature[key] = a ~/30;
}

  return (temperature);
}

void main() { 
Map <String,dynamic> temperature = {
'Jan': List.generate(30, (i) => -20 + Random().nextInt(-10 - -20)),
'Feb': List.generate(30, (i) => -13 + Random().nextInt(-5 - -13)),
'Mart': List.generate(30, (i) => 1 + Random().nextInt(8 - -1)),
'Apr': List.generate(30, (i) => 5 + Random().nextInt(12 - -5)),
'May': List.generate(30, (i) => 10 + Random().nextInt(18 - 10)),
'Jun': List.generate(30, (i) => 17 + Random().nextInt(26 - 17)),
'Jul': List.generate(30, (i) => 21 + Random().nextInt(28 - 21)),
'Avg': List.generate(30, (i) => 18 + Random().nextInt(24 - 18)),
'Sen': List.generate(30, (i) => 12 + Random().nextInt(15 - 12)),
'Oct': List.generate(30, (i) => 0 + Random().nextInt(7 - 0)),
'Nov': List.generate(30, (i) => -10 + Random().nextInt(3 - -10)),
'Dec': List.generate(30, (i) => -19 + Random().nextInt(-11 - -19)),

};
print(vichislenie(temperature));
}