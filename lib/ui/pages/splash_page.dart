import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
        backgroundColor: Colors.lightBlue,
        bottomNavigationBar: _bottomText(context),
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/splash.png'),
                SizedBox(
                  height: 27,
                ),
                NeoLinkTitle()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _bottomText(BuildContext context) {
    return Container(
      color: Colors.lightBlue,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Text(
          'Supported by Evernym',
          style: Theme.of(context)
              .textTheme
              .bodyText1
              .copyWith(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
