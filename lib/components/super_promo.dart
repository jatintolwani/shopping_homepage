import 'package:flutter/material.dart';

class SuperPromo extends StatelessWidget {
  const SuperPromo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(children: const [
        Text(
          "Super hot Promo",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Icon(
          Icons.stacked_line_chart_outlined,
          color: Colors.blue,
        ),
      ]),
    );
  }
}
