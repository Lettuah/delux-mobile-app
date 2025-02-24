import 'package:delux/views/home_screen.dart';
import 'package:delux/views/privacy_screen.dart';
import 'package:delux/views/splash_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String home = '/home';
  static const String splash = '/splash';
  static const String privacy = '/privacy/policy';

  static List<GetPage> getRoutes() {
    return [
      // Splash Screen
      GetPage(
        name: splash,
        page: () => const SplashScreen(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 300),
      ),
      // Home Screen
      GetPage(
        name: home,
        page: () => const HomeScreen(),
        transition: Transition.rightToLeft,
        transitionDuration: const Duration(milliseconds: 300),
      ),

      // Privacy Policy
      GetPage(
        name: privacy,
        page: () => const PrivacyScreen(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 300),
      ),
    ];
  }
}
