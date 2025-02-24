import 'package:delux/utility_functions.dart';
import 'package:delux/widgets/custom_elevated_button.dart';
import 'package:delux/widgets/handler_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetStartedDialogContent extends StatelessWidget {
  GetStartedDialogContent({super.key});

  final String telegramLink = HandlerWidget().telegramLink;

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
              await UtilityFunctions().launchExternalUrl(telegramLink);
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
          HandlerWidget(),
        ],
      ),
    );
  }
}
