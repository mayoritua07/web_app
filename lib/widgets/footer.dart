import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          thickness: 2.5,
        ),
        const SizedBox(height: 25),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Image.asset(
                  "assets/images/difference_logo.png",
                  width: 170,
                ),
                const SizedBox(
                  width: 120,
                  child: Row(
                    // mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ImageIcon(AssetImage("assets/images/icon/facebook.png"),
                          size: 20),
                      ImageIcon(AssetImage("assets/images/icon/instagram.png"),
                          size: 20),
                      ImageIcon(
                        AssetImage("assets/images/icon/linkedin.png"),
                        size: 20,
                      ),
                      ImageIcon(
                        AssetImage("assets/images/icon/twitter.png"),
                        size: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text("Home"),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text("About"),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text("Features"),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text("FAQ"),
                )
              ],
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Get in touch"),
                Text("09011223344"),
                Text("info@gmail.com")
              ],
            ),
            Column(
              children: [
                const Text(
                    "Get latest updates by subscribing to out newslatter"),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 10),
                      width: 300,
                      height: 40,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          // BoxShadow(
                          //     color: Colors.black54,
                          //     blurRadius: 2,
                          //     spreadRadius: 1),
                        ],
                      ),
                      child: const TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: "kafayat@gmail.com",
                        ),
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {}, child: const Text("Subscribe"))
                  ],
                )
              ],
            )
          ],
        ),
        const SizedBox(height: 25),
        const Divider(
          thickness: 2.5,
        ),
        const SizedBox(height: 25),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageIcon(AssetImage("assets/images/icon/copyright.png")),
            Text("2024  All rights reserved")
          ],
        ),
        const SizedBox(height: 100),
      ],
    );
  }
}
