import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:toiec_learning_app/core/configs/constant.dart';
import 'package:toiec_learning_app/core/configs/reponsive.dart';
import 'package:toiec_learning_app/widgets/button.dart';
import 'package:toiec_learning_app/widgets/textfield.dart';
import 'login_view_model.dart';

class LoginScreen extends StatelessWidget {
  final Map<String, String> loginData = {
    'email': '',
    'password': '',
  };

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
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomTextField(
                      hintText: 'example@gmail.com',
                      prefix: Icon(
                        Icons.email_rounded,
                        color: Colors.black,
                      ),
                      onChanged: (value) {
                        loginData['email'] = value.trim();
                      },
                    ),
                    const SizedBox(height: 20),
                    CustomTextField(
                      hintText: '******',
                      prefix: Icon(
                        Icons.lock,
                        color: Colors.black,
                      ),
                      onChanged: (value) {
                        loginData['password'] = value.trim();
                      },
                    ),
                    const SizedBox(height: 10),
                    Container(
                      alignment: Alignment.centerRight,
                      width: Responsive.width(85, context),
                      child: InkWell(
                        child: Text(
                          '*Forgot password?',
                          style: TextStyle(color: Colors.blue, fontSize: 14),
                        ),
                        onTap: () {
                          context.push('/forgot-password');
                        },
                      ),
                    ),
                    const SizedBox(height: 15),
                    CustomButton(
                      text: 'Login',
                      onPressed: () async {
                        if (loginData['email']!.isEmpty ||
                            loginData['password']!.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("Please enter email and password"),
                              backgroundColor: Colors.red,
                            ),
                          );
                          return;
                        }
                        print(loginData);
                        await authViewModel.login(loginData, context);
                      },
                      backgroundColor: Colors.lightBlue,
                      textColor: Colors.white,
                      showBorder: false,
                      fontWeight: FontWeight.bold,
                      sizeText: 20,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: Responsive.width(85, context),
                      child: Row(
                        children: [
                          Expanded(child: Divider()),
                          Text(" OR "),
                          Expanded(child: Divider()),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomButton(
                      text: 'Continue with Google',
                      onPressed: () {},
                      backgroundColor: Colors.white,
                      textColor: Colors.black,
                      icon: Image.asset(
                        icGoogle,
                        width: 35,
                        height: 35,
                      ),
                      showBorder: true,
                      fontWeight: FontWeight.normal,
                      sizeText: 16,
                    )
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
                      text: 'Don’t have an account yet?',
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w500),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          context.push('/register');
                        },
                    ),
                    const TextSpan(
                      text: ' \u200B\u200B\u200B',
                      style: TextStyle(color: Colors.blue, fontSize: 20),
                    ),
                    TextSpan(
                      text: 'Register Now',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.blue),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          context.push('/register');
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
