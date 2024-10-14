import 'package:flutter/material.dart';

class FeaturesBox extends StatelessWidget {
  const FeaturesBox(
      {super.key,
      required this.title,
      required this.details,
      required this.iconPathway,
      required this.color});

  final String title;
  final String details;
  final String iconPathway;
  final Color color;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Container(
      margin: const EdgeInsets.only(bottom: 40),
      padding: const EdgeInsets.only(left: 20.0, right: 10, top: 30),
      width: width / 2.5,
      height: width / 2.8,
      constraints:
          const BoxConstraints(minWidth: 350, maxWidth: 550, minHeight: 320),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [BoxShadow(color: Colors.black54, blurRadius: 2)],
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ImageIcon(
                AssetImage(iconPathway),
                color: color,
                size: 30,
              ),
            ],
          ),
          const SizedBox(height: 15),
          Text(
            title,
            style:
                Theme.of(context).textTheme.titleMedium!.copyWith(color: color),
          ),
          const SizedBox(height: 15),
          Text(details),
        ],
      ),
    );
  }
}
