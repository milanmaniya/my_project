class Pattern {
  static List<Map<String, dynamic>> listPattern = [
    {
      'name': 'Pattern 1',
      'logic': (int maxValue) => pattern1(maxValue),
    },
    {
      'name': 'Pattern 1',
      'logic': (int maxValue) => pattern1(maxValue),
    },
    {
      'name': 'Pattern 1',
      'logic': (int maxValue) => pattern1(maxValue),
    },
  ];

  static String pattern1(int maxValue) {
    String name = '';
    for (int i = 1; i <= maxValue; i++) {
      for (int j = 1; j <= i; j++) {
        name = name + j.toString();
      }
      name += '/n';
    }
    return name;
  }
}
