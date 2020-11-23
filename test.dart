import 'dart:io';

void main(){

  String str1 = "Aba";
  String str2 = "aba";
  String str3 = "1Ka";

  print("Please select the weapon of you choice: papel, gunting, or bato");
  str2 = stdin.readLineSync();

  stdout.writeln("Your choice is $str2");
  /*
  if(str1.compareTo(str2) == 0)
  {
    print("Strings are the same!");
  }

  else{
    print("Strings are NOT equal");
  }
  

  print(str3.toLowerCase());
  */
}