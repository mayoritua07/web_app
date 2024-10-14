import 'package:flutter/material.dart';

class NavBarItem extends StatelessWidget {
  const NavBarItem({super.key, required this.itemString});
  final String itemString;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Text(itemString),
    );
  }
}
