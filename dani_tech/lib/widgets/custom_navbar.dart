// import 'package:dani_tech/screens/categories/categories_screen.dart';
// import 'package:dani_tech/screens/favorites/favorites_screen.dart';
// import 'package:dani_tech/screens/home_screen/home_screen.dart';
// import 'package:dani_tech/screens/profile/profile_screen.dart';
// import 'package:flutter/material.dart';

// class CustomNavBar extends StatefulWidget {
//   const CustomNavBar({super.key});

//   @override
//   State<CustomNavBar> createState() => _CustomNavBarState();
// }

// class _CustomNavBarState extends State<CustomNavBar> {
//   int slectedPageIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return NavigationBarTheme(
//       data: NavigationBarThemeData(
//           labelTextStyle:
//               MaterialStateProperty.all(TextStyle(fontFamily: 'Inter'))),
//       child: NavigationBar(
//         onDestinationSelected: (int index) {
//           print('Selected $index');
//         },
//         selectedIndex: 0,
//         destinations: [
//           NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
//           NavigationDestination(icon: Icon(Icons.list), label: 'Categorias'),
//           NavigationDestination(icon: Icon(Icons.favorite), label: 'Favoritos'),
//           NavigationDestination(icon: Icon(Icons.person), label: 'Perfil'),
//         ],
//       ),
//     );
//   }
// }
