import 'package:flutter/material.dart';

import '../../core/model/grammar/grammar_model.dart';

class GrammarViewModel extends ChangeNotifier {
  List<GrammarTopic> _topics = [];

  List<GrammarTopic> get topics => _topics;

  GrammarViewModel() {
    _fetchGrammarTopics();
  }

  void _fetchGrammarTopics() {
    _topics = [
      GrammarTopic(id: '1', title: 'Thì hiện tại đơn', description: 'Present Simple Tense'),
      GrammarTopic(id: '2', title: 'Thì hiện tại tiếp diễn', description: 'Present Continuous Tense'),
      GrammarTopic(id: '3', title: 'Câu điều kiện', description: 'Conditional Sentences'),
      // Add more...
    ];
    notifyListeners();
  }
}
