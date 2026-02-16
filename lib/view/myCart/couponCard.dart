import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/custom_text.dart';

class CouponCardWidget extends StatelessWidget {
  const CouponCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Stack(
        //clipBehavior: Clip.none,
        children: [
          Row(
            spacing: 1,
            children: [
              Container(
                width: 259.w,
                height: 125.h,
                decoration: BoxDecoration(
                  // boxShadow: [
                  //   BoxShadow(
                  //     blurRadius: 50,
                  //     offset: Offset(9,9),
                  //     color: Colors.grey,
                  //   ),
                  // ],

                  color: Color(0xff60C370),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Icon(
                            Icons.close,
                            size: 20.r,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffA4E0A4),
                          ),
                          SizedBox(height: 68.h),
                          Icon(
                            Icons.close,
                            size: 20.r,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffA4E0A4),
                          ),
                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomTextWidget(
                              title: "FLAT",
                              fs: 14.sp,
                              fw: FontWeight.w700,
                              fc: Colors.white,
                            ),
                            CustomTextWidget(
                              title: "50% off",
                              fs: 20.sp,
                              fw: FontWeight.w700,
                              fc: Colors.white,
                            ),
                            CustomTextWidget(
                              title: "on your first order",
                              fs: 14.sp,
                              fw: FontWeight.w400,
                              fc: Colors.white,
                            ),
                            CustomTextWidget(
                              title: "Use coupon code to get OFFER",
                              fs: 12.sp,
                              fw: FontWeight.w400,
                              fc: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 5.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Icon(
                            Icons.close,
                            size: 20.r,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffA4E0A4),
                          ),
                          SizedBox(height: 84),
                          Icon(
                            Icons.close,
                            size: 20.r,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffA4E0A4),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 81.w,
                height: 125.h,
                decoration: BoxDecoration(
                  color: Color(0xff60C370),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Icon(
                            Icons.close,
                            size: 20.r,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffA4E0A4),
                          ),
                          SizedBox(height: 38.h),
                          Icon(
                            Icons.close,
                            size: 20.r,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffA4E0A4),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomTextWidget(
                            title: "code",
                            fs: 14.sp,
                            fw: FontWeight.w400,
                            fc: Colors.white,
                          ),
                          CustomTextWidget(
                            title: "GETFIRST",
                            fs: 14.sp,
                            fw: FontWeight.w700,
                            fc: Colors.white,
                          ),
                        ],
                      ),

                      SizedBox(height: 2),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Icon(
                            Icons.close,
                            size: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffA4E0A4),
                          ),
                          SizedBox(height: 40.h),
                          Icon(
                            Icons.close,
                            size: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffA4E0A4),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            right: 63.w,
            top: -12.h,
            child: Column(
              spacing: 99.h,
              children: [
                SizedBox(
                  height: 25.h,
                  child: CircleAvatar(backgroundColor: Colors.white),
                ),
                SizedBox(
                  height: 25.h,
                  child: CircleAvatar(backgroundColor: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
