import 'package:flutter/material.dart';
import 'package:greeniser/screens/CategoryPage.dart';
import 'package:greeniser/screens/ProfilePage.dart';
import 'package:greeniser/utilities/constants.dart';
import 'Addrink.dart';
import 'HomePage.dart';

class MainPage extends StatefulWidget {
  static String route = "/dashBoard/MainPage";

  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    AddDrink(),
    CategoryPage(),
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
        selectedItemColor: kprimaryColor,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wine_bar),
            title: Text('Drinks'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            title: Text('Sales'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Profile'),
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
                      Icons.search_rounded,
                      size: 28.0,
                    )
                  ],
                ),
              ),
              onPressed: () async {},
            )
          : null,
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}
