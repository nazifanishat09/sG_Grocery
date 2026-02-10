import 'package:flutter/material.dart';

import '../widget/custom_text.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({
    super.key,
  });

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
                Center(child: Image(image: AssetImage("assets/image1.png"))),
                SizedBox(height: 8,),
                CustomTextWidget(
                  title: "Jaggery Powder",
                  fs: 12,
                  fw: FontWeight.w500,fc:Colors.grey[700] ,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTextWidget(
                      title: "500 g",
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
                  title: "\$3",
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