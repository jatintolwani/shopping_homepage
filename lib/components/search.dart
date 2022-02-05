import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 300,
            child: Container(
              color: Colors.white,
              child: const TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  contentPadding: EdgeInsets.only(left: 5),
                  icon: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.search,
                      color: Colors.grey,
                      size: 28,
                    ),
                  ),
                  hintText: "search here",
                  hintStyle: TextStyle(fontSize: 18, color: Colors.grey),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
            width: 50,
            child: Material(
              elevation: 20,
              child: Icon(
                Icons.sort_outlined,
              ),
            ),
          )
        ],
      ),
    );
  }
}
