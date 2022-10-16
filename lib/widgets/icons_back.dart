import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/dimensions.dart';

class IconsBack extends StatelessWidget {
  final IconData icon;
  final double back_size;
  final Color iconColor;
  final Color backgroundColor;
  final double radius;
  IconsBack(
      {Key? key,
        required this.icon,
        this.back_size = 35,
        this.iconColor = const Color(0xffc0baac),
        this.backgroundColor = Colors.white,
        this.radius = 30,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: back_size,
        height: back_size,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            color: backgroundColor
        ),
        child: Center(child: Icon(icon, color: iconColor,size: Dimensions.height15,)));
  }
}
