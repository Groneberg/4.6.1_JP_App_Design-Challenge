import 'package:flutter/material.dart';
import 'package:jp_app_design_challenge/src/features/home/presentation/widgets/custom_category_tab.dart';

class CustomCategoryTabRow extends StatefulWidget {
  const CustomCategoryTabRow({super.key});

  @override
  State<CustomCategoryTabRow> createState() => _CustomCategoryTabRowState();
}

class _CustomCategoryTabRowState extends State<CustomCategoryTabRow> {
  int _focusedTabIndex = 0;

  Widget _buildCategoryTab({
    required int index,
    required List<StatelessWidget> content,
  }) {
    final bool isFocused = _focusedTabIndex == index;

    return CustomCategoryTab(
      isFocused: isFocused,
      tabContent: content,
      onTap: () {
        setState(() {
          _focusedTabIndex = index;
        });
      },
    );
  }

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
              _buildCategoryTab(
                index: 0,
                content: [
                  const Icon(Icons.fastfood),
                  const Text(
                    "All categories",
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -0.0035,
                    ),
                  ),
                  const Icon(Icons.expand_more_outlined),
                ],
              ),
              _buildCategoryTab(
                index: 1,
                content: [
                  const Text(
                    "Salty",
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -0.0035,
                    ),
                  ),
                ],
              ),
              _buildCategoryTab(
                index: 2,
                content: [
                  const Text(
                    "Sweet",
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -0.0035,
                    ),
                  ),
                ],
              ),
              _buildCategoryTab(
                index: 3,
                content: [
                  const Text(
                    "Drinks",
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -0.0035,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
