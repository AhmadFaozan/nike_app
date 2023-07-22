
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:nike_app/pages/home.dart';
import 'package:nike_app/pages/like.dart';
import 'package:nike_app/pages/notification.dart';
import 'package:nike_app/pages/profile.dart';
import 'package:nike_app/pages/shop.dart';

class navbarScreen extends StatefulWidget {
  const navbarScreen({super.key});

  @override
  State<navbarScreen> createState() => _navbarScreenState();
}

class _navbarScreenState extends State<navbarScreen> {
  List Screens = [
    HomeScreen(),
    LikeScreen(),
    ShopScreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];
  int _selectedIndex =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
        index:  _selectedIndex,
        color: Color.fromARGB(255, 243, 243, 243),
        backgroundColor: Color.fromARGB(0, 255, 255, 255),
        buttonBackgroundColor: Color.fromARGB(255, 249, 249, 250),
        items: const [
          Icon(
            Icons.home_filled,
            size: 25,
            color: Color.fromARGB(255, 44, 113, 240)
          ),
          Icon(
            Icons.favorite_outlined,
            size: 25,
            color: Color.fromARGB(255, 44, 113, 240)
          ),
          Icon(
            Icons.shopping_bag_rounded,
            size: 25,
            color: Color.fromARGB(255, 44, 113, 240)
          ),
          Icon(
            Icons.notifications,
            size: 25,
            color: Color.fromARGB(255, 44, 113, 240)
          ),
          Icon(
            Icons.person_2_rounded,
            size: 25,
            color: Color.fromARGB(255, 44, 113, 240)
          ),
        ],
        onTap: (index){
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: Screens[_selectedIndex],
    );
  }
}