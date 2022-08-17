import 'dart:io';

class BHGame {
  String? input;
  BHGame(this.input);

  start() {
    if (input != null) {
      String? inputS = "$input";
      int rr = condition(inputS);
      if (inputS[0] != "0" && rr != 0
          // inputS[0] != inputS[1] &&
          // inputS[0] != inputS[2] &&
          // inputS[0] != inputS[3] &&
          // inputS[1] != inputS[2] &&
          // inputS[1] != inputS[0] &&
          // inputS[1] != inputS[3] &&
          // inputS[2] != inputS[3] &&
          // inputS[2] != inputS[0] &&
          // inputS[2] != inputS[1] &&
          // inputS[3] != inputS[0] &&
          // inputS[3] != inputS[1] &&
          // inputS[3] != inputS[2]
          ) {
        int? parsedInput = int.tryParse(inputS);
        if (parsedInput != null) {
          var r = blackHoleNumber(parsedInput);
          print(r);
          while (r != 6174) {
            r = blackHoleNumber(r);
            print(r);
          }
        } else {
          print("請輸入純數字");
        }
      } else {
        print("請輸入純數字，並且四位不相同、非 0 開頭的數字");
      }
    } else {
      print("Lau Only");
    }
  }

  int getUnit(int value) {
    double t1 = value / 10;
    int v1 = value - t1.toInt() * 10;
    return v1;
  }

  int blackHoleNumber(int number) {
    int v1 = getUnit(number);

    double t2 = number / 10;
    int number2 = t2.toInt();
    int v2 = getUnit(number2);

    double t3 = number2 / 10;
    int number3 = t3.toInt();
    int v3 = getUnit(number3);

    double t4 = number3 / 10;
    int number4 = t4.toInt();
    int v4 = getUnit(number4);

    var numbers = [v1, v2, v3, v4];
    numbers.sort();

    int sum = 0;
    for (int i = 0; i < 4; i++) {
      sum = sum * 10 + numbers[i];
    }

    int maxSum = 0;
    for (int i = 3; i > -1; i--) {
      maxSum = maxSum * 10 + numbers[i];
    }

    int sumAll = maxSum - sum;
    return sumAll;
  }

  condition(String input) {
    int countI = 0;

    for (int i = 1; i < 4; i++) {
      if (input[0] == input[i]) {
        countI = countI + 1;
        if (countI == 3) {
          return 0;
        }
      } else {
        for (int j = 0; j < input.length; j++) {
          for (int k = j + 1; k < input.length; k++) {
            if (input[j] == input[k]) {
              return 0;
            }else{
              return 1;
            }
          }
        }
      }
    }
  }
}

void main() {
  BHGame bhGame = BHGame(stdin.readLineSync());
  bhGame.start();
}
