import 'package:flutter/material.dart';
import 'package:jp_app_design_challenge/src/features/splash/presentation/widgets/snackish_splash_card_button.dart';

class OverlayOrderConfirmation extends StatefulWidget {
  const OverlayOrderConfirmation({super.key});

  @override
  State<OverlayOrderConfirmation> createState() =>
      _OverlayOrderConfirmationState();
}

class _OverlayOrderConfirmationState extends State<OverlayOrderConfirmation> {
  int _selectedSizeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 740,
      left: 24,
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width - 48,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: const Color.fromRGBO(118, 118, 128, 0.2392),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9),
                    ),
                  ),
                  child: Row(
                    children: [
                      _buildSizeOption(index: 0, text: 'Small'),
                      const Divider(
                        color: Color.fromRGBO(235, 235, 245, 1.0),
                        height: 4,
                        thickness: 2,
                        indent: 0,
                        endIndent: 0,
                      ),

                      _buildSizeOption(index: 1, text: 'Medium'),
                      const Divider(
                        color: Color.fromRGBO(235, 235, 245, 1.0),
                        height: 4,
                        thickness: 2,
                        indent: 0,
                        endIndent: 0,
                      ),

                      _buildSizeOption(index: 2, text: 'Large'),
                    ],
                  ),
                ),
                Expanded(child: SizedBox()),
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromRGBO(255, 255, 255, 0.6),
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Icon(
                    Icons.remove,
                    color: Color.fromRGBO(255, 255, 255, 0.6),
                    size: 18,
                  ),
                ),
                const SizedBox(
                  width: 41,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      '1',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w700,
                        height: 1.35,
                        shadows: [
                          Shadow(
                            offset: Offset(0, 10),
                            blurRadius: 20,
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromRGBO(255, 255, 255, 0.6),
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Color.fromRGBO(255, 255, 255, 0.6),
                    size: 18,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 32), // Ersetzt spacing: 32
            SizedBox(
              width: MediaQuery.sizeOf(context).width,
              child: SnackishSplashCardButton(
                buttonText: "Add to order for ₳ 8.99",
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSizeOption({required int index, required String text}) {
    final bool isFocused = _selectedSizeIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedSizeIndex = index;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        decoration: BoxDecoration(
          color: isFocused
              ? const Color.fromRGBO(255, 255, 255, 1.0)
              : const Color.fromRGBO(99, 99, 101, 1.0),
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
            color: isFocused
                ? const Color.fromRGBO(255, 255, 255, 1.0)
                : Colors.transparent,
            width: isFocused ? 1.0 : 0.0,
          ),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: isFocused
                ? const Color.fromRGBO(48, 44, 35, 1.0)
                : const Color.fromRGBO(235, 235, 245, 0.6),
            fontSize: 11,
            fontFamily: 'SF Pro Text',
            fontWeight: FontWeight.w600,
            height: 1.80,
            letterSpacing: -0.08,
            shadows: isFocused
                ? null
                : [
                    Shadow(
                      offset: Offset(0, 10),
                      blurRadius: 60,
                      color: Color.fromRGBO(0, 0, 0, 0.5),
                    ),
                  ],
          ),
        ),
      ),
    );
  }
}
