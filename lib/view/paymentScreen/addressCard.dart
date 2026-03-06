import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/custom_text.dart';
class AddressCard extends StatelessWidget {
  const AddressCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 174.h,
      width: 275.w,
      decoration: BoxDecoration(boxShadow:[BoxShadow(
          color: Colors.grey,offset: Offset(4,4),blurRadius:7
      )],
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          spacing: 20.h,
          children: [
            Row(
              children: [
                Icon(Icons.home_outlined),
                SizedBox(width: 10.w),
                CustomTextWidget(
                  title: "Home",
                  fs: 18.sp,
                  fw: FontWeight.w600,
                ),
                SizedBox(width: 58.w),
                Icon(Icons.edit, color: Colors.grey),
                SizedBox(width: 10.w),
                Icon(Icons.delete, color: Colors.grey),
              ],
            ),
            CustomTextWidget(
              title:
              "4517 Washington Ave. Manchester, Kentucky 39495",
              fs: 14.r,
              fw: FontWeight.w400,
              maxLine: 2,
              textA: TextAlign.start,
            ),
          ],
        ),
      ),
    );
  }
}