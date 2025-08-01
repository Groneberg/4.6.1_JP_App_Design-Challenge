import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jp_app_design_challenge/src/features/overlay/widgets/overlay_background.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO später auslagern
    return Scaffold(
      body: Stack(
        children: [
          OverlayBackground(),
          Image.asset(
            "assets/grafiken/cupkake_cat.png",
            // height: MediaQuery.sizeOf(context).width,
            // width: MediaQuery.sizeOf(context).width,
            // fit: BoxFit.cover,
            // Positioned
            // top: 330,
            // left: MediaQuery.sizeOf(context).width / 2 - 170,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 330, left: {MediaQuery.sizeOf(context).width / 2 - 170}, right: 27),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
                child: Container(
                  // padding: EdgeInsets.only(left: 30, right: 30, top: 16, bottom: 30),
                  width: 340,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 0.01),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 30,
                          right: 30,
                          top: 16,
                          bottom: 4,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              width: 50,
                              child: Text(
                                '♡ 200',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: const Color(0x99EBEBF5),
                                  fontSize: 13,
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.w400,
                                  height: 1,
                                  letterSpacing: 0.07,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 280,
                        child: Text(
                          'Mogli’s Cup',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w900,
                            height: 1.27,
                            letterSpacing: 0.35,
                            shadows: [
                              Shadow(
                                offset: Offset(0, 10),
                                blurRadius: 60,
                                color: Color.fromRGBO(0, 0, 0, 0.5),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 6),
                      SizedBox(
                        width: 280,
                        height: 97,
                        child: Text(
                          'Lorem ipsum dolor sit amet consectetur. Non feugiat imperdiet a vel sit at amet. Mi accumsan feugiat magna aliquam feugiat ac et. Pulvinar hendrerit id arcu at sed etiam semper mi hendrerit. Id aliquet quis quam.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color.fromRGBO(235, 235, 245, 0.6),
                            fontSize: 13,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w400,
                            height: 1.38,
                            letterSpacing: -0.08,
                            shadows: [
                              Shadow(
                                offset: Offset(0, 10),
                                blurRadius: 60,
                                color: Color(0xFF000000).withOpacity(0.50),
                              ),
                            ],
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
    );
  }
}
