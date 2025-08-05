import 'package:delux/app/app.color.dart';
import 'package:flutter/material.dart';

class Gme extends StatelessWidget {
  const Gme({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
            child: Image.asset('assets/img/12.jpeg'),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.blue.shade700,
              gradient: LinearGradient(
                colors: [Colors.blue.shade700, Colors.white30],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(20),
              ),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Section 1
                Text(
                  '🔵 What if every match brought you closer to love and money?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    height: 1.6,
                  ),
                ),
                SizedBox(height: 14),

                // Section 2
                Text(
                  '✨ On MiAmor, you can earn up to \$2.5 every time you match or get matched — turning simple swipes into real income.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    height: 1.6,
                  ),
                ),
                SizedBox(height: 14),

                // Section 3
                Text(
                  '🎯 This isn’t just about finding your true partner — it’s a connection that actually pays.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    height: 1.6,
                  ),
                ),
                SizedBox(height: 14),

                // Section 4
                Text(
                  '✅ Imagine getting rewarded while discovering the love of your life.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                    height: 1.6,
                  ),
                ),
                SizedBox(height: 14),

                // Final Call-to-Action
                Text(
                  '❤️ Find love. 💰 Get paid. 🔁 Repeat.\nWith MiAmor, every match is more than magic — it’s money in your pocket.',
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
