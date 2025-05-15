import 'package:flutter/material.dart';

class category_bar extends StatelessWidget {
  category_bar(this.text, {super.key});
  String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "$text",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text("See All", style: TextStyle(color: Colors.red, fontSize: 17)),
      ],
    );
  }
}
