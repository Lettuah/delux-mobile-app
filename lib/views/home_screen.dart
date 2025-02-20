import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final TextStyle headStyle = GoogleFonts.robotoCondensed(
    fontSize: 40,
    color: Colors.white,
  );
  final PageController _pageController = PageController();
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
        drawer: Drawer(
          backgroundColor: Colors.black,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Container(
                decoration: const BoxDecoration(),
                child: Image.asset('assets/img/logo1.png', height: 150),
              ),
              ListTile(
                leading: const Icon(
                  FontAwesomeIcons.house,
                  color: Colors.white,
                ),
                title: const Text(
                  'Home',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                leading: const Icon(
                  FontAwesomeIcons.circleInfo,
                  color: Colors.white,
                ),
                title: const Text(
                  'Learn More',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () => Navigator.pop(context),
              ),

              const SizedBox(
                height: 500,
              ), // Adjust height as needed to push content up
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    '© ${DateTime.now().year} Delux Inc.',
                    style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
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
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Earning',
                          style: GoogleFonts.outfit(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Text.rich(
                          TextSpan(
                            text: 'From',
                            children: const [
                              TextSpan(
                                text: ' The Internet',
                                style: TextStyle(
                                  color: Colors.amber,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                            style: GoogleFonts.roboto(
                              fontSize: 40,
                              color: Colors.white,
                            ),
                          ),
                        ),

                        Row(
                          children: [
                            Text(
                              'While',
                              style: GoogleFonts.roboto(
                                fontSize: 40,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 20),
                            Text(
                              'Sitting',
                              style: GoogleFonts.outfit(
                                fontSize: 40,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

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
                        _buildElevatedBtn('Register Now'),
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
                        const Text(
                          "At Delux 🎨, we're harnessing creativity to build a new wave of millionaires 💵 and billionaires 🏦. Our mission is to make you happy 😊 and financially stable 💰. We keep the spirit of networking alive 🌐, setting the right standards ✅ and breaking boundaries 🌍. Explore our mouth-watering features 🍽️, accessible to all African countries 🌎.",
                          style: TextStyle(color: Colors.white),
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
                          style: TextStyle(color: Colors.white, height: -5),
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
