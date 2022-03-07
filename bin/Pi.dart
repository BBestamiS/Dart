import 'dart:math';

void main() {
 var inside = 0;
 var outside = 0;
 var xCoor;
 var yCoor;
 var numberOfSamples = 10000000;

 for (var i = 0; i < numberOfSamples; i++) {
 var rng = Random();

 var randomNum = rng.nextInt(2);
 var randomNum1 = rng.nextDouble();
 var randomNum2 = rng.nextInt(2);
 var randomNum3 = rng.nextDouble();
 if(randomNum == 0){
   xCoor = -randomNum1;
 }else{
   xCoor = randomNum1;
 }
 if(randomNum2 == 0){
   yCoor = -randomNum3;
 }else{
   yCoor = randomNum3;
 }
 if((xCoor * xCoor) + (yCoor * yCoor) < 1){
   inside ++;
 }
 else{
   outside ++;
 }
 }
 print("Number of dots inside = " + inside.toString());
 print("number of dots outside = " + outside.toString());
 print("Probability = " + (inside/numberOfSamples).toString());
 print("Pi = " + (4*(inside/numberOfSamples)).toString());


}

