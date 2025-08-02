import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jp_app_design_challenge/src/features/overlay/widgets/overlay_background.dart';
import 'package:jp_app_design_challenge/src/features/overlay/widgets/overlay_order_card.dart';
import 'package:jp_app_design_challenge/src/features/overlay/widgets/s_v_g_icon.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO später auslagern
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        child: Stack(
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
            OverlayOrderCard(),
            Positioned(
              top: 712,
              left: 24,
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width - 48,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 3,
                      ),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: const Color.fromRGBO(118, 118, 128, 0.2392),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                      ),
                      child: Row(
                        spacing: 3,
                        children: [
                          Text(
                            'Small',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: const Color.fromRGBO(235, 235, 245, 0.6),
                              fontSize: 11,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w600,
                              height: 1.64,
                              letterSpacing: -0.08,
                              shadows: [
                                Shadow(
                                  offset: Offset(0, 10),
                                  blurRadius: 60,
                                  color: Color.fromRGBO(0, 0, 0, 0.5),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            color: Color.fromRGBO(235, 235, 245, 1.0),
                            height: 4,
                            thickness: 2,
                          ),
                          Text(
                            'Meduim',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: const Color.fromRGBO(235, 235, 245, 0.6),
                              fontSize: 11,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w600,
                              height: 1.64,
                              letterSpacing: -0.08,
                              shadows: [
                                Shadow(
                                  offset: Offset(0, 10),
                                  blurRadius: 60,
                                  color: Color.fromRGBO(0, 0, 0, 0.5),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            color: Color.fromRGBO(235, 235, 245, 1.0),
                            height: 4,
                            thickness: 2,
                          ),
                          Text(
                            'Large',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: const Color.fromRGBO(235, 235, 245, 0.6),
                              fontSize: 11,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w600,
                              height: 1.64,
                              letterSpacing: -0.08,
                              shadows: [
                                Shadow(
                                  offset: Offset(0, 10),
                                  blurRadius: 60,
                                  color: Color.fromRGBO(0, 0, 0, 0.5),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
