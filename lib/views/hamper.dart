import 'package:delux/app/app.color.dart';
import 'package:flutter/material.dart';

class Hamper extends StatelessWidget {
  const Hamper({super.key});

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
            child: Image.asset('assets/img/10.jpeg'),
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
                  '🎁 MiAmor Love Hamper\nWhere Love Comes with Surprises!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    height: 1.6,
                  ),
                ),
                SizedBox(height: 16),

                // Weekly Prize Info
                Text(
                  'Every week, lucky users stand a chance to win exclusive gifts right from their dashboard!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    height: 1.5,
                  ),
                ),
                SizedBox(height: 12),

                // Items List
                Text(
                  '🎧 Headphones\n🎵 AirPods\n🔋 Power Banks\n💡 Ring Lights\n🎮 PES Pads\n...and lots more surprises!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    height: 1.6,
                  ),
                ),
                SizedBox(height: 12),

                // Appreciation Note
                Text(
                  '🥹 Our little way of saying *thank you* for being a part of the MiAmor experience.',
                  style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontSize: 16,
                    height: 1.6,
                  ),
                ),
                SizedBox(height: 12),

                // Call to Action
                Text(
                  '🔔 Just log in, spot the hamper icon, and if it appears — it might be your lucky day!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    height: 1.6,
                  ),
                ),
                SizedBox(height: 16),

                // Final Tagline
                Text(
                  '✅ It’s not just about love, it’s about rewards.\n✅ Engage more. Win more. Fall in love — and get gifted.\n❤️ Only on MiAmor.',
                  style: TextStyle(
                    color: AppColor.colorThree,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    height: 1.7,
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
