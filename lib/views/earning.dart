import 'package:delux/app/app.color.dart';
import 'package:delux/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

class Earning extends StatelessWidget {
  const Earning({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = ['assets/img/5.jpeg', 'assets/img/6.jpeg'];

    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
            child: CarouselSlider(
              items:
                  imgList.map((imgPath) {
                    return Image.asset(
                      imgPath,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    );
                  }).toList(),
              options: CarouselOptions(
                height: 200.0,
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: 1.0,
                autoPlayInterval: const Duration(seconds: 3),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 48, 1, 219),
                  Color.fromARGB(77, 0, 119, 255),
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header Row
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child:
                            SizedBox(), // Empty space where title header would be
                      ),
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: Text(
                            'Plus',
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: Text(
                            'Ultra',
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Data rows
                const EarningRowItems(
                  title: 'Access Fee',
                  plusValue: '10,000',
                  ultraValue: '14,000',
                ),
                const EarningRowItems(
                  title: 'Onboarding Gift',
                  plusValue: '8,000',
                  ultraValue: '12,500',
                ),
                const EarningRowItems(
                  title: 'Connection Commission',
                  plusValue: '9,100',
                  ultraValue: '12,500',
                ),
                const EarningRowItems(
                  title: 'First Level Spill',
                  plusValue: '200',
                  ultraValue: '400',
                ),
                const EarningRowItems(
                  title: 'Second Level Spill',
                  plusValue: '100',
                  ultraValue: '150',
                ),
                const EarningRowItems(
                  title: 'Game Module',
                  plusValue: '3,000',
                  ultraValue: '5,000',
                ),
                const EarningRowItems(
                  title: 'Matching Addon',
                  plusValue: '2,000',
                  ultraValue: '2,500',
                ),
                const EarningRowItems(
                  title: 'Open Love Hamper',
                  plusValue: '5,000',
                  ultraValue: '10,000',
                ),
                const EarningRowItems(
                  title: 'TikTok/FB Share',
                  plusValue: '1500/5k views',
                  ultraValue: '2500/5k views',
                ),
                const EarningRowItems(
                  title: 'Number of Matches',
                  plusValue: '>2 per Wk',
                  ultraValue: '>5 per Wk',
                ),

                const EarningColumnItemContainer(keyValue: 'INCENTIVES: '),
                const EarningColumnItemContainer(
                  keyValue: 'COUPLES CHALLENGE: ',
                ),
                const EarningColumnItemContainer(keyValue: 'SKILLS LAB: '),
                const EarningColumnItemContainer(keyValue: 'COUPLES TRIP: '),
                const EarningColumnItemContainer(keyValue: 'LOVE HAMPER: '),
                const EarningColumnItemContainer(keyValue: 'SELL IT SECTOR: '),
                const EarningColumnItemContainer(keyValue: 'MARATHON: '),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  child: CustomElevatedButton(
                    buttonTitle: 'Connect Now! Start Earning Now!',
                    onClick: () {
                      Get.toNamed('sign-up');
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class EarningRowItems extends StatelessWidget {
  final String title;
  final dynamic plusValue;
  final dynamic ultraValue;

  const EarningRowItems({
    required this.title,
    required this.plusValue,
    required this.ultraValue,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          // Title
          Expanded(
            flex: 2,
            child: Text(title, style: const TextStyle(fontSize: 16)),
          ),
          // Plus value
          Expanded(
            flex: 1,
            child: Center(child: EarningItemContainer(value: plusValue)),
          ),
          // Ultra value
          Expanded(
            flex: 1,
            child: Center(child: EarningItemContainer(value: ultraValue)),
          ),
        ],
      ),
    );
  }
}

class EarningItemContainer extends StatelessWidget {
  final dynamic value;
  const EarningItemContainer({required this.value, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.colorTwo, width: 2),
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(colors: [Colors.blue, Colors.indigo]),
      ),
      child: Center(child: Text(value)),
    );
  }
}

class EarningColumnItemContainer extends StatelessWidget {
  final String keyValue;

  const EarningColumnItemContainer({required this.keyValue, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.colorTwo, width: 2),
        borderRadius: BorderRadius.circular(8),
        gradient: const LinearGradient(
          colors: [Colors.indigo, Colors.blue],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(keyValue),
              const Text(
                'DEPLOYED',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const Row(children: [Text('100%')]),
        ],
      ),
    );
  }
}
