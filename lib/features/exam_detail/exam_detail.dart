import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toiec_learning_app/core/configs/utils/textstyle.dart';
import '../../widgets/item_exam.dart';
import '../login/login_view_model.dart';

class ExamDetailView extends StatelessWidget {
  const ExamDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthViewModel>(
      builder: (context, authViewModel, child) {
        return Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.arrow_back_rounded),
            title: Text('TOIEC Listening & Reading Full ', style: CustomTextStyle.appbar),
            backgroundColor: Colors.lightBlue,
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ExamItem(title: 'TEST 1', question: 200, time: 120, buttonText: "Continue", onTap: () {  },),
                  ExamItem(title: 'TEST 2', question: 200, time: 120, buttonText: "Start", onTap: () {  },),
                  ExamItem(title: 'TEST 3', question: 200, time: 120, buttonText: "Start", onTap: () {  },),
                  ExamItem(title: 'TEST 4', question: 200, time: 120, buttonText: "Start", onTap: () {  },),
                  ExamItem(title: 'TEST 3', question: 200, time: 120, buttonText: "Start", onTap: () {  },),
                  ExamItem(title: 'TEST 3', question: 200, time: 120, buttonText: "Start", onTap: () {  },),
                  ExamItem(title: 'TEST 3', question: 200, time: 120, buttonText: "Start", onTap: () {  },),
                  ExamItem(title: 'TEST 3', question: 200, time: 120, buttonText: "Start", onTap: () {  },),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
