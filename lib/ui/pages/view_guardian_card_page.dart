import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neo_link_app/ui/colors/colors.dart';

class ViewGuardianPage extends StatelessWidget {
  final int tag;

  ViewGuardianPage({this.tag});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.bodyText1;

    return SafeArea(
      child: Scaffold(
        backgroundColor: kLightBlue,
        body: DraggableScrollableSheet(
          minChildSize: 0.9,
          initialChildSize: 0.9,
          maxChildSize: 1,
          builder: (BuildContext context, ScrollController scrollController) {
            return Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Stack(
                alignment: Alignment.topCenter,
                overflow: Overflow.visible,
                children: <Widget>[
                  ListView(
                    controller: scrollController,
                    padding: EdgeInsets.only(bottom: 64),
                    children: <Widget>[
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: 48),
                          child: Hero(
                            child: Image.asset(
                              'assets/certificate_big.png',
                            ),
                            tag: 'tag_certificate$tag',
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          'Birth Certificate',
                          style: style.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.black),
                        ),
                      ),
                      Center(
                        child: Text(
                          'ACCEPTED CREDENTIAL',
                          style:
                              style.copyWith(fontSize: 10, color: Colors.grey),
                        ),
                      ),
                      SizedBox(
                        height: 36,
                      ),
                      Divider(
                        height: 1,
                        thickness: 1,
                        color: kDividerColor,
                        endIndent: 25,
                        indent: 25,
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      _fieldBuilder(
                          style: style,
                          heading: 'Name',
                          subtitle: 'SHARATH D M'),
                      _fieldBuilder(
                          style: style,
                          heading: 'Hospital',
                          subtitle: 'BAPUJI CARE'),
                      _fieldBuilder(
                          style: style,
                          heading: 'DOB',
                          subtitle: '25 JUL 1997'),
                      _fieldBuilder(
                          style: style,
                          heading: 'Mother\'s Name',
                          subtitle: 'SHAKUNTHALA'),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        height: 62,
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(horizontal: 25),
                        decoration: kGuardianButtonDecoration,
                        child: Center(
                          child: Text(
                            'CLOSE',
                            style: style.copyWith(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Container(
                        height: 62,
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(horizontal: 25),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: kDarkBlue, width: 2),
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Text(
                            'DELETE',
                            style: style.copyWith(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: kDarkBlue),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                      top: -18,
                      child: Container(
                        height: 8,
                        width: 88,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100)),
                      ))
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _fieldBuilder({String heading, String subtitle, TextStyle style}) {
    return Container(
      height: 76,
      padding: EdgeInsets.only(left: 51, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            heading,
            style: style.copyWith(color: Colors.grey),
          ),
          Flexible(
              child: Text(
            subtitle,
            style: style.copyWith(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
          )),
        ],
      ),
    );
  }
}
