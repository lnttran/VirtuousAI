import 'package:flutter/material.dart';
import 'package:virtuous_ai/app/ai_query/ai_query.dart';
import 'package:virtuous_ai/app/ai_query/ethicalQuestionEx.dart';
import 'package:virtuous_ai/app/home/aboutUs.dart';
import 'package:virtuous_ai/app/personal/profile.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    AboutUsPageWidget(),
    AIQueryWidget(),
    EthicalQuestionExWidget(),
    UserProfileWidget(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        // selectedLabelStyle:

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.quiz_outlined),
            label: 'Virtuous Bot',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article_outlined),
            label: 'Template',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFF132A13),
        onTap: _onItemTapped,
        unselectedItemColor: const Color(0xFF90A955),
        selectedLabelStyle: const TextStyle(
          fontFamily: 'Tinos',
          color: Color(0xFF57636C),
          fontSize: 14,
          letterSpacing: 0,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
