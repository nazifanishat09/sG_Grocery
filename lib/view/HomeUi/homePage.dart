import 'package:flutter/material.dart';
import 'package:sg_grocery/view/HomeUi/slider_ui.dart';

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
        child: Column(
          children: [
            SizedBox(height: 30),
            SearchBerWidget(),
            SizedBox(height: 20),
            SliderWidget(sl: sl),
          ],
        ),
      ),
    );
  }
}
