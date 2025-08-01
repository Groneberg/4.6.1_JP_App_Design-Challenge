import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jp_app_design_challenge/src/features/splash/presentation/widgets/snackish_splash_card.dart';

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
              top: 110,
              left: -30,
              child: Image.asset(
                'assets/grafiken/cupcake_chick.png',
                width: 600,
                height: 600,
                fit: BoxFit.fill,
              ),
            ),
            Positioned(

              top: 480,
              left: -10,
              child: Image.asset(
                'assets/details/snack_snack.png',
                height: 350,
                fit: BoxFit.fill,
                opacity: const AlwaysStoppedAnimation<double>(0.6),
              ),
            ),
            SnackishSplashCard(),
          ],
        ),
      ),
    );
  }
}
