import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 280,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          // Opacity(
          //   opacity: 0.8,
          //   child: Image.asset(
          //     'assets/images/quiz-logo.png',
          //     width: 280,
          //   ),
          // ),
          const SizedBox(height: 50),
          Text(
            'Learn Flutter the fun way!',
            style: GoogleFonts.lato(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 40),
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(75, 0, 0, 0),
                blurRadius: 8,
                offset: Offset(2, 4),
              )
            ]),
            child: OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Color.fromARGB(255, 22, 18, 134),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                  side: BorderSide(color: Colors.white)),
              icon: Icon(
                Icons.arrow_right_alt,
                color: Colors.white,
              ),
              label: Text('Start Quiz'),
            ),
          ),
        ],
      ),
    );
  }
}
