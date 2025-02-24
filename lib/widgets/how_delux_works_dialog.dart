import 'package:delux/utility_functions.dart';
import 'package:delux/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HowDeluxWorksDialog extends StatelessWidget {
  final String telegramLink;
  const HowDeluxWorksDialog({required this.telegramLink, super.key});

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
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset('assets/img/5.jpg'),
                  ),
                  const SizedBox(height: 10),
                  const Text.rich(
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
                  const SizedBox(height: 15),
                  const Text(
                    '📝 Tasks you can perform on Delux:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 10),
                  const BulletPoint(
                    text: 'Performing simple social media tasks 📱',
                  ),
                  const BulletPoint(
                    text:
                        'Working on advert jobs for foreign brands every week 🌍',
                  ),
                  const BulletPoint(text: 'Watching and rating movie clips 🎬'),
                  const BulletPoint(
                    text: 'Streaming songs and providing reviews 🎧',
                  ),
                  const BulletPoint(text: '...and much more! 🚀'),

                  const SizedBox(height: 20),
                  const Text(
                    '💡 The best part:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    'Delux has partnered with foreign media brands, enabling you to monetize your social media accounts and earn in Euros 💶.',
                    style: TextStyle(fontSize: 15),
                  ),

                  const SizedBox(height: 20),
                  const Text(
                    '💵 ENROLLMENT FEE: ₦8,500',
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),

                  const SizedBox(height: 20),
                  const Text(
                    '🔥 Once you register, here’s what you get on Delux:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),

                  const SizedBox(height: 10),
                  const Text(
                    '💵 Earnings Breakdown:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 10),
                  const BulletPoint(text: '✅ Activation bonus: 3 Euros 💶'),
                  const BulletPoint(
                    text: '✅ Earn 1.5 Euros daily by completing jobs 📝',
                  ),
                  const BulletPoint(
                    text: '✅ Earn 0.5 Euros daily during your free time 🕒',
                  ),
                  const BulletPoint(
                    text:
                        '✅ Watch short movie clips 🎬: Earn 0.2 Euros per day',
                  ),
                  const BulletPoint(
                    text: '✅ Listen to songs 🎧: Earn 0.2 Euros per song',
                  ),
                  const BulletPoint(
                    text:
                        '✅ Weekly raffle draws 🎟️: Win between 100 to 500 Euros 💶',
                  ),

                  const SizedBox(height: 15),
                  const Text(
                    '💰 Additional earning opportunities:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const BulletPoint(text: '🎮 Play Delux games'),
                  const BulletPoint(text: '📱 Monetize your TikTok account'),
                  const BulletPoint(text: '📝 Complete daily surveys'),

                  const SizedBox(height: 8),
                  const Text(
                    '💵 Earn up to 50 Euros weekly through these extra activities!',
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 20),
                  const Text(
                    '📈 Additional Earnings:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const BulletPoint(text: '🔸 Trainee’s commission: ₦7,500 💸'),
                  const BulletPoint(
                    text:
                        '🔸 Indirect commissions: ₦250 & ₦100 per referral 🤝',
                  ),

                  const SizedBox(height: 20),
                  const Text(
                    '🗓️ Payment Days on Delux:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const BulletPoint(
                    text:
                        '💵 Withdrawals are available twice a week after registration.',
                  ),

                  const SizedBox(height: 20),
                  const Text(
                    '🚀 REGISTRATION DETAILS:',
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const BulletPoint(
                    text:
                        '✅ One-time registration fee: ₦8,500 📝 (for your job permit)',
                  ),
                  const BulletPoint(
                    text:
                        '🎯 Join the VIP group 💎 and learn how to earn over 200 Euros weekly 💶!',
                  ),

                  const SizedBox(height: 10),
                  CustomElevatedButton(
                    buttonColor: Colors.amber,
                    textColor: Colors.black,
                    buttonTitle: "Register Now!",
                    onClick: () async {
                      await UtilityFunctions().launchExternalUrl(telegramLink);
                    },
                  ),

                  const SizedBox(height: 20),
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
