import 'package:flutter/material.dart';
import 'package:jp_app_design_challenge/src/features/overlay/widgets/overlay_background.dart';
import 'package:jp_app_design_challenge/src/features/overlay/widgets/overlay_order_card.dart';
import 'package:jp_app_design_challenge/src/features/overlay/widgets/overlay_order_confirmation.dart';

class OverlayOrder extends StatelessWidget {
  final String imageSrc;
  final String productName;
  final String productPrice;
  final String productRating;

  const OverlayOrder({
    super.key,
    required this.imageSrc,
    required this.productName,
    required this.productPrice,
    required this.productRating,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      child: Stack(
        children: [
          OverlayBackground(),
          Image.asset(imageSrc),
          OverlayOrderCard(
            productName: productName,
            productPrice: productPrice,
            productRating: productRating,
          ),
          OverlayOrderConfirmation(),
          Positioned(
            top: 148,
            right: 20,
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                width: 30,
                height: 30,
                // padding: const EdgeInsets.only(
                //   top: 12,
                //   left: 16,
                //   right: 17,
                //   bottom: 11,
                // ),
                decoration: ShapeDecoration(
                  color: Color.fromRGBO(47, 43, 34, 1.0),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      color: Color.fromRGBO(255, 255, 255, 0.4),
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Center(
                  child: Icon(
                    Icons.close,
                    color: Color.fromRGBO(255, 255, 255, 0.6),
                    size: 24,
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
