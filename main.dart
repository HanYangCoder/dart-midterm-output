import 'dart:io';
import 'dart:math';

Random random = new Random();

var userScore = 0;
var compScore = 0;
var scoreLimitChoices = [3, 5, 11];
dynamic scoreLimit;

void main(){
  var userChoice;
  var compChoices = ["papel", "gunting", "bato"];
  var validSelection = false;
  int compGuess;
  bool limitPass = false;
  bool reachedScoreLimit = false;

  print("Hello there! Welcome to the popular game \"Papel, Gunting, Bato!\"");

  do{
    print("Please select a score limit (3, 5, 11)");
    scoreLimit = stdin.readLineSync();
    scoreLimit = int.parse(scoreLimit);

    print("$scoreLimit");


    for(int i=0; i<scoreLimitChoices.length; i++)
    {
      if(scoreLimit == scoreLimitChoices[i])
      {
        limitPass = true;
        break;
      }
    }

    if(!limitPass)
    {
      print("Score limit not valid!");
    }

  }while(!limitPass);
    
  while(!reachedScoreLimit){
    do{
    
    print("Please select the weapon of you choice: papel, gunting, or bato");
    userChoice = stdin.readLineSync();

    userChoice = userChoice?.toLowerCase();

    if((userChoice.compareTo(compChoices[0]) == 0) || (userChoice.compareTo(compChoices[1]) == 0) || (userChoice.compareTo(compChoices[2]) == 0))
    {
      compGuess = random.nextInt(2);

      compareChoices(userChoice, compChoices[compGuess]);
      validSelection = true;
    }

    else{
      print("Invalid choice.");
      validSelection = false;
    }

    }while(validSelection == false);

    if(userScore == scoreLimit)
    {
      reachedScoreLimit = true;
    }
    else if(compScore == scoreLimit)
    {
      reachedScoreLimit = true;
    }
  }

  if(userScore > compScore)
  {
    print("You win the game! Good game, well played.");
  }

  else{
    print("I win the game! I'm better than you!");
  }

}

void compareChoices(String userChoice, String compChoice){
  
  print("Your choice is $userChoice and my choice is $compChoice");
  
  if(userChoice == compChoice)
  {
    print("It's a tie!");
  }
  else if(userChoice == "papel" && compChoice == "bato")
  {
    print("You win!");
    userScore++;
  }
  else if(userChoice == "bato" && compChoice == "gunting")
  {
    print("You win!");
    userScore++;
  }
  else if(userChoice == "gunting" && compChoice == "papel")
  {
    print("You win!");
    userScore++;
  }
  else{
    print("I win!");
    compScore++;
  }

  print("You: $userScore \nComputer: $compScore");
}