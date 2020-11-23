import 'dart:io';

void main(){
  var userChoice;
  var compChoices = ["papel", "gunting", "bato"];
  var userScore = 0;
  var pcScore = 0;
  var validSelection = false;

  print("Hello there! Welcome to the popular game \"Papel, Gunting, Bato!\"");

  do{
    
    print("Please select the weapon of you choice: papel, gunting, or bato");
    userChoice = stdin.readLineSync();

    if((userChoice.compareTo(compChoices[0]) == 0) || (userChoice.compareTo(compChoices[1]) == 0) || (userChoice.compareTo(compChoices[2]) == 0))
    {
      print("Good choice.");
      validSelection = true;
    }

    else{
      print("Invalid choice.");
      validSelection = false;
    }

  }while(validSelection == false);
  
  
}
