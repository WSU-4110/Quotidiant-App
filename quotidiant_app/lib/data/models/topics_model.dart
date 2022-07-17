import 'dart:collection';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';

class TopicsModel extends ChangeNotifier {
  final List<String> _topics = [];
  UnmodifiableListView<String> get topics => UnmodifiableListView(_topics);

  void addTopic(String topic) {
    _topics.add(topic);
    notifyListeners();
  }

  void removeTopic(String topic) {
    _topics.remove(topic);
    notifyListeners();
  }
}
