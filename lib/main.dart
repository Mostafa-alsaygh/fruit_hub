import 'package:flutter/material.dart';
import 'package:fruit_hub/feature/ui/screen/order_list/order_list_screen';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const Scaffold(body: Text("fruit hub")),
    );
  }
}
