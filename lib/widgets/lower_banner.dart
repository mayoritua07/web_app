import 'package:flutter/material.dart';

class LowerBanner extends StatelessWidget {
  const LowerBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
      constraints: const BoxConstraints(minHeight: 400),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/bg_picture.png"),
            fit: BoxFit.cover),
      ),
      child: Row(
        children: [
          Image.asset("assets/images/sdg chart.png"),
          const SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  "Our committment to Advancing SDG 4",
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  softWrap: true,
                ),
                Text(
                  "We are committed to advancing Sustainable Development Goal 4, Quality Education. Our platform provides features that support continuous learning, ensuring learners have the reosurces needed to excel academically. By fostering collaboration and rewarding excellent performance, we keep learners motivated and empower them to reach their full academic potential.",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(color: Colors.white),
                  softWrap: true,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
