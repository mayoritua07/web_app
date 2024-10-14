import 'package:flutter/material.dart';
import 'package:web_app/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Unduel',
        theme: ThemeData(
          useMaterial3: true,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(),
                backgroundColor: const Color.fromARGB(255, 8, 41, 133),
                foregroundColor: Colors.white),
          ),
        ),
        themeMode: ThemeMode.light,
        home: const Scaffold(
          body: SingleChildScrollView(
            child: LandingPage(),
          ),
        ));
  }
}


// remove underline in kafayat a gmail.com