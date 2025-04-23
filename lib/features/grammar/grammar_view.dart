import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:toiec_learning_app/features/grammar/widget/grammar_topic_card.dart';

import 'grammar_viewmodel.dart';
import 'greammar_viewdetail.dart';


class GrammarView extends StatelessWidget {
  const GrammarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        centerTitle: true,
        title: Text('Ngữ pháp'),
        titleTextStyle: Theme.of(context).textTheme.titleLarge,
      ),
      body: Consumer<GrammarViewModel>(
        builder: (context, viewModel, child) {
          final topics = viewModel.topics;

          return ListView.builder(
            itemCount: topics.length,
            itemBuilder: (context, index) {
              final topic = topics[index];
              return GrammarTopicCard(
                topic: topic,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => GrammarDetailScreen(topic: topic),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
