import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/foundation.dart';
import 'package:delux/views/home_screen.dart';
import 'package:delux/views/privacy_screen.dart';
import 'package:delux/views/splash_screen.dart';

class AppRoutes {
  static const String home = '/home';
  static const String splash = '/splash';
  static const String privacy = '/privacy/policy';

  static List<GetPage> getRoutes() {
    return [
      GetPage(
        name: splash,
        page: () => const SplashScreen(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 300),
        middlewares: [
          MetaSeoMiddleware(
            title: "Splash Screen",
            description: "Welcome to our app",
            keywords: "Flutter, Dart, GetX, SEO",
          ),
        ],
      ),
      GetPage(
        name: home,
        page: () => const HomeScreen(),
        transition: Transition.rightToLeft,
        transitionDuration: const Duration(milliseconds: 300),
        middlewares: [
          MetaSeoMiddleware(
            title: "Home Screen",
            description: "Main home screen",
            keywords: "Flutter, Home, Dart",
          ),
        ],
      ),
      GetPage(
        name: privacy,
        page: () => const PrivacyScreen(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 300),
        middlewares: [
          MetaSeoMiddleware(
            title: "Privacy Policy",
            description: "Read our privacy policy",
            keywords: "Privacy, Policy, Legal",
          ),
        ],
      ),
    ];
  }
}

// ✅ Correct Middleware Implementation
class MetaSeoMiddleware extends GetMiddleware {
  final String title;
  final String description;
  final String keywords;

  MetaSeoMiddleware({
    required this.title,
    required this.description,
    required this.keywords,
  });

  @override
  RouteSettings? redirect(String? route) {
    if (kIsWeb) {
      // FlutterSeo.instance.setTitle(title);
      // FlutterSeo.instance.setMetaDescription(description);
      // FlutterSeo.instance.setMetaKeywords(keywords);
    }
    return null; // No redirection, just updating meta tags
  }
}
