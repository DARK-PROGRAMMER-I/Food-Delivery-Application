import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/dimensions.dart';

class SmallText extends StatelessWidget {
  String name;
  Color color ;
  double size = 0;
  double height;
  bool textWrap;
  SmallText(
      {required this.name,
      this.size = 0,
      this.color = const Color(0xFFccc7c5),
      this.height = 1.2,
      this.textWrap = false,
      });

  @override
  Widget build(BuildContext context) {
    return Text(
      name ,
      style: TextStyle(
        fontSize: size  == 0 ? Dimensions.smallText : size != 0 ? Dimensions.pageHeight / (860/size): size ,
        color: color , fontFamily: 'Roboto', height: height,  ),
      overflow: textWrap ? TextOverflow.ellipsis : TextOverflow.visible,
    );
  }
}
