import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:jp_app_design_challenge/src/features/home/presentation/widgets/custom_category_tab.dart';

class CustomCategoryTabRow extends StatelessWidget {
  const CustomCategoryTabRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                    Icons.fastfood,
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
    );
  }
}
