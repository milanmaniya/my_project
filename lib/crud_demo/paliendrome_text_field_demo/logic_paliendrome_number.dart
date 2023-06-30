class PaliendromeNumber {
  static String? message;

  static void checkStringPaliendrome(String txtStringValue) {
    String name = '';
    for (int i = txtStringValue.length - 1; i >= 0; i--) {
      name += txtStringValue[i];
    }
    if (name == txtStringValue) {
      message = 'This string is paliendrome string';
    } else {
      message = 'This string is not a paliendrome string';
    }
  }

  static void checkPaliendrome(int txtValue) {
    int number;
    int rev;
    int sum = 0;
    number = txtValue;
    while (number > 0) {
      rev = number % 10;
      sum = (sum * 10) + rev;
      number = number ~/ 10;
    }
    if (sum == txtValue) {
      message = 'This number is paliendrome number';
    } else {
      message = 'This number is not a paliendrome number';
    }
  }
}