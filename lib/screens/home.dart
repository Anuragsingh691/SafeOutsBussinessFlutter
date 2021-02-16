import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:safeouts_bussiness/screens/Safety.dart';
import 'package:safeouts_bussiness/screens/SettingsPage.dart';
import 'package:safeouts_bussiness/screens/add_post.dart';
import 'package:safeouts_bussiness/screens/staff.dart';
import 'package:safeouts_bussiness/utils/dialogs.dart';

import 'admin_homepage.dart';

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  PageController _pageController;
  int _page = 0;
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Staff',
      style: optionStyle,
    ),
    Text(
      'Index 2: Contact tracing',
      style: optionStyle,
    ),
    Text(
      'Index 3: Contact tracing',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    // final colorScheme = Theme.of(context).colorScheme;
    // final textTheme = Theme.of(context).textTheme;
    return WillPopScope(
        onWillPop: () => Dialogs().showExitDialog(context),
        child: Scaffold(
          body: PageView(
            physics: NeverScrollableScrollPhysics(),
            controller: _pageController,
            onPageChanged: onPageChanged,
            children: <Widget>[
              Home(),
              Staff(),
              Safety(),
              ImageCapture()

            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Theme.of(context).primaryColor,
            selectedItemColor: Theme.of(context).accentColor,
            unselectedItemColor: Colors.grey[500],
            elevation: 20,
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Feather.home,
                ),
                title: Text(
                  'Home',
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Feather.user,
                ),
                title: Text(
                  'Staff',
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Feather.check,
                ),
                title: Text(
                  'Safety',
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Feather.user,
                ),
                title: Text(
                  'Profile',
                ),
              ),
            ],
            onTap: navigationTapped,
            currentIndex: _page,
          ),
          appBar: AppBar(
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SettingsPage()),
                  );
                },
                child: Image.asset(
                  "assets/images/logo.png",
                ),
              ),
            ),
            title: Text(''),
          ),
        )
    );

  }
  void navigationTapped(int page) {
    _pageController.jumpToPage(page);
  }
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }
  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }
  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }
}