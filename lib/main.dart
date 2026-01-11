import 'package:flutter/material.dart';
import 'package:fruit_hub/core/routing/app_router.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  await Supabase.initialize(
    url: 'https://lgvqnfwvatczwfvbtnkz.supabase.co',
    anonKey: 'sb_publishable_McnAJK2L-c68m_WnL_xD2g_WpCROdgp',
  );
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}
