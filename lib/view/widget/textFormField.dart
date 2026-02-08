import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    super.key, required this.title, required this.kyboard,
  });
final String title;
final TextInputType kyboard;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: kyboard,
      cursorColor: Colors.green,
      decoration: InputDecoration(
        hintText: "$title",
        hintStyle: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green),
        ),
      ),
    );
  }
}