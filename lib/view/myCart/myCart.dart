import 'package:flutter/material.dart';
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
        title: CustomTextWidget(title: "My Cart", fs: 22, fw: FontWeight.w700),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DropdownButton<String>(
                icon: Image(image: AssetImage("assets/dropdown.png")),
                underline: SizedBox(),
                hint: CustomTextWidget(title: 'Tomorrow, 7 AM - 9 PM', fs: 10),
                value: value == "" ? null : value,

                items: nameL
                    .map(
                      (v) => DropdownMenuItem<String>(value: v, child: Text(v)),
                    )
                    .toList(),

                onChanged: (c) {
                  value = c;
                  setState(() {});
                },
              ),
              SizedBox(
                height: 350,
                child: Expanded(
                  child: ListView.builder(
                    itemCount: 3,

                    itemBuilder: (i, c) => NewCardWidget(),
                  ),
                ),
              ),
              SizedBox(
                height: 270,
                child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (i, c) => CouponCardWidget(),
                ),
              ),
              SizedBox(height: 10),
              CustomTextWidget(
                title: "Promo code can be applied on payment screen",
                fs: 16,
                fw: FontWeight.w600,
                fc: Color(0xffA4E0A4),
                maxLine: 2,
                textA: TextAlign.center,
              ),
              CustomTextWidget(
                title: "Payment details",
                fw: FontWeight.w700,
                fs: 22,
                fc: Colors.grey[800],
              ),
              SizedBox(height: 10,),
              Card(color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomTextWidget(
                            title: "Total MRP",
                            fw: FontWeight.w400,
                            fs: 16,
                            fc: Colors.grey[600],
                          ),
                          CustomTextWidget(
                            title: "\$ 9.97",
                            fw: FontWeight.w400,
                            fs: 16,
                            fc: Colors.grey[600],
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomTextWidget(
                            title: "Discount",
                            fw: FontWeight.w400,
                            fs: 16,
                            fc: Colors.grey[600],
                          ),
                          CustomTextWidget(
                            title: "\$ 0.00",
                            fw: FontWeight.w400,
                            fs: 1,
                            fc: Colors.grey[600],
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomTextWidget(
                            title: "Shipping Charges",
                            fw: FontWeight.w400,
                            fs: 16,
                            fc: Colors.grey[600],
                          ),
                          CustomTextWidget(
                            title: "Free",
                            fw: FontWeight.w400,
                            fs: 16,
                            fc: Colors.grey[600],
                          ),
                        ],
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.all(10),
                      height: 40,
                      width: 396,
                      decoration: BoxDecoration(
                        color: Color(0xffDCFFE2),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomTextWidget(
                            title: "Total",
                            fw: FontWeight.w600,
                            fs: 18,
                            fc: Colors.grey[800],
                          ),
                          CustomTextWidget(
                            title: "\$ 9.97",
                            fw: FontWeight.w600,
                            fs: 18,
                            fc: Colors.grey[800],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
