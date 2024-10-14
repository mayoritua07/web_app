import 'package:flutter/material.dart';

class MockUp extends StatelessWidget {
  const MockUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 105, 110, 221),
      width: double.infinity,
      height: 400,
    );
  }
}
