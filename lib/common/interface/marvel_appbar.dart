import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MarvelAppbar extends StatelessWidget implements PreferredSizeWidget {
  const MarvelAppbar({super.key, required this.title});
  final String title;
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.redAccent,
      title: Text(
        title,
        style: GoogleFonts.anton(
          color: Colors.black,
        ),
      ),
    );
  }
}
