import 'package:flutter/material.dart';
import 'widgets/navbar.dart';
import 'sections/hero_section.dart';
import 'sections/about_section.dart';
import 'sections/services_section.dart';
import 'sections/recaps_section.dart';
import 'sections/contacts_section.dart';

void main() {
  runApp(const GarciaWebsite());
}

class GarciaWebsite extends StatefulWidget {
  const GarciaWebsite({super.key});

  @override
  State<GarciaWebsite> createState() => _GarciaWebsiteState();
}

class _GarciaWebsiteState extends State<GarciaWebsite> {
  String currentSection = "Home";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            NavBar(
              onNav: (s) {
                setState(() => currentSection = s);
              },
            ),

            if (currentSection == "Home") const HeroSection(),
            if (currentSection == "About") const AboutSection(),
            if (currentSection == "Services") const ServicesSection(),
            if (currentSection == "Recaps") const RecapsSection(),
            if (currentSection == "Contact") const ContactSection(),
          ],
        ),
      ),
    );
  }
}
