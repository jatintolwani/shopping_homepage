import 'package:flutter/material.dart';
import '/data/list.dart';

class WatchGrid extends StatelessWidget {
  const WatchGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: watch.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 0.7),
      itemBuilder: (ctx, index) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        margin: EdgeInsets.all(10),
        height: 350,
        width: 15,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue[50],
                  ),
                  height: 120,
                  width: 200,
                  child: Image.asset(
                    watch[index]["url"],
                    fit: BoxFit.cover,
                    height: 130,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  watch[index]["image"].toString(),
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 10),
                child: Text(
                  watch[index]["label"].toString(),
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(color: Colors.orange[50]),
                      child: const Text(
                        "Promo",
                        style: TextStyle(
                            color: Colors.orange, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      watch[index]['price'],
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
