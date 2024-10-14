import 'package:flutter/material.dart';

class MyExpansionTile extends StatefulWidget {
  const MyExpansionTile(
      {super.key, required this.question, required this.answer});

  final String question;
  final String answer;

  @override
  State<MyExpansionTile> createState() => _MyExpansionTileState();
}

class _MyExpansionTileState extends State<MyExpansionTile> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Colors.white,
          boxShadow: isExpanded
              ? const [
                  BoxShadow(
                      color: Colors.black54, spreadRadius: 1, blurRadius: 1),
                ]
              : []),
      width: width / 2.5,
      constraints: const BoxConstraints(minWidth: 350),
      child: ExpansionTile(
        trailing: isExpanded
            ? const ImageIcon(
                AssetImage("assets/images/icon/minus.png"),
              )
            : const Icon(
                Icons.add,
              ),
        collapsedBackgroundColor: const Color.fromARGB(255, 8, 41, 133),
        backgroundColor: const Color.fromARGB(255, 8, 41, 133),
        title: Text(
          widget.question,
          style: const TextStyle(color: Colors.white),
        ),
        onExpansionChanged: (value) {
          setState(() {
            isExpanded = !isExpanded;
          });
        },
        collapsedIconColor: Colors.white,
        iconColor: Colors.white,
        collapsedShape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(4),
          ),
        ),
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.white,
            width: double.infinity,
            child: Text(widget.answer),
          )
        ],
      ),
    );
  }
}
