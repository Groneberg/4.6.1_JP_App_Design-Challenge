import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:jp_app_design_challenge/src/features/overlay/widgets/s_v_g_icon.dart';

class OverlayOrderCard extends StatelessWidget {
  const OverlayOrderCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 330,
      left: MediaQuery.sizeOf(context).width / 2 - 170,
      right: MediaQuery.sizeOf(context).width / 2 - 170,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
          child: Center(
            child: Container(
              width: 340,
              height: 340,
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 0.01),
                border: Border.all(
                  color: Color.fromRGBO(255, 255, 255, 0.15),
                ),
                borderRadius: BorderRadius.circular(30),
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
                  const SizedBox(
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
                  const SizedBox(height: 6),
                  const SizedBox(
                    width: 280,
                    height: 97,
                    child: Text(
                      'Lorem ipsum dolor sit amet consectetur. Non feugiat imperdiet a vel sit at amet. Mi accumsan feugiat magna aliquam feugiat ac et. Pulvinar hendrerit id arcu at sed etiam semper mi hendrerit. Id aliquet quis quam.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromRGBO(235, 235, 245, 0.6),
                        fontSize: 13,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w400,
                        height: 1.38,
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
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '8.99',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.35,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: 280,
                    child: Divider(
                      height: 1,
                      color: const Color.fromRGBO(255, 255, 255, 0.5),
                    ),
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: 280,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 100,
                          child: Column(
                            spacing: 8.0,
                            crossAxisAlignment:
                                CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ingredients',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color.fromRGBO(
                                    235,
                                    235,
                                    245,
                                    0.6,
                                  ),
                                  fontSize: 11,
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.w600,
                                  height: 1.64,
                                  letterSpacing: -0.08,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(0, 10),
                                      blurRadius: 60,
                                      color: Color.fromRGBO(
                                        0,
                                        0,
                                        0,
                                        0.5,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                spacing: 9.3,
                                children: [
                                  SVGIcon(assetName: "assets/svg/gluten_free.svg"),
                                  SVGIcon(assetName: "assets/svg/sugar_free.svg"),
                                  SVGIcon(assetName: "assets/svg/no_fat.svg"),
                                  SVGIcon(assetName: "assets/svg/calories.svg"),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 100,
                          child: Column(
                            spacing: 8,
                            crossAxisAlignment:
                                CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Reviews',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color.fromRGBO(
                                    235,
                                    235,
                                    245,
                                    0.6,
                                  ),
                                  fontSize: 11,
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.w600,
                                  height: 1.64,
                                  letterSpacing: -0.08,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(0, 10),
                                      blurRadius: 60,
                                      color: Color.fromRGBO(
                                        0,
                                        0,
                                        0,
                                        0.5,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                spacing: 2,
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 12.0,
                                    color: Color.fromRGBO(
                                      255,
                                      255,
                                      255,
                                      1,
                                    ),
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 12.0,
                                    color: Color.fromRGBO(
                                      255,
                                      255,
                                      255,
                                      1,
                                    ),
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 12.0,
                                    color: Color.fromRGBO(
                                      255,
                                      255,
                                      255,
                                      1,
                                    ),
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 12.0,
                                    color: Color.fromRGBO(
                                      255,
                                      255,
                                      255,
                                      1,
                                    ),
                                  ),
                                  Icon(
                                    Icons.star_outline,
                                    size: 12.0,
                                    color: Color.fromRGBO(
                                      255,
                                      255,
                                      255,
                                      1,
                                    ),
                                  ),
                                  SizedBox(width: 9),
                                  Text(
                                    '4.0',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color.fromRGBO(
                                        235,
                                        235,
                                        245,
                                        0.6,
                                      ),
                                      fontSize: 11,
                                      fontFamily: 'SF Pro Text',
                                      fontWeight: FontWeight.w800,
                                      height: 1.64,
                                      letterSpacing: -0.08,
                                      shadows: [
                                        Shadow(
                                          offset: Offset(0, 10),
                                          blurRadius: 60,
                                          color: Color.fromRGBO(
                                            0,
                                            0,
                                            0,
                                            0.5,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
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
        ),
      ),
    );
  }
}
