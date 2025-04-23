import 'package:flutter/material.dart';

import '../../core/model/grammar/grammar_model.dart';

class GrammarDetailScreen extends StatelessWidget {
  final GrammarTopic topic;

  const GrammarDetailScreen({required this.topic, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(topic.title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          '${topic.description}',
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
