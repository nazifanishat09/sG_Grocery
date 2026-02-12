import 'package:flutter/material.dart';

import 'custom_text.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key, required this.title, this.fs, this.fw, this.fc, required this.bHeight, required this.bWidth, this.cC, this.bC, required this.radius,
  });
  final String title;
  final double? fs;
  final FontWeight? fw;
  final Color? fc;
  final double bHeight;
  final double bWidth;
  final Color? cC;
  final Color? bC;
  final double radius;



  @override
  Widget build(BuildContext context) {
    return Container(
      height: bHeight,
      width: bWidth,
      decoration: BoxDecoration(
        color: cC,//Color(0xff55AB60),
        borderRadius: BorderRadius.circular( radius ?? 10),
        border: Border.all(color: bC ?? Colors.green )
      ),
      child: Center(
        child: Text("$title",
        style: TextStyle(
          fontWeight: fw, fontSize: fs,color:fc,
        ),)
      ),
    );
  }
}