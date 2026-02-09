import 'package:flutter/material.dart';

import '../widget/custom_text.dart';

class CardWidget2 extends StatelessWidget {
  const CardWidget2({super.key, required this.title, this.subTitle1, this.subTitle2, this.fs1, this.fw1, this.fC1, this.fs2, this.fw2, this.fC2});
  final String title;
  final String? subTitle1;
  final double? fs1;
  final FontWeight? fw1;
  final Color? fC1;
  final String? subTitle2;
  final double? fs2;
  final FontWeight? fw2;
  final Color? fC2;



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: ListView.builder(
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // spacing: 8,
                  children: [
                    SizedBox(height: 5),
                    Center(
                      child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ66ubNfMxRuPH4cP2X5XvaF_lU3aKILmR9VQ&s",
                        width: 86,
                        height: 92,
                      ),
                    ),
                    CustomTextWidget(
                      title: "$title",
                      fs: 16,
                      fw: FontWeight.w500,
                    ),
                    // CustomTextWidget(
                    //   title: "\$3/kg",
                    //   fs: 16,
                    //   fw: FontWeight.w700,
                    // ),
                   // SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                      Text("$subTitle1",style: TextStyle(
                        color: fC1, fontWeight: fw1,fontSize: fs1,
                      ),),
                      Text("$subTitle2",style: TextStyle(
                        color: fC2, fontWeight:fw2,fontSize:fs2,
                      ),),
                    ],)
                  ],
                ),
              ),
            ),
            Positioned(
              top: 10,
              left:10,
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
            ),
          ],
        ),
      ),
    );
  }
}
