import 'package:flutter/material.dart';

class navigationKey {
  navigationKey._();

  static final GlobalKey _key = GlobalKey();

  static GlobalKey getKey() => _key;
}
