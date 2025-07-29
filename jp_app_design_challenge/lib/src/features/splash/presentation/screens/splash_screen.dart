import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/hintergründe/bg_startscreen.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: 100,
              left: -30,
              height: 605,
              width: 605,
              child: Image.asset('assets/grafiken/cupcake_chick.png'),
            ),
            Positioned(
              width: 733,
              height: 66,
              top: 498,
              left: -236,
              child: Image.asset('assets/details/snack_snack.png'),
            ),
          ],
        ),
      ),
    );
  }
}
