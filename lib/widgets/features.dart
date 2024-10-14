import 'package:flutter/material.dart';
import 'package:web_app/widgets/features_box.dart';

class Features extends StatelessWidget {
  const Features({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(onPressed: () {}, child: const Text("Features")),
        const SizedBox(height: 35),
        Text(
          "Powerful Features For Seamless Learning",
          style: Theme.of(context).textTheme.titleLarge,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        const SizedBox(
          width: double.infinity,
          child: Wrap(
            alignment: WrapAlignment.spaceEvenly,
            children: [
              FeaturesBox(
                title: "Intuitive user interface",
                details: "details",
                iconPathway: "assets/images/icon/user.png",
                color: Color.fromARGB(255, 8, 41, 133),
              ),
              FeaturesBox(
                title: "Chatrooms for Interaction",
                details: "details",
                iconPathway: "assets/images/icon/chat.png",
                color: Color.fromARGB(255, 66, 224, 45),
              ),
              FeaturesBox(
                title: "Assessments",
                details: "details",
                iconPathway: "assets/images/icon/book-mark.png",
                color: Color.fromARGB(255, 224, 178, 51),
              ),
              FeaturesBox(
                title: "Progress tracking & Analytics dashboard",
                details: "details",
                iconPathway: "assets/images/icon/chart.png",
                color: Color.fromARGB(255, 211, 48, 48),
              ),
              FeaturesBox(
                title: "Reward system",
                details: "details",
                iconPathway: "assets/images/icon/awards.png",
                color: Color.fromARGB(255, 230, 233, 69),
              ),
              FeaturesBox(
                title: "Educational Materials",
                details: "details",
                iconPathway: "assets/images/icon/assessment.png",
                color: Color.fromARGB(255, 73, 5, 94),
              ),
            ],
          ),
        )
      ],
    );
  }
}
