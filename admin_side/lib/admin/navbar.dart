// import 'package:admin_side/admin/dashboard.dart';
// // import 'package:admin_side/admin/financial.dart';
// import 'package:admin_side/admin/trainers.dart';
// import 'package:admin_side/admin/members.dart';
// import 'package:flutter/material.dart';
//
// class NavBar extends StatefulWidget {
//   const NavBar({Key? key}) : super(key: key);
//
//   @override
//   State<NavBar> createState() => _NavBarState();
// }
//
// class _NavBarState extends State<NavBar> {
//   int index = 0;
//   final screens = const [
//     DashBoard(),
//     Users(),
//     Trainer(),
//     // Financial(),
//
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       // appBar: AppBar(
//       //   title: const Text('The Muscle Ba '),
//       //   leading: const BackButton(color: Colors.indigo),
//       // ),
//       body: screens[index],
//
//       bottomNavigationBar: NavigationBarTheme(
//         data: const NavigationBarThemeData(
//           // indicatorColor: Colors.indigo.shade100,
//         ),
//         child: NavigationBar(
//           // backgroundColor: Colors.indigo.shade100,
//           selectedIndex: index,
//           onDestinationSelected: (index) => setState(() => this.index = index),
//           destinations: const [
//             NavigationDestination(
//               tooltip: "",
//               icon: Icon(Icons.dashboard_outlined),
//               label: 'DashBoard',
//               selectedIcon: Icon(Icons.dashboard, color: Colors.black),
//             ),
//             NavigationDestination(
//               tooltip: "",
//               icon: Icon(Icons.supervised_user_circle_outlined),
//               label: 'Members',
//               selectedIcon: Icon(Icons.supervised_user_circle, color: Colors.black),
//             ),
//             NavigationDestination(
//               tooltip: "",
//               icon: Icon(Icons.message_outlined),
//               label: 'Trainers',
//               selectedIcon: Icon(Icons.message, color: Colors.black),
//             ),
//             // NavigationDestination(
//             //   tooltip: "",
//             //   icon: Icon(Icons.calculate_outlined),
//             //   label: 'Financial',
//             //   selectedIcon: Icon(Icons.calculate, color: Colors.black),
//             // ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
