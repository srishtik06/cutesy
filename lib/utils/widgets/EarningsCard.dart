import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget earningsCard({
  required double earnings,
  required double minWithdrawal,
  required double sHeight,
  required double sWidth,
  required String level,
}) {
  double progress = (earnings / minWithdrawal).clamp(0.0, 1.0); // Ensure within 0-1 range

  return Center(
    child: Stack(
      clipBehavior: Clip.none, // Allows the header to overflow
      children: [
        // Main Card
        Container(
          width: sWidth * 0.8, // 80% of screen width
          padding: EdgeInsets.only(top: sHeight * 0.04), // Space for the rounded header
          decoration: BoxDecoration(
            color: const Color(0xFFF7931A),
            borderRadius: BorderRadius.circular(sWidth * 0.06), // Responsive border radius
            border: Border.all(color: const Color(0xFFF7931A), width: 2),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: sWidth * 0.02,
                offset: Offset(0, sWidth * 0.01),
              ),
            ],
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: const Color(0xFFF7931A), width: 0.2),
              borderRadius: BorderRadius.circular(sWidth * 0.06),
            ),
            child: Padding(
              padding: EdgeInsets.all(sWidth * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Minimum Withdrawal Text
                  Text(
                    "Minimum Withdrawal = \$$minWithdrawal",
                    style: GoogleFonts.robotoMono(
                      fontSize: sWidth * 0.04,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFFF7931A),
                    ),
                  ),
                  SizedBox(height: sHeight * 0.005),

                  // Earnings Text
                  Text(
                    "Your earnings = \$$earnings",
                    style: GoogleFonts.robotoMono(
                      fontSize: sWidth * 0.035,
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(height: sHeight * 0.02),

                  // Progress Bar
                  Stack(
                    children: [
                      Container(
                        height: sHeight * 0.03,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(sWidth * 0.05),
                          border: Border.all(color: const Color(0xFFF7931A), width: 2),
                        ),
                      ),
                      Container(
                        height: sHeight * 0.03,
                        width: (sWidth * 0.8) * progress, // Adjust width dynamically
                        decoration: BoxDecoration(
                          color: const Color(0xFFF7931A),
                          borderRadius: BorderRadius.circular(sWidth * 0.05),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "${(progress * 100).toInt()}%",
                          style: GoogleFonts.robotoMono(
                            fontSize: sWidth * 0.03,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: sHeight * 0.015),
                ],
              ),
            ),
          ),
        ),

        // Rounded Header (Orange Top Bar)
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            width: sWidth * 0.8,
            height: sHeight * 0.04,
            decoration: BoxDecoration(
              color: const Color(0xFFF7931A),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(sWidth * 0.06),
                topRight: Radius.circular(sWidth * 0.06),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: sHeight * 0.008,
                horizontal: sWidth * 0.05,
              ),
              child: Text(
                "Level $level",
                style: GoogleFonts.robotoMono(
                  fontSize: sWidth * 0.04,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
