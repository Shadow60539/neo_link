import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neo_link_app/ui/colors/colors.dart';
import 'package:neo_link_app/ui/widgets/home_page_card.dart';
import 'package:neo_link_app/ui/widgets/neo_link_title.dart';

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
            _backgroundContainer(style),
            _draggableSheet(),
          ],
        ),
      ),
    );
  }

  Widget _appBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 25),
          child: Image.asset(
            'assets/splash.png',
            scale: 2,
          ),
        ),
        NeoLinkTitle(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Icon(
            Icons.help,
            color: Colors.white,
            size: 36,
          ),
        )
      ],
    );
  }

  Widget _backgroundContainer(TextStyle style) {
    return Column(
      children: <Widget>[
        _appBar(),
        Container(
          height: 100,
          width: 100,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.white),
          child: Image.asset('assets/user_dp.png'),
        ),
        SizedBox(
          height: 11,
        ),
        Text(
          'Guardian',
          style: style.copyWith(fontSize: 24),
        ),
        SizedBox(
          height: 30,
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
