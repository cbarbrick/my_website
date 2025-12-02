import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final Function(String) onNav;

  const NavBar({super.key, required this.onNav});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 25),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(color: Color(0xFFEDEDED), width: 1)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _logo(),
          Row(
            children: [
              _navItem("Home"),
              _navItem("About"),
              _navItem("Services"),
              _navItem("Recaps"),
              _navItem("Contact"),
            ],
          ),
        ],
      ),
    );
  }

  // EXACT GARCIA SOCIAL LOGO
  Widget _logo() {
    return Row(
      children: [
        const Text(
          "Garcia ",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w800,
            color: Color(0xFF1A1A1A), // dark charcoal
          ),
        ),
        ShaderMask(
          shaderCallback: (bounds) {
            return const LinearGradient(
              colors: [
                Color(0xFF8A56F0), // purple
                Color(0xFFD46BD9), // pink-purple
                Color(0xFFF3876A), // orange-peach
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height));
          },
          child: const Text(
            "Social",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  // NAV ITEMS
  Widget _navItem(String text) {
    return GestureDetector(
      onTap: () => onNav(text),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 18,
              color: Color(0xFF333333),
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
