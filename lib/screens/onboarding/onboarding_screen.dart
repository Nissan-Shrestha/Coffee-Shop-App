import 'package:coffee_shop_app/screens/navigation/navscreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 3,
                child: SizedBox(
                  width: double.maxFinite,
                  child: Image.asset(
                    "assets/images/onboarding.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: SizedBox(
                  width: double.maxFinite,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        SizedBox(height: 120),
                        Text(
                          "Welcome to our cozy coffee corner, where every cup is a delightful for you.",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.sora(color: Colors.white),
                        ),
                        SizedBox(height: 30),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => Navscreen()),
                            );
                          },
                          child: Container(
                            width: double.maxFinite,
                            height: 56,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Color(0xffC67C4E),
                            ),
                            child: Center(
                              child: Text(
                                "Get Started",
                                style: GoogleFonts.sora(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 250),
            child: Align(
              alignment: AlignmentGeometry.center,
              child: SizedBox(
                width: 300,
                child: Text(
                  "Fall in Love with Coffee in Blissful Delight!",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.sora(
                    fontSize: 32,
                    fontWeight: FontWeight.w800,
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
}


