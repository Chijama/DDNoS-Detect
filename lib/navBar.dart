import 'package:ddnos/home.dart';
import 'package:ddnos/setting.dart';
import 'package:ddnos/suggest.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'theme.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex = 0;

  final List<Widget> _children = <Widget>[
    const HomeWidget(),
    const SuggestedActions(),
    const Settings()
  ];

  void onTabTapped(final int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(final BuildContext context) => Scaffold(
        body: SafeArea(child: _children[_currentIndex]),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: true,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          elevation: 4,
          unselectedItemColor: const Color(0xff515B6F),
          selectedItemColor: themes().primaryColor,
          selectedLabelStyle: TextStyles().defaultText(
            14,
            FontWeight.w400,
            themes().primaryColor,
          ),
          unselectedLabelStyle: TextStyles().defaultText(
            14,
            FontWeight.w400,
            const Color(0xff515B6F),
          ),
          currentIndex: _currentIndex,
          onTap: onTabTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 4),
                child: Icon(Icons.home),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 4),
                child: Icon(FontAwesomeIcons.listCheck),
              ),
              label: 'Suggested Actions',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 4),
                child: Icon(Icons.settings),
              ),
              label: 'Settings',
            ),
          ],
        ),
      );
}
