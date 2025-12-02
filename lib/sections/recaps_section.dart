import 'package:flutter/material.dart';

class RecapsSection extends StatelessWidget {
  const RecapsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 100),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFF9F7FF), Color(0xFFFFF3EA)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Campaign Recaps",
            style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.w900,
              color: Color(0xFF1A1A1A),
            ),
          ),
          const SizedBox(height: 40),

          Row(
            children: [
              _recapCard(
                title: "Cash Stash BR x Cheesecake Lab",
                views: "210,000+ views",
                followers: "1,800+ followers gained",
                community: "\$800 given back to the community",
              ),
              const SizedBox(width: 30),
              _recapCard(
                title: "Cash Stash BR x Toussaint Customs",
                views: "200,000+ views",
                followers: "1,300+ followers gained",
                community: "\$1,000 given back to the community",
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _recapCard({
    required String title,
    required String views,
    required String followers,
    required String community,
  }) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(28),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(22),
          boxShadow: [
            BoxShadow(
              blurRadius: 14,
              offset: const Offset(0, 8),
              color: Colors.black.withOpacity(0.08),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: Color(0xFF1A1A1A),
              ),
            ),
            const SizedBox(height: 14),
            _stat(views),
            _stat(followers),
            _stat(community),
          ],
        ),
      ),
    );
  }

  Widget _stat(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          const Icon(Icons.check_circle, color: Color(0xFF8A56F0), size: 22),
          const SizedBox(width: 8),
          Text(
            text,
            style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
          ),
        ],
      ),
    );
  }
}
