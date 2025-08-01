import 'dart:ui';

import 'package:flutter/material.dart';

class OverlayBackground extends StatelessWidget {
  const OverlayBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 130,
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 25.0,
          sigmaY: 25.0,
        ),
        child: Container(
          height: MediaQuery.sizeOf(context).height - 130,
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
            // gradient: LinearGradient(
            //   begin: Alignment.topCenter,
            //   end: Alignment.bottomCenter,
            //   colors: const [
            //     Color.fromARGB(255, 29, 56, 66),
            //     Color(0xFF2F2B22),
            //   ],
            //   stops: const [
            //     -1.08,
            //     0.4159,
            //   ],
            // ),
            color: Color(0xFF2F2B22),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
            ),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 0),
                blurRadius: 100.0,
                color: Color.fromRGBO(0, 0, 0, 0.05),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
