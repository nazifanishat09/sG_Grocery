import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sg_grocery/view/widget/button_widget.dart';
import 'package:sg_grocery/view/widget/customAppber.dart';
import 'package:sg_grocery/view/widget/custom_text.dart';
import 'package:sg_grocery/view/widget/slider_ui.dart';
import 'package:sg_grocery/view/widget/textFormField.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import 'addressCard.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  //bool active = true;
  int selectedIndex = 0;
  List<String> sl = [
    "https://cdn.pixabay.com/photo/2016/05/03/12/19/credit-card-1369111_1280.png",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQE-efZWdXA39p06Rj5QnSDfZZfV7g9FmXUOw&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXkEgVPf3FrLN3cTspZnMrxf6wn0qNhyLYIg&s",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, bottom: 20, left: 10),
            child: CustomAppBerWidget(title: "Payment"),
          ),

          Expanded(
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(10),
                width: 428.w,
                height: 1958.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  spacing: 10.h,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextWidget(
                      title: "Contact Details",
                      fw: FontWeight.w600,
                      fs: 22.sp,
                      fc: Colors.grey[800],
                    ),
                    TextFormFieldWidget(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      title: "First name",
                      kyboard: TextInputType.text,
                      bgC: Colors.grey[200],
                      bC: Colors.grey[200],
                      radius: 10.r,
                    ),
                    TextFormFieldWidget(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      title: "Last name",
                      kyboard: TextInputType.text,
                      bgC: Colors.grey[200],
                      bC: Colors.grey[200],
                      radius: 10.r,
                    ),
                    TextFormFieldWidget(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      title: "Email",
                      kyboard: TextInputType.emailAddress,
                      bgC: Colors.grey[200],
                      bC: Colors.grey[200],
                      radius: 10.r,
                    ),
                    IntlPhoneField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey[200],
                        filled: true,
                        labelText: 'Phone Number',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      initialCountryCode: 'A',
                      onChanged: (phone) {
                        print(phone.completeNumber);
                      },
                    ),

                    CustomTextWidget(
                      title: "Choose Delivery Address",
                      fs: 22.r,
                      fw: FontWeight.w600,
                    ),
                    ListView.builder(
                      itemCount: 2,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [RadioButton(index), AddressCard()],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.add_circle_outline, color: Colors.green),
                        CustomTextWidget(
                          title: "Add New Address",
                          fs: 18.r,
                          fw: FontWeight.w600,
                          fc: Colors.green,
                        ),
                      ],
                    ),
                    CustomTextWidget(
                      title: "Do you have a promo code / Coupon ?",
                      fs: 18.r,
                      fw: FontWeight.w600,
                    ),
                    TextFormFieldWidget(
                      title: "Enter your code",
                      kyboard: TextInputType.text,
                      radius: 10.r,
                      pIcon: Icons.sell_outlined,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Center(
                      child: ButtonWidget(
                        title: "Apply Now",
                        fc: Colors.white,
                        fs: 18.sp,
                        fw: FontWeight.w600,
                        bHeight: 50.h,
                        bWidth: 200.w,
                        radius: 10.r,
                        cC: Colors.green,
                      ),
                    ),
                    CustomTextWidget(
                      title: "Choose payment method",
                      fs: 22.sp,
                      fw: FontWeight.w600,
                    ),

                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: 4,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 50.h,
                          width: 340.w,
                          decoration: BoxDecoration(
                            color: Colors.green[50],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              RadioButton(index),
                              CustomTextWidget(
                                title: "Cash On Delivery",
                                fs: 16,
                                fw: FontWeight.w400,
                                fc: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.add_circle_outline, color: Colors.green),
                        CustomTextWidget(
                          title: "Add New Card",
                          fs: 16,
                          fw: FontWeight.w600,
                          fc: Colors.green,
                        ),
                      ],
                    ),
                    SliderWidget(sl: sl),
                    Container(
                      height: 42.h,
                      width: 364.w,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomTextWidget(
                              title: "Enter CVV",
                              fs: 16,
                              fw: FontWeight.w600,
                              fc: Colors.white,
                            ),
                          ),

                          SizedBox(width: 10.w),
                          Expanded(
                            child: TextFormFieldWidget(
                              title: "e.g. 123",
                              kyboard: TextInputType.text,
                              bgC: Colors.white,
                              radius: 10,
                              bC: Colors.green,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.green),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Radio<int> RadioButton(int index) {
    return Radio<int>(
      activeColor: Colors.green,
      value: index,
      groupValue: selectedIndex,
      onChanged: (int? a) {
        selectedIndex = a!;
        setState(() {});
      },
    );
  }
}
