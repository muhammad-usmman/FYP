import 'package:admin_side/constants.dart';
import 'package:flutter/material.dart';

import 'admin/navbar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: kprimary,
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: kprimary,
      //   title: const  Text('The Muscle Bar')
      // ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const NavBar()));
                },
                child: const Text('Login page will be added later CLICK HERE TO GO FORWARD')
            ),
          ],
        ),
      ),
    );
  }
}
