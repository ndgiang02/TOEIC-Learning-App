import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toiec_learning_app/core/configs/constant.dart';
import 'package:toiec_learning_app/core/configs/utils/button.dart';
import 'package:toiec_learning_app/core/configs/utils/textstyle.dart';
import '../login/login_view_model.dart';

class ExamTestlView extends StatelessWidget {
  const ExamTestlView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthViewModel>(
      builder: (context, authViewModel, child) {
        return Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.arrow_back_rounded, color: Colors.white,),
            title: Text('TEST 1', style: CustomTextStyle.appbar),
            backgroundColor: Colors.lightBlue,
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('Time : 120 Minutes', style: CustomTextStyle.item,),
                const Text('Questions : 200', style: CustomTextStyle.item,),
                const SizedBox(height: 30,),
                Image.asset(icExam, width: 400, height: 400,),
                CustomButton(text: 'START NOW', onTap: () {}, color: Colors.green),
                const SizedBox(height: 10,),
                CustomButton(text: 'BACK', onTap: () {}, color: Colors.red)
              ],
            ),
          ),
        );
      },
    );
  }
}
