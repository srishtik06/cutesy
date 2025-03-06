import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/widgets/EarningsCard.dart';

class Appscreen extends StatefulWidget {
  const Appscreen({super.key});

  @override
  State<Appscreen> createState() => _AppscreenState();
}

class _AppscreenState extends State<Appscreen> {
  double earnings = 25;
  final double minWithdrawal = 50;

  @override
  Widget build(BuildContext context) {
    final sheight = MediaQuery.of(context).size.height;
    final swidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: swidth * 0.1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: sheight * 0.1), // Space from top
              _buildHeader(swidth, context),
              SizedBox(height: sheight * 0.03), // Space below header
              earningsCard(
                earnings: 25,
                minWithdrawal: 50,
                sHeight: MediaQuery.of(context).size.height,
                sWidth: MediaQuery.of(context).size.width,
                level: "01", // Pass the level dynamically
              ),
              SizedBox(height: sheight * 0.02),
              earningsCard(
                earnings: 0,
                minWithdrawal: 100,
                sHeight: MediaQuery.of(context).size.height,
                sWidth: MediaQuery.of(context).size.width,
                level: "02", // Pass the level dynamically
              ),
              SizedBox(height: sheight * 0.02),
              earningsCard(
                earnings: 0,
                minWithdrawal: 100,
                sHeight: MediaQuery.of(context).size.height,
                sWidth: MediaQuery.of(context).size.width,
                level: "03", // Pass the level dynamically
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildHeader(double swidth, BuildContext context) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: swidth * 0.02),
    child: Row(
      children: [
        GestureDetector(
          child: Image.asset('assets/icons/Back.png', scale: 5.5),
        ),
        SizedBox(width: swidth * 0.08),
        Text(
          "Rewarding Levels",
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
