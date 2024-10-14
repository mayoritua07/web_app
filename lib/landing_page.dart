import 'package:flutter/material.dart';
import 'package:web_app/widgets/faq.dart';
import 'package:web_app/widgets/about.dart';
import 'package:web_app/widgets/core_values.dart';
import 'package:web_app/widgets/features.dart';
import 'package:web_app/widgets/footer.dart';
import 'package:web_app/widgets/lower_banner.dart';
import 'package:web_app/widgets/mock_up.dart';
import 'package:web_app/widgets/nav_bar.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return Column(
      children: [
        const NavBar(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const MockUp(),
              SizedBox(height: height / 6),
              const About(),
              SizedBox(height: height / 6),
              const CoreValues(),
              SizedBox(height: height / 7),
              const Features(),
              SizedBox(height: height / 4),
              // const LowerBanner(),
              // SizedBox(height: height / 6),
              const Faq(),
              SizedBox(height: height / 6),
              const Footer()
            ],
          ),
        )
      ],
    );
  }
}
