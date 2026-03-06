import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sg_grocery/view/widget/customAppber.dart';
import 'package:sg_grocery/view/widget/custom_text.dart';
import 'package:sg_grocery/view/widget/textFormField.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import 'addressCard.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  bool active = true;
  int selectedIndex = 0;

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
                          fs: 18,
                          fw: FontWeight.w600,
                          fc: Colors.green,
                        ),
                      ],
                    ),
                    CustomTextWidget(
                      title: "Do you have a promo code / Coupon ?",
                      fs: 18,
                      fw: FontWeight.w600,
                    ),
                    TextFormFieldWidget(
                      title: "Enter your code",
                      kyboard: TextInputType.text,
                      radius: 10,
                      pIcon: Icons.sell_outlined,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
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
