import 'package:flutter/material.dart';

class SearchBerWidget extends StatelessWidget {
  const SearchBerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.text,
      cursorColor: Colors.green,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,

        prefixIcon: Image(image: AssetImage("assets/search.png")),
        hintText: "Search products and brands",
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
