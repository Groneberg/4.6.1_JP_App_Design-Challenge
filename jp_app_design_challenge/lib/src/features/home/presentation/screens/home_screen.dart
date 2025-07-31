import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jp_app_design_challenge/src/features/home/presentation/widgets/custom_category_tab.dart';
import 'package:jp_app_design_challenge/src/features/home/presentation/widgets/gradient_icon.dart';
import 'package:jp_app_design_challenge/src/features/home/presentation/widgets/order_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        padding: EdgeInsets.only(left: 16.0, top: 77.0, right: 16.0),
        // padding: EdgeInsets.only(top: 77.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/hintergründe/bg_mainscreen.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.66,
              child: Text(
                "Choose Your Favorite Snack",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 22.0,
                  letterSpacing: 0.35,
                  color: Color.fromRGBO(255, 255, 255, 1.0),
                  shadows: [
                    Shadow(
                      offset: Offset(0, 10.0),
                      blurRadius: 60.0,
                      color: Color.fromRGBO(0, 0, 0, 0.5),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Row(
                    spacing: 8.0,
                    children: [
                      // TODO parameter
                      CustomCategoryTab(
                        isFocused: false,
                        tabContent: [
                          // TODO eigenes ICON
                          Icon(
                            Icons.catching_pokemon,
                            color: Color.fromRGBO(255, 255, 255, 0.5),
                          ),
                          Text(
                            "All categories",
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w600,
                              letterSpacing: -0.0035,
                              color: Color.fromRGBO(235, 235, 245, 0.6),
                            ),
                          ),
                          Icon(
                            Icons.expand_more_outlined,
                            color: Color.fromRGBO(255, 255, 255, 0.5),
                          ),
                        ],
                      ),
                      CustomCategoryTab(
                        isFocused: true,
                        tabContent: [
                          Text(
                            "Salty",
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w600,
                              letterSpacing: -0.0035,
                              color: Color(0xFF302C23),
                            ),
                          ),
                        ],
                      ),
                      // TODO 
                      // CustomCategoryTab(), 
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 40.0),
            ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 30.0, sigmaY: 30.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width - 32,
                  height: 240,
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 0.1),
                    border: Border.all(
                      color: const Color.fromRGBO(255, 255, 255, 0.5),
                      width: 1.0,
                    ),
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        top: 16,
                        left: 16,
                        child: Text(
                          "Angi’s Yummy Burger",
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.35,
                            color: Color.fromRGBO(255, 255, 255, 1.0),
                            shadows: [
                              Shadow(
                                offset: Offset(0, 10.0),
                                blurRadius: 60.0,
                                color: Color.fromRGBO(0, 0, 0, 0.5),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 40,
                        left: 16,
                        child: Text(
                          "Delish vegan burger \nthat tastes like heaven",
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.35,
                            color: Color(0xFFD9D9D9),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 82,
                        left: 16,
                        child: Text(
                          // TODO Icon => €
                          "€ 13.99",
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.35,
                            color: Color.fromRGBO(255, 255, 255, 1.0),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 36,
                        left: 128,
                        child: Image.asset(
                          'assets/grafiken/burger.png',
                          width: 220,
                          height: 220,
                        ),
                      ),
                      Positioned(
                        top: 16,
                        left: 284,
                        child: SizedBox(
                          width: 60,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            spacing: 4.0,
                            children: [
                              GradientIcon(
                                icon: Icons.star,
                                size: 15,
                                gradient: RadialGradient(
                                  center: const Alignment(
                                    0.9689 * 2 - 1,
                                    0.7083 * 2 - 1,
                                  ), 
                                  radius: 280.98 / 100, 
                                  colors: const [
                                    Color(0xFFF69EA3), 
                                    Color(0xFFE970C4), 
                                  ],
                                ),
                              ),
                              Text(
                                "4.8",
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFFD9D9D9),
                                  letterSpacing: 0.35,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(top: 162, left: 16, child: OrderButton()),
                    ],
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
