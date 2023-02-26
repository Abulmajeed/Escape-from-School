import 'dart:io';

main() {
  gameTitle();
  levelOneTitle();
}

makeSpace(int spaces) {
  for (int index = 0; index < spaces; index++) {
    print(" ");
  }
}

gameTitle() {
  makeSpace(2);
  print("###### Escape School ######");
  makeSpace(2);
}

levelOneTitle() {
  print("level 1");
  printToday();
  print("You are sitting on your desk,");
  print("and the teacher left the class,");
  print("with on of your class mates.");
  levelOne();
}

levelOne() {
  print("do your want to 1#(escape), 2#(fight), 3#(cheet):");
  String option1 = stdin.readLineSync()!;
  switch (option1) {
    case "escape":
    case "1":
      win();
      levelTwo();
      break;
    case "fight":
    case "2":
      lose();
      break;
    case "cheet":
    case "3":
      lose();
      break;
    case "q":
    case "Q":
      quitGame();
      break;
    default:
      makeSpace(2);
      levelOne();
      break;
  }

  makeSpace(2);
}

levelTwo() {
  print("level 2");
  print("Now you must choose 1# Back to the school  , 2# go to the street");
  String option1 = stdin.readLineSync()!;
  
  makeSpace(2);
  switch (option1) {
    case "school":
    case "1":
    lose();
      break;
    case "street":
    case "2":
    win();
    levelThree();
      break;
    
    case "q":
    case "Q":
      quitGame();
      break;
    default:
      makeSpace(2);
      levelTwo();
      break;
  }

  makeSpace(2);
  
}

levelThree() {
   print("level 3");
  print("now we want chosse between 1# go with bad frinds 2# draivr a car #3 go home  ");
  makeSpace(2);
  String option1 = stdin.readLineSync()!;
  switch (option1) {
    case "bad frinds":
    case "1":
    lose();
    break;
    case "draive":
    case "2":
    lose();
      break;
    case "home":
    case "3":
    win();
    gameOver();

      break;
    

    
    case "q":
    case "Q":
      quitGame();
      break;
    default:
      makeSpace(2);
      levelTwo();
      break;
  }
  
  
  
}

endGame() {
  makeSpace(2);
  print("######### The End #########");
  makeSpace(2);
}

printToday() {
  print(
      "${DateTime.now().day} / ${DateTime.now().month} / ${DateTime.now().year}");
}

win() {
  makeSpace(1);
  print("🎉🎉🎉🎉🎉🎉🎉🎉");
  makeSpace(1);
}

lose() {
  makeSpace(1);
  print("🏴‍☠️🏴‍☠️🏴‍☠️🏴‍☠️🏴‍☠️🏴‍☠️🏴‍☠️");
  makeSpace(1);
  endGame();
}

quitGame() {
  endGame();
  exit(0);
}
 
gameOver() {
  print("You finsh the game See you in next games");
  endGame();
}
 
 //tesssst!!!