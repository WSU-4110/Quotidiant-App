import 'package:flutter/material.dart';
import 'package:quotidiant_app/screens/home/home.dart';

class factCheck {
  bool? validate(sentence) {
    if (sentence) {
      return true;
    } else {
      return false;
    }
  }
}
