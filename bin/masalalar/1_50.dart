//1-masala
import 'dart:io';

import 'dart:math';

import 'package:date_format/date_format.dart';

int add(int a, int b) {
  return a + b;
}

//2-masala
String kattaKichik(int a, int b) {
  String result = '';
  if (a == b) {
    result = '=';
  } else if (a > b) {
    result = '>';
  } else if (a < b) {
    result = '<';
  }
  return result;
}

//3-masala
int aPlusB(int a, int b) {
  return a + b;
}

//4-masala
int multiply(int a, int b) {
  return a * b;
}

//5-masala
int kopaytma(int x) {
  int y;
  List<int> numbers = [];
  int count = 0;

  try {
    if ((x > pow(-10, 9) && x < pow(10, 9)) && x > 0) {
      y = (-1) * x;
      for (int i = y; i <= x; i++) {
        numbers.add(i);
      }
    } else if (x < 0) {
      y = (-1) * x;
      for (int i = x; i <= y; i++) {
        numbers.add(i);
      }
    }
  } catch (error) {
    print("Error number $error");
  }
  for (int i = 0; i < numbers.length; i++) {
    for (int j = 0; j < i; j++) {
      if (numbers[j] < numbers[j] || numbers[j] * numbers[i] == x) {
        count++;
      }
    }
  }

  return count;
}

//6-masala
void dayOfProgrammers(int year) {
  int oy = 9;
  int kun;
  if (year % 400 == 0 || (year % 4 == 0 && year % 100 != 0)) {
    kun = 12;
  } else {
    kun = 13;
  }
  print(formatDate(DateTime(year, oy, kun), [dd, '/', mm, '/', yyyy]));
}

//7-masala
void bayroq() {}
//8-masala
void maxAndMinSum(var line) {
  dynamic temp0;
  List<String> temp;
  List<int> numbers;
  int sum = 0;
  int maxYigindi;
  int minYigindi;

  temp0 = line.toString().trim().split(' ');
  temp = [...temp0];
  numbers = temp.map(int.parse).toList();
  for (var value in numbers) {
    sum += value;
  }
  maxYigindi = sum - numbers.reduce(max);
  minYigindi = sum - numbers.reduce(min);

  print("Maksimum yigindi : $maxYigindi");
  print("Minimum yigindi: $minYigindi");
}

//9-masala
void uniqueNumber(List list) {
  List<int> temp = [];
  print(list);
  for (int i = 0; i < list.length; i++) {
    for (int j = 0; j < list.length; j++) {
      if (i == j) {
        continue;
      } else if (list[i] == list[j]) {
        temp.add(list[i]);
        //print(i);
      }
    }
  }
  list.removeWhere((element) => temp.contains(element));
  print(list);
}

//10-masala
String newYearGift(int price, var line) {
  int sum = 0;
  List<int> list;
  list = line.toString().trim().split(' ').map(int.parse).toList();
  for (var value in list) {
    sum += value;
  }
  if (sum >= price) {
    return 'Yes';
  } else {
    return 'No';
  }
}

//11-masala
int secondMax(List<int> numbers) {
  numbers.sort();
  print(numbers);
  return numbers[numbers.length - 2];
}

//12-masala
String tubSon1(int n) {
  bool isTub;
  List<int> list = [];
  List temp = [];
  for (int i = 1; i <= n; i++) {
    list.add(i);
  }
  print(list);
  for (int i = 2; i <= n; i++) {
    isTub = true;
    for (int j = 2; j < i; j++) {
      if (i % j == 0) {
        isTub = false;
        break;
      }
    }
    if (isTub) {
      temp.add(i);
    }
  }
  print(temp);
  if (temp.length % 2 == 1) {
    return 'Ali';
  }
  return 'Bobur';
}

//13-masala
void virusN1(int days, int peopleToMeet) {
  if (days >= 0) {
    if (days == 0) {
      print("1");
    } else if (days == 1) {
      print(peopleToMeet + 1);
    } else if (days >= 2) {
      print(pow((peopleToMeet + 1), (days - 1)));
    }
  } else if (days < 0) {
    print("error");
  }
}

//14-masala
void virusN2(int days, int peopleToMeet) {
  if (days >= 0) {
    if (days == 0) {
      print(peopleToMeet + 1);
    } else if (days >= 1) {
      print(pow((peopleToMeet + 1), (days)));
    }
  } else if (days < 0) {
    print("error");
  }
}

//15-masala
void virusN3(int days, int peopleToMeet) {}

