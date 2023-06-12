import 'dart:math';

class MyCounter {
  static int number = 0;

  static void increment() {
    number++;
    log(number);
  }

  static void decrement() {
    number--;
    log(number);
  }
}

class MyDoubleCounter {
  static int doubleCount = 0;

  static void doubleIncrement() {
    doubleCount += 2;
  }

  static void doubleDecrement() {
    doubleCount -= 2;
  }
}
