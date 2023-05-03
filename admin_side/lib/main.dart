import 'package:flutter/material.dart';
import 'package:admin_side/pages/splashscreen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: 'The Muscle Bar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primarySwatch: Colors.red,
        useMaterial3: true
      ),
      home:
      const MySplashScreen(),
    );
  }
}


