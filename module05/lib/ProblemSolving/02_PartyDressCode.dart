import 'dart:io';

void main(){
  String dressCode = stdin.readLineSync()!;
  int temperature = int.parse(stdin.readLineSync()!);

  switch(dressCode){
    case 'casual':
      if(temperature >= 15 && temperature <= 25){
        print('Jeans and a light jacket.');
      }else{
        print('Wear what you\'re comfortable in.');
      }
      break;

      case 'festive':
      if(temperature >= 25){
        print('Colorful dress and sandals.');
      }else{
        print('Wear what you\'re comfortable in.');
      }
      break;

      default:
        print('Wear what you\'re comfortable in.');
  }
}