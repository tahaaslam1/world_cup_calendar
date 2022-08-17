import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final bool isMatch;

  const CustomAppBar({
    Key? key,
    required this.title,
    required this.isMatch,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isMatch) {
      return AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF0C3C72),
        flexibleSpace: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () => {},
              icon: const FaIcon(FontAwesomeIcons.caretLeft),
              color: Colors.white,
            ),
            const Image(image: AssetImage("assets/player/messi.png")),
            Text(
              title,
              style: GoogleFonts.inter(
                textStyle: const TextStyle(fontSize: 37, color: Colors.white),
              ),
            ),
            const Image(image: AssetImage("assets/player/chelsea.png"))
          ],
        ),
      );
    } else {
      return AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF0C3C72),
        flexibleSpace: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Image(image: AssetImage("assets/player/messi.png")),
            Text(
              title,
              style: GoogleFonts.inter(
                textStyle: const TextStyle(fontSize: 37, color: Colors.white),
              ),
            ),
            const Image(image: AssetImage("assets/player/chelsea.png"))
          ],
        ),
      );
    }
  }
}
