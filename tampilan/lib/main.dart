import 'dart:async';

import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'halaman_login.dart'; // Import file login_page.dart jika belum dilakukan

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 2),
      () {
        // Logika navigasi ke halaman berikutnya setelah splash screen
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => halamanLogin()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset('asset/splash.png')),
    );
  }
}
