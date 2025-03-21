import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toiec_learning_app/features/setting/setting_viewmodel.dart';
import 'package:toiec_learning_app/routes/routes.dart';

import 'core/configs/themes.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<SettingViewModel>(
      builder: (context, settingViewModel, child) {
        return MaterialApp.router(
          title: 'TLA',
          theme: themeData(context, settingViewModel.isDarkMode ),
          routerConfig: AppRoutes.getRouter(context),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}