import 'package:flutter/material.dart';
import '../../routes/AppRoutes.dart';
import 'tipspage.dart';
import 'EventsPage.dart';
import 'HomePage.dart';
import 'ProfilePage.dart';
import '../../utilities/constants.dart';

class Tipsmain extends StatefulWidget {
  static String route = "/dashBoard/Tipsmain";

  const Tipsmain({Key? key}) : super(key: key);

  @override
  _TipsmainState createState() => _TipsmainState();
}

class _TipsmainState extends State<Tipsmain> {
  int _currentIndex = 0;
  late PageController _pageController;

  gotoHistory() {
    setState(() {
      _selectedIndex = 1;
    });
  }

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

  int _selectedIndex = 1;
  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Tips(),
    EventPage(),
    ProfilePage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final bool showFab = MediaQuery.of(context).viewInsets.bottom == 0.0;

    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: kscaffoldBgColor2,
        selectedItemColor: kprimaryColor,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.light_mode),
            label: 'Tips',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Events',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      floatingActionButton: showFab
          ? FloatingActionButton(
              backgroundColor: kprimaryColor,
              child: Padding(
                padding: EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.bubble_chart,
                      size: 28.0,
                    )
                  ],
                ),
              ),
              onPressed: () async {
                Navigator.pushNamed(context, AppRoutes.today);
              },
            )
          : null,
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}
