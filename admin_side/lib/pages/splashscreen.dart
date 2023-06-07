import 'dart:async';
import 'package:flutter/material.dart';

import 'package:admin_side/homepage(login).dart';

import 'package:admin_side/constants.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  void initState() {
    super.initState ();
    Timer(const Duration(seconds: 5),
            () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const AdminLoginPage()
            )
        ));
  }


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.fitness_center,
              size: 70,
              color: Colors.indigo,
            ),
            gaph20,
            Text('TMB - The Muscle Bar',
              style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
            )
          ],
        ),
      ),
    );

  }
}