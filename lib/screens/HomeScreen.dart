import 'package:cutesy/screens/readnewsScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    // Set the status bar color to orange
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: const Color(0xFFF7931A), // Orange color
      statusBarIconBrightness: Brightness.light, // White icons
    ));
  }

  @override
  Widget build(BuildContext context) {
    final sheight = MediaQuery.of(context).size.height;
    final swidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: sheight * 0.06), // Space below status bar

          // Profile Section
          Padding(
            padding: EdgeInsets.symmetric(horizontal: swidth * 0.08),
            child: Row(
              children: [
                // Profile Image
                CircleAvatar(
                  radius: swidth * 0.04, // Adjust based on screen width
                  backgroundImage: AssetImage('assets/images/profile.png'),
                ),
                SizedBox(width: swidth * 0.03), // Space between profile and name

                // Name
                Text(
                  "John Doe",
                  style: GoogleFonts.robotoMono(
                    fontSize: sheight * 0.018,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),

                Spacer(), // Push elements to the right

                // Level Image + Text
                Image.asset(
                  'assets/images/star-medal.png',
                  scale: 5,
                ),
                SizedBox(width: swidth * 0.02), // Space
                Text(
                  "Level 01",
                  style: GoogleFonts.robotoMono(
                    fontSize: sheight * 0.018,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),

                SizedBox(width: swidth * 0.04), // Space

                // Wallet Icon + Text
                Image.asset(
                  'assets/images/wallet.png',
                  scale: 5,
                ),
                SizedBox(width: swidth * 0.02), // Space
                Text(
                  "\$25.00",
                  style: GoogleFonts.robotoMono(
                    fontSize: sheight * 0.018,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: sheight * 0.06), // Space after profile section

          // Main Content
          Center(
            child: Text(
              "Claim your Daily Reward",
              style: GoogleFonts.roboto(
                fontSize: sheight * 0.025,
                color: Color(0xFF965200),
                fontWeight: FontWeight.bold,
              ),
            ),),
          SizedBox(height: sheight * 0.02),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(7, (index) {
          // Define square sizes relative to screen dimensions
          double size;
          if (index == 3) {
            size = sheight * 0.08; // The biggest square (4th one)
          } else if (index == 2 || index == 4) {
            size = sheight * 0.06; // Medium-sized squares
          } else if (index == 1 || index == 5) {
            size = sheight * 0.05; // Smaller squares
          } else {
            size = sheight * 0.04; // Smallest squares (1st & 7th)
          }

          // Define colors
          bool isFourth = index == 3;
          Color bgColor = isFourth ? Colors.white : Color(0xFFF7931A); // White for 4th, orange for others
          Color borderColor = isFourth ? Color(0xFFF7931A) : Colors.transparent; // Orange border for 4th
          Color textColor = isFourth ? Color(0xFFF7931A) : Colors.white; // Orange text for 4th, white for others

          return Container(
            width: size,
            height: size,
            margin: EdgeInsets.symmetric(horizontal: swidth * 0.01), // Space between squares
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(swidth * 0.03), // Rounded corners
              border: Border.all(color: borderColor, width: swidth * 0.004),
            ),
            child: Center(
              child: Text(
                "\$2\nAD",
                textAlign: TextAlign.center,
                style: GoogleFonts.robotoMono(
                  fontSize: size * 0.22, // Dynamic font size
                  fontWeight: FontWeight.bold,
                  color: textColor,
                ),
              ),
            ),
          );
        }),
      ),
          SizedBox(height: sheight * 0.05),
          Text(
            "Do Tasks, Earn Reward",
            style: GoogleFonts.roboto(
              fontSize: sheight * 0.025,
              color: Color(0xFF965200),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: sheight * 0.01),
          Column(
            children: [
              Text(
                "You can do these tasks as many times",
                style: GoogleFonts.roboto(
                  fontSize: sheight * 0.02,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // SizedBox(height: sheight * 0.005), // Space between lines
              Center(
                child: Text(
                  "as you want to",
                  style: GoogleFonts.roboto(
                    fontSize: sheight * 0.02,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: sheight * 0.03),
              Image.asset('assets/images/Frame 1.png', scale: 5.5),
              SizedBox(height: sheight * 0.03),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Readnewsscreen()),
                  );
                },
                child: Image.asset(
                  'assets/images/Frame 2.png',
                  scale: 5.5,
                ),
              ),

            ],
          ),

        ],
      ),
    );
  }
}
