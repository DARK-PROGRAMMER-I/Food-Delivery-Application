import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:food_delivery_app/utils/dimensions.dart';
import 'package:food_delivery_app/widgets/big_text.dart';
import 'package:food_delivery_app/widgets/icon_and_text.dart';
import 'package:food_delivery_app/widgets/small_text.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: EdgeInsets.only(top: Dimensions.height20),
            child: BigText(name: "$text", size: Dimensions.height40,)
        ),
        SizedBox(
          height: Dimensions.height15,
        ),
        Row(
            children: [
              Wrap(
                children: List.generate( 5, (index) =>
                    Icon(Icons.star, color: AppColors.mainColor, size: Dimensions.icon24,)
                ),
              ),
              Wrap(
                children: [
                  SizedBox(width: Dimensions.width15,),
                  SmallText("4.5", Dimensions.height25, ),
                  SizedBox(width:  Dimensions.width15,),
                  SmallText("1287  Comments", Dimensions.height25, ),
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
              iconSize: Dimensions.icon24,
              icon: Icons.circle,
              text: 'Normal',
              iconColor: AppColors.yellowColor,

            ),
            IconAndText(
              iconSize: Dimensions.icon24,
              icon: Icons.place,
              text: '1.7 km',
              iconColor: AppColors.mainColor,

            ),IconAndText(
              iconSize: Dimensions.icon24,
              icon: Icons.timer,
              text: '18mins',
              iconColor: Colors.redAccent,

            )
          ],
        ),

      ],
    );
  }
}
