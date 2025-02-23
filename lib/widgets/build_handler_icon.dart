import 'package:delux/utility_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BuildHandlerIcon extends StatelessWidget {
  final String link;
  final IconData icon;
  BuildHandlerIcon({required this.link, required this.icon, super.key});

  final UtilityFunctions util = Get.put(UtilityFunctions());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.amber, width: 1),
      ),
      child: Center(
        child: GestureDetector(
          onTap: () async {
            await util.launchExternalUrl(link);
          },
          child: Icon(icon, color: Colors.white),
        ),
      ),
    );
  }
}
