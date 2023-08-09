import 'dart:io';

void main(List<String> args) {
  print("enter a word");
  String input = stdin.readLineSync()!;
  if (isPalindrome(input)) {
    print("$input is a palindrome.");
  } else {
    print("$input is not palindrome.");
  }
}

bool isPalindrome(String str) {
  int Left = 0;
  int right = str.length - 1;
  while (Left < right) {
    if (str[Left] != str[right]) {
      return false;
    }
    Left++;
    right--;
  }
  return true;
}
