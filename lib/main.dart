import 'package:flutter/material.dart';
import 'package:freeme/views/screen_splash/screen_splash.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FreeMe',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const ScreenSplash(),
    );
  }
}
