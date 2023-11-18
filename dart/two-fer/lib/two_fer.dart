String twoFer(String? friendName) {
  if (friendName != null && friendName.isNotEmpty) {
    return "One for $friendName, one for me.";
  } else {
    return "One for you, one for me.";
  }
}
