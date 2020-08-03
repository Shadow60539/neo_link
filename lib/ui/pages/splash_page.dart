import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neo_link_app/ui/colors/colors.dart';
import 'package:neo_link_app/ui/pages/index_page.dart';
import 'package:neo_link_app/ui/widgets/neo_link_title.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => IndexPage(),
        ),
      ),
      child: Scaffold(
        bottomNavigationBar: _bottomText(context),
        body: Container(
          decoration: kSplashPageDecoration,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Hero(
                child: Image.asset('assets/splash.png'),
                tag: 'tag_splash_icon',
              ),
              SizedBox(
                height: 27,
              ),
              Hero(
                child: NeoLinkTitle(),
                tag: 'tag_title',
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _bottomText(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: kDarkBlue, border: Border.all(color: kDarkBlue, width: 2)),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 70),
        child: Text(
          'Blockchain based Identity Manager',
          style: Theme.of(context).textTheme.bodyText1,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
