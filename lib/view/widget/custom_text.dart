import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({
    super.key,
    this.fw,
    this.fc,
    this.fs,
    required this.title,
    this.maxLine,
    this.overFlow, this.lineT, this.textA,
  });
  final FontWeight? fw;
  final Color? fc;
  final double? fs;
  final String title;
  final int? maxLine;
  final TextOverflow? overFlow;
  final TextDecoration? lineT;
  final TextAlign? textA;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,textAlign: textA ?? TextAlign.center,
      maxLines: maxLine,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: fs,
        color: fc,
        fontWeight: fw,
        decoration: lineT ?? TextDecoration.none,decorationColor: Colors.grey[400]
      ),
    );
  }
}


