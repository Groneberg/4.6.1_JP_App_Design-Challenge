import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:jp_app_design_challenge/src/features/home/presentation/screens/home_screen.dart';
import 'package:jp_app_design_challenge/src/features/splash/presentation/widgets/snackish_splash_card_button.dart';

class SnackishSplashCard extends StatelessWidget {
  const SnackishSplashCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 620,
      left: MediaQuery.sizeOf(context).width / 2 - 190,
      width: 380,
      height: 200,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
          child: Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(255, 255, 255, 0.01),
              border: Border.all(
                color: const Color.fromRGBO(255, 255, 255, 0.125),
                width: 1.0,
                
              ),
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Feeling Snackish Today?",
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1.0),
                    fontSize: 22.0,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 0.35,
                    shadows: [
                      Shadow(
                        offset: Offset(0.0, 10.0),
                        blurRadius: 60.0,
                        color: Color.fromRGBO(0, 0, 0, 0.5),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 6),
                Text(
                  "Explore Angi’s most popular snack selection and get instantly happy.",
                  style: TextStyle(
                    color: Color.fromRGBO(235, 235, 245, 0.8),
                    // TODO fontfamily SF Pro Text
                    fontSize: 13.0,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.078,
                    shadows: [
                      Shadow(
                        offset: Offset(0.0, 10.0),
                        blurRadius: 60.0,
                        color: Color.fromRGBO(0, 0, 0, 0.5),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30),
                SnackishSplashCardButton(buttonText: "Order Now", navigate: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
                },),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
