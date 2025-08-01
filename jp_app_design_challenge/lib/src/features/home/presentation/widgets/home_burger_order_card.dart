import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:jp_app_design_challenge/src/features/home/presentation/widgets/gradient_icon.dart';
import 'package:jp_app_design_challenge/src/features/home/presentation/widgets/order_button.dart';

class HomeBurgerOrderCard extends StatelessWidget {
  const HomeBurgerOrderCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30.0),
      // clipBehavior: Clip.none,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
        child: Container(
          width: MediaQuery.sizeOf(context).width - 32,
          height: 240,
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
          clipBehavior: Clip.none,
          decoration: BoxDecoration(
            // color: Color.fromRGBO(255, 255, 255, 0.1),
            borderRadius: BorderRadius.circular(30),
            border: Border(
              top: BorderSide(
                color: const Color.fromRGBO(
                  255,
                  255,
                  255,
                  0.5,
                ),
                width: 1.0, // 1px
              ),
            ),
            image: DecorationImage(
              image: AssetImage("assets/details/cut_card.png"),
              colorFilter: ColorFilter.mode(
                Color.fromRGBO(226, 226, 226, 0.8),
                BlendMode.modulate,
              ),
              // filterQuality: FilterQuality.low,
              opacity: 0.7,
    
              fit: BoxFit.cover,
            ),
            // border: Border.all(
            //   color: const Color.fromRGBO(255, 255, 255, 0.5),
            //   width: 1.0,
            // ),
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
                  // TODO Icon => € agentinisch austral ascii
                  "₳ 13.99",
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
    );
  }
}
