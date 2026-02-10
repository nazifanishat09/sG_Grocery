import 'package:flutter/material.dart';

import '../widget/custom_text.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({
    super.key, required this.title, required this.subTitle, required this.subTitle2, required this.img,
  });
final String title;
  final String subTitle;
  final String subTitle2;
  final String img;
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 150,
      child: ListView.builder(itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (i,c)=> Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          height: 150,
          width: 114,
          decoration: BoxDecoration(
            color:  Color(0xffF2FCF4),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [SizedBox(height: 10,),
                Center(child: Image(image: AssetImage("$img"),height: 53,width: 76,)),
                SizedBox(height: 8,),
                CustomTextWidget(
                  title: title,
                  fs: 12,
                  fw: FontWeight.w500,fc:Colors.grey[700] ,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTextWidget(
                      title:subTitle,
                      fs: 12,
                      fw: FontWeight.w400,
                      fc: Colors.grey,
                    ),
                    Container(
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                        color: Color(0xff55AB60),
                        borderRadius: BorderRadius.circular(10),
                      ),child: Icon(Icons.add,color: Colors.white,),

                    ),
                  ],
                ),
                CustomTextWidget(
                  title: subTitle2,
                  fs: 12,
                  fw: FontWeight.w600,
                ),
              ],
            ),
          ),
        ),),
    );
  }
}