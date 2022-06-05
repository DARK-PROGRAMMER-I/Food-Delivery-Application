import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/dimensions.dart';

class IconsBack extends StatelessWidget {
  final IconData icon;
  final double size;
  final Color iconColor;
  final Color backgroundColor;
  IconsBack(
      {Key? key,
        required this.icon,
        this.size = 35,
        this.iconColor = const Color(0xffc0baac),
        this.backgroundColor = Colors.white
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(size/2),
            color: backgroundColor
        ),
        child: Center(child: Icon(icon, color: iconColor,size: Dimensions.height15,)));
  }
}
