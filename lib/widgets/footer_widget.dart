import "package:delux/app/app.color.dart";
import "package:delux/utility_functions.dart";
import "package:delux/widgets/handler_widget.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // HandlerWidget(),
        Center(
          child: Column(
            children: [
              Image.asset('assets/img/logo1.png', height: 150),
              Text(
                'All rights reserved',
                style: TextStyle(color: AppColor.colorThree, height: -6),
              ),
            ],
          ),
        ),

        Center(
          child: TextButton(
            onPressed: () async {
              final UtilityFunctions util = Get.put(UtilityFunctions());
              await util.launchExternalUrl(HandlerWidget().telegramLink);
            },
            child: Text(
              'Contact Us',
              style: TextStyle(color: AppColor.colorThree, height: -6),
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
