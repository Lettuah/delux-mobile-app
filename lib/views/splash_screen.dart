import "package:delux/app/app.color.dart";
import "package:delux/utility_functions.dart";
import "package:delux/widgets/footer_widget.dart";
import "package:delux/widgets/handler_widget.dart";
import "package:flutter/material.dart";
import "package:flutter_animate/flutter_animate.dart";
import "package:get/get.dart";

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColor.colorOne,
            const Color(0XFFBEE3FF),
            Colors.white,
            Colors.black,
          ],
          stops: const [0.0, 0.8, 0.9, 1.0],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      const SizedBox(height: 36),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            onPressed: () async {
                              final UtilityFunctions util = Get.put(
                                UtilityFunctions(),
                              );
                              await util.launchExternalUrl(
                                HandlerWidget().telegramLink,
                              );
                            },
                            child: Text(
                              'Get Started',
                              style: TextStyle(color: AppColor.colorThree),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 50),
                      Text(
                        'WELCOME TO',
                        style: TextStyle(
                          letterSpacing: 3,
                          color: AppColor.colorFour,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text.rich(
                        TextSpan(
                          text: 'MI',
                          children: [
                            TextSpan(
                              text: 'Amor',
                              style: TextStyle(color: AppColor.colorFour),
                            ),
                          ],
                          style: TextStyle(
                            color: AppColor.colorOne,
                            fontSize: 48,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        textAlign: TextAlign.center,
                        'Where connections blossom with every \nmoment',
                        style: TextStyle(color: AppColor.colorThree),
                      ),

                      Image.network(
                        'https://www.animatedimages.org/data/media/50/animated-flower-image-0013.gif',
                        width: 52,
                        height: 52,
                      ),
                      const Spacer(),
                      Text(
                            "Begin Your Journey",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColor.colorThree,
                            ),
                          )
                          .animate()
                          .fadeIn(duration: 600.ms)
                          .then(delay: 200.ms) // baseline=800ms
                          .slide(),
                      const SizedBox(height: 8),
                      GestureDetector(
                        onTap: () async {
                          final UtilityFunctions util = Get.put(
                            UtilityFunctions(),
                          );
                          await util.launchExternalUrl(
                            HandlerWidget().telegramLink,
                          );
                        },
                        child: Container(
                          height: 100,
                          width: 200,
                          decoration: BoxDecoration(
                            color: AppColor.colorThree,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Transform.rotate(
                            angle: 90 * 3.1415926535 / 180,
                            child: Image.asset(
                              'assets/gif/1.gif',
                              width: 32,
                              height: 32,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),

                const FooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
