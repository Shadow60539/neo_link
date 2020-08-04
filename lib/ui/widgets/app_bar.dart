import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'neo_link_title.dart';

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.lightBlue,
      elevation: 0,
      centerTitle: true,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Image.asset(
          'assets/splash.png',
          scale: 2,
        ),
      ),
      title: NeoLinkTitle(),
      actions: <Widget>[
        GestureDetector(
          onTap: () {},
          child: Image.asset(
            'assets/scan.png',
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
