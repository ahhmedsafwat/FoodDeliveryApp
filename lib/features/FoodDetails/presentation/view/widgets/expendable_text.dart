import 'dart:io';

import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/colors.dart';
import 'package:food_delivery_app/core/utils/dimension.dart';
import 'package:food_delivery_app/core/widgets/small_text.dart';
import 'package:get/get.dart';

class ExpandableText extends StatefulWidget {
  const ExpandableText({super.key, required this.text});
  final String text;
  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  late String firstHalf;
  late String secondHalf;
  double textHeight = Dimensions.screenHeight / 5.63;

  bool hiddenText = true;

  @override
  void initState() {
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = '';
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty
          ? SmallText(
              text: firstHalf,
              size: Dimensions.font16,
              color: AppColors.paraColor2,
              height: 1.8,
            )
          : Column(
              children: [
                SmallText(
                  text:
                      hiddenText ? ('$firstHalf...') : (firstHalf + secondHalf),
                  size: Dimensions.font16,
                  color: AppColors.paraColor2,
                  height: 1.8,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      hiddenText = !hiddenText;
                    });
                  },
                  child: Row(children: [
                    SmallText(
                      text: hiddenText ? 'Show more' : 'Show less',
                      color: AppColors.mainColor,
                    ),
                    Icon(
                      hiddenText ? Icons.arrow_drop_down : Icons.arrow_drop_up,
                      color: AppColors.mainColor,
                    )
                  ]),
                )
              ],
            ),
    );
  }
}
