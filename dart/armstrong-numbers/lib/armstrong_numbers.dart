import 'dart:math';

class ArmstrongNumbers {
  bool isArmstrongNumber(String numberString) {
    // Convert the string to an integer
    int? number = int.tryParse(numberString);

    // Check if the conversion was successful
    if (number == null) {
      throw ArgumentError('Input is not a valid number');
    }

    // Calculate the number of digits
    int numDigits = numberString.length;

    // Calculate the sum of each digit raised to the power of numDigits
    num sum = numberString
        .split('')
        .map((digit) => pow(int.parse(digit), numDigits))
        .reduce((a, b) => a + b);

    // Check if the sum is equal to the original number
    return sum == number;
  }
}
