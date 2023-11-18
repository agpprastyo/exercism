var scoreMap = const {
  1: ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'],
  2: ['D', 'G'],
  3: ['B', 'C', 'M', 'P'],
  4: ['F', 'H', 'V', 'W', 'Y'],
  5: ['K'],
  8: ['J', 'X'],
  10: ['Q', 'Z']
};

class ScrabbleScore {
  final Map<String, int> letterValues = {};

  ScrabbleScore() {
    for (var entry in scoreMap.entries) {
      for (var letter in entry.value) {
        letterValues[letter] = entry.key;
      }
    }
  }

  int score(String word) {
    if (word.isEmpty) {
      return 0;
    }

    int totalScore = 0;
    for (var letter in word.toUpperCase().runes) {
      totalScore += letterValues[String.fromCharCode(letter)] ?? 0;
    }

    return totalScore;
  }
}
