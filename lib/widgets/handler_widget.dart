import "package:delux/utility_functions.dart";
import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:get/get.dart";

class HandlerWidget extends StatelessWidget {
  HandlerWidget({super.key});

  final String telegramLink = "https://t.me/m/u-VPuiuQYTA0";
  final String tiktokLink = "https://www.tiktok.com/@keenahmoney";
  final String whatsappLink = "https://wa.me/2349032330132";

  final UtilityFunctions util = Get.put(UtilityFunctions());

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 130,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildHandlerIcon(FontAwesomeIcons.telegram, telegramLink),
            _buildHandlerIcon(FontAwesomeIcons.tiktok, tiktokLink),
            _buildHandlerIcon(FontAwesomeIcons.whatsapp, whatsappLink),
          ],
        ),
      ),
    );
  }

  Container _buildHandlerIcon(icon, link) {
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
