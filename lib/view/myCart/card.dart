import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/custom_text.dart';

class NewCardWidget extends StatelessWidget {
  const NewCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.green,
      elevation: 2,
      //color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Image(image: AssetImage("assets/tomato.png")),
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  spacing: 40.w,
                  children: [
                    CustomTextWidget(
                      title: "Organic Tomatoes",
                      fs: 18.sp,
                      fw: FontWeight.w400,
                      fc: Colors.grey[800],
                    ),

                    Icon(Icons.close),
                  ],
                ),
                CustomTextWidget(
                  title: "1 Kg",
                  fs: 14.sp,
                  fw: FontWeight.w400,
                  fc: Colors.grey,
                ),

                Row(
                  spacing: 10.w,

                  children: [
                    CustomTextWidget(
                      title: "\$2",
                      fs: 18.sp,
                      fw: FontWeight.w400,
                      fc: Colors.grey[800],
                    ),
                    SizedBox(width: 10.w),
                    CustomTextWidget(
                      title: "\$3.25",
                      fs: 18.sp,
                      fw: FontWeight.w400,
                      fc: Colors.grey[400],
                      lineT: TextDecoration.lineThrough,
                    ),
                    SizedBox(width: 25.sp),
                    Image(image: AssetImage("assets/minus.png")),
                    CustomTextWidget(
                      title: "1",
                      fs: 24.sp,
                      fw: FontWeight.w600,
                      fc: Colors.green,
                    ),

                    Icon(
                      Icons.add_circle,
                      color: Colors.green,
                      size: 24.r,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}