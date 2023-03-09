import 'package:flutter/material.dart';
import 'package:nav_bar/screens/pages/home.dart';
import 'package:nav_bar/screens/pages/shop.dart';

import 'pages/add.dart';
import 'pages/donation.dart';
import 'pages/settings.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  var tabIndex = 0;

  void changeTabIndex(int index) {
    setState(() {
      tabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
          index: tabIndex,
          children: const [Home(), Shop(), Shop(), Donation(), Setting()]),
      bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 4,
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 12,
            currentIndex: tabIndex,
            onTap: changeTabIndex,
            selectedItemColor: Colors.deepPurpleAccent,
            unselectedItemColor: Colors.grey.shade300,
            items: [
              itemBar(Icons.home, "Subscription"),
              itemBar(Icons.shop, "Q&A"),
              // const BottomNavigationBarItem(
              //     icon: Icon(
              //       Icons.home,
              //       color: Colors.purple,
              //     ),
              //     label: ""),
              itemBar(Icons.volunteer_activism, "Notice"),
              itemBar(Icons.settings, "My Account")
            ],
          )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurpleAccent,
        onPressed: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const Add())),
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

itemBar(IconData icon, String label) {
  return BottomNavigationBarItem(icon: Icon(icon,color: Colors.purple,size: 20,), label: label,);
}
