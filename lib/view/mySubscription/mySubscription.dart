import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:sg_grocery/view/widget/customAppber.dart';

class MySubscription extends StatefulWidget {
  const MySubscription({super.key});

  @override
  State<MySubscription> createState() => _MySubscriptionState();
}

class _MySubscriptionState extends State<MySubscription> {
  List name = [
    "Subscription -Weekly",
    "Subscription -Monthly",
    "Subscription -Yearly",
  ];

  String? dropDownvalue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 20),
            CustomAppBerWidget(title: "My Subscription"),
            Container(
              height: 51,width: 396,decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),

            ),child:  Center(
              child: DropdownButton<String>(

                value: dropDownvalue == "" ? null : dropDownvalue,

                hint: Text("Subscription -Weekly"),
                items: name.map((v) {
                  return DropdownMenuItem<String>(value: v, child: Text(v));
                }).toList(),
                onChanged: (c) {
                  dropDownvalue = c;
                  setState(() {});

                  log("$dropDownvalue");
                },underline: SizedBox(),
              ),
            ),

            ),

          ],
        ),
      ),
    );
  }
}
