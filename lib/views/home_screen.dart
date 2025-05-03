import 'dart:async';

import 'package:delux/utility_functions.dart';
import 'package:delux/widgets/background_gradient_widget.dart';
import 'package:delux/widgets/custom_elevated_button.dart';
import 'package:delux/widgets/footer_widget.dart';
import 'package:delux/widgets/get_started_dialog_content.dart';
import 'package:delux/widgets/handler_widget.dart';
import 'package:delux/widgets/header_widget.dart';
import 'package:delux/widgets/heading_title_widget.dart';
import 'package:delux/widgets/how_delux_works_dialog.dart';
import 'package:delux/widgets/my_drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final UtilityFunctions util = Get.put(UtilityFunctions());
  final String telegramLink = HandlerWidget().telegramLink;
  final String tiktokLink = HandlerWidget().tiktokLink;
  final String whatsappLink = HandlerWidget().whatsappLink;

  final TextStyle headStyle = GoogleFonts.robotoCondensed(
    fontSize: 40,
    color: Colors.white,
  );

  final PageController _pageController = PageController();
  final PageController _autoPageController = PageController();

  final List<String> imageSliders = [
    'assets/img/1.jpg',
    'assets/img/2.jpg',
    'assets/img/3.jpg',
    'assets/img/4.jpg',
    'assets/img/5.jpg',
    'assets/img/6.jpg',
    'assets/img/7.jpg',
    'assets/img/9.jpg',
  ];

  late final List<Widget> headings = [
    const HeadingTitleWidget(
      first: 'Earning',
      second: 'From',
      third: 'The Internet',
      fourth: 'While',
      fifth: 'Sitting',
    ),
    const HeadingTitleWidget(
      first: 'Smart Ways',
      second: 'To Make',
      third: 'Money',
      fourth: 'From',
      fifth: 'Home',
    ),
    const HeadingTitleWidget(
      first: 'Work',
      second: 'From',
      third: 'Anywhere,',
      fourth: 'Earn',
      fifth: 'Everywhere',
    ),
    const HeadingTitleWidget(
      first: 'Get Paid',
      second: 'Without',
      third: 'Leaving',
      fourth: 'Your',
      fifth: 'Couch',
    ),
    const HeadingTitleWidget(
      first: 'Unlock',
      second: 'Passive',
      third: 'Income',
      fourth: 'Streams',
      fifth: 'Online',
    ),
  ];
  int _currentPage = 0;
  late Timer _timer;

  @override
  void initState() {
    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    //   HeadTagUtil.setTitle('Home | Delux - Earn & Grow Income');
    //   HeadTagUtil.add("name", "author", "Delux Team");
    //   HeadTagUtil.add("property", "og:url", "Add og:url");
    //   HeadTagUtil.setHead(
    //     title: "Home | Delux - Earn & Grow Income",
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
    //     ],
    //     description:
    //         "Delux is a platform that allows you to earn money online effortlessly. Join us today and start your journey towards financial freedom.",
    //     imageUrl: "/assets/img/icon.png",
    //     url: "https://deluxregistration.com",
    //   );
    // });
    super.initState();

    _startAutoSlide();
  }

  void _startAutoSlide() {
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (_currentPage < headings.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _autoPageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  void _showCenterModal(context, content) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(backgroundColor: Colors.black, content: content);
      },
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    _autoPageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BackgroundGradientWidget(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        drawer: MyDrawer(
          onTap: () async {
            await util.launchExternalUrl(telegramLink);
          },
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HeaderWidget(),

                  SizedBox(
                    height: 130,
                    child: PageView(
                      controller: _autoPageController,
                      children: headings,
                    ),
                  ),

                  // const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    height: 400,
                    child: PageView.builder(
                      controller: _pageController,
                      itemCount: imageSliders.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.all(10),
                          width: 350,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(imageSliders[index]),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  Center(
                    child: SmoothPageIndicator(
                      controller: _pageController,
                      count: imageSliders.length,
                      effect: const ExpandingDotsEffect(
                        activeDotColor: Colors.amber,
                        dotColor: Colors.grey,
                        dotHeight: 10,
                        dotWidth: 10,
                        expansionFactor: 4,
                        spacing: 8,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Register Now!',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Earn from the internet effortlessly! Making money online has never been this easy. Discover seamless ways to boost your income and achieve your financial goals from the comfort of your home. Sign up now and start earning today!",
                          style: GoogleFonts.robotoFlex(color: Colors.white),
                        ),
                        const SizedBox(height: 20),
                        CustomElevatedButton(
                          buttonTitle: 'Register Now',
                          onClick: () {
                            Get.toNamed('sign-up');
                            // _showCenterModal(
                            //   context,
                            //   GetStartedDialogContent(),
                            // );
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      'What is Delux?',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),

                  Container(
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'What is Delux?',
                                style: TextStyle(
                                  color: Colors.amber,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text:
                                    " A system designed with deep insights 🧠 to uphold your happiness 😊 through artificial intelligence 🤖, expertise 🎓, and financial knowledge 💰.",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text.rich(
                          TextSpan(
                            text: 'At ',
                            children: [
                              TextSpan(
                                text: 'Delux 🎨',
                                style: TextStyle(
                                  color: Colors.amber,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              TextSpan(
                                text:
                                    ", we're harnessing creativity to build a new wave of millionaires 💵 and billionaires 🏦. Our mission is to make you happy 😊 and financially stable 💰. We keep the spirit of networking alive 🌐, setting the right standards ✅ and breaking boundaries 🌍. Explore our mouth-watering features 🍽️, accessible to all African countries 🌎.",
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 20),
                        CustomElevatedButton(
                          buttonTitle: 'How it works',
                          onClick: () {
                            _showCenterModal(
                              context,
                              HowDeluxWorksDialog(telegramLink: telegramLink),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),

                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),

                        child: Image.asset(
                          'assets/img/7.jpg',

                          fit: BoxFit.contain, // Maintains image proportions
                        ),
                      ),
                    ),
                  ),

                  Center(
                    child: CustomElevatedButton(
                      buttonTitle: 'Join Us Today!',
                      onClick: () {
                        util.launchExternalUrl(telegramLink);
                      },
                    ),
                  ),
                  const SizedBox(height: 20),

                  const FooterWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
