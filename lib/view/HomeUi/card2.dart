import 'package:flutter/material.dart';

import '../widget/custom_text.dart';

class CardWidget2 extends StatelessWidget {
  const CardWidget2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 240,
      child: ListView.builder(itemCount: 10,scrollDirection: Axis.horizontal,


        itemBuilder: (i,c)=>Stack(
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
                  //spacing: 8,
                  children: [
                    SizedBox(height:5),
                    Center(
                      child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ66ubNfMxRuPH4cP2X5XvaF_lU3aKILmR9VQ&s",
                        width: 86,
                        height: 92,
                      ),
                    ),
                    CustomTextWidget(
                      title: "Fortune rice",
                      fs: 16,
                      fw: FontWeight.w500,
                    ),
                    CustomTextWidget(
                      title: "\$3/kg",
                      fs: 16,
                      fw: FontWeight.w700,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(top: 10
              ,
              child: Container(
                height: 41,
                width: 58.17,
                decoration: BoxDecoration(
                  color: Color(0xff55AB60),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),child: Center(child: CustomTextWidget(title: "37% \n Off",fs: 14,fw: FontWeight.w600,fc: Colors.white,)),
              ),
            ),
          ],
        ),),
    );
  }
}