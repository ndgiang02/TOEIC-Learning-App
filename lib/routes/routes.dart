import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:toiec_learning_app/features/exam/exam_view.dart';
import 'package:toiec_learning_app/features/exam_detail/exam_detail.dart';
import 'package:toiec_learning_app/features/exam_test/exam_test.dart';
import 'package:toiec_learning_app/features/home/home_view.dart';
import 'package:toiec_learning_app/features/search/search_view.dart';

import '../core/services/session_controller/secsion_controller.dart';
import '../features/auth/view/forgotpassword_view.dart';
import '../features/auth/view/login_view.dart';
import '../features/grammar/grammar_view.dart';
import '../features/listen/listen_view.dart';
import '../features/main/main_view.dart';
import '../features/auth/view/register_view.dart';
import '../features/setting/setting_view.dart';
import '../features/splash/splash_view.dart';
import '../features/splash/splash_viewmodel.dart';

class AppRoutes {
  static GoRouter getRouter(BuildContext context) {
    final splashViewModel = context.watch<SplashViewModel>();
    final sessionController = SessionController();
    return GoRouter(
      initialLocation: '/',
      redirect: (context, state) {
        return _redirect(context, state,sessionController, splashViewModel);
      },
      routes: [
        GoRoute(path: '/', builder: (context, state) => SplashView()),
        GoRoute(
          path: '/login',
          pageBuilder: (context, state) => CustomTransitionPage(
            child: LoginView(),
            transitionsBuilder: _customTransition,
          ),
        ),
        GoRoute(
          path: '/register',
          pageBuilder: (context, state) => CustomTransitionPage(
            child: RegisterView(),
            transitionsBuilder: _customTransition,
          ),
        ),
        GoRoute(
            path: '/forgot-password',
            builder: (context, state) => ForgotPasswordView()),
        GoRoute(path: '/main', builder: (context, state) => MainView()),
        GoRoute(path: '/home', builder: (context, state) => HomeView()),
        GoRoute(path: '/exam', builder: (context, state) => ExamView()),
        GoRoute(path: '/search', builder: (context, state) => SearchView()),
        GoRoute(path: '/search', builder: (context, state) => GrammarView()),
        GoRoute(path: '/setting', builder: (context, state) => SettingView()),

        GoRoute(
            path: '/exam-detail',
            builder: (context, state) => ExamDetailView()),
        GoRoute(
            path: '/exam-test', builder: (context, state) => ExamTestlView()),
        GoRoute(path: '/listen', builder: (context, state) => ListenView()),
      ],
    );
  }

  static String? _redirect(BuildContext context, GoRouterState state, SessionController sessionController, SplashViewModel splashViewModel) {

    print("🔄 Checking redirect logic...");
    print("✅ Authenticated: ${sessionController.isLogin}");
    print("📍 Current route: ${state.matchedLocation}");

    if (splashViewModel.isLoading) {
      return null;
    }

    if (sessionController.isLogin == false && state.matchedLocation != '/login' && state.matchedLocation != '/register') {
      return '/main';
    }

    if (sessionController.isLogin == true && (state.matchedLocation == '/' || state.matchedLocation == '/login')) {
      return '/main';
    }

    return null;
  }

  static Widget _customTransition(
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child) {
    return SlideTransition(
      position: Tween<Offset>(begin: const Offset(0, 0.2), end: Offset.zero)
          .animate(CurvedAnimation(parent: animation, curve: Curves.easeOut)),
      child: FadeTransition(opacity: animation, child: child),
    );
  }
}
