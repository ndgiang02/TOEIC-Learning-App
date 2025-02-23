import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:go_router/go_router.dart';
import 'package:toiec_learning_app/features/exam/exam_view.dart';
import 'package:toiec_learning_app/features/exam_detail/exam_detail.dart';
import 'package:toiec_learning_app/features/exam_test/exam_test.dart';
import 'package:toiec_learning_app/features/home/home_view.dart';

import '../features/forgotpassword/forgotpassword_view.dart';
import '../features/listen/listen_view.dart';
import '../features/login/login_view.dart';
import '../features/register/register_view.dart';
import '../features/setting/setting_view.dart';
import '../features/splash/splash_view.dart';
import '../features/splash/splash_viewmodel.dart';

class AppRoutes {
  static GoRouter getRouter(BuildContext context) {
    final splashViewModel = context.watch<SplashViewModel>();
    return GoRouter(
      initialLocation: '/setting',
      routes: [
        GoRoute(path: '/', builder: (context, state) => SplashView()),
        GoRoute(path: '/login', builder: (context, state) => LoginScreen()),
        GoRoute(path: '/register', builder: (context, state) => RegisterView()),
        GoRoute(
            path: '/forgot-password',
            builder: (context, state) => ForgotPasswordView()),
        GoRoute(path: '/home', builder: (context, state) => HomeView()),
        GoRoute(path: '/exam', builder: (context, state) => ExamView()),
        GoRoute(
            path: '/exam-detail',
            builder: (context, state) => ExamDetailView()),
        GoRoute(
            path: '/exam-test', builder: (context, state) => ExamTestlView()),
        GoRoute(path: '/listen', builder: (context, state) => ListenView()),
        GoRoute(path: '/setting', builder: (context, state) => SettingView()),
      ],
      redirect: (context, state) {
        return _redirect(context, state, splashViewModel);
      },
    );
  }

  static String? _redirect(BuildContext context, GoRouterState state,
      SplashViewModel splashViewModel) {
    final bool isAuthScreen = ['/login', '/register', '/forgot-password']
        .contains(state.matchedLocation);

    if (!splashViewModel.isAuthenticated) {
      return isAuthScreen ? null : '/setting';
    }

    if (isAuthScreen) {
      return '/setting';
    }

    /*   if (splashViewModel.isLoading) return null;

    final bool isLoggingIn = state.matchedLocation == '/login';
    final bool isSigningUp = state.matchedLocation == '/register';

    if (!splashViewModel.isAuthenticated) {
      if (isLoggingIn || isSigningUp) return null;
      return '/login';
    }

    if (isLoggingIn || isSigningUp) {
      return '/home';
    }
*/
    return '/setting';
  }
}
