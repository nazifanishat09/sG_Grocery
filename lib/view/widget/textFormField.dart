import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    super.key,
    required this.title,
    required this.kyboard,
    this.bgC,
    this.bC,
    required this.radius, this.border,
  });
  final String title;
  final TextInputType kyboard;
  final Color? bgC;
  final Color? bC;
  final double radius;
  final InputBorder? border;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: kyboard,
      cursorColor: Colors.green,
      decoration: InputDecoration(
        fillColor: bgC,
        filled: true,
        hintText: title,
        hintStyle: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
        border: border?? OutlineInputBorder(borderRadius: BorderRadius.circular(radius),
        ),

        focusedBorder: border ?? OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide:  BorderSide(color: bC ?? Colors.green),
        ),
      ),
    );
  }
}
