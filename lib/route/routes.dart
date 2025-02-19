import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toiec_learning_app/view/forgotpassword/forgotpassword_view.dart';
import 'package:toiec_learning_app/view/login/login_view.dart';
import 'package:toiec_learning_app/view/register/register_view.dart';
import 'package:toiec_learning_app/view_model/splash/splash_viewmodel.dart';

import '../view/splash/splash_view.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  static GoRouter getRouter(BuildContext context) {
    final splashViewModel = context.watch<SplashViewModel>();
    return GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(path: '/', builder: (context, state) => SplashView()),
        GoRoute(path: '/login', builder: (context, state) => LoginScreen()),
        GoRoute(path: '/register', builder: (context, state) => RegisterView()),
        GoRoute(path: '/forgot-password', builder: (context, state) => ForgotPasswordView()),
        // GoRoute(path: '/home', builder: (context, state) => HomeScreen()),
      ],
      redirect: (context, state) {
        return _redirect(context, state, splashViewModel);
      },
    );
  }



  static String? _redirect(BuildContext context, GoRouterState state, SplashViewModel splashViewModel) {

    final bool isAuthScreen = ['/login', '/register', '/forgot-password'].contains(state.matchedLocation);

    if (!splashViewModel.isAuthenticated) {
      return isAuthScreen ? null : '/login';
    }

    if (isAuthScreen) {
      return '/home';
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
    return null;
  }

}

