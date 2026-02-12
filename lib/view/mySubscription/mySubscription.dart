import 'package:flutter/material.dart';
import 'package:sg_grocery/view/widget/customAppber.dart';
class MySubscription extends StatefulWidget {
  const MySubscription({super.key});

  @override
  State<MySubscription> createState() => _MySubscriptionState();
}

class _MySubscriptionState extends State<MySubscription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        children: [
          SizedBox(height: 20,),
          CustomAppBerWidget(title: "My Subscription")
        ],
      ),

    );
  }
}
