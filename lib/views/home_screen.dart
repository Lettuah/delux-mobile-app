import 'dart:async';

import 'package:delux/app/app.color.dart';
import 'package:delux/utility_functions.dart';
import 'package:delux/views/earning.dart';
import 'package:delux/views/game.dart';
import 'package:delux/views/gme.dart';
import 'package:delux/views/hamper.dart';
import 'package:delux/views/trip.dart';
import 'package:delux/views/what_is.dart';
import 'package:delux/widgets/background_gradient_widget.dart';
import 'package:delux/widgets/custom_elevated_button.dart';
import 'package:delux/widgets/footer_widget.dart';
import 'package:delux/widgets/handler_widget.dart';
import 'package:delux/widgets/header_widget.dart';
import 'package:delux/widgets/heading_title_widget.dart';
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
    'assets/img/1.jpeg',
    'assets/img/2.jpeg',
    'assets/img/3.jpeg',
    'assets/img/4.jpeg',
    'assets/img/5.jpeg',
    'assets/img/6.jpeg',
    'assets/img/7.jpeg',
    'assets/img/9.jpeg',
  ];

  late final List<Widget> headings = [
    const HeadingTitleWidget(
      first: 'Find',
      second: 'Love',
      third: 'That',
      fourth: 'Feels',
      fifth: 'Right',
    ),
    const HeadingTitleWidget(
      first: 'Connect',
      second: 'Hearts',
      third: 'Across',
      fourth: 'Miles',
      fifth: 'Easily',
    ),
    const HeadingTitleWidget(
      first: 'Love',
      second: 'Meets',
      third: 'Surprises',
      fourth: 'With',
      fifth: 'Rewards',
    ),
    const HeadingTitleWidget(
      first: 'From',
      second: 'Matches',
      third: 'To',
      fourth: 'Moments,',
      fifth: 'Together',
    ),
    const HeadingTitleWidget(
      first: 'Real',
      second: 'Connections',
      third: 'Built',
      fourth: 'On',
      fifth: 'MiAmor',
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
                  height: 350,
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
                      activeDotColor: AppColor.colorThree,
                      dotColor: Colors.blueGrey,
                      dotHeight: 10,
                      dotWidth: 10,
                      expansionFactor: 4,
                      spacing: 8,
                    ),
                  ),
                ),
                const SizedBox(height: 30),

                const WhatIs(),
                const Gme(),
                const Game(),
                const Earning(),
                const Hamper(),
                const Trip(),

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),

                      child: Image.asset(
                        'assets/img/1.jpeg',

                        fit: BoxFit.contain, // Maintains image proportions
                      ),
                    ),
                  ),
                ),

                Center(
                  child: CustomElevatedButton(
                    buttonTitle: 'Join Us Today!',
                    onClick: () async {
                      await util.launchExternalUrl(
                        HandlerWidget().telegramLink,
                      );
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
    );
  }
}
