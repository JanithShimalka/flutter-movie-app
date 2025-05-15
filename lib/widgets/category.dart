import 'package:flutter/material.dart';

class category extends StatelessWidget {
  String emoji;
  String text;
  category(this.emoji, this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              alignment: Alignment.center,
              width: 100,
              height: 100,
              decoration: BoxDecoration(color: Colors.grey.shade100),
              child: Text('$emoji', style: TextStyle(fontSize: 35)),
            ),
            Text("$text", style: TextStyle(fontSize: 18)),
          ],
        ),
        SizedBox(width: 10),
      ],
    );
  }
}
