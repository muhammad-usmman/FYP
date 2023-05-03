import 'package:admin_side/admin/dashboard.dart';
import 'package:admin_side/admin/trainers.dart';
import 'package:admin_side/admin/users.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int index = 0;
  final screens = const [
    DashBoard(),
    Users(),
    Trainer(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('The Muscle Bar '),
        leading: const BackButton(color: Colors.indigo),
      ),
      body: screens[index],

      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.indigo.shade100,
        ),
        child: NavigationBar(
          backgroundColor: Colors.indigo.shade100,
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() => this.index = index),
          destinations: const [
            NavigationDestination(
              tooltip: "",
              icon: Icon(Icons.home_outlined),
              label: 'DashBoard',
              selectedIcon: Icon(Icons.home, color: Colors.black),
            ),
            NavigationDestination(
              tooltip: "",
              icon: Icon(Icons.wallet_outlined),
              label: 'Users',
              selectedIcon: Icon(Icons.wallet, color: Colors.black),
            ),
            NavigationDestination(
              tooltip: "",
              icon: Icon(Icons.calendar_month_outlined),
              label: 'Trainers',
              selectedIcon: Icon(Icons.calendar_month, color: Colors.black),
            ),
            // NavigationDestination(
            //   tooltip: "",
            //   icon: Icon(Icons.more_horiz_outlined),
            //   label: 'More',
            //   selectedIcon: Icon(Icons.more_horiz, color: Colors.black),
            // ),
          ],
        ),
      ),
    );
  }
}

