import 'package:flutter/material.dart';
import 'package:web_app/widgets/my_expansion_tile.dart';

class Faq extends StatelessWidget {
  const Faq({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(onPressed: () {}, child: const Text("FAQ")),
        const SizedBox(height: 30),
        const Wrap(
          children: [
            MyExpansionTile(
                question: "What is Difference about?",
                answer: "These are the details"),
            SizedBox(height: 30),
            MyExpansionTile(
                question: "How can students earn points?",
                answer: "These are the details"),
            SizedBox(height: 30),
            MyExpansionTile(
                question: "What can the earned points be used for?",
                answer: "These are the details"),
            MyExpansionTile(
                question: "Is the app free to use?", answer: "Yes it is"),
            SizedBox(height: 30),
            MyExpansionTile(
                question: "Can students interact with their peers?",
                answer: "Yes it is"),
            SizedBox(height: 30),
            MyExpansionTile(
                question: "Can students interact with their peers?",
                answer: "Yes it is")
          ],
        ),
      ],
    );
  }
}
