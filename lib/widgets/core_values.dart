import 'package:flutter/material.dart';
import 'package:web_app/widgets/picture_box.dart';

class CoreValues extends StatelessWidget {
  const CoreValues({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {},
          child: const Text("Core Values"),
        ),
        const SizedBox(height: 50),
        const Wrap(
          // mainAxisSize: MainAxisSize.max,
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            PictureBox(
                title: "Innovation",
                details:
                    "We're dedicated to innovation, continuously seeking ways to enhance the learning experience through technological and educational advancements",
                imagePath: "assets/images/picture1.png"),
            PictureBox(
                title: "Teamwork",
                details:
                    "We foster collaboration by building a supportive learning community where students can interact, ensuring they thrive academically through mutual support and collective growth.",
                imagePath: "assets/images/picture2.png"),
            PictureBox(
                title: "Excellence",
                details:
                    "We're dedicated to delivering excellent services in every aspect of our platform, from educational content to user experience and customer support, ensuring the highest standards are maintained.",
                imagePath: "assets/images/picture3.png")
          ],
        ),
      ],
    );
  }
}
