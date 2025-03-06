import 'dart:async';
import 'package:cutesy/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
    });
  }

  @override
  Widget build(BuildContext context) {
    final sheight = MediaQuery.of(context).size.height;
    final swidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/boost.png',
              scale: 4,
              height: sheight * 0.2,
              width: swidth * 0.5,
            ),
            Text(
              'COINBOOST',
              textAlign: TextAlign.center,
              style: GoogleFonts.robotoMono(
                color: const Color(0xFFF7931A),
                fontSize: sheight * 0.04,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
