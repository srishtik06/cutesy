import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'bottomNavbar.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final sheight = MediaQuery.of(context).size.height;
    final swidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: sheight * 0.03),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('assets/images/boost.png', scale: 7.5),
                SizedBox(height: sheight * 0.02),
                Text(
                  'COINBOOST',
                  style: GoogleFonts.robotoMono(
                    color: const Color(0xFFF7931A),
                    fontSize: sheight * 0.04,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: sheight * 0.06),
                Image.asset('assets/images/savings.png', scale: 4.5),
                SizedBox(height: sheight * 0.07),
                Container(
                  height: sheight*0.05,
                  width: swidth * 0.7,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 3,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: "Enter Your Mobile Number",
                      hintStyle: GoogleFonts.robotoMono(
                        color: Colors.black38,
                        fontSize: sheight * 0.02,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(swidth * 0.03),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(swidth * 0.03),
                        borderSide: BorderSide(color: Colors.orange, width: 2),
                      ),
                    ),
                    style: GoogleFonts.robotoMono(fontSize: sheight * 0.025),
                  ),
                ),
                SizedBox(height: sheight * 0.04),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => BottomNavBar()),
                    );
                  },

                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF7931A),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(swidth * 0.03),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: sheight * 0.01,
                      horizontal: swidth * 0.23,
                    ),
                    elevation: 0,
                  ),
                  child: Text(
                    "Continue",
                    style: GoogleFonts.robotoMono(
                      color: Colors.white,
                      fontSize: sheight * 0.025,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
