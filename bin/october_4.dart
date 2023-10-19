import 'dart:io';
import 'dart:math';

void main() {
  passwordGenerator();
}

void passwordGenerator() {
  String answer = '';
  do {
    String str = '1234567890rtuhgfvbn';
    String password = '';
    print('Из скольки символов должен состоять пароль? \n4\n6\n8\n10\n12');
    int passLength = int.tryParse(stdin.readLineSync() ?? '') ?? 4;
    if (passLength != 4 &&
        passLength != 6 &&
        passLength != 8 &&
        passLength != 10 &&
        passLength != 12) {
      print('Не правильная длина пароля');
    } else {
      for (int i = 1; i <= passLength; i++) {
        int randomIndex = Random().nextInt(str.length);
        password += str[randomIndex];
      }
      print(password);
      print('Подобрать другой пароль? Y/N');
      answer = stdin.readLineSync() ?? '';
    }
  } while (answer.toUpperCase() != 'N');
}
