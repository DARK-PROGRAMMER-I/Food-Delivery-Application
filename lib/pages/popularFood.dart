import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:food_delivery_app/utils/dimensions.dart';
import 'package:food_delivery_app/widgets/app_column.dart';
import 'package:food_delivery_app/widgets/big_text.dart';
import 'package:food_delivery_app/widgets/icon_and_text.dart';
import 'package:food_delivery_app/widgets/icons_back.dart';
import 'package:food_delivery_app/widgets/small_text.dart';

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
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Dimensions.radius25)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppColumn(text: 'Noodles', ),
                      SizedBox(height: Dimensions.height20,),
                      BigText(name: 'Introduce'),
                    ],
                  )

                )

            )

          ],),

        bottomNavigationBar: Container(
          height: Dimensions.height120,
          padding: EdgeInsets.symmetric(horizontal: Dimensions.width20, vertical: Dimensions.height30),
          decoration: BoxDecoration(
            color: AppColors.buttonBackgroundColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Dimensions.radius20 * 2),
              topRight: Radius.circular(Dimensions.radius20 * 2)
            )
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: Dimensions.width100,
                height: Dimensions.height100,
                decoration: BoxDecoration(
                  color: AppColors.yellowColor,
                  borderRadius: BorderRadius.circular(Dimensions.radius20)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.maximize_rounded, size: Dimensions.icon20,),
                    BigText(name: '0', size: Dimensions.height45,),
                    Icon(Icons.add, size: Dimensions.icon20),

                  ],
                ),
              ),
              Container(
                width: Dimensions.width200,
                // height: Dimensions.height100,
                decoration: BoxDecoration(
                    color: AppColors.mainColor,
                    borderRadius: BorderRadius.circular(Dimensions.radius20)
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
