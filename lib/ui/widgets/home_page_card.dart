import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageCard extends StatelessWidget {
  final int count;

  HomePageCard({this.count});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.bodyText1;
    return Card(
      elevation: 2,
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: Container(
        padding: EdgeInsets.all(30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset('assets/user.png'),
            Spacer(
              flex: 2,
            ),
            Text(
              'Person $count',
              style: style.copyWith(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
