import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/dimensions.dart';
import 'package:food_delivery_app/widgets/icons_back.dart';

class PopularFoodPage extends StatefulWidget {
  const PopularFoodPage({Key? key}) : super(key: key);

  @override
  _PopularFoodPageState createState() => _PopularFoodPageState();
}

class _PopularFoodPageState extends State<PopularFoodPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              right: 0,
                left: 0,
                child: Container(
                  height: Dimensions.height350,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/image/food0.png')
                      )
                  ),
                ),
            ),
            Positioned(
              top: Dimensions.height40,
              left: Dimensions.width20,
              right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconsBack(
                    icon: Icons.arrow_back_ios,
                    size: Dimensions.height40,
                  ),
                  IconsBack(
                    icon: Icons.shopping_cart_outlined,
                    size: Dimensions.height40,
                  ),
                ],
              ),
            ),
            Positioned(
                left: 0,
                right: 0,
                top: Dimensions.height350 -20,
                child: Container(
                  height: Dimensions.height515,
                  padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(Dimensions.radius25)
                  ),
                  child: Text('Hola'),
                )

            )

          ],),
      ),
    );
  }
}
