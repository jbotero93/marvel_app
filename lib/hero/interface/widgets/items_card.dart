import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemsCard extends StatelessWidget {
  const ItemsCard({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.redAccent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        title,
        style: GoogleFonts.rubik(),
      ),
    );
  }
}
