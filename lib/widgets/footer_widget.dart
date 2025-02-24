import "package:delux/routes.dart";
import "package:delux/widgets/handler_widget.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        HandlerWidget(),

        Center(
          child: Column(
            children: [
              Image.asset('assets/img/logo1.png', height: 150),
              const Text(
                'All rights reserved',
                style: TextStyle(color: Colors.white, height: -6),
              ),
            ],
          ),
        ),

        Center(
          child: SizedBox(
            width: 300,
            child: Row(
              children: [
                TextButton(onPressed: () {}, child: const Text('About Us')),
                TextButton(
                  onPressed: () {
                    Get.toNamed(AppRoutes.privacy);
                  },
                  child: const Text('Privacy Policy'),
                ),
                TextButton(onPressed: () {}, child: const Text('Contact Us')),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
