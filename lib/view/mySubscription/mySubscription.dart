import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:sg_grocery/view/widget/customAppber.dart';
import 'package:sg_grocery/view/widget/custom_text.dart';

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
      body: Column(
        children: [
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20, left: 10),
            child: CustomAppBerWidget(title: "My Subscription"),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: DropdownButtonFormField<String>(
              //dropdownColor:Colors.green[100] ,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(borderSide: BorderSide.none),
              ),
              icon: Icon(Icons.keyboard_arrow_down_outlined),

              // initialValue: dropDownvalue,

              // initialValue: dropDownvalue == "" ? null : dropDownvalue,
              hint: Text("Subscription -Weekly"),
              items: name.map((v) {
                log("$v");
                return DropdownMenuItem<String>(value: v, child: Text(v));
              }).toList(),
              onChanged: (c) {
                dropDownvalue = c;
                setState(() {});

                log("$dropDownvalue");
              },
            ),
          ),

          Expanded(
            child: Container(
              height: 728,
              width: 430,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: Row(
                      spacing: 10,
                      children: [
                        CustomTextWidget(
                          title: "Today",
                          fs: 18,
                          fw: FontWeight.w900,
                          fc: Colors.grey[700],
                        ),
                        CustomTextWidget(
                          title: "(23 September 2021)",
                          fs: 18,
                          fw: FontWeight.w400,
                          fc: Colors.grey[600],
                        ),
                        Icon(
                          Icons.calendar_month_outlined,
                          color: Colors.grey[600],
                        ),
                      ],
                    ),
                  ),

                  Expanded(
                    child: ListView.builder(
                      itemCount: 3,

                      itemBuilder: (i, c) => Stack(
                        children: [
                          Card(
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                spacing: 10,
                                children: [
                                  Image(
                                    image: AssetImage("assets/fortune.png"),
                                  ),
                                  Column(
                                    spacing: 5,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        spacing: 120,
                                        children: [
                                          CustomTextWidget(
                                            title: "Fortune rice",
                                            fs: 16,
                                            fw: FontWeight.w600,
                                            fc: Colors.grey[700],
                                          ),
                                          CustomTextWidget(
                                            title: "Qty : 2",
                                            fw: FontWeight.w600,
                                            fs: 14,
                                            fc: Colors.grey[600],
                                          ),
                                        ],
                                      ),
                                      CustomTextWidget(
                                        title: "1 kg",
                                        fw: FontWeight.w400,
                                        fs: 14,
                                        fc: Colors.grey,
                                      ),
                                      CustomTextWidget(
                                        title: "\$3",
                                        fs: 18,
                                        fw: FontWeight.w700,
                                        fc: Colors.grey[800],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 4,
                            right: 4,
                            child: Container(
                              width: 159,
                              height: 43,
                              decoration: BoxDecoration(
                                color: Color(0xff55AB60),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomTextWidget(
                                      title: "M",
                                      fs: 14,
                                      fw: FontWeight.w700,
                                      fc: Colors.white,
                                    ),
                                    CustomTextWidget(
                                      title: "T",
                                      fs: 14,
                                      fw: FontWeight.w700,
                                      fc: Colors.white,
                                    ),
                                    CustomTextWidget(
                                      title: "W",
                                      fs: 14,
                                      fw: FontWeight.w700,
                                      fc: Colors.white,
                                    ),
                                    CustomTextWidget(
                                      title: "T",
                                      fs: 14,
                                      fw: FontWeight.w700,
                                      fc: Colors.white,
                                    ),
                                    CustomTextWidget(
                                      title: "F",
                                      fs: 14,
                                      fw: FontWeight.w700,
                                      fc: Colors.white,
                                    ),
                                    CustomTextWidget(
                                      title: "S",
                                      fs: 14,
                                      fw: FontWeight.w700,
                                      fc: Colors.white,
                                    ),
                                    CustomTextWidget(
                                      title: "S",
                                      fs: 14,
                                      fw: FontWeight.w700,
                                      fc: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Image(image: AssetImage("assets/exit.png")),
                  CustomTextWidget(
                    title: "Excited to serve you the best quality",
                    fw: FontWeight.w400,
                    fs: 15,fc: Colors.grey[600],
                  ),//😣😣😣😣😣😣😣😣😣😣😣😣😣😣problem
                  SizedBox(height: 100,)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
