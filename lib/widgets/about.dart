import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    bool isPotrait = MediaQuery.sizeOf(context).width < 500;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: isPotrait ? width * 0.8 : width / 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("About"),
                ),
                const SizedBox(height: 15),
                Text(
                  "Difference - Where Learning Meets Earning!",
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.titleLarge,
                  softWrap: true,
                ),
                if (isPotrait)
                  Image.asset(
                    "assets/images/Rectangle.jpg",
                    width: isPotrait ? width * 0.8 : width * 0.425,
                  ),
                const Text(
                  "We are shaping the future of education. At Difference, we are committed to bridging educational gaps and supporting learners' needs, ensuring that learning is both impactful and rewarding. Our innovative platform provides dynamic features to enhance their learning experience. Discover a revolutionary approach to learning with Difference, where innovation and support empower learners to excel.",
                  textAlign: TextAlign.justify,
                  softWrap: true,
                ),
              ],
            ),
          ),
          if (!isPotrait) ...[
            SizedBox(width: width / 10),
            Image.asset(
              "assets/images/Rectangle.jpg",
              width: width * 0.425,
            )
          ]
        ],
      ),
    );
  }
}
