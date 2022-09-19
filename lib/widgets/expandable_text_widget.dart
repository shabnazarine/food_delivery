
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/widgets/small_text.dart';

import '../utils/dimensions.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;
  const ExpandableTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String firstHalf;
  late String secondHalf;

  bool hiddenText = true;

  double textHeight = Dimensions.screenHeight/5.63;
  //double textHeight = 140;

  @override
  void initState(){
    super.initState();
    if(widget.text.length>textHeight.toInt()){
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf = widget.text.substring(textHeight.toInt()+1, widget.text.length);
    }else{
      firstHalf = widget.text;
      secondHalf = "";
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty?SmallText(height: 1.6, color: AppColors.paraColor,size: Dimensions.font16,text: firstHalf):Column(
        children: [
          SmallText(height: 1.6,color: AppColors.paraColor,size: Dimensions.font16,text: hiddenText?("$firstHalf..."):(firstHalf+secondHalf)),
          InkWell(
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: Dimensions.height10),
                SmallText(text: hiddenText?"Show More": "Show Less", color: AppColors.mainColor),
                Icon(hiddenText?Icons.arrow_drop_down:Icons.arrow_drop_up, color: AppColors.mainColor,)
              ],
            ),
            onTap: (){
              setState(() {
                hiddenText=!hiddenText;
              });
            },
          )
        ],
      ),
    );
  }
}
