import 'package:flutter/material.dart';

import '/components/header.dart';
import '/components/gridview.dart';
import '/components/search.dart';
import '/components/super_promo.dart';
import '/components/watchgrid.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Header(),
          Padding(
            padding: EdgeInsets.only(top: 20),
          ),
          Search(),
          Padding(
            padding: EdgeInsets.only(top: 20),
          ),
          Grid(),
          Padding(
            padding: EdgeInsets.only(top: 20),
          ),
          SuperPromo(),
          Padding(padding: EdgeInsets.only(top: 10)),
          WatchGrid(),
        ],
      ),
    );
  }
}
