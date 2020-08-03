import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neo_link_app/ui/colors/colors.dart';
import 'package:neo_link_app/ui/widgets/app_bar.dart';
import 'package:neo_link_app/ui/widgets/notification_card.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.bodyText1;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              decoration: kHomePageDecoration,
            ),
            MyAppBar(),
            _draggableSheet(style),
          ],
        ),
      ),
    );
  }

  Widget _draggableSheet(TextStyle style) {
    return DraggableScrollableSheet(
      builder: (context, c) {
        return Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 27, horizontal: 21),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '30 MAR 2020  |  2:13 PM',
                  style: style.copyWith(
                      color: Colors.grey, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 17,
                ),
                NotificationCard(),
              ],
            ),
            controller: c,
          ),
        );
      },
      initialChildSize: 0.85,
      maxChildSize: 0.85,
      minChildSize: 0.8,
    );
  }
}
