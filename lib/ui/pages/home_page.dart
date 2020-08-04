import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neo_link_app/ui/pages/guardian_page.dart';
import 'package:neo_link_app/ui/widgets/app_bar.dart';
import 'package:neo_link_app/ui/widgets/home_page_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.bodyText1;
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: MyAppBar(),
        ),
        body: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            _backgroundContainer(style, context),
            SizedBox(
              height: 10,
            ),
            _draggableSheet(),
          ],
        ),
      ),
    );
  }

  Widget _backgroundContainer(TextStyle style, BuildContext context) {
    return Column(
      children: <Widget>[
        GestureDetector(
          onTap: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => GuardianPage())),
          child: Column(
            children: <Widget>[
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.lightBlue),
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: Image.asset('assets/user_dp.png'),
                  ),
                ],
              ),
              SizedBox(
                height: 11,
              ),
              Text(
                'Guardian Name',
                style: style.copyWith(fontSize: 24, color: Colors.black),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _draggableSheet() {
    return Expanded(
      child: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: Offset(0, 2)),
            ],
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 30),
          child: Column(
            children: <Widget>[
              HomePageCard(
                count: 1,
              ),
              HomePageCard(
                count: 2,
              ),
              HomePageCard(
                count: 3,
              ),
              HomePageCard(
                count: 4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
