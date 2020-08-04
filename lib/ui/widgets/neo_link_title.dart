import 'package:flutter/material.dart';

class NeoLinkTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.bodyText1;
    return Text(
      'NeoLink',
      style: style.copyWith(fontWeight: FontWeight.w900, fontSize: 30),
    );
  }
}
