import 'package:flutter/material.dart';
import 'package:toiec_learning_app/routes/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'TOEIC',
      theme: ThemeData(
        fontFamily: 'SFPro',
        scaffoldBackgroundColor: Colors.white,
      ),
      routerConfig: AppRoutes.getRouter(context),
      debugShowCheckedModeBanner: false,
    );
  }
}