import 'package:flutter/material.dart';
import 'package:fruit_hub/core/routing/routes.dart';
import 'package:fruit_hub/feature/ui/screen/auth/authentication_screen.dart';
import 'package:fruit_hub/feature/ui/screen/splash/splash_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: Routes.splash,
        builder: (context, state) => SplashScreen(),
      ),
      GoRoute(
        path: Routes.auth,
        builder: (context, state) => AuthenticationScreen(),
      ),
      GoRoute(
        path: Routes.home,
        builder: (context, state) =>
            const Scaffold(body: Center(child: Text('Home screen'))),
      ),
      GoRoute(
        path: Routes.addToBasket,
        builder: (context, state) =>
            const Scaffold(body: Center(child: Text('Add to basket screen'))),
      ),
      GoRoute(
        path: Routes.orderList,
        builder: (context, state) =>
            const Scaffold(body: Center(child: Text('Order list screen'))),
      ),
      GoRoute(
        path: Routes.orderComplete,
        builder: (context, state) =>
            const Scaffold(body: Center(child: Text('Order complete screen'))),
      ),
      GoRoute(
        path: Routes.trackOrder,
        builder: (context, state) =>
            const Scaffold(body: Center(child: Text('Track order screen'))),
      ),
    ],
  );
}
