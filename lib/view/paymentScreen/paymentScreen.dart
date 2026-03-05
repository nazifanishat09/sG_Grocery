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
              child: SingleChildScrollView
                (
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
                      ListView.builder(itemCount: 2,shrinkWrap: true,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                          children: [
                            Radio<int>(
                              activeColor: Colors.green,
                              value: index,
                              groupValue: selectedIndex,
                              onChanged: (int? a) {
                                selectedIndex = a!;
                                setState(() {});
                              },
                            ),
                            Container(
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
                            ),
                          ],
                                            ),
                        ),)
                            
                    ],
                  ),
                ),
              ),
            ),

        ],
      ),
    );
  }
}
