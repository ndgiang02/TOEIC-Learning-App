import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:toiec_learning_app/configs/constant.dart';
import 'package:toiec_learning_app/configs/reponsive.dart';
import 'package:toiec_learning_app/widget/button.dart';
import 'package:toiec_learning_app/widget/textfield.dart';
import '../../view_model/login/login_view_model.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthViewModel>(
      builder: (context, authViewModel, child) {
        return Scaffold(
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      icLogoApp,
                      width: 150,
                      height: 150,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'LOGIN YOUR ACCOUNT',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomTextField(
                      hintText: 'example@gmail.com',
                      prefix: Icon(Icons.email_rounded, color: Colors.black,),
                    ),
                    const SizedBox(height: 20),
                    CustomTextField(
                      hintText: 'password',
                      prefix: Icon(Icons.lock, color: Colors.black,),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomTextField(
                      hintText: 'Confirm password',
                      prefix: Icon(Icons.lock, color: Colors.black,),
                    ),
                    const SizedBox(height: 10),
                    const SizedBox(height: 15),
                    CustomButton(
                      text: 'SignIn',
                      onPressed: () {},
                      backgroundColor: Colors.lightBlue,
                      textColor: Colors.white,
                      showBorder: false, fontWeight: FontWeight.bold, sizeText: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
          bottomNavigationBar: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text.rich(
                textAlign: TextAlign.center,
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Have an account yet?',
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w500),
                      recognizer: TapGestureRecognizer()..onTap = () {
                        context.go('/login');
                      },
                    ),
                    const TextSpan(
                      text: ' \u200B\u200B\u200B',
                      style: TextStyle(color: Colors.blue, fontSize: 20),
                    ),
                    TextSpan(
                      text: 'Login',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.blue),
                      recognizer: TapGestureRecognizer()..onTap = () {
                        context.go('/login');
                      },
                    ),
                  ],
                ),
              )),
        );
      },
    );
  }
}
