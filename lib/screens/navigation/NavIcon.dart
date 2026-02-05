import 'package:flutter/material.dart';

class Navicon extends StatelessWidget {
  final String asset;
  final bool isActive;

  const Navicon({super.key, required this.asset, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ImageIcon(
          AssetImage(asset),
          color: isActive ? Color(0xffC67C4E) : Colors.grey,
        ),
        SizedBox(height: 4),
        AnimatedContainer(
          duration: Duration(milliseconds: 250),
          height: 3,
          width: isActive ? 20 : 0,
          decoration: BoxDecoration(
            color: Color(0xffC67C4E),
            borderRadius: BorderRadius.circular(2),
          ),
        ),
      ],
    );
  }
}
