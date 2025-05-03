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
    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    //   HeadTagUtil.setTitle('Welcome | Delux - Earn & Grow Income');
    //   HeadTagUtil.add("name", "author", "Delux Team");
    //   HeadTagUtil.add("property", "og:url", "Add og:url");
    //   HeadTagUtil.setHead(
    //     title: "Welcome | Delux - Earn & Grow Income",
    //     keywords: [
    //       "Delux",
    //       "Delux Registration",
    //       "Delux App",
    //       "Delux Income",
    //       "delux coupon",
    //       "register delux",
    //       "join delux",
    //       "about delux",
    //       "delux telegram",
    //       "delux tiktok",
    //       "delux agent",
    //       "delux agent registration",
    //       "delux agent registration link",
    //       "delux.com.ng",
    //       "delux.com",
    //       "delux.com.ng registration",
    //       "earn with delux",
    //       "delux digital",
    //       "delux login",
    //       "delux sign up",
    //       "delux platform",
    //       "delux business",
    //       "delux earning",
    //       "delux ajo",
    //       "delux job",
    //       "delux task",
    //       "delux referral",
    //       "delux nigeria",
    //     ],
    //     description:
    //         "Delux is a platform that allows you to earn money online effortlessly. Join us today and start your journey towards financial freedom.",
    //     imageUrl: "/assets/img/icon.png",
    //     url: "https://deluxregistration.com",
    //   );
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.amber, Colors.black87],
          stops: [0.0, 1.0],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(260, 30, 25.0, 0),
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.amber.shade100,
                          width: 3.0,
                        ),
                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.fromLTRB(260, 30, 25.0, 0),
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.amber.shade100,
                        border: Border.all(
                          color: const Color.fromARGB(255, 238, 216, 150),
                          width: 3.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // action button container fixed at the bottom of the screen
              Container(
                padding: const EdgeInsets.fromLTRB(50.0, 0, 30.0, 70.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Redefine',
                      style: TextStyle(
                        fontSize: 34.0,
                        fontFamily: 'Roboto',
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    const Text.rich(
                      TextSpan(
                        text: 'Your ',
                        children: [
                          TextSpan(
                            text: 'Grandeur',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      style: TextStyle(
                        fontSize: 34.0,
                        fontFamily: 'Roboto',
                        color: Colors.white,
                      ),
                    ),
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
