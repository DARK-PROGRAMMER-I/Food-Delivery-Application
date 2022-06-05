import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/home/homePageBody.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:food_delivery_app/utils/dimensions.dart';
import 'package:food_delivery_app/widgets/big_text.dart';
import 'package:food_delivery_app/widgets/small_text.dart';

class FoodHomePage extends StatefulWidget {
  const FoodHomePage({Key? key}) : super(key: key);

  @override
  _FoodHomePageState createState() => _FoodHomePageState();
}

class _FoodHomePageState extends State<FoodHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(

              child: Container(
                margin: EdgeInsets.symmetric(horizontal: Dimensions.height20),
                padding: EdgeInsets.symmetric(vertical: Dimensions.width20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText( name: 'Pakistan', color: AppColors.mainColor),

                        Row(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SmallText('Islamabad', 15 ,Colors.black54),
                            IconButton(
                              // iconSize: 20,
                                splashColor: AppColors.mainWhiteColor,
                                onPressed: (){},
                                icon: Icon(Icons.arrow_drop_down, size: Dimensions.icon20,))
                          ],
                        ),
                      ],
                    ),
                    Container(
                      width: Dimensions.width45,
                      height: Dimensions.height45,
                      decoration: BoxDecoration(
                          color: AppColors.mainColor,
                        borderRadius: BorderRadius.circular(Dimensions.radius15)

                      ),
                      child: Center(
                        child: IconButton(
                          splashColor: AppColors.whiteColor,
                          icon: Icon(Icons.search , color: AppColors.whiteColor, size: Dimensions.icon20,),
                          onPressed: (){},
                        ),
                      ),

                    )
                  ],
                ),
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
                physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                child: HomePageBody(),
                ))

          ],
        ),
      ),
    );
  }
}
