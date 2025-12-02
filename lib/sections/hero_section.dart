import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 140),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFF2E8FF), // soft purple
            Color(0xFFFFF1EA), // soft peach
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // LEFT SIDE — TEXT + BUTTON
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "We Make Your Brand\nUnforgettable.",
                  style: TextStyle(
                    fontSize: 64,
                    fontWeight: FontWeight.w900,
                    height: 1.1,
                    color: Colors.grey.shade900,
                  ),
                ),

                const SizedBox(height: 30),

                Text(
                  "Social-first strategies, scroll-stopping content, and\ncommunity-driven campaigns that bring real results.",
                  style: TextStyle(
                    fontSize: 22,
                    height: 1.5,
                    color: Colors.grey.shade700,
                  ),
                ),

                const SizedBox(height: 40),

                // CTA BUTTON
                Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFF8A56F0),
                        Color(0xFFD46BD9),
                        Color(0xFFF3876A),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 34,
                        vertical: 20,
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Book a Strategy Call",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(width: 60),

          // RIGHT SIDE — NEW STATS BOX
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 28),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 20,
                    color: Colors.black.withOpacity(0.08),
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  _StatBlock(number: "200k+", label: "Campaign Views"),
                  SizedBox(height: 24),

                  Divider(thickness: 1, color: Color(0xFFEDEDED)),
                  SizedBox(height: 24),

                  _StatBlock(number: "3,000+", label: "Followers Gained"),
                  SizedBox(height: 24),

                  Divider(thickness: 1, color: Color(0xFFEDEDED)),
                  SizedBox(height: 24),

                  _StatBlock(number: "20+", label: "Collaboration Campaigns"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Small stat widget
class _StatBlock extends StatelessWidget {
  final String number;
  final String label;

  const _StatBlock({required this.number, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          number,
          style: const TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w800,
            color: Color(0xFF1A1A1A),
          ),
        ),
        SizedBox(height: 6),
        Text(
          label,
          style: TextStyle(fontSize: 18, color: Colors.grey.shade700),
        ),
      ],
    );
  }
}
