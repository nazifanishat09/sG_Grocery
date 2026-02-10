import 'package:flutter/material.dart';

import 'custom_text.dart';
class RowWidget extends StatelessWidget {
  const RowWidget({
    super.key, required this.title, required this.subTitle,
  });
final String title;
  final String subTitle;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomTextWidget(
          title: title,
          fs: 20,
          fw: FontWeight.w700,
        ),
        CustomTextWidget(
          title: subTitle,
          fs: 16,
          fw: FontWeight.w600,
          fc: Colors.green,
        ),
      ],
    );
  }
}