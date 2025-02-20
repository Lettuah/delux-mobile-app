import 'package:delux/views/home_screen.dart';
import 'package:get/get.dart';

class Routes {
  static List<GetPage> getRoutes() {
    return [
      // Home Screen
      GetPage(name: '/', page: () => HomeScreen()),
    ];
  }
}
