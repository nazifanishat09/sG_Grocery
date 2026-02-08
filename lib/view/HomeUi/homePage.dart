import 'package:flutter/material.dart';
import 'package:sg_grocery/view/HomeUi/slider_ui.dart';
import 'package:sg_grocery/view/widget/custom_text.dart';

import '../widget/searchBer.dart';
import 'package:carousel_slider/carousel_slider.dart';

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

              SizedBox(
                height: 88,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) => Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Container(
                        margin: EdgeInsets.all(5),
                        // height: 88,
                        width: 87,
                        decoration: BoxDecoration(
                          color: Color(0xffF2FCF4),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 38,
                              width: 87,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                ),

                                color: Color(0xff55AB60),
                              ),
                              child: Center(
                                child: CustomTextWidget(
                                  title: "Groecries",
                                  fs: 12,
                                  fw: FontWeight.w600,
                                  fc: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 40,
                        left: 10,

                        child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjNSiND1mtJ4c1x5AHwWfh1JhJVDR2042FhA&s",
                          width: 75,
                          height: 65,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
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
              Container(
                height: 192,
                width: 162.06,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9oGtW-OcPE9oEKhTlgKad_MGo_nwD3780uA&s",
                          width: 86,
                          height: 92,
                        ),
                      ),
                      CustomTextWidget(title: "Fortune rice",fs: 16,fw: FontWeight.w500,),
                      CustomTextWidget(title: "\$3/kg",fs: 16,fw: FontWeight.w700,)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
