import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marvel_app/common/domain/models/hero_model.dart';
import 'package:marvel_app/hero/hero_injection.dart';
import 'package:marvel_app/home/home_injection.dart';
import 'package:page_transition/page_transition.dart';

class HeroCard extends StatelessWidget {
  const HeroCard({super.key, required this.heroItem});
  final HeroModel heroItem;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          PageTransition(
            type: PageTransitionType.rightToLeftJoined,
            child:
                HeroInjection.injection(id: heroItem.id, name: heroItem.name),
            childCurrent: HomeInjection.injection(),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.redAccent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  heroItem.name,
                  style: GoogleFonts.anton(),
                ),
                Text(
                  'Id:${heroItem.id}',
                  style: GoogleFonts.anton(),
                ),
              ],
            ),
            Text(
              heroItem.description,
              style: GoogleFonts.rubik(),
            ),
          ],
        ),
      ),
    );
  }
}
