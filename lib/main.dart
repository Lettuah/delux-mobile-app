import 'package:delux/routes.dart';
import 'package:delux/views/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Delux',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: const Color(0xFFeef2f1),
        textTheme: Theme.of(context).textTheme.copyWith(
          bodyLarge: const TextStyle(
            fontSize: 16.0,
            fontFamily: 'Roboto',
            height: 24 / 13.0,
            color: Color(0xFF727272),
          ),
        ),
      ),
      home: const SplashScreen(), // Default home screen
      getPages: AppRoutes.getRoutes(),
      debugShowCheckedModeBanner: false,
    );
  }
}
