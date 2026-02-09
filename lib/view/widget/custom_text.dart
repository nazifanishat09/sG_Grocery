import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({
    super.key,
    this.fw,
    this.fc,
    this.fs,
    required this.title, this.maxLine, this.overFlow,
  });
  final FontWeight? fw;
  final Color? fc;
  final double? fs;
  final String title;
  final int? maxLine;
  final TextOverflow? overFlow;

  @override
  Widget build(BuildContext context) {
    return Text(
      "$title",maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: fs, color: fc, fontWeight: fw,



      ),
    );
  }
}