//16-masala
void naturalSon(int n) {
  List<Map<int, String>> royhat = [
    {1: 'bir'},
    {2: 'ikki'},
    {3: 'uch'},
    {4: "to’rt"},
    {5: 'besh'},
    {6: 'olti'},
    {7: 'yetti'},
    {8: 'sakkiz'},
    {9: "to’qqiz"},
    {10: "o’n"},
    {20: 'yigirma'},
    {30: "o’ttiz"},
    {40: "qirq"},
    {50: 'ellik'},
    {60: 'oltmish'},
    {70: 'yetmish'},
    {80: 'sakson'},
    {90: "to’qson"},
    {100: 'yuz'},
    {1000: 'ming'},
    {1000000: 'million'},
    {1000000000: 'milliard'},
  ];
}

//17-masala
void garoyibSon(int n) {}

//18-masala
void magicBox(){

}

//19-masala
void maskN1(int n, int k){
  print(k~/n);
}

//20-masala
void maskN2(int n, int k){
  print(k%n);
}

//21-masala
void desks(var line){
  List<int> list;
  int sum = 0;
  list = line.toString().trim().split(' ').map(int.parse).toList();
  for (var element in list) {
    sum += element;
  }
  if (sum % 2 == 0) {
    print(sum ~/ 2);
  } else {
    print((sum + 1) / 2);
  }
}

//22-masala
void onliklar(int n){
  print((n - (n % 10)) ~/ 10);
}

//23-masala
void lastDigit(int n){
  print(n % 10);
}

//24-masala
void vaqtlarOraligi(var line1, var line2){
  int sum1,sum2;
  List<int> list1;
  list1 = line1.toString().trim().split(' ').map(int.parse).toList();
  List<int> list2;
  list2 = line2.toString().trim().split(' ').map(int.parse).toList();
  sum1 = list1[0]*3600 + list1[1]*60 + list1[2];
  sum2 = list2[0]*3600 + list2[1]*60 + list2[2];
  print(sum2-sum1);
}

//25-masala
void elektronSoat(int clock){
  List<int> time = [0, 0, 0];
  time[0] = clock ~/ 3600;
  time[2] = clock % 60;
  time[1] = clock - (time[0] * 3600 + time[2]);
  if (time[0] > 24) {
    time[0] -= 24;
  }
  if (time[1] == 60) {
    time[1] = 1;
  }

  print(time);

}
//26-masala
void ketmaket(int n){
  int sum = 0;
  int t;
  for (int i = 1; i <= n; i++) {
    t = 2 * i - 1;
    sum += t;
  }

  print(sum);
}
//27-masala
//28-masala

void nuqta(var line){
  double distance = 0;
  List<int> list;
  list  = line.toString().trim().split(' ').map(int.parse).toList();
  int? a;
  a = pow((list[2] - list[0]), 2) as int?;
  int? b;
  b = pow((list[3] - list[1]), 2) as int?;

  distance = sqrt(a! + b!);

  print("${list[2] + distance} : ${list[3] + distance}");

}
//29-masala
void juftBoluchilar(int n){
  int count = 0;
  int divide = 2;
  for (int i = 1; i <= n + 1; i++) {
    if (n >= divide) {
      if (n % divide == 0) {
        count++;

      }

      divide += 2;
      if (divide == n) {
        count++;
        break;
      }
    } else {
      continue;
    }
  }
  print(count);
}

//30-masala
void nine(int n){
  int nine;
  nine = 9;

  bool divide;
  divide = true;

  while (divide) {
    if (nine % n == 0) {
      print("$nine % $n");
      divide = false;
      print(nine);
      break;
    }
    nine += 9;
  }
}

//39-masala
void homeNumber(int number){
  for(int i = 1; i <= number; i++) {
    if((number-i)%100 == i){
      print(number - i);
    }
  }
}
//40-masala
//41-masala
//42-masala

//43-masala
void changePosition(var line){
  List<int> list;
  list = line.toString().trim().split(' ').map(int.parse).toList();
  print(list.reversed);

}

//44-masala
void kabisaYili(int year){
  if (year % 400 == 0 || (year % 4 == 0 && year % 100 != 0)){
    print('Kabisa yili');
  } else {
    print('Kabisa yili emas');
  }
}

//45-masala
void uchburchakliSon(int x){
  if(x>=0){
    int sum = 0;
    for(int i=0; i<=x;i++){
      sum += i;
    }
    print(sum);
  }else{
    print('0 yoki undan katta son kiriting!');
  }
}

//46-masala
//47-masala
//48-masala
void floydUchburchagi(int x){
  if(x>=1 && x<=50){
    int i,j,k=1;
    for (i = 1; i <= x; i++) {
      for (j = 1; j <= i; j++) {
        stdout.write('$k ');
        k++;
      }
      stdout.write('\n');
    }
  }else{
    print('1 va 50 oralig\'ida son kiriting: ');
  }
}
//49-masala
void uchburchakliSon2(int x){}
//50-masala
