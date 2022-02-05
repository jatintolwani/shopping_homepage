import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Discover",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Find what you are looking for",
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
