import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HowDeluxWorksDialog extends StatelessWidget {
  const HowDeluxWorksDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '✨ How Delux Works',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  onPressed: () => Get.back(),
                  icon: Row(
                    children: [
                      Icon(Icons.close, color: Colors.red.shade400),
                      const SizedBox(width: 4),
                      Text(
                        'Close',
                        style: TextStyle(
                          color: Colors.red.shade400,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Divider(thickness: 0.5),
          const Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 3, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Delux ',
                          style: TextStyle(
                            color: Colors.amber,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text:
                              'is an online social media platform that pays in Euros 💶 for performing the following tasks:',
                        ),
                      ],
                    ),
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 15),
                  Text(
                    '📝 Tasks you can perform on Delux:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  BulletPoint(text: 'Performing simple social media tasks 📱'),
                  BulletPoint(
                    text:
                        'Working on advert jobs for foreign brands every week 🌍',
                  ),
                  BulletPoint(text: 'Watching and rating movie clips 🎬'),
                  BulletPoint(text: 'Streaming songs and providing reviews 🎧'),
                  BulletPoint(text: '...and much more! 🚀'),

                  SizedBox(height: 20),
                  Text(
                    '💡 The best part:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 6),
                  Text(
                    'Delux has partnered with foreign media brands, enabling you to monetize your social media accounts and earn in Euros 💶.',
                    style: TextStyle(fontSize: 15),
                  ),

                  SizedBox(height: 20),
                  Text(
                    '💵 ENROLLMENT FEE: ₦8,000',
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),

                  SizedBox(height: 20),
                  Text(
                    '🔥 Once you register, here’s what you get on Delux:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),

                  SizedBox(height: 10),
                  Text(
                    '💵 Earnings Breakdown:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  BulletPoint(text: '✅ Activation bonus: 3 Euros 💶'),
                  BulletPoint(
                    text: '✅ Earn 1.5 Euros daily by completing jobs 📝',
                  ),
                  BulletPoint(
                    text: '✅ Earn 0.5 Euros daily during your free time 🕒',
                  ),
                  BulletPoint(
                    text:
                        '✅ Watch short movie clips 🎬: Earn 0.2 Euros per day',
                  ),
                  BulletPoint(
                    text: '✅ Listen to songs 🎧: Earn 0.2 Euros per song',
                  ),
                  BulletPoint(
                    text:
                        '✅ Weekly raffle draws 🎟️: Win between 100 to 500 Euros 💶',
                  ),

                  SizedBox(height: 15),
                  Text(
                    '💰 Additional earning opportunities:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  BulletPoint(text: '🎮 Play Delux games'),
                  BulletPoint(text: '📱 Monetize your TikTok account'),
                  BulletPoint(text: '📝 Complete daily surveys'),

                  SizedBox(height: 8),
                  Text(
                    '💵 Earn up to 50 Euros weekly through these extra activities!',
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 20),
                  Text(
                    '📈 Additional Earnings:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  BulletPoint(text: '🔸 Trainee’s commission: ₦7,500 💸'),
                  BulletPoint(
                    text:
                        '🔸 Indirect commissions: ₦250 & ₦100 per referral 🤝',
                  ),

                  SizedBox(height: 20),
                  Text(
                    '🗓️ Payment Days on Delux:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  BulletPoint(
                    text:
                        '💵 Withdrawals are available twice a week after registration.',
                  ),

                  SizedBox(height: 20),
                  Text(
                    '🚀 REGISTRATION DETAILS:',
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 10),
                  BulletPoint(
                    text:
                        '✅ One-time registration fee: ₦8,000 📝 (for your job permit)',
                  ),
                  BulletPoint(
                    text:
                        '🎯 Join the VIP group 💎 and learn how to earn over 200 Euros weekly 💶!',
                  ),

                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BulletPoint extends StatelessWidget {
  final String text;
  const BulletPoint({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('• ', style: TextStyle(color: Colors.amber, fontSize: 16)),
          Expanded(child: Text(text, style: const TextStyle(fontSize: 15))),
        ],
      ),
    );
  }
}
