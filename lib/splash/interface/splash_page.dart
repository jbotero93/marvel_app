import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marvel_app/home/home_injection.dart';
import 'package:page_transition/page_transition.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.5),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'Marvel Studios',
                  textStyle: GoogleFonts.anton(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    fontSize: 30,
                  ),
                  speed: const Duration(milliseconds: 200),
                ),
              ],
              totalRepeatCount: 1,
              onFinished: () {
                Navigator.pushReplacement(
                  context,
                  PageTransition(
                    type: PageTransitionType.leftToRight,
                    child: HomeInjection.injection(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
