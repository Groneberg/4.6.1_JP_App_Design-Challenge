import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CustomCategoryTab extends StatelessWidget {
  final bool isFocused;
  final List<StatelessWidget> tabContent;
  final VoidCallback? onTap;

  const CustomCategoryTab({
    super.key,
    this.isFocused = false,
    required this.tabContent,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    double bgOpascity = isFocused ? 0.7 : 0.1;
    double containerWidth = tabContent.length > 1 ? 170.0 : 86.0;

    List<Widget> adjustedTabContent = tabContent.map((widget) {
      if (widget is Text) {
        return Text(
          widget.data!,
          style:
              widget.style?.copyWith(
                color: isFocused
                    ? Color.fromRGBO(48, 44, 35, 1.0)
                    : const Color.fromRGBO(
                        235,
                        235,
                        245,
                        0.6,
                      ),
              ) ??
              TextStyle(
                color: isFocused
                    ? Color.fromRGBO(48, 44, 35, 1.0)
                    : const Color.fromRGBO(235, 235, 245, 0.6),
                fontSize: 12.0,
                fontWeight: FontWeight.w600,
                letterSpacing: -0.0035,
              ),
        );
      } else if (widget is Icon) {
        return Icon(
          widget.icon,
          color: isFocused
              ? Color.fromRGBO(48, 44, 35, 1.0)
              : const Color.fromRGBO(255, 255, 255, 0.5),
          size: widget.size,
        );
      }
      return widget;
    }).toList();

    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 30.0, sigmaY: 30.0),
          child: Container(
            height: 48,
            width: containerWidth,
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, bgOpascity),
              border: Border.all(
                color: const Color.fromRGBO(255, 255, 255, 0.5),
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Row(
              spacing: 4.0,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: adjustedTabContent,
            ),
          ),
        ),
      ),
    );
  }
}
