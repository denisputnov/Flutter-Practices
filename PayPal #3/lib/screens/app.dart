import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import "package:flutter/material.dart";

import 'home.dart';
import 'wallet.dart';
import 'contacts.dart';
import 'settings.dart';
import 'sendmoney.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int _selectedIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _selectedIndex = index);
          },
          children: [
            HomePage(),
            Contacts(),
            WalletPage(),
            Settings(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        containerHeight: 55,
        selectedIndex: _selectedIndex,
        onItemSelected: (index) => setState(
          () {
            _selectedIndex = index;
            _pageController.animateToPage(index, duration: Duration(milliseconds: 300), curve: Curves.ease);
          },
        ),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            activeColor: Color(0xff0070ba),
            inactiveColor: Color(0xff243656),
            title: Text('Home'),
            icon: Icon(Icons.home),
          ),
          BottomNavyBarItem(
            activeColor: Color(0xff0070ba),
            inactiveColor: Color(0xff243656),
            title: Text('People'),
            icon: Icon(Icons.people),
          ),
          BottomNavyBarItem(
            activeColor: Color(0xff0070ba),
            inactiveColor: Color(0xff243656),
            title: Text('Wallet'),
            icon: Icon(Icons.monetization_on),
          ),
          BottomNavyBarItem(
            activeColor: Color(0xff0070ba),
            inactiveColor: Color(0xff243656),
            title: Text('Settings'),
            icon: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
