import 'dart:collection';

import 'package:flutter/material.dart';

import '../data/models/topics.dart';

class TopicSelectedModel extends ChangeNotifier {
  final List<Topics> _topics = [];

  UnmodifiableListView<Topics> get favourites {
    return UnmodifiableListView(_topics.where((item) => item.isTopicSelected));
  }

  UnmodifiableListView<Topics> get all {
    return UnmodifiableListView(_topics);
  }

  // any change in this object class will require rebuilding on the view and
  // must be signaled using the notifyListeners() (the last call in the method below)
  // selectTopics instructs Flutter to re-render the UI
  void selectTopics(String? topic, bool isSelected) {
    _topics
        .firstWhere((element) => element.topic == topic)
        .setTopic(isSelected);
    notifyListeners();
  }
}
