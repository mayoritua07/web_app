import 'package:flutter/material.dart';

class PictureBox extends StatelessWidget {
  const PictureBox(
      {super.key,
      required this.title,
      required this.details,
      required this.imagePath});

  final String title;
  final String details;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(bottom: 20),
      width: width / 4,
      height: width / 4.5,
      constraints: const BoxConstraints(minWidth: 320, minHeight: 300),
      decoration: BoxDecoration(
        // backgroundBlendMode: BlendMode.darken,
        // color: Colors.black,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(imagePath),
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Colors.white),
            ),
            const SizedBox(height: 10),
            Text(
              details,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white),
              softWrap: true,
            )
          ],
        ),
      ),
    );
  }
}
