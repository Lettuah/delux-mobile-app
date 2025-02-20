import 'dart:async';

import 'package:delux/widgets/custom_elevated_button.dart';
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
    _headingContainer('Earning', 'From', 'The Internet', 'While', 'Sitting'),
    _headingContainer('Smart Ways', 'To Make', 'Money', 'From', 'Home'),
    _headingContainer('Work', 'From', 'Anywhere,', 'Earn', 'Everywhere'),
    _headingContainer('Get Paid', 'Without', 'Leaving', 'Your', 'Couch'),
    _headingContainer('Unlock', 'Passive', 'Income', 'Streams', 'Online'),
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

  void _showCenterModal(context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.black,

          content: _dialogContent(),
        );
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
        drawer: const MyDrawer(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _headerRow(),

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
                            _showCenterModal(context);
                            // Get.defaultDialog(
                            //   title: '',
                            //   titlePadding: const EdgeInsets.all(0),
                            //   backgroundColor: Colors.black,
                            //   content: _dialogContent(),
                            //   contentPadding: const EdgeInsets.all(20),
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
                        _buildElevatedBtn('How it works'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),

                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset('assets/img/2.jpg'),
                  ),

                  Center(child: _buildElevatedBtn('Join Us Today!')),
                  const SizedBox(height: 20),
                  Center(
                    child: SizedBox(
                      width: 200,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildHandlerIcon(FontAwesomeIcons.whatsapp),
                          _buildHandlerIcon(FontAwesomeIcons.telegram),
                          _buildHandlerIcon(FontAwesomeIcons.tiktok),
                          _buildHandlerIcon(FontAwesomeIcons.peopleGroup),
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

  SizedBox _dialogContent() {
    return SizedBox(
      height: 311,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Row(
                  children: [
                    Icon(Icons.close, color: Colors.red.shade500),
                    Text('Close', style: TextStyle(color: Colors.red.shade500)),
                  ],
                ),
              ),
            ],
          ),
          const Divider(color: Colors.white, thickness: 0.5),
          const Text(
            'Get Registered Now!',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          const SizedBox(height: 10),
          const Text.rich(
            TextSpan(
              text: 'Chat with our ',
              children: [
                TextSpan(
                  text: 'Verified Agent',
                  style: TextStyle(color: Colors.amber),
                ),
                TextSpan(text: ' on Telegram to register for Delux'),
              ],
            ),

            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 10),
          CustomElevatedButton(
            textColor: Colors.black,
            buttonColor: Colors.amber,
            buttonTitle: "Click Here Now",
            onClick: () {},
          ),
          const SizedBox(height: 10),
          const Text.rich(
            TextSpan(
              text: 'Join our verified social handles to learn more about how ',
              children: [
                TextSpan(
                  text: ' Delux',
                  style: TextStyle(
                    color: Colors.amber,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(text: ' works.'),
              ],
            ),
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildHandlerIcon(FontAwesomeIcons.whatsapp),
              _buildHandlerIcon(FontAwesomeIcons.telegram),
              _buildHandlerIcon(FontAwesomeIcons.tiktok),
              _buildHandlerIcon(FontAwesomeIcons.peopleGroup),
            ],
          ),
        ],
      ),
    );
  }

  Widget _headingContainer(first, second, third, fourth, fifth) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            first,
            style: GoogleFonts.outfit(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),

          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: second,
                  style: const TextStyle(
                    // color: Colors.white,
                    // fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                TextSpan(
                  text: ' $third',
                  style: const TextStyle(
                    color: Colors.amber,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
              style: GoogleFonts.roboto(
                fontSize: 40,
                color: Colors.white,
                height: 0.7,
              ),
            ),
          ),

          Row(
            children: [
              Text(
                fourth,
                style: GoogleFonts.roboto(
                  fontSize: 40,
                  color: Colors.white,
                  height: 1,
                ),
              ),
              const SizedBox(width: 20),
              Text(
                fifth,
                style: GoogleFonts.outfit(
                  fontSize: 40,
                  color: Colors.white,
                  height: 1,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  SizedBox _headerRow() {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/img/logo1.png',
            height: 120,
            alignment: Alignment.centerLeft,
          ),
          Builder(
            builder:
                (context) => GestureDetector(
                  onTap: () => Scaffold.of(context).openDrawer(),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.menu),
                  ),
                ),
          ),
        ],
      ),
    );
  }

  Container _buildHandlerIcon(icon) {
    return Container(
      width: 40,
      height: 40,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.amber, width: 1),
      ),
      child: Icon(icon, color: Colors.white),
    );
  }

  ElevatedButton _buildElevatedBtn(buttonTitle) {
    return ElevatedButton.icon(
      onPressed: () {},
      label: Text(
        buttonTitle,
        style: const TextStyle(
          color: Colors.amber,
          fontWeight: FontWeight.bold,
        ),
      ),
      icon: const Icon(Icons.arrow_forward),
      style: ElevatedButton.styleFrom(
        iconColor: Colors.amber,
        backgroundColor: Colors.black12,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}
