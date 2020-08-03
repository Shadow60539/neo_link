import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:neo_link_app/ui/colors/colors.dart';
import 'package:neo_link_app/ui/pages/guardian_page.dart';
import 'package:neo_link_app/ui/widgets/app_bar.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.bodyText1;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              color: kDarkBlue,
            ),
            _backgroundContainer(style, context),
            _draggableSheet(style),
          ],
        ),
      ),
    );
  }

  Widget _backgroundContainer(TextStyle style, BuildContext context) {
    return Column(
      children: <Widget>[
        MyAppBar(),
        GestureDetector(
          onTap: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => GuardianPage())),
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: Image.asset(
                    'assets/user_dp.png',
                    scale: 1.6,
                  ),
                ),
                SizedBox(
                  height: 11,
                ),
                Text(
                  'Shakunthala',
                  style:
                      style.copyWith(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ],
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
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 40, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Image.asset('assets/fingerprint.png'),
                          SizedBox(
                            width: 3,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(color: kDividerColor))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'Biometric Authentication',
                                  style: style.copyWith(
                                      fontSize: 16, color: Colors.black),
                                ),
                                Switch(value: true, onChanged: (v) {})
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 26,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Image.asset('assets/password.png'),
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            padding: EdgeInsets.only(bottom: 20),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(color: kDividerColor))),
                            child: Text(
                              'Passcode',
                              style: style.copyWith(
                                  fontSize: 16, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 26,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Image.asset('assets/chat.png'),
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            padding: EdgeInsets.only(bottom: 20),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(color: kDividerColor))),
                            child: Text(
                              'Chat with us',
                              style: style.copyWith(
                                  fontSize: 16, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 26,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Image.asset('assets/about.png'),
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            padding: EdgeInsets.only(bottom: 20),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(color: kDividerColor))),
                            child: Text(
                              'About',
                              style: style.copyWith(
                                  fontSize: 16, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 26,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Image.asset('assets/developer_mode.png'),
                          SizedBox(
                            width: 3,
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 48),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(color: kDividerColor))),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  'Developer Mode',
                                  style: style.copyWith(
                                      fontSize: 16, color: Colors.black),
                                ),
                                Switch(value: true, onChanged: (v) {})
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 166,
                ),
                Text(
                  'Developed By',
                  style: style.copyWith(color: Colors.grey, fontSize: 12),
                ),
                SizedBox(
                  height: 11,
                ),
                Text(
                  'LibreHeath',
                  style: style.copyWith(color: Colors.black54, fontSize: 12),
                ),
                SizedBox(
                  height: 15,
                )
              ],
            ),
            controller: c,
          ),
        );
      },
      initialChildSize: 0.7,
      maxChildSize: 0.7,
      minChildSize: 0.6,
    );
  }
}
