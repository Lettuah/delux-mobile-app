import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeadingTitleWidget extends StatelessWidget {
  final String first;
  final String second;
  final String third;
  final String fourth;
  final String fifth;

  const HeadingTitleWidget({
    required this.first,
    required this.second,
    required this.third,
    required this.fourth,
    required this.fifth,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            first,
            style: GoogleFonts.outfit(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),

          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: second,
                  style: const TextStyle(fontStyle: FontStyle.italic),
                ),
                TextSpan(
                  text: ' $third',
                  style: const TextStyle(
                    color: Colors.lightBlueAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
              style: GoogleFonts.roboto(
                fontSize: 40,
                color: Colors.white,
                height: 0.7,
              ),
            ),
          ),

          Row(
            children: [
              Text(
                fourth,
                style: GoogleFonts.roboto(
                  fontSize: 40,
                  color: Colors.white,
                  height: 1,
                ),
              ),
              const SizedBox(width: 20),
              Text(
                fifth,
                style: GoogleFonts.outfit(
                  fontSize: 40,
                  color: Colors.indigo,
                  height: 1,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
