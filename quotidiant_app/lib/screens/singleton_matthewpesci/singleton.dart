import 'package:flutter/foundation.dart';

//matthew pesci
//assignment 4
//6/22/22

//this is how most singleton design patterns would look
abstract class singletondesign {
  @protected
  late String initialText;
  @protected
  late String stateText;
  String get currentText => stateText;

  void setStateText(String text) {
    stateText = text;
  }

  void reset() {
    stateText = initialText;
  }
}

// this is what singleton design pattern would be if following purley by standards
class singletonbydefin extends singletondesign {
  static singletonbydefin? _instance;

  singletonbydefin._internal() {
    initialText = "New 'WithoutSingleton' has been created.";
    stateText = initialText;
  }

  static singletonbydefin getState() {
    return _instance ??= singletonbydefin._internal();
  }
}

//This is just the constructor of the design pattern
class withoutsingleton extends singletondesign {
  withoutsingleton() {
    initialText = "New 'WithoutSingleton' has been created.";
    stateText = initialText;
  }
}
