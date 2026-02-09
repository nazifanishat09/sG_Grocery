import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({
    super.key,
    required this.sl,
  });

  final List<String> sl;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(height:154,viewportFraction: .9,autoPlay: true),
      items: sl.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
             width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image:DecorationImage(image: NetworkImage(i),
                    fit: BoxFit.fill),
              ),

            );
          },
        );
      }).toList(),
    );
  }
}