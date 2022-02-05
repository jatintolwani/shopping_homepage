import 'package:flutter/material.dart';
import '/screens/homescreen.dart';
import '/screens/payment.dart';

class Bottombar extends StatefulWidget {
  const Bottombar({Key? key}) : super(key: key);

  @override
  _BottombarState createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    _pageController.jumpToPage(index);
  }

  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: const [
          HomePage(),
          Payment(),
        ],
        onPageChanged: (page) {
          setState(
            () {
              _selectedIndex = page;
            },
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              size: 30,
            ),
            label: "Payment",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star,
              size: 30,
            ),
            label: "Favorites",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              size: 30,
            ),
            label: "Settings",
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: _onItemTapped,
      ),
    );
  }
}
