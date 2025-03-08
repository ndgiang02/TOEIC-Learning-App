import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toiec_learning_app/features/setting/setting_viewmodel.dart';

import 'app.dart';
import 'features/login/login_view_model.dart';
import 'features/main/main_viewmodel.dart';
import 'features/splash/splash_viewmodel.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SplashViewModel()),
        ChangeNotifierProvider(create: (_) => AuthViewModel()),
        ChangeNotifierProvider(create: (_) => SettingViewModel()),
        ChangeNotifierProvider(create: (_) => MainViewModel()),


      ],
      child: MyApp(),
    ),
  );
}