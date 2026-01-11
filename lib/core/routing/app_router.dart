import 'package:flutter/material.dart';
import 'package:fruit_hub/core/routing/routes.dart';
import 'package:fruit_hub/feature/ui/screen/auth/authentication_screen.dart';
import 'package:fruit_hub/feature/ui/screen/splash/splash_screen.dart';
import 'package:go_router/go_router.dart';
import '../../feature/ui/screen/home.dart';
import '../../feature/ui/screen/add_to_basket.dart';


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
        builder: (context, state) => HomeScreen()
      ),
      GoRoute(
        path: Routes.addToBasket,
        builder: (context, state) =>
            const Scaffold(body: AddToBasketScreen(name: '', price: '', imagePath: "assets/images/glowing_Berry_Fruit.png")),
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
