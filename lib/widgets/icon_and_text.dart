import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/dimensions.dart';
import 'package:food_delivery_app/widgets/small_text.dart';

class IconAndText extends StatelessWidget {
  final IconData icon;
  final String text;
  final double iconSize;
  final Color iconColor;

  const IconAndText({Key? key,
    required this.icon,
    required this.text,
    required this.iconColor,
    required this.iconSize
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(icon, color: iconColor, size: ((Dimensions.pageWidth) /(392/iconSize)),),
        SizedBox(width: Dimensions.width5,),
        SmallText(text, 12),
        SizedBox(width: Dimensions.width5,),
      ],
    );
  }
}
