import 'package:flutter/material.dart';
import 'package:sg_grocery/view/widget/customAppber.dart';
import 'package:sg_grocery/view/widget/custom_text.dart';

import 'card.dart';

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
      appBar: AppBar(
        leading: Image(image: AssetImage("assets/backArrow.png")),
        centerTitle: true,
        title: CustomTextWidget(title: "My Cart", fs: 22, fw: FontWeight.w700),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
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
            Expanded(
              child: ListView.builder(itemCount: 3,

                itemBuilder: (i,c)=> NewCardWidget(),),
            )

          ],
        ),
      ),
    );
  }
}


