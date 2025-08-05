import 'package:delux/app/app.color.dart';
import 'package:flutter/material.dart';

class Trip extends StatelessWidget {
  const Trip({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image Section
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
            child: Image.asset('assets/img/7.jpeg'),
          ),

          // Content Section
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(255, 48, 1, 219),
                  Color.fromARGB(77, 0, 119, 255),
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomCenter,
              ),
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(20),
              ),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                Text(
                  '💞 Love Beyond the Screen\nExperience the MiAmor Love Trip!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    height: 1.6,
                  ),
                ),
                SizedBox(height: 16),

                // Intro
                Text(
                  '✈️ At MiAmor, we don’t just help you find love — we help you create unforgettable memories.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    height: 1.5,
                  ),
                ),
                SizedBox(height: 12),

                // Giveaway Info
                Text(
                  '💙 Lucky couples who find true love through MiAmor stand a chance to win an *all-expenses-paid 5-day romantic getaway* to South Africa!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    height: 1.5,
                  ),
                ),
                SizedBox(height: 12),

                // Highlights
                Text(
                  '🛩️ Find love\n🏝️ Win a journey\n💑 Make it unforgettable',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    height: 1.6,
                  ),
                ),
                SizedBox(height: 12),

                // Final Tagline
                Text(
                  '👩‍❤️‍👨 Because every love story deserves a magical chapter — and yours could begin with a passport stamp.\n\n❤️ Only on MiAmor — where love becomes an experience.',
                  style: TextStyle(
                    color: AppColor.colorThree,
                    fontStyle: FontStyle.italic,
                    fontSize: 16,
                    height: 1.6,
                    fontWeight: FontWeight.w600,
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
