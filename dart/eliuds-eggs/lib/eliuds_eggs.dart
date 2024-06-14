class EggCounter {
  int count(int decimalNumber) {
    int count = 0;
    while (decimalNumber > 0) {
      if (decimalNumber % 2 == 1) {
        count++;
      }
      decimalNumber = decimalNumber ~/ 2;
    }
    return count;
  }
}
