import 'package:flutter/material.dart';
import 'package:slash_app/view/cart_screen.dart';
import 'package:slash_app/view/favourites_screen.dart';
import 'package:slash_app/view/homeScreen.dart';
import 'package:slash_app/view/profile_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  @override
  List<Widget> screens = [
    HomeScreen(),
    FavScreen(),
    CartScreen(),
    ProfileScreen(),
  ];

  int selectedIndex = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          unselectedLabelStyle: TextStyle(color: Colors.grey),
          backgroundColor: Colors.white,
          onTap: (val) {
            setState(() {
              selectedIndex = val;
              print(val);
            });
          },
          currentIndex: selectedIndex,
          selectedItemColor: Colors.black,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          unselectedItemColor: Colors.black87,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset("assets/images/home.png"),
              label: "Home",
            ),
            BottomNavigationBarItem(
                icon: Image.asset("assets/images/Favourites.png"),
                label: "Favourites"),
            BottomNavigationBarItem(
                icon: Image.asset("assets/images/Cart.png"), label: "Cart"),
            BottomNavigationBarItem(
                icon: Image.asset("assets/images/Profile.png"),
                label: "Profile"),
          ]),
      body: screens[selectedIndex],
    );
  }
}
