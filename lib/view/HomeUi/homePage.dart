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

  List<String> sL = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxLIkaxQbk4CHnA7OpIqv_Oxo5I_Z-fAbMLw&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlc19Yvl43P9frY2f4zNl5_C45p66uG9HVKQ&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRitauXvPzHxkrbGRT7-cNw1JB8gR7NhSHE9w&s",
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
              SizedBox(height: 230,
                child: CardWidget2(
                  teg: true,
                  title: 'Fortune rice',
                  subTitle1: "\$3/kg",
                  fs2: 16,
                  fw1: FontWeight.w700, img: 'assets/fortune.png',
                ),
              ),
              SliderWidget(sl: sL),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTextWidget(
                    title: "Deals of the week",
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
              SizedBox(height: 20),
              SizedBox(height: 250,
                child: CardWidget2(
                  title: 'Soft drinks',
                  subTitle1: "Upto 40% off",
                  fs1: 12,
                  fw1: FontWeight.w700,
                  fC1: Colors.green, img: 'assets/softdrink.png',
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTextWidget(
                    title: "Featured Items",
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
              SizedBox(height: 270,
                child: CardWidget2(
                  title: 'Granola Premium Almond ',

                  subTitle1: "\$22.00",
                  fs1: 14,
                  fw1: FontWeight.w700,
                  fC1: Colors.green,
                  subTitle2: "1KG",
                  fs2: 14,
                  fw2: FontWeight.w700, img: 'assets/badam.png',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
