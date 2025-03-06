import 'package:cutesy/screens/HomeScreen.dart';
import 'package:cutesy/screens/bottomNavbar.dart';
import 'package:cutesy/screens/task.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Readnewsscreen extends StatefulWidget {
  const Readnewsscreen({super.key});

  @override
  State<Readnewsscreen> createState() => _ReadnewsscreenState();
}

class _ReadnewsscreenState extends State<Readnewsscreen> {
  @override
  Widget build(BuildContext context) {
    final sheight = MediaQuery.of(context).size.height;
    final swidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: swidth * 0.1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: sheight * 0.08), // Space from top
            _buildHeader(swidth, context),
            SizedBox(height: sheight * 0.08),
            _buildImage(),
            SizedBox(height: sheight * 0.06),
            _buildRules(sheight),
            SizedBox(height: sheight * 0.04),
            _buildStartTaskButton(swidth, sheight),
          ],
        ),
      ),
      bottomNavigationBar: ,
    );
  }

  Widget _buildHeader(double swidth, BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: swidth * 0.02),
      child: Row(
        children: [
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BottomNavBar()),
            ),
            child: Image.asset('assets/icons/Back.png', scale: 5.5),
          ),
          SizedBox(width: swidth * 0.15),
          Text(
            "Read News",
            textAlign: TextAlign.center,
            style: GoogleFonts.robotoMono(
              fontSize: MediaQuery.of(context).size.height * 0.025,
              color: const Color(0xFFF7931A),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImage() {
    return Center(
      child: Image.asset('assets/images/Frame 3.png', scale: 5.5),
    );
  }

  Widget _buildRules(double sheight) {
    TextStyle ruleStyle = GoogleFonts.roboto(
      fontSize: sheight * 0.02,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Rules of Task",
          style: GoogleFonts.roboto(
            fontSize: sheight * 0.025,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: sheight * 0.04),
        Text("1. Keep scrolling for 10 minutes.", style: ruleStyle),
        SizedBox(height: sheight * 0.015),
        Text("2. Keep clicking every 30 seconds.", style: ruleStyle),
        SizedBox(height: sheight * 0.015),
        Text("3. Don't leave still screen for more than 30 seconds.", style: ruleStyle),
      ],
    );
  }

  Widget _buildStartTaskButton(double swidth, double sheight) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Task()),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFF7931A),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(swidth * 0.02),
        ),
        padding: EdgeInsets.symmetric(
          vertical: sheight * 0.01,
          horizontal: swidth * 0.1,
        ),
        elevation: 0,
      ),
      child: Text(
        "Start Task",
        style: GoogleFonts.robotoMono(
          color: Colors.white,
          fontSize: sheight * 0.02,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
