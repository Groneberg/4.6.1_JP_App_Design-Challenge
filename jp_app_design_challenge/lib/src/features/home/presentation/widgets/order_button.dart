import 'dart:ui';
import 'package:flutter/material.dart';

class OrderButton extends StatelessWidget {
  final VoidCallback? onTap; // Callback, wenn der Button getippt wird

  const OrderButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          gradient: RadialGradient(
            center: const Alignment(
              0.9689 * 2 - 1,
              0.7083 * 2 - 1,
            ),
            radius: 280.98 / 100,
            colors: const [Color(0xFF908CF5), Color(0xFFBB8DE1)],
          ),
          boxShadow: [
            BoxShadow(
              color: const Color.fromRGBO(234, 113, 197, 0.5),
              offset: const Offset(0.0, 10.0),
              blurRadius: 30.0,
            ),
          ],
          border: Border.all(
            color: const Color.fromRGBO(255, 255, 255, 0.5),
            width: 1.0, // 1px
          ),
        ),

        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: const [
                    Color.fromRGBO(254, 200, 241, 0.9),
                    Color.fromRGBO(237, 146, 215, 0),
                  ],
                  stops: const [
                    -0.2292, // -22.92%
                    0.2673, // 26.73%
                  ],
                ),
              ),
            ),

            Center(
              child: Text(
                "Add to order",
                textAlign: TextAlign.center, // text-align: center;
                style: TextStyle(
                  // fontFamily: 'SF Pro Display', // font-family: 'SF Pro Display';
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  fontSize: 12.0,
                  letterSpacing: -0.0035 * 12,
                  color: const Color(0xFFFFFFFF),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
