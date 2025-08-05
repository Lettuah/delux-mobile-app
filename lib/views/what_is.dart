import 'package:delux/app/app.color.dart';
import 'package:delux/app/app.string.dart' as app_string;
import 'package:delux/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WhatIs extends StatelessWidget {
  const WhatIs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset('assets/img/13.jpeg'),
        Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(color: Colors.blue.shade700),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${app_string.appName.toUpperCase()} OVERVIEW',
                style: const TextStyle(
                  color: Colors.amberAccent,
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                  letterSpacing: 1.2,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                '🎯 MiAmor is a dynamic platform operating across multiple African and foreign countries. It is designed to help users find love, earn income through networking, and gain valuable skills.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  height: 1.6,
                ),
              ),
              const SizedBox(height: 14),
              const Text(
                '🎯 It fosters meaningful connections, financial opportunities, and personal growth by blending love, learning, and earning.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  height: 1.6,
                ),
              ),
              const SizedBox(height: 14),
              const Text(
                '🎯 MiAmor combines relationship-building with entrepreneurship and skill development, with a strong focus on community and empowerment.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  height: 1.6,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                '👉 JOIN TODAY and experience the future of social connection!',
                style: TextStyle(
                  color: AppColor.colorTwo,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
              const SizedBox(height: 15),
              CustomElevatedButton(
                buttonTitle: 'Get Started Now',
                onClick: () {
                  Get.toNamed('sign-up');
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
