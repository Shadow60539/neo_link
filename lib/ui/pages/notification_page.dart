import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:neo_link_app/ui/widgets/app_bar.dart';
import 'package:neo_link_app/ui/widgets/notification_card.dart';

enum fabState { show, hide }

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage>
    with SingleTickerProviderStateMixin {
  final ValueNotifier<fabState> _fab = ValueNotifier<fabState>(fabState.show);
  ScrollController _controller;
  bool _isVisible;
  AnimationController _animationController;
  @override
  void initState() {
    _isVisible = true;
    _animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 200), value: 1);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.bodyText1;
    return ValueListenableBuilder(
      builder: (BuildContext context, value, Widget child) {
        return SafeArea(
          child: Scaffold(
            floatingActionButton: ScaleTransition(
              scale: CurvedAnimation(
                  parent: _animationController, curve: Curves.ease),
              child: Visibility(
                visible: _fab.value == fabState.show,
                child: FloatingActionButton(
                  backgroundColor: Colors.redAccent,
                  onPressed: () {},
                  child: Icon(Icons.refresh),
                ),
              ),
            ),
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: MyAppBar(),
            ),
            backgroundColor: Colors.white,
            body: _draggableSheet(style),
          ),
        );
      },
      valueListenable: _fab,
    );
  }

  Widget _draggableSheet(TextStyle style) {
    return Container(
      margin: EdgeInsets.only(top: 20),
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
      child: NotificationListener<ScrollNotification>(
        // ignore: missing_return
        onNotification: (scrollNotification) {
          if (scrollNotification is ScrollStartNotification) {
            _fab.value = fabState.hide;
            _animationController.reverse();
          } else if (scrollNotification is ScrollUpdateNotification) {
          } else if (scrollNotification is ScrollEndNotification) {
            _fab.value = fabState.show;
            _animationController.forward();
          }
        },
        child: ListView.builder(
          controller: _controller,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return NotificationCard();
          },
        ),
      ),
    );
  }
}
