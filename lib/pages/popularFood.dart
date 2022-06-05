import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:food_delivery_app/utils/dimensions.dart';
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
                      Container(
                          margin: EdgeInsets.only(top: Dimensions.height20),
                          child: BigText("Noodles")
                      ),
                      SizedBox(
                        height: Dimensions.height15,
                      ),
                      Row(
                        children: [
                          Wrap(
                            children: List.generate( 5, (index) =>
                            Icon(Icons.star, color: AppColors.mainColor, size: Dimensions.height12,)
                            ),
                          ),
                          Wrap(
                            children: [
                              SizedBox(width: Dimensions.width15,),
                              SmallText("4.5", Dimensions.height20, ),
                              SizedBox(width:  Dimensions.width15,),
                              SmallText("1287  Comments", Dimensions.height20, ),
                            ],
                          ),
                        ]
                      ),
                      SizedBox(height: Dimensions.height20
                        ,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconAndText(
                            iconSize: Dimensions.icon20,
                            icon: Icons.circle,
                            text: 'Normal',
                            iconColor: AppColors.yellowColor,

                          ),
                          IconAndText(
                            iconSize: Dimensions.icon20,
                            icon: Icons.place,
                            text: '1.7 km',
                            iconColor: AppColors.mainColor,

                          ),IconAndText(
                            iconSize: Dimensions.icon20,
                            icon: Icons.timer,
                            text: '18mins',
                            iconColor: Colors.redAccent,

                          )
                        ],
                      ),
                    SizedBox(height: Dimensions.height45,),
                      BigText('Introduce', AppColors.textColor)
                    ],
                  ),

                )

            )

          ],),
      ),
    );
  }
}
