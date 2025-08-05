import "package:delux/app/app.color.dart";
import "package:flutter/material.dart";

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
              const Text(
                'All rights reserved',
                style: TextStyle(color: AppColor.colorTwo, height: -6),
              ),
            ],
          ),
        ),

        const SizedBox(height: 20),
      ],
    );
  }
}
