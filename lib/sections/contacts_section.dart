import 'package:flutter/material.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 100),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Get In Touch",
            style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.w900,
              color: Color(0xFF1A1A1A),
            ),
          ),

          const SizedBox(height: 30),

          Container(
            padding: const EdgeInsets.all(40),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color(0xFF8A56F0),
                  Color(0xFFD46BD9),
                  Color(0xFFF3876A),
                ],
              ),
              borderRadius: BorderRadius.circular(28),
              boxShadow: [
                BoxShadow(
                  blurRadius: 18,
                  offset: const Offset(0, 12),
                  color: Colors.black.withOpacity(0.15),
                ),
              ],
            ),
            child: Column(
              children: [
                const Text(
                  "Let's Grow Your Brand",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),

                const SizedBox(height: 20),

                const Text(
                  "Email: Dylan@GarciaSocial.com",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Instagram: @GarciaSocialAgency",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Cash Stash BR & NOLA",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),

                const SizedBox(height: 30),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black87,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 28,
                      vertical: 18,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Book a Strategy Call",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
