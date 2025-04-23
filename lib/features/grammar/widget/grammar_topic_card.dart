import 'package:flutter/material.dart';

import '../../../core/model/grammar/grammar_model.dart';

class GrammarTopicCard extends StatelessWidget {
  final GrammarTopic topic;
  final VoidCallback onTap;

  const GrammarTopicCard({required this.topic, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 4,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        title: Text(topic.title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(topic.description),
        trailing: Icon(Icons.arrow_forward_ios_rounded),
        onTap: onTap,
      ),
    );
  }
}
