import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toiec_learning_app/core/configs/utils/textstyle.dart';
import '../../widgets/detail.dart';
import '../login/login_view_model.dart';

class ListenView extends StatelessWidget {
  const ListenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthViewModel>(
      builder: (context, authViewModel, child) {
        return Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.arrow_back_rounded),
            title: Text('Listening', style: CustomTextStyle.appbar),
            backgroundColor: Colors.lightBlue,
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                DetailItem(title: 'Part 1 - Photographs', correct: 3, total: 6,),
                DetailItem(title: 'Part 2 - Question - Response', correct: 0, total: 6,),
                DetailItem(title: 'Part 3 - Conversations', correct: 0, total: 6,),
              ],
            ),
          ),
        );
      },
    );
  }
}
