import 'package:flutter/material.dart';

class SnackishSplashCardButton extends StatelessWidget {
  const SnackishSplashCardButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
    );
  }
}
