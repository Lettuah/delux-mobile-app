import "package:delux/app/app.color.dart";
import "package:delux/routes.dart";
import "package:delux/widgets/custom_elevated_button.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColor.colorThree, Colors.black87],
          stops: [0.0, 0.8],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  // Circular container
                  Container(
                    margin: const EdgeInsets.fromLTRB(260, 30, 25.0, 0),
                    width: 100.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: AppColor.colorThree,
                        width: 1.0,
                      ),
                    ),
                  ),

                  // Icon centered inside the circle
                  Positioned(
                    left: 285, // 260 + (100 - 50) / 2
                    top: 55, // 30 + (100 - 50) / 2
                    child: SizedBox(
                      width: 50.0,
                      height: 50.0,
                      child: Icon(
                        Icons.favorite,
                        color: Colors.blue[200],
                        size: 50,
                      ),
                    ),
                  ),
                ],
              ),

              // action button container fixed at the bottom of the screen
              Container(
                padding: const EdgeInsets.fromLTRB(50.0, 0, 30.0, 70.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Welcome to MiAmor',
                      style: TextStyle(
                        fontSize: 34.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'Where Love Meets Opportunity',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      'Connect. Earn. Grow — Your journey starts here.',
                      style: TextStyle(fontSize: 16.0, color: Colors.blueGrey),
                    ),
                    const SizedBox(height: 30),
                    CustomElevatedButton(
                      buttonTitle: 'Get Started',
                      onClick: () {
                        Get.toNamed(AppRoutes.home);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
