import 'package:flutter/material.dart';

import 'custom_text.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
  });

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
        child: CustomTextWidget(
          title: "Login",
          fc: Colors.white,
          fw: FontWeight.w600,
          fs: 18,
        ),
      ),
    );
  }
}