import 'dart:async';

import 'package:delux/utility_functions.dart';
import 'package:delux/widgets/build_handler_icon.dart';
import 'package:delux/widgets/custom_elevated_button.dart';
import 'package:delux/widgets/get_started_dialog_content.dart';
import 'package:delux/widgets/header_widget.dart';
import 'package:delux/widgets/heading_title_widget.dart';
import 'package:delux/widgets/how_delux_works_dialog.dart';
import 'package:delux/widgets/my_drawer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
  final String telegramLink = "https://t.me/m/u-VPuiuQYTA0";
  final String tiktokLink = "https://www.tiktok.com/@keenahmoney";

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
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.amber, Colors.black87, Colors.amber, Colors.black],
          stops: [0.0, 0.7, 0.8, 1.0],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
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
                            _showCenterModal(
                              context,
                              GetStartedDialogContent(
                                telegramLink: telegramLink,
                                tiktokLink: tiktokLink,
                              ),
                            );
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
                            style: TextStyle(color: Colors.white),
                          ),
                        ),

                        const SizedBox(height: 20),
                        CustomElevatedButton(
                          buttonTitle: 'How it works',
                          onClick: () {
                            _showCenterModal(
                              context,
                              const HowDeluxWorksDialog(),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),

                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset('assets/img/7.jpg'),
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
                  Center(
                    child: SizedBox(
                      width: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          BuildHandlerIcon(
                            icon: FontAwesomeIcons.telegram,
                            link: telegramLink,
                          ),
                          BuildHandlerIcon(
                            icon: FontAwesomeIcons.tiktok,
                            link: tiktokLink,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Center(
                    child: Column(
                      children: [
                        Image.asset('assets/img/logo1.png', height: 150),
                        const Text(
                          'All rights reserved',
                          style: TextStyle(color: Colors.white, height: -6),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
