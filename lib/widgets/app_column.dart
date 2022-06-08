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
            child: BigText(name: "$text", )
        ),
        SizedBox(
          height: Dimensions.height15,
        ),
        Row(
            children: [
              Wrap(
                children: List.generate( 5, (index) =>
                    Icon(Icons.star, color: AppColors.mainColor, size: Dimensions.icon15,)
                ),
              ),
              Wrap(
                // spacing: Dimensions.width10,
                children: [
                  SizedBox(width: Dimensions.width15,),
                  SmallText(name: "4.5",size:  Dimensions.height15, ),
                  SizedBox(width:  Dimensions.width15,),
                  SmallText(name: "1287  Comments", size:Dimensions.height15, ),
                ],
              ),
            ]
        ),
        SizedBox(height: Dimensions.height15
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
