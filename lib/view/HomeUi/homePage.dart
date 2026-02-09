import 'package:flutter/material.dart';
import 'package:sg_grocery/view/HomeUi/card1.dart';
import 'package:sg_grocery/view/HomeUi/slider_ui.dart';
import 'package:sg_grocery/view/widget/custom_text.dart';

import '../widget/searchBer.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'card2.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<String> sl = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuHq8LzgbCl1y0TKSprZhiI94EfrQc_yzJxQ&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9oGtW-OcPE9oEKhTlgKad_MGo_nwD3780uA&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQK9uk-ZY8Omaa7owVLym-umqKZ1IF776tLmQ&s",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              SearchBerWidget(),
              SizedBox(height: 20),
              SliderWidget(sl: sl),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTextWidget(
                    title: "Top Categories",
                    fs: 20,
                    fw: FontWeight.w700,
                    fc: Color(0xff424242),
                  ),
                  CustomTextWidget(
                    title: "Explore all",
                    fs: 16,
                    fw: FontWeight.w600,
                    fc: Color(0xff55AB60),
                  ),
                ],
              ),
              SizedBox(height: 40),

              CardWidget1(),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTextWidget(
                    title: "Top Products",
                    fs: 20,
                    fw: FontWeight.w700,
                  ),
                  CustomTextWidget(
                    title: "Explore all",
                    fs: 16,
                    fw: FontWeight.w600,
                    fc: Colors.green,
                  ),
                ],
              ),
              SizedBox(height: 20),
              CardWidget2()
            ],
          ),
        ),
      ),
    );
  }
}


