import 'package:flutter/material.dart';
import 'package:freeme/views/screen_splash/screen_splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FreeMe',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const ScreenSplash(),
    );
  }
}
