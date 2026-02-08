import 'package:flutter/material.dart';

import 'custom_text.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key, required this.title, this.fs, this.fw, this.fc,
  });
  final String title;
  final double? fs;
  final FontWeight? fw;
  final Color? fc;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 396,
      decoration: BoxDecoration(
        color: Color(0xff55AB60),
        borderRadius: BorderRadius.circular(10),
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