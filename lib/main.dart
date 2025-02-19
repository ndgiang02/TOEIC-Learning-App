import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toiec_learning_app/view_model/login/login_view_model.dart';
import 'package:toiec_learning_app/view_model/splash/splash_viewmodel.dart';

import 'app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SplashViewModel()),
        ChangeNotifierProvider(create: (_) => AuthViewModel()),
      ],
      child: MyApp(),
    ),
  );
}