import 'dart:ui';
import 'package:flutter/material.dart';

class HomeSubCard extends StatelessWidget {
  final String imageSrc;
  final String productName;
  final String productDescription;
  final String productPrice;
  final String productRating;

  const HomeSubCard({
    super.key,
    required this.imageSrc,
    required this.productName,
    required this.productDescription,
    required this.productPrice,
    required this.productRating,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
          child: Container(
            width: 190,
            height: 262,
            padding: const EdgeInsets.only(
              top: 10,
              left: 10,
              right: 10,
              bottom: 20,
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: const [
                  Color.fromRGBO(255, 255, 255, 0),
                  Color.fromRGBO(144, 140, 245, 0.74),
                  Color.fromRGBO(140, 91, 234, 0.74),
                ],
                stops: const [-0.1898, 0.4709, 0.9587],
              ),
              border: Border.all(
                color: const Color.fromRGBO(255, 255, 255, 0.5),
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image.asset(imageSrc, width: 154, height: 154)),
                Text(
                  productName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w700,
                    height: 1.54,
                    letterSpacing: -0.50,
                  ),
                ),
                Text(
                  productDescription,
                  style: TextStyle(
                    color: const Color.fromRGBO(235, 235, 245, 0.7),
                    fontSize: 12,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w400,
                    height: 1.33,
                  ),
                ),
                SizedBox(height: 16,),
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: 58,
                    children: [
                      Text(
                        productPrice,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w400,
                          height: 1.54,
                          letterSpacing: -0.24,
                        ),
                      ),
                      Text(
                        '♡ $productRating',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color(0x99EBEBF5),
                          fontSize: 13,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w400,
                          height: 1,
                          letterSpacing: 0.07,
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
    );
  }
}
