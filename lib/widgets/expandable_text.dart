import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:food_delivery_app/utils/dimensions.dart';
import 'package:food_delivery_app/widgets/small_text.dart';

class ExpandableText extends StatefulWidget {
  final String text;

  ExpandableText({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  double len = Dimensions.pageHeight/5.3;
  String firstHalf = '';
  String secondHalf = '';
  bool islengthy= true;
  @override
  void initState(){
    if(widget.text.length > len ){
      firstHalf = widget.text.substring(0, len.toInt());
      secondHalf = widget.text.substring(len.toInt()+1 , widget.text.length);
    }else{
      firstHalf = widget.text;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: islengthy? Column(
        children: [
          SmallText(name: firstHalf+ '...'),
          InkWell(
            onTap: (){
              setState(() {
                islengthy = !islengthy;
              });
            },
            child: Row(
              children: [
                SmallText(name: 'Show more', color: AppColors.mainColor,),
                islengthy? Icon(Icons.arrow_drop_down): Icon(Icons.arrow_drop_up)
              ],
            ),
          )
        ],
      ): SmallText(name: firstHalf+secondHalf),
    );
  }
}
