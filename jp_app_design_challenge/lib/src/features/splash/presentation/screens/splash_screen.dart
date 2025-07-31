import 'dart:ui';

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
              top: 110,
              left: -30,
              // TODO größe und Position
              child: Image.asset(
                'assets/grafiken/cupcake_chick.png',
                width: 600,
                height: 600,
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              // TODO besser positionieren
              top: 480,
              left: -10,
              child: Image.asset(
                'assets/details/snack_snack.png',
                height: 350,
                fit: BoxFit.fill,
                opacity: const AlwaysStoppedAnimation<double>(0.6),
              ),
            ),
            Positioned(
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
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 200,
                            height: 48,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color.fromRGBO(
                                    234,
                                    113,
                                    197,
                                    0.5,
                                  ),
                                  // color: const Color.fromRGBO(255,255,255,0.5),
                                  offset: const Offset(0.0, 10.0),
                                  blurRadius: 30.0,
                                ),
                              ],
                              // borderRadius: BorderRadius.circular(10.0),
                              gradient: RadialGradient(
                                center: const Alignment(
                                  0.9689 * 2 - 1,
                                  0.7083 * 2 - 1,
                                ), // Umrechnung von CSS-Prozent in Flutter-Alignment
                                radius:
                                    280.98 /
                                    100, // Radius basierend auf 280.98%
                                colors: const [
                                  Color(0xFFF69EA3),
                                  Color(0xFFE970C4),
                                ],
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Order Now",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromRGBO(255, 255, 255, 1.0),
                                  fontWeight: FontWeight.w600,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(0.0, 30.0),
                                      blurRadius: 60.0,
                                      color: Color.fromRGBO(0, 0, 0, 0.25),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
