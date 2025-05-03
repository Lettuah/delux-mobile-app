import 'package:delux/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Delux',
      theme: ThemeData(
        primarySwatch: Colors.amber, // Amber swatch
        scaffoldBackgroundColor: Colors.transparent,
        textTheme: Theme.of(
          context,
        ).textTheme.apply(bodyColor: Colors.white, displayColor: Colors.white),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: Colors.white),
        ),
      ),
      initialRoute: AppRoutes.splash, // Set initial route
      getPages: AppRoutes.getRoutes(), // Load routes from AppRoutes
      debugShowCheckedModeBanner: false,
    );
  }
}
