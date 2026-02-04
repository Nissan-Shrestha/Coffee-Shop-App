import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 300,
                  width: double.maxFinite,
                  color: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 25),
                        Text(
                          "Location",
                          style: GoogleFonts.sora(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Bilzen, Tanjungbalai",
                          style: GoogleFonts.sora(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 40),
                        Row(
                          spacing: 10,
                          children: [
                            Expanded(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  prefixIcon: Image.asset(
                                    "assets/images/search.png",
                                  ),
                                  hintText: "Search Coffee",
                                  hintStyle: GoogleFonts.sora(
                                    color: Colors.white.withValues(alpha: 0.5),
                                  ),
                                  filled: true,
                                  fillColor: Color(0xff313131),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Color(0xffC67C4E),
                              ),
                              child: Center(
                                child: Image.asset("assets/images/filter.png"),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: AlignmentGeometry.topCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 230,
                ),
                child: Container(
                  height: 140,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.green,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/banner.png"),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
