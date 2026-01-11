import 'package:flutter/material.dart';
import 'package:fruit_hub/core/routing/routes.dart';
import 'package:go_router/go_router.dart';

import '../../feature/ui/screen/add_to_basket.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: Routes.welcome,
        builder: (context, state) =>
            const Scaffold(body: Center(child: Text('Welcome screen'))),
      ),
      GoRoute(
        path: Routes.auth,
        builder: (context, state) =>
            const Scaffold(body: Center(child: Text('Auth screen'))),
      ),
      GoRoute(
        path: Routes.home,
        builder: (context, state) =>
            const Scaffold(body: Center(child: Text('Home screen'))),
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
