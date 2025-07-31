import 'dart:ui';
import 'package:flutter/material.dart';

class CustomCategoryTab extends StatelessWidget {
  final bool isFocused;
  final List<StatelessWidget> tabContent;

  const CustomCategoryTab({
    super.key,
    this.isFocused = false,
    required this.tabContent,
  });

  @override
  Widget build(BuildContext context) {
    double bgOpascity = isFocused ? 0.7 : 0.1;

    return GestureDetector(
      onTap: () {},
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 30.0, sigmaY: 30.0),
          child: Container(
            height: 48,
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, bgOpascity),
              border: Border.all(
                color: const Color.fromRGBO(255, 255, 255, 0.5),
                width: 1.0,
              ),
            ),
            child: Row(
              spacing: 4.0,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: tabContent,
            ),
          ),
        ),
      ),
    );
  }
}
