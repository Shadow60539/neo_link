import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neo_link_app/ui/colors/colors.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.bodyText1;
    return Scaffold(
      bottomNavigationBar: _bottomText(context),
      body: Container(
        decoration: _decoration(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/splash.png'),
            SizedBox(
              height: 27,
            ),
            _title(style),
          ],
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

  Decoration _decoration() {
    return BoxDecoration(
      gradient: LinearGradient(
        colors: [kLightBlue, kDarkBlue],
        begin: Alignment(0.0, -1.0),
        end: Alignment(0.0, 1.0),
      ),
    );
  }

  Widget _title(TextStyle style) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: <Widget>[
        Text(
          'Neo',
          style: style.copyWith(fontWeight: FontWeight.w900, fontSize: 30),
        ),
        Text('Link',
            style: style.copyWith(fontWeight: FontWeight.w100, fontSize: 25))
      ],
    );
  }
}
