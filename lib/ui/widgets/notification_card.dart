import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.bodyText1;

    return Container(
      margin: EdgeInsets.only(bottom: 36),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black12,
          spreadRadius: 0.5,
          blurRadius: 20,
        )
      ], borderRadius: BorderRadius.circular(10)),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        shadowColor: Colors.white,
        child: Padding(
          padding: EdgeInsets.fromLTRB(25, 23, 26, 27),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Connection 1bcdassfesa.............',
                      style: style.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black),
                    ),
                    Text(
                      'Tap to accept or decline',
                      style: style.copyWith(fontSize: 10, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Text(
                  '2:25 PM',
                  style: style.copyWith(fontSize: 10, color: Colors.black),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
