import 'package:flutter/material.dart';
import '/data/list.dart';

class Grid extends StatelessWidget {
  const Grid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: data.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, crossAxisSpacing: 20, mainAxisSpacing: 20),
        itemBuilder: (ctx, index) => Container(
          color: Colors.white,
          height: 50,
          width: 50,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  data[index]["icon"],
                  color: Colors.orange,
                ),
                Text(
                  data[index]["name"].toString(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
