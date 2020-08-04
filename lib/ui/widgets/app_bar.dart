import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'neo_link_title.dart';

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 25),
          child: Image.asset(
            'assets/splash.png',
            scale: 2,
          ),
        ),
        NeoLinkTitle(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Icon(
            Icons.help,
            color: Colors.white,
            size: 36,
          ),
        )
      ],
    );
  }
}
