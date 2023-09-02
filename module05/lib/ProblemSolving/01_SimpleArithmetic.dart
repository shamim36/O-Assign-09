import 'dart:io';

void main(){
  List<String> num = stdin.readLineSync()!.split(' ');
  int a = int.parse(num[0]);
  int b = int.parse(num[2]);

  switch (num[1]){
    case '+':
      print(add(a, b));
      break;
    case '-':
      print(subtract(a, b));
      break;
    case '*':
      print(multiply(a, b));
      break;
    case '/':
      if(b != 0) {
        print(divide(a, b).toInt());
      }
      break;
    default:
      print('Invalid operator');
  }
}

int add(int a, int b){
  return a + b;
}

int subtract(int a, int b){
  return a - b;
}

int multiply(int a, int b){
  return a * b;
}

double divide(int a, int b){
  return a / b;
}