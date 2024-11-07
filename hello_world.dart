import 'dart:io';

void main() {
  //Question 1
  int num = 8;
  double num2 = 3.5;
  String areaCode = "15";
  bool isPlenty = true;
  List<String> fruits = <String>['Mango', 'Orange', 'Pawpaw'];
  String age = '25';

  //Question 2
  // ignore: unused_element
  int? typeConvert(String area) {
    int areaCode1 = int.tryParse(areaCode) as int;
    return areaCode1;
  }

  //Question 3
  // ignore: unused_element
  dynamic convertAndDisplay() {
    int nuAge = int.tryParse(age) as int;
    double flotAge = nuAge.toDouble();

    print(flotAge);
    // return flotAge;

    //Question 4

    dynamic newNum;

    if (newNum > 0) {
      print('You have entered a positive value !');
    } else if (newNum < 0) {
      print('You have entered a negative number !');
    } else if (newNum == 0) {
      print('You have entered zero !');
    }
  }

  int reqAge = 18;

  if (reqAge >= 18) {
    print('Eligibity confirmed !');
  } else if (reqAge < 18) {
    print('Eligibility declined !');
  }

  print('please enter preffered day');
  String? Day = stdin.readLineSync();

  switch (Day) {
    case == 1:
      print('Monday');
      break;
    case == 2:
      print('Tuesday');
      break;
    case == 3:
      print('Wednesday');
      break;
    case == 4:
      print('Thursday');
      break;
    case == 5:
      print('Friday');
      break;
  }

  for (int n = 1; n <= 10; n++) {
    print(n);
  }

  int daymon = 10;
  while (daymon >= 1) {
    print(daymon);
    daymon--;
  }

  int numb = 1;
  do {
    print(numb);
    numb++;
  } while (numb <= 5);

  //Question 5

  List valueChecker = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    50,
    83,
    99,
    100,
    105,
    110
  ];
  for (int i in valueChecker) {
    print(i);
    if (i % 2 == 0) {
      print('Attention! $i is an even number');
    } else {
      print('Attention! $i is an odd number');
    }
    switch (i) {
      case <= 10:
        print('small');
        break;
      case > 10 && <= 100:
        print('medium');
        break;
      default:
        print('large');
    }
  }
}
