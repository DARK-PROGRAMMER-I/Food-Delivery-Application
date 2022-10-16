import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:food_delivery_app/utils/dimensions.dart';
import 'package:food_delivery_app/widgets/app_column.dart';
import 'package:food_delivery_app/widgets/big_text.dart';
import 'package:food_delivery_app/widgets/expandable_text.dart';
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
                  height: Dimensions.height300,
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
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: IconsBack(
                      icon: Icons.arrow_back_ios,
                      back_size: Dimensions.height35,
                    ),
                  ),
                  IconsBack(
                    icon: Icons.shopping_cart_outlined,
                    back_size: Dimensions.height35,
                  ),
                ],
              ),
            ),
            Positioned(
                left: 0,
                right: 0,
                top: Dimensions.height300 -20,
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
                      SizedBox(height: Dimensions.height12,),
                      BigText(name: 'Introduce', size: Dimensions.height18),
                      SizedBox(height: Dimensions.height12,),
                      ExpandableText(text: 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.')
                    ],
                  )

                )

            )

          ],),

        bottomNavigationBar: Container(
          height: Dimensions.height100,
          padding: EdgeInsets.symmetric(horizontal: Dimensions.width20, vertical: Dimensions.height15),
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
                width: Dimensions.width75,
                height: Dimensions.height60,
                decoration: BoxDecoration(
                  color: AppColors.yellowColor,
                  borderRadius: BorderRadius.circular(Dimensions.radius15)
                ),
                child: Row(

                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.remove, size: Dimensions.icon15,),
                    SizedBox(width: Dimensions.width10,),
                    BigText(name: '0', size: Dimensions.height25,),
                    SizedBox(width: Dimensions.width10,),
                    Icon(Icons.add, size: Dimensions.icon15),

                  ],
                ),
              ),
              Container(
                width: Dimensions.width200,
                height: Dimensions.height60,
                decoration: BoxDecoration(
                    color: AppColors.mainColor,
                    borderRadius: BorderRadius.circular(Dimensions.radius15)
                ),
                child: Center(
                    child: SmallText(
                        name: '\$0.07 | Add to cart',
                        color: AppColors.mainWhiteColor,
                        size: Dimensions.height20,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
