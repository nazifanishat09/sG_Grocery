import 'package:flutter/material.dart';

import '../widget/custom_text.dart';

class CardWidget2 extends StatelessWidget {
  const CardWidget2({
    super.key,
    required this.title,
    this.subTitle1,
    this.subTitle2,
    this.fs1,
    this.fw1,
    this.fC1,
    this.fs2,
    this.fw2,
    this.fC2, required this.img, this.teg,
  });
  final String title;
  final String? subTitle1;
  final double? fs1;
  final FontWeight? fw1;
  final Color? fC1;
  final String? subTitle2;
  final double? fs2;
  final FontWeight? fw2;
  final Color? fC2;
  final String img;
  final bool? teg;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      scrollDirection: Axis.horizontal,

      itemBuilder: (i, c) => Stack(
        children: [
          Container(
            margin: EdgeInsets.all(8),
            //height: 192,
            width: 162.06,
            decoration: BoxDecoration(
              color: Color(0xffF2FCF4),

              //Colors.red,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // spacing: 8,
                children: [
                  SizedBox(height: 5),
                  Center(
                    child: Image.asset(
                      img,
                      width: 100,
                      height: 100,
                    ),
                  ),
                  SizedBox(height: 30),
                  CustomTextWidget(
                    title: title,
                    maxLine: 2,
                    fs: 16,
                    fw: FontWeight.w500,
                  ),
                  // CustomTextWidget(
                  //   title: "\$3/kg",
                  //   fs: 16,
                  //   fw: FontWeight.w700,
                  // ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Left Text
                      if (subTitle1 != null && subTitle1!.isNotEmpty)
                        Text(
                          subTitle1!,
                          style: TextStyle(
                            color: fC1 ?? Colors.black, // null হলে default
                            fontWeight: fw1 ?? FontWeight.normal,
                            fontSize: fs1 ?? 14,
                          ),
                        )
                      else
                        SizedBox.shrink(), // null হলে empty space

                      // Right Text
                      if (subTitle2 != null && subTitle2!.isNotEmpty)
                        Text(
                          subTitle2!,
                          style: TextStyle(
                            color: fC2 ?? Colors.black,
                            fontWeight: fw2 ?? FontWeight.normal,
                            fontSize: fs2 ?? 14,
                          ),
                        )
                      else
                        SizedBox.shrink(),
                    ],
                  )

                ],
              ),
            ),
          ),


          teg == true ?
          Positioned(
            top: 10,
            left: 10,
            child: Container(
              height: 41,
              width: 58.17,
              decoration: BoxDecoration(
                color: Color(0xff55AB60),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Center(
                child: CustomTextWidget(
                  title: "37% \n Off",
                  fs: 14,
                  fw: FontWeight.w600,
                  fc: Colors.white,
                ),
              ),
            ),
          ) : SizedBox()
        ],
      ),
    );
  }
}
