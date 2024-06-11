import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:otofast/main.dart';
import 'package:otofast/shared/theme.dart';
import 'package:otofast/ui/pages/belanja.dart';
import 'package:otofast/ui/pages/history.dart';
import 'package:otofast/ui/pages/home_scren.dart';
import 'package:otofast/ui/pages/mekanik.dart';
import 'package:otofast/ui/pages/profile_page.dart';
import 'package:otofast/ui/widgets/home_service_items.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
   HomePage ({super.key});
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomeScren(),
    MekanikPage(),
    ShopHomePage(),
    history(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  

  
  
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: _pages[_selectedIndex],
      // backgroundColor: lightBackgroundColor,
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: whiteColor,
          selectedItemColor: blueColor,
          unselectedItemColor: blackColor,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle:
              blueTextStyle.copyWith(fontSize: 10, fontWeight: medium),
          unselectedLabelStyle:
              blackTextStyle.copyWith(fontSize: 10, fontWeight: medium),
          items: [
            BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
            BottomNavigationBarItem(
            icon: Icon(Icons.home_repair_service),
            label: 'Service',
          ),
            BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: 'Belanja',
            ),
             BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Histori',
            ),
          ],
          currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        ),
   );
  }
}
