import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    super.key,
    required this.title,
    required this.kyboard,
    this.bgC,
    this.bC,
    required this.radius, this.border, this.pIcon, this.fBorder,
  });
  final String title;
  final TextInputType kyboard;
  final Color? bgC;
  final Color? bC;
  final double radius;
  final InputBorder? border;
  final InputBorder? fBorder;
  final IconData? pIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: kyboard,
      cursorColor: Colors.green,
      decoration: InputDecoration(prefixIcon:pIcon != null ? Icon(pIcon) : null,
        fillColor: bgC,
        filled: true,
        hintText: title,
        hintStyle: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
        border: border?? OutlineInputBorder(borderRadius: BorderRadius.circular(radius),
        ),

        focusedBorder: fBorder ?? OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide:  BorderSide(color: bC ?? Colors.green),
        ),
      ),
    );
  }
}
