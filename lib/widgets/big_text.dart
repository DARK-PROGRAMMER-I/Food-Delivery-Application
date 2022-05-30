import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:food_delivery_app/utils/dimensions.dart';

class BigText extends StatelessWidget {
  String name;
  Color color ;
  double size = 0;
  BigText(this.name , [this.color = const Color(0xFF424242),this.size = 0]);

  @override
  Widget build(BuildContext context) {
    return Text(
      name ,
      maxLines: 1,
      style: TextStyle(

          overflow: TextOverflow.ellipsis,
          fontSize: size  == 0 ? Dimensions.bigText : size != 0 ? Dimensions.pageHeight / (860/size): size ,
          color: color , fontFamily: 'Roboto',
          fontWeight: FontWeight.w500, letterSpacing: 2 )
    );
  }
}
