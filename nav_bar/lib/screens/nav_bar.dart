// import 'package:flutter/material.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';

// class NavBar extends StatefulWidget {
//   const NavBar({super.key});

//   @override
//   State<NavBar> createState() => _NavBarState();
// }

// class _NavBarState extends State<NavBar> {
//   int _selectedIndex = 0;
//   static const TextStyle optionStyle =
//       TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
//   List<Widget> _widgetOptions = [
//     Text(
//       'Home',
//       style: optionStyle,
//     ),
//     Text(
//       'Likes',
//       style: optionStyle,
//     ),
//     Text(
//       'Search',
//       style: optionStyle,
//     ),
//     Text(
//       'Profile',
//       style: optionStyle,
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Nav Bar'),
//         ),
//         body: Center(
//           child: _widgetOptions.elementAt(_selectedIndex),
//         ),
//         floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {},
//           child: Icon(Icons.home_rounded),
//         ),
//         bottomNavigationBar: Container(
//           decoration: BoxDecoration(
//             borderRadius: const BorderRadius.only(
//                 bottomLeft: Radius.circular(50),
//                 bottomRight: Radius.circular(50),
//                 topRight: Radius.circular(50),
//                 topLeft: Radius.circular(50)),
//             color: Colors.deepPurpleAccent.withGreen(2),
//             boxShadow: [
//               BoxShadow(
//                 blurRadius: 20,
//                 color: Colors.black.withOpacity(.1),
//               )
//             ],
//           ),
//           child: SafeArea(
//             child: Padding(
//               padding:
//                   const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
//               child: GNav(
//                 rippleColor: Colors.grey[300]!,
//                 hoverColor: Colors.grey,
//                 gap: 8,
//                 activeColor: Colors.black,
//                 iconSize: 24,
//                 padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
//                 duration: Duration(milliseconds: 400),
//                 tabBackgroundColor: Colors.grey[100]!,
//                 color: Colors.black,
//                 tabs: [
//                   GButton(
//                     icon: Icons.home,
//                     text: 'Subscription',
//                   ),
//                   GButton(
//                     icon: Icons.heart_broken_outlined,
//                     text: 'Q&A',
//                   ),
//                   GButton(
//                     icon: Icons.search,
//                     text: 'Notice',
//                   ),
//                   GButton(
//                     icon: Icons.person,
//                     text: 'My Account',
//                   ),
//                 ],
//                 selectedIndex: _selectedIndex,
//                 onTabChange: (index) {
//                   setState(() {
//                     _selectedIndex = index;
//                   });
//                 },
//               ),
//             ),
//           ),
//         ));
//   }
// }
