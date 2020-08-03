import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neo_link_app/ui/colors/colors.dart';

class HomePageCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.bodyText1;
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/user.png'),
            SizedBox(
              height: 20,
            ),
            Text(
              'Child',
              style: style.copyWith(fontSize: 12, color: kLightBlue),
            ),
          ],
        ),
      ),
    );
  }
}
