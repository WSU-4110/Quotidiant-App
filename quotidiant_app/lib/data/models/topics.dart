import 'package:flutter/material.dart';

// Model for Topics
// Used in Provider pattern to be stored in an object
class Topics {
  String? topic;
  bool isTopicSelected;

  Topics(this.topic, this.isTopicSelected);

  void setTopic(bool isTopicSelected) {
    this.isTopicSelected = isTopicSelected;
  }
}
