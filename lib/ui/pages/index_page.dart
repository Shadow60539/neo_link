import 'package:flutter/material.dart';
import 'package:neo_link_app/ui/pages/home_page.dart';
import 'package:neo_link_app/ui/pages/notification_page.dart';
import 'package:neo_link_app/ui/pages/settings_page.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  ValueNotifier<int> _pageNumberNotifier = ValueNotifier<int>(0);
  final PageController _pageController = PageController(initialPage: 0);

  List<Widget> _widgets = <Widget>[
    HomePage(),
    NotificationPage(),
    SettingsPage(),
  ];

  PageController pageController = PageController();

  void _onItemTapped(int index) {
    print("on ItemTapped $index");
    _pageNumberNotifier.value = index;
    _pageController.jumpToPage(index);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
    _pageNumberNotifier.dispose();
  }

  void _onPageChanged(int index) {
    /*setState(() {
      _selectedIndex = index;
    });*/
    print("onPage Changed swipe");
    _pageNumberNotifier.value = index;
    /*_pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 200),
      curve: Curves.ease,
    );*/
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("indexPage");
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        children: _widgets,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: ValueListenableBuilder(
        valueListenable: _pageNumberNotifier,
        builder: (BuildContext context, int pageNumber, Widget child) {
          print("inside value listen $pageNumber");
          return BottomNavigationBar(
            currentIndex: pageNumber,
            backgroundColor: Colors.lightBlue,
            onTap: _onItemTapped,
            selectedFontSize: 10,
            unselectedFontSize: 10,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white54,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: Text('Home')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications), title: Text('Notification')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), title: Text('Settings')),
            ],
          );
        },
      ),
    );
  }
}
