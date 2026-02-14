import 'package:flutter/material.dart';

import '../widget/custom_text.dart';


class PaymentDetailsCard extends StatelessWidget {
  const PaymentDetailsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextWidget(
                  title: "Total MRP",
                  fw: FontWeight.w400,
                  fs: 16,
                  fc: Colors.grey[600],
                ),
                CustomTextWidget(
                  title: "\$ 9.97",
                  fw: FontWeight.w400,
                  fs: 16,
                  fc: Colors.grey[600],
                ),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextWidget(
                  title: "Discount",
                  fw: FontWeight.w400,
                  fs: 16,
                  fc: Colors.grey[600],
                ),
                CustomTextWidget(
                  title: "\$0.00",
                  fw: FontWeight.w400,
                  fs: 16,
                  fc: Colors.grey[600],
                ),

              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextWidget(
                  title: "Shipping Charges",
                  fw: FontWeight.w400,
                  fs: 16,
                  fc: Colors.grey[600],
                ),
                CustomTextWidget(
                  title: "Free",
                  fw: FontWeight.w400,
                  fs: 16,
                  fc: Colors.grey[600],
                ),
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.all(10),
            height: 50,
            width: 396,
            decoration: BoxDecoration(
              color: Color(0xffDCFFE2),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextWidget(
                  title: "Total",
                  fw: FontWeight.w600,
                  fs: 18,
                  fc: Colors.grey[800],
                ),
                CustomTextWidget(
                  title: "\$ 9.97",
                  fw: FontWeight.w600,
                  fs: 18,
                  fc: Colors.grey[800],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}