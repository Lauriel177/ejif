int getUnit( int value ){
  double t1 = value / 10;
  int v1 = value - t1.toInt() * 10;
  return v1;
}

void main (){

  var answer = 345;
  int a1 = getUnit(answer);  //個位數
  double tempA = answer / 10;
  int a2 = getUnit(tempA.toInt());  //十位數
  double tempB = tempA / 10;
  int a3 = getUnit(tempB.toInt());//百位數

  // print("$a1 $a2 $tempA $tempB $a3");

  var guess = 234;
  int g1 = getUnit(guess);  //個位數
  double tempC = guess / 10;
  int g2 = getUnit(tempC.toInt());  //十位數
  double tempD = tempC / 10;
  int g3 = getUnit(tempD.toInt()); //百位數

  // print("$g1 $g2 $g3 $tempC $tempD");

  var a = 0;
  var b = 0;


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


  print("$a A $b B");
}