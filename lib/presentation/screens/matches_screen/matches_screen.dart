import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MatcheScreen extends StatelessWidget {
  const MatcheScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(77.0),
          child: AppBar(
            centerTitle: true,
            backgroundColor: Color(0xFF0C3C72),
            flexibleSpace: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () => {},
                    icon: FaIcon(FontAwesomeIcons.caretLeft),
                    color: Colors.white,
                  ),
                  Image(image: AssetImage("assets/player/messi.png")),
                  Text(
                    'Matches',
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(fontSize: 37, color: Colors.white),
                    ),
                  ),
                  Image(image: AssetImage("assets/player/chelsea.png"))
                ],
              ),
            ),
          ),
        ),
        body: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                    elevation: 20.0,
                    child: Container(
                        height: 47,
                        width: 360,
                        child: Center(
                          child: Text(
                            '21 November 2022',
                            style: TextStyle(
                                fontSize: 20, color: Color(0xFFFD4600)),
                          ),
                        ))),
              ],
            ),
            Material(
              elevation: 20.0,
              child: Container(
                  height: 70,
                  width: 360,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Image(
                            image: AssetImage('assets/countries/senegal.png'),
                            height: 38,
                            width: 25,
                          ),
                          Text('Senegal',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Text(
                        '13:00',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Column(
                        children: [
                          Image(
                            image:
                                AssetImage('assets/countries/netherland.png'),
                            height: 38,
                            width: 25,
                          ),
                          Text('Netherland',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold))
                        ],
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
