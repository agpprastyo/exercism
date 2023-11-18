class Diamond {
  List<String>? rows(String letter) {
    if (letter.isEmpty ||
        letter.length > 1 ||
        !letter.toUpperCase().contains(RegExp('[A-Z]'))) {
      return null;
    }

    final int size = letter.codeUnitAt(0) - 'A'.codeUnitAt(0) + 1;
    final List<String> diamond = [];

    for (int i = 0; i < size; i++) {
      final String currentLetter = String.fromCharCode('A'.codeUnitAt(0) + i);
      final int spacesBefore = size - i - 1;
      final int spacesBetween = i * 2 - 1;

      if (i == 0) {
        diamond.add(' ' * spacesBefore + currentLetter);
      } else {
        diamond.add(' ' * spacesBefore +
            currentLetter +
            ' ' * spacesBetween +
            currentLetter);
      }
    }

    for (int i = size - 2; i >= 0; i--) {
      final String currentLetter = String.fromCharCode('A'.codeUnitAt(0) + i);
      final int spacesBefore = size - i - 1;
      final int spacesBetween = i * 2 - 1;

      if (i == 0) {
        diamond.add(' ' * spacesBefore + currentLetter);
      } else {
        diamond.add(' ' * spacesBefore +
            currentLetter +
            ' ' * spacesBetween +
            currentLetter);
      }
    }

    return diamond;
  }
}
