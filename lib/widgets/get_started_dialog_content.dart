import 'package:delux/widgets/build_handler_icon.dart';
import 'package:delux/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class GetStartedDialogContent extends StatelessWidget {
  final String telegramLink;
  final String tiktokLink;
  const GetStartedDialogContent({
    required this.telegramLink,
    required this.tiktokLink,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
            onClick: () async {
              final Uri url = Uri.parse(telegramLink);
              if (await canLaunchUrl(url)) {
                await launchUrl(
                  url,
                  mode: LaunchMode.externalApplication,
                ); // Opens in browser
              } else {
                throw 'Could not launch $telegramLink';
              }
            },
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
          Center(
            child: SizedBox(
              width: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BuildHandlerIcon(
                    icon: FontAwesomeIcons.telegram,
                    link: telegramLink,
                  ),
                  BuildHandlerIcon(
                    icon: FontAwesomeIcons.tiktok,
                    link: tiktokLink,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
