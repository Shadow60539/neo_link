import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:neo_link_app/ui/colors/colors.dart';
import 'package:neo_link_app/ui/widgets/app_bar.dart';

enum bioSwitch { active, inactive }
enum devSwitch { active, inactive }

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final ValueNotifier<bioSwitch> _bio =
      ValueNotifier<bioSwitch>(bioSwitch.active);
  final ValueNotifier<devSwitch> _dev =
      ValueNotifier<devSwitch>(devSwitch.active);
  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.bodyText1;
    return AnimatedBuilder(
      animation: Listenable.merge([_bio, _dev]),
      builder: (BuildContext context, Widget child) {
        return SafeArea(
          child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: MyAppBar(),
            ),
            backgroundColor: Colors.white,
            body: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                _backgroundContainer(style, context),
                SizedBox(
                  height: 20,
                ),
                _draggableSheet(style, context),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _backgroundContainer(TextStyle style, BuildContext context) {
    return Column(
      children: <Widget>[
        Column(
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
      ],
    );
  }

  Widget _draggableSheet(TextStyle style, context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 0.5,
              blurRadius: 20,
            )
          ],
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.only(bottom: 20),
          child: Column(
            children: <Widget>[
              _content(style, context),
              SizedBox(
                height: 50,
              ),
              Text(
                'Developed By',
                style: style.copyWith(color: Colors.black54, fontSize: 12),
              ),
              Text(
                'LibreHeath',
                style: style.copyWith(color: Colors.black54, fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _content(TextStyle style, context) {
    return Padding(
      padding: EdgeInsets.only(top: 30, left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Icon(
                Icons.fingerprint,
                color: Colors.grey,
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: kDividerColor))),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Biometric Authentication',
                        style:
                            style.copyWith(fontSize: 16, color: Colors.black),
                      ),
                      Switch(
                        value: _bio.value == bioSwitch.active,
                        onChanged: (v) {
                          if (v)
                            _bio.value = bioSwitch.active;
                          else
                            _bio.value = bioSwitch.inactive;
                        },
                        activeColor: Colors.red,
                      )
                    ],
                  ),
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
              Icon(
                Icons.vpn_key,
                color: Colors.grey,
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: kDividerColor))),
                  child: Text(
                    'Passcode',
                    style: style.copyWith(fontSize: 16, color: Colors.black),
                  ),
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
              Icon(
                Icons.chat,
                color: Colors.grey,
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: kDividerColor))),
                  child: Text(
                    'Chat with us',
                    style: style.copyWith(fontSize: 16, color: Colors.black),
                  ),
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
              Icon(
                Icons.error,
                color: Colors.grey,
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: kDividerColor))),
                  child: Text(
                    'About',
                    style: style.copyWith(fontSize: 16, color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 26,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                Icons.developer_mode,
                color: Colors.grey,
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: kDividerColor))),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Developer Mode',
                        style:
                            style.copyWith(fontSize: 16, color: Colors.black),
                      ),
                      Switch(
                        value: _dev.value == devSwitch.active,
                        onChanged: (v) {
                          if (v)
                            _dev.value = devSwitch.active;
                          else
                            _dev.value = devSwitch.inactive;
                        },
                        activeColor: Colors.red,
                      )
                    ],
                  ),
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
              Icon(
                Icons.help,
                color: Colors.grey,
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: kDividerColor))),
                  child: Text(
                    'Need Help ?',
                    style: style.copyWith(fontSize: 16, color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
