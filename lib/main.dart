import 'package:e_commerce/views/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E - Commerce Demo App',
      debugShowCheckedModeBanner: false,

      theme: ThemeData.dark(),
      home: LoginPage(),
    );
  }
}
