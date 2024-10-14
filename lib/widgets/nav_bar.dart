import 'package:flutter/material.dart';
import 'package:web_app/widgets/nav_bar_item.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    bool isPotrait = MediaQuery.sizeOf(context).width < 600;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        Image.asset(
          "assets/images/difference_logo.png",
          height: 80,
        ),
        if (!isPotrait)
          const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              NavBarItem(itemString: "About"),
              NavBarItem(itemString: "Features"),
              NavBarItem(itemString: "FAQ"),
              NavBarItem(itemString: "Contact Us"),
            ],
          ),
        ElevatedButton(
          onPressed: () {},
          child: const Text("Get Started"),
        ),
      ],
    );
  }
}
