import 'package:delux/app/app.color.dart';
import 'package:flutter/material.dart';

class Game extends StatelessWidget {
  const Game({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
            child: Image.asset('assets/img/11.jpeg'),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.blue.shade700,
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
                // Headline
                Text(
                  '🎮 Discover Diverse Games and Win Big on MiAmor!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    height: 1.6,
                  ),
                ),
                SizedBox(height: 16),

                // Introduction
                Text(
                  '🔵 Gaming meets real rewards on MiAmor — just follow 3 easy steps:',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    height: 1.6,
                  ),
                ),
                SizedBox(height: 14),

                // Steps
                Text(
                  '1️⃣ Fund your game wallet\n'
                  '2️⃣ Choose from exciting games and play instantly\n'
                  '3️⃣ Win and withdraw your cash to your bank account',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    height: 1.6,
                  ),
                ),
                SizedBox(height: 14),

                // Motivation
                Text(
                  '⚡ Whether you’re in it for fun or competition, every win translates into real earnings.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    height: 1.6,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(height: 14),

                Text(
                  '💸 The best part? You can withdraw your winnings directly to your bank account.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    height: 1.6,
                  ),
                ),
                SizedBox(height: 14),

                // CTA
                Text(
                  '🧠 Play smart. 🏆 Win real. 💵 Get paid.\nYour next game on MiAmor could be your next big payout!',
                  style: TextStyle(
                    color: AppColor.colorThree,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    height: 1.6,
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
