import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sg_grocery/view/widget/customAppber.dart';
import 'package:sg_grocery/view/widget/custom_text.dart';
import 'package:sg_grocery/view/widget/textFormField.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  bool active = true
  ;

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
                        borderRadius: BorderRadius.circular(10),
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
                    fs: 22,
                    fw: FontWeight.w600,
                  ),
                  Radio(activeColor: Colors.green,
                      value: active,groupValue: active, onChanged: (a) {active = a!;
                    setState(() {

                    });

                  }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
