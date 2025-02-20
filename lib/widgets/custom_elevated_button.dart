import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String buttonTitle;
  final VoidCallback onClick;
  final Color buttonColor;
  final Color textColor;

  const CustomElevatedButton({
    super.key,
    required this.buttonTitle,
    required this.onClick,
    this.buttonColor = Colors.black12,
    this.textColor = Colors.amber,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onClick,
      label: Text(
        buttonTitle,
        style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
      ),
      icon: Icon(Icons.arrow_forward, color: textColor),
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}
