import 'package:flutter/material.dart';
import 'package:marvel_app/splash/splash_injection.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
        primaryColor: Colors.black,
        useMaterial3: true,
      ),
      home: SplashInjection.injection(),
    );
  }
}
