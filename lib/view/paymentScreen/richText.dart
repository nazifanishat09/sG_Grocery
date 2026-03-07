
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class RichTextWidget extends StatelessWidget {
  const RichTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(textAlign:TextAlign.left,
      text: TextSpan(
        style: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w600,color: Colors.grey,
        ),
        children: [
          TextSpan(
            text:
            "Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our ",
          ),
          TextSpan(
            text: "privacy policy.",
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
