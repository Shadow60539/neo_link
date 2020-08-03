import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neo_link_app/ui/colors/colors.dart';
import 'package:neo_link_app/ui/pages/guardian_page.dart';
import 'package:neo_link_app/ui/widgets/app_bar.dart';
import 'package:neo_link_app/ui/widgets/home_page_card.dart';

class HomePage extends StatelessWidget {
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
            _backgroundContainer(style, context),
            _draggableSheet(),
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
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: Image.asset('assets/user_dp.png'),
                ),
                SizedBox(
                  height: 11,
                ),
                Text(
                  'Guardian',
                  style: style.copyWith(fontSize: 24),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _draggableSheet() {
    return DraggableScrollableSheet(
      builder: (context, c) {
        return Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 30),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    HomePageCard(),
                    HomePageCard(),
                    HomePageCard(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    HomePageCard(),
                    HomePageCard(),
                    HomePageCard(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    HomePageCard(),
                    HomePageCard(),
                    HomePageCard(),
                  ],
                ),
              ],
            ),
            controller: c,
          ),
        );
      },
      initialChildSize: 0.5,
      maxChildSize: 0.7,
      minChildSize: 0.5,
    );
  }
}
