import "package:flutter/material.dart";

class BackgroundGradientWidget extends StatelessWidget {
  final Widget child;
  const BackgroundGradientWidget({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.amber, Colors.black87, Colors.amber, Colors.black],
          stops: [0.0, 0.7, 0.8, 1.0],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
      child: child,
    );
  }
}
