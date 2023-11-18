class Leap {
  bool leapYear(int year) {
    // Check if the year is evenly divisible by 4
    if (year % 4 == 0) {
      // Check if the year is evenly divisible by 100
      if (year % 100 == 0) {
        // Check if the year is evenly divisible by 400
        return year % 400 == 0;
      } else {
        // If the year is not divisible by 100, it's a leap year
        return true;
      }
    } else {
      // If the year is not divisible by 4, it's not a leap year
      return false;
    }
  }
}
