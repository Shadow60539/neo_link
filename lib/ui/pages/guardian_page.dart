import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neo_link_app/ui/colors/colors.dart';
import 'package:neo_link_app/ui/widgets/guardian_card.dart';

class GuardianPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.bodyText1;

    return SafeArea(
      child: Scaffold(
          appBar: _appBar(context, style),
          backgroundColor: kLightBlue,
          body: DraggableScrollableSheet(
            minChildSize: 0.9,
            maxChildSize: 1,
            initialChildSize: 1,
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                margin: EdgeInsets.only(top: 24),
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(21, 38, 21, 0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: ListView(
                  controller: scrollController,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 17),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            '30 MAR 2020  |  2:13 PM',
                            style: style.copyWith(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Added Connection',
                            style: style.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black),
                          ),
                          Text(
                            'You have added  Libre Health as a connection',
                            style: style.copyWith(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Divider(
                      height: 1,
                      thickness: 1,
                      color: kDividerColor,
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      '30 MAR 2020  |  2:13 PM',
                      style: style.copyWith(
                          color: Colors.grey, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    GuardianCard(
                      tag: 1,
                    ),
                    GuardianCard(
                      tag: 2,
                    ),
                  ],
                ),
              );
            },
          )),
    );
  }

  Widget _appBar(BuildContext context, TextStyle style) {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 16,
          ),
          onPressed: () => Navigator.pop(context)),
      title: Text(
        'Guardian',
        style: style.copyWith(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
          onPressed: () {},
        )
      ],
    );
  }
}
