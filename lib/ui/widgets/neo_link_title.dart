import 'package:flutter/material.dart';

class NeoLinkTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.bodyText1;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: <Widget>[
        Text(
          'Neo',
          style: style.copyWith(fontWeight: FontWeight.w900, fontSize: 30),
        ),
        Text('Link',
            style: style.copyWith(fontWeight: FontWeight.w100, fontSize: 25))
      ],
    );
  }
}
