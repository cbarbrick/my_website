import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 100),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "About Us",
            style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.w900,
              color: Color(0xFF1A1A1A),
            ),
          ),

          const SizedBox(height: 30),

          Text(
            "We help businesses stand out in the fastest-growing creative space in the world.\n"
            "Garcia Social blends storytelling, strategy, and community engagement to build momentum online.",
            style: TextStyle(
              fontSize: 20,
              height: 1.5,
              color: Colors.grey.shade700,
            ),
          ),

          const SizedBox(height: 50),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _aboutCard(
                icon: Icons.bolt_rounded,
                title: "Fast Growth",
                subtitle:
                    "We specialize in scroll-stopping content that reaches thousands — fast.",
              ),
              const SizedBox(width: 30),
              _aboutCard(
                icon: Icons.people_alt_rounded,
                title: "Community First",
                subtitle:
                    "Our Cash Stash campaigns build real local community engagement.",
              ),
              const SizedBox(width: 30),
              _aboutCard(
                icon: Icons.trending_up_rounded,
                title: "Data-Driven",
                subtitle:
                    "Every strategy is backed by analytics and performance insights.",
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _aboutCard({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(28),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 16,
              offset: const Offset(0, 10),
              color: Colors.black.withOpacity(0.08),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF8A56F0),
                    Color(0xFFD46BD9),
                    Color(0xFFF3876A),
                  ],
                ),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Icon(icon, size: 34, color: Colors.white),
            ),
            const SizedBox(height: 18),
            Text(
              title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Color(0xFF1A1A1A),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              subtitle,
              style: TextStyle(
                fontSize: 16,
                height: 1.4,
                color: Colors.grey.shade700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
