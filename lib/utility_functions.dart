import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UtilityFunctions {
  Future<void> launchExternalUrl(String link) async {
    try {
      final Uri url = Uri.parse(link);
      if (await canLaunchUrl(url)) {
        await launchUrl(url, mode: LaunchMode.externalApplication);
      } else {
        throw Exception('Could not launch $link');
      }
    } catch (e) {
      debugPrint('Error launching URL: $e');
    }
  }
}
