import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sg_grocery/view/myCart/paymentDetails.dart';
import 'package:sg_grocery/view/widget/button_widget.dart';
import 'package:sg_grocery/view/widget/customAppber.dart';
import 'package:sg_grocery/view/widget/custom_text.dart';

import 'card.dart';
import 'couponCard.dart';

class MyCartScreen extends StatefulWidget {
  const MyCartScreen({super.key});

  @override
  State<MyCartScreen> createState() => _MyCartScreenState();
}

class _MyCartScreenState extends State<MyCartScreen> {
  List nameL = [
    "Today, 6 PM - 10 PM",
    "Tomorrow, 7 AM - 9 PM",
    "Pick a specific date",
  ];
  String? value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Image(image: AssetImage("assets/backArrow.png")),
        centerTitle: true,
        title: CustomTextWidget(
          title: "My Cart",
          fs: 22.sp,
          fw: FontWeight.w700,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            buildDropdownButton(),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 3,

              itemBuilder: (i, c) => NewCardWidget(),
            ),SizedBox(height: 10.h,),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 2,
              itemBuilder: (i, c) => CouponCardWidget(),
            ),
            SizedBox(height: 10),
            CustomTextWidget(
              title: "Promo code can be applied on payment screen",
              fs: 16.sp,
              fw: FontWeight.w600,
              fc: Color(0xffA4E0A4),
              maxLine: 2,
              textA: TextAlign.center,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: CustomTextWidget(
                title: "Payment details",
                fw: FontWeight.w700,
                fs: 22.sp,
                fc: Colors.grey[800],
              ),
            ),
            SizedBox(height: 10.h),
            PaymentDetailsCard(),
            SizedBox(height: 10.h),
            Center(
              child: ButtonWidget(
                title: "Checkout",
                bHeight: 50.h,
                bWidth: 200.w,
                radius: 5.r,
                cC: Colors.green,
                fc: Colors.white,
                fs: 18.sp,
                fw: FontWeight.w600,
              ),
            ),
            SizedBox(height: 10.h),
          ],
        ),
      ),
    );
  }

  DropdownButton<String> buildDropdownButton() {
    return DropdownButton<String>(
      icon: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: Image(image: AssetImage("assets/dropdown.png")),
      ),
      underline: SizedBox(),
      hint: CustomTextWidget(title: 'Tomorrow, 7 AM - 9 PM'),
      value: value == "" ? null : value,

      items: nameL
          .map((v) => DropdownMenuItem<String>(value: v, child: Text(v)))
          .toList(),

      onChanged: (c) {
        value = c;
        setState(() {});
      },
    );
  }
}
