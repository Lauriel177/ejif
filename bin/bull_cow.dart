import 'dart:io';
import 'dart:math';

class ABGame3{
  //default
  int answer;
  int maxTimes;
  ABGame3(
      this.answer,
      this.maxTimes
      );
  start(){
    for ( int i = 0; i < maxTimes; i++) {
      String? input = stdin.readLineSync();
      if (input != null && input[0] != "0" ) {
        int? parsedInput = int.tryParse(input); //tryParse是轉成數字int

        if (parsedInput != null){
          String parsedInputS = "$parsedInput";
          String answerS = "$answer";
          var r = playGame( parsedInputS, answerS );
          //在同個class中可直接使用自己的function
          if( r == "Win" ){
            break;
          }
          print(r);
        }else{
        print("請輸入純數字");
        }
      }else{
      print("請輸入有效字");
      }
    }
    print("End Game");

  }
  String playGame(String parsedInputS,String answerS){
    // //假設傳入的string
    // String answer = "345";
    // String guess = "438";

    //現在需要以字串取值
    var a1 = answerS[2];  //5
    var a2 = answerS[1];  //4
    var a3 = answerS[0];  //3

    var g1 = parsedInputS[2];  //8
    var g2 = parsedInputS[1];  //3
    var g3 = parsedInputS[0];  //4

    int a = 0;
    int b = 0;

    //以下為Ａ

    if ( a1 == g1 ){
      a = a + 1;
    }
    if ( a2 == g2 ){
      a = a + 1;
    }
    if ( a3 == g3 ){
      a = a + 1;
    }


    //以下為Ｂ

    if ( a1 == g2 ){
      b = b + 1;
    }

    if ( a1 == g3 ){
      b = b + 1;
    }

    if( a2 == g1 ){
      b = b + 1;
    }

    if( a2 == g3 ){
      b = b + 1;
    }

    if( a3 == g1 ){
      b = b + 1;
    }

    if( a3 == g2 ){
      b = b + 1;
    }

    if( a == 3 ){
      return("Yes");
    }

    return("$a A $b B $answerS");
  //  先return答案確保演算法無誤



  }
}

void main(){
  ABGame3 abGame = ABGame3(Random().nextInt(1000), 7);
  abGame.start();
}


