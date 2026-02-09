import 'package:flutter/material.dart';

import '../widget/custom_text.dart';

class CardWidget1 extends StatelessWidget {
  const CardWidget1({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: ListView.builder(
          clipBehavior: Clip.none,

          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) => Stack(
            alignment: Alignment.topCenter,
            clipBehavior: Clip.none,
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
                bottom: 60,
                left: 10,
                child: Image.asset("assets/apple.png"),

                // child: Image.network(
                //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjNSiND1mtJ4c1x5AHwWfh1JhJVDR2042FhA&s",
                //   width: 75,
                //   height: 65,
                // ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
