import 'package:flutter/material.dart';
import 'package:sg_grocery/view/widget/customAppber.dart';
import 'package:sg_grocery/view/widget/custom_text.dart';
import 'package:sg_grocery/view/widget/textFormField.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
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
              width: 428,
              height: 1958,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextWidget(
                    title: "Contact Details",
                    fw: FontWeight.w600,
                    fs: 22,
                    fc: Colors.grey[800],
                  ),
                  TextFormFieldWidget(title: "First name", kyboard: TextInputType.text)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
