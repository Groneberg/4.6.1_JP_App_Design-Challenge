import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jp_app_design_challenge/src/features/home/presentation/widgets/custom_category_tab_row.dart';
import 'package:jp_app_design_challenge/src/features/home/presentation/widgets/gradient_icon.dart';
import 'package:jp_app_design_challenge/src/features/home/presentation/widgets/home_burger_order_card.dart';
import 'package:jp_app_design_challenge/src/features/home/presentation/widgets/home_sub_card.dart';
import 'package:jp_app_design_challenge/src/features/home/presentation/widgets/home_sub_card_list_view.dart';
import 'package:jp_app_design_challenge/src/features/home/presentation/widgets/order_button.dart';
import 'package:jp_app_design_challenge/src/data/list/product_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        padding: EdgeInsets.only(left: 16.0, top: 77.0, right: 16.0),
        // padding: EdgeInsets.only(top: 77.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/hintergründe/bg_mainscreen.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.66,
              child: Text(
                "Choose Your Favorite Snack",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 22.0,
                  letterSpacing: 0.35,
                  color: Color.fromRGBO(255, 255, 255, 1.0),
                  shadows: [
                    Shadow(
                      offset: Offset(0, 10.0),
                      blurRadius: 60.0,
                      color: Color.fromRGBO(0, 0, 0, 0.5),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16.0),
            CustomCategoryTabRow(),
            SizedBox(height: 40.0),
            HomeBurgerOrderCard(),
            SizedBox(height: 40.0),
            SizedBox(
              width: 280,
              child: Text(
                'We Recommend  ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w900,
                  height: 1.87,
                  letterSpacing: 0.35,
                  shadows: [
                    Shadow(
                      offset: Offset(0, 10),
                      blurRadius: 60.0,
                      color: Color.fromRGBO(0, 0, 0, 0.5),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10.0),
            SizedBox(
              height: 262,
              child: Expanded(
                child: HomeSubCardListView(),
              ),
            )
          ],
        ),

      ),
      
    );
  }
}
