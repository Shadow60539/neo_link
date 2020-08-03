import 'package:flutter/material.dart';
import 'package:neo_link_app/ui/colors/colors.dart';

class GuardianCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.bodyText1;

    return Container(
      margin: EdgeInsets.only(bottom: 36),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Colors.black12,
            spreadRadius: 1,
            blurRadius: 10,
            offset: Offset(0, 2))
      ]),
      child: Card(
        shadowColor: Colors.white,
        child: Padding(
          padding: EdgeInsets.fromLTRB(25, 23, 26, 27),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Image.asset(
                        'assets/certificate.png',
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            'Birth Certificate',
                            style: style.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.black),
                          ),
                          Text(
                            'ACCEPTED CREDENTIAL',
                            style: style.copyWith(
                                fontSize: 10, color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text(
                    '2:25 PM',
                    style: style.copyWith(fontSize: 10, color: Colors.black),
                  )
                ],
              ),
              SizedBox(
                height: 18,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '1 Attributes',
                      style: style.copyWith(fontSize: 12, color: Colors.black),
                    ),
                    Container(
                      height: 38,
                      width: 110,
                      decoration: kGuardianButtonDecoration,
                      child: Center(
                        child: Text(
                          'VIEW',
                          style: style,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
