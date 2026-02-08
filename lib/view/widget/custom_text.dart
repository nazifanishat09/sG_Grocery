import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({
    super.key,
    this.fw,
    this.fc,
    this.fs,
    required this.title,
  });
  final FontWeight? fw;
  final Color? fc;
  final double? fs;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      "$title",
      style: TextStyle(fontSize: fs, color: fc, fontWeight: fw),
    );
  }
}
