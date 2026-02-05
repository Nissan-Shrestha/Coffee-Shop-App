import 'package:coffee_shop_app/models/coffee.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeeDetailScreen extends StatefulWidget {
  final Coffee coffee;
  const CoffeeDetailScreen({super.key, required this.coffee});

  @override
  State<CoffeeDetailScreen> createState() => _CoffeeDetailScreenState();
}

class _CoffeeDetailScreenState extends State<CoffeeDetailScreen> {
  String selectedSize = "M";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Detail",
          style: GoogleFonts.sora(fontWeight: FontWeight.w600),
        ),
        actions: [ImageIcon(AssetImage("assets/images/Heart.png"))],
        actionsPadding: EdgeInsets.symmetric(horizontal: 20),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Container(
                height: 280,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.black,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(widget.coffee.image),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                widget.coffee.name,
                style: GoogleFonts.sora(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
              Row(
                spacing: 10,
                children: [
                  Expanded(
                    child: Text(
                      widget.coffee.subtitle,
                      style: GoogleFonts.sora(
                        color: Colors.black.withValues(alpha: 0.5),
                        fontSize: 12,
                      ),
                    ),
                  ),

                  Image.asset("assets/images/delivery.png", scale: 0.7),

                  Image.asset("assets/images/beans.png", scale: 0.7),

                  Image.asset("assets/images/milk.png", scale: 0.7),
                ],
              ),
              SizedBox(height: 10),
              Row(
                spacing: 5,
                children: [
                  Image.asset("assets/images/star.png"),
                  Text(
                    widget.coffee.rating.toStringAsFixed(2),
                    style: GoogleFonts.sora(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "(230)",
                    style: GoogleFonts.sora(
                      color: Colors.black.withValues(alpha: 0.5),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Text(
                "Description",
                style: GoogleFonts.sora(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),
              RichText(
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                  style: GoogleFonts.sora(
                    fontSize: 14,
                    height: 1.6,
                    color: Colors.black.withValues(alpha: 0.5),
                  ),
                  children: [
                    const TextSpan(
                      text:
                          "A cappuccino is an approximately 150 ml (5 oz) beverage, "
                          "with 25 ml of espresso coffee and 85ml of fresh milk the fo...",
                    ),
                    TextSpan(
                      text: " Read More",
                      style: GoogleFonts.sora(
                        color: const Color(0xFFC67C4E),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Size",
                style: GoogleFonts.sora(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedSize = "S";
                      });
                    },
                    child: Container(
                      width: 110,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: selectedSize == "S"
                            ? const Color(0xFFF9EFEA)
                            : Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: selectedSize == "S"
                              ? const Color(0xFFC67C4E)
                              : Colors.grey.shade300,
                        ),
                      ),
                      child: Text(
                        "S",
                        style: GoogleFonts.sora(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: selectedSize == "S"
                              ? const Color(0xFFC67C4E)
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedSize = "M";
                      });
                    },
                    child: Container(
                      width: 110,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: selectedSize == "M"
                            ? const Color(0xFFF9EFEA)
                            : Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: selectedSize == "M"
                              ? const Color(0xFFC67C4E)
                              : Colors.grey.shade300,
                        ),
                      ),
                      child: Text(
                        "M",
                        style: GoogleFonts.sora(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: selectedSize == "M"
                              ? const Color(0xFFC67C4E)
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedSize = "L";
                      });
                    },
                    child: Container(
                      width: 110,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: selectedSize == "L"
                            ? const Color(0xFFF9EFEA)
                            : Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: selectedSize == "L"
                              ? const Color(0xFFC67C4E)
                              : Colors.grey.shade300,
                        ),
                      ),
                      child: Text(
                        "L",
                        style: GoogleFonts.sora(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: selectedSize == "L"
                              ? const Color(0xFFC67C4E)
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),

              Row(
                children: [
                  // Price section
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Price",
                        style: GoogleFonts.sora(
                          fontSize: 14,
                          color: Colors.black.withValues(alpha: 0.5),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "\$ ${widget.coffee.price.toStringAsFixed(2)}",
                        style: GoogleFonts.sora(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFFC67C4E),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(width: 20),

                  Expanded(
                    child: SizedBox(
                      height: 56,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFC67C4E),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          elevation: 0,
                        ),
                        child: Text(
                          "Buy Now",
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
            ],
          ),
        ),
      ),
    );
  }
}
