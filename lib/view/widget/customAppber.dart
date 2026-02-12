import 'package:flutter/material.dart';

import 'custom_text.dart';


class CustomAppBerWidget extends StatelessWidget {
  const CustomAppBerWidget({
    super.key, required this.title,
  });final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20,bottom: 100,left: 10),
      child: Row(
        spacing: 30,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(image: AssetImage("assets/backArrowWhite.png")),
          CustomTextWidget(
            title: title,
            fs: 22,
            fw: FontWeight.w700,
            fc: Colors.white,
          ),
        ],
      ),
    );
  }
}