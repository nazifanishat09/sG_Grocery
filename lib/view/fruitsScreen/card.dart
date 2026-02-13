import 'package:flutter/material.dart';

import '../widget/button_widget.dart';
import '../widget/custom_text.dart';


class CardWidgetGride extends StatelessWidget {
  const CardWidgetGride({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(


      itemCount: 10,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.8,
      ),
      itemBuilder: (i, c) => Container(
       // margin: EdgeInsets.only(bottom: 10, right: 10, left: 10),
        height: 236,
        width: 190,
        decoration: BoxDecoration(
          color:Color(0xffF2FCF4),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 120),
                child: Icon(Icons.favorite_border, color: Colors.red),
              ),
              Image(
                image: AssetImage("assets/istobery.png"),
                height: 79,
                width: 107,
              ),
              Row(
                spacing: 10,
                children: [
                  CustomTextWidget(
                    title: "Strawberry",
                    fs: 18,
                    fw: FontWeight.w700,
                    fc: Colors.grey[700],
                  ),
                  CustomTextWidget(
                    title: "(1kg)",
                    fs: 14,
                    fw: FontWeight.w600,
                    fc: Colors.grey[600],
                  ),
                ],
              ),
              Row(
                children: [
                  CustomTextWidget(
                    title: "\$2",
                    fs: 18,
                    fw: FontWeight.w600,
                    fc: Colors.green,
                  ),
                  SizedBox(width: 60),

                  Image(image: AssetImage("assets/minus.png")),
                  CustomTextWidget(
                    title: "2",
                    fs: 18,
                    fw: FontWeight.w600,
                    fc: Colors.green,
                  ),
                  Icon(Icons.add_circle, color: Colors.green),
                ],
              ),
              Row(spacing: 5,
                children: [
                  Expanded(
                    child: ButtonWidget(
                      title: "Subscribe",
                      fc: Colors.white,
                      fs: 12,
                      fw: FontWeight.w600,
                      bHeight: 28,
                      bWidth: 82, cC: Colors.green, radius: 5,
                    ),
                  ),
                  Expanded(
                    child: ButtonWidget(
                      title: "Buy Once",
                      fc: Colors.green,
                      fs: 12,
                      fw: FontWeight.w600,
                      bHeight: 28,
                      bWidth: 82, radius: 5,                            ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}