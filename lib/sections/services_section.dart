import 'package:flutter/material.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 100),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFF9F7FF), Color(0xFFFFF6F1)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Services",
            style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.w800,
              color: Color(0xFF1A1A1A),
            ),
          ),

          const SizedBox(height: 40),

          // Row 1
          Row(
            children: [
              _serviceCard(
                title: "Social Media Management",
                description:
                    "Daily posting, growth systems, and content calendars built for your brand.",
                icon: Icons.manage_accounts,
              ),
              const SizedBox(width: 30),
              _serviceCard(
                title: "Reels + TikTok Production",
                description:
                    "High-quality short-form video designed to drive views, followers, and sales.",
                icon: Icons.videocam_rounded,
              ),
            ],
          ),

          const SizedBox(height: 30),

          // Row 2
          Row(
            children: [
              _serviceCard(
                title: "Cash Stash Campaigns",
                description:
                    "Our signature collaboration format that delivers massive organic reach.",
                icon: Icons.monetization_on,
              ),
              const SizedBox(width: 30),
              _serviceCard(
                title: "Brand Analytics & Strategy",
                description:
                    "Data-driven decisions that turn content into long-term growth.",
                icon: Icons.analytics,
              ),
            ],
          ),

          const SizedBox(height: 30),

          // Row 3
          Row(
            children: [
              _serviceCard(
                title: "Full Content Strategy",
                description:
                    "Custom plans, tone, storytelling, and content direction for your brand.",
                icon: Icons.lightbulb_outline_rounded,
              ),
            ],
          ),
        ],
      ),
    );
  }

  // SERVICE CARD
  Widget _serviceCard({
    required String title,
    required String description,
    required IconData icon,
  }) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(28),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(22),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.07),
              blurRadius: 14,
              offset: const Offset(0, 4),
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
                    Color(0xFF8A56F0), // purple
                    Color(0xFFD46BD9), // pink
                    Color(0xFFF3876A), // orange
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
              description,
              style: const TextStyle(
                fontSize: 16,
                height: 1.4,
                color: Color(0xFF4D4D4D),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
