import 'package:flutter/material.dart';
import 'package:jp_app_design_challenge/src/data/list/product_list.dart';
import 'package:jp_app_design_challenge/src/features/home/presentation/widgets/home_sub_card.dart';

class HomeSubCardListView extends StatelessWidget {
  const HomeSubCardListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      // padding: EdgeInsets.only(left: 16.0, right: 16.0),
      itemCount: productList.length,
      itemBuilder: (BuildContext context, int index) {
        return HomeSubCard(
          imageSrc: productList[index].imageSrc,
          productName: productList[index].productName,
          productDescription: productList[index].productDescription,
          productPrice: productList[index].productPrice,
          productRating: productList[index].productRating,
        );
      },
    
    
    );
  }
}
