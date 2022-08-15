import 'package:flutter/material.dart';

class image_test extends StatelessWidget {
  const image_test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body:
      Column(
      children: [
    Image.asset('assets/countries/england.png'),
     Image.asset('assets/player/messi.png'),
  ],
),
    );
  }
}
