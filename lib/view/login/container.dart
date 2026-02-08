import 'package:flutter/material.dart';
import 'package:sg_grocery/view/widget/custom_text.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    super.key,
    required this.conH,
    required this.conW,
    this.conC,
     this.borderC,  required this.conImage, required this.title,
  });
  final double conH;
  final double conW;
  final Color? conC;
  final Color? borderC;
  final AssetImage conImage;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: conH,
      width: conW,
      decoration: BoxDecoration(
        color: conC,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: borderC ?? Colors.green),
      ),child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
        spacing: 5,
        children: [
          Image(image: conImage),
         Text("$title",style: TextStyle(
           color: Colors.grey[700],fontSize: 18,fontWeight: FontWeight.w500,
         ),)
        ],
      ) ,
    );
  }
}
