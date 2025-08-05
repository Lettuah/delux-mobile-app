import 'package:delux/app/app.color.dart';
import 'package:flutter/material.dart';

class BackgroundGradientWidget extends StatelessWidget {
  final Widget child;

  const BackgroundGradientWidget({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColor.colorThree,
            // Color.fromARGB(255, 0, 4, 255),
            Color(0xFFE0F7FA),
            Color.fromARGB(255, 0, 126, 252),
            //// Deep blu
            AppColor.colorThree,
          ],
          stops: [0.0, 0.5, 0.8, 1.0],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: child,
    );
  }
}
