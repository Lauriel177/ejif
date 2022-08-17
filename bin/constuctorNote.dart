//Objective

//1.Default Constructor
//2.Parameterized Constructor
//3.Named Constructor
//4.Constant Constructor

//
// String input = "3456";
//
// String inputA = input;
// String inputB = input;
//
// int countI = 0;
// int countJ = 0;
//
// for ( int i = 1; i < 4; i++ ) {
// if ( input[0] == input[i] ) {
// countI = countI + 1;
// if ( countI == 3 ) {
// print("errA:請輸入四個不同的數字");
// break;
// }
// }else{
// for ( var i = 0; i < inputA.length; i++ ) {
// for ( var j = 0; j < inputB.length; j++ ) {
// if ( inputB[j] == inputA[i] ) {
// countJ = countJ + 1 ;
// }
// }
// }
// if( countJ == 6 || countJ > 6 ){
// print("errB:請輸入四個不同的數字");
// }
// print(countJ);
// }
// }

// for(int j = 0; j < input.length; j++){
// int r = input.indexOf(input[j]);
// print(r);
// }

void main() {
  String input = "6307";
  int countI = 0;
  for (int i = 1; i < 4; i++) {
    if (input[0] == input[i]) {
      countI = countI + 1;
      if (countI == 3) {
        print("err:請輸入四個不同的數字");
      }
    } else {
      int countJ = 0;
      for (int j = 0; j < input.length; j++) {
        for (int k = j + 1; k < input.length; k++) {
          if (input[j] == input[k]) {
            countJ = countJ + 1;
            break;
          }
          print("err");
          break;
        }
      }
    }
  }

}
