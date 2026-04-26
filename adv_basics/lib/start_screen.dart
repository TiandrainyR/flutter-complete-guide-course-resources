import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startScreen, {super.key});

  final Function() startScreen;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 250,
            color: Color.fromARGB(104, 255, 255, 255),
          ),
          const SizedBox(height: 50),
          Text(
            'Learn Flutter the fun way!',
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight(700),
            ),
          ),
          const SizedBox(height: 10),
          OutlinedButton.icon(
            onPressed: startScreen,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              side: BorderSide.none,
            ),
            icon: const Icon(Icons.arrow_right_alt, size: 24),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
