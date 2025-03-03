import 'package:flutter/material.dart';
import 'package:ttoss/common/common.dart';
import 'package:ttoss/screen/main/tab/benefit/vo/vo_benefit.dart';

class BenefitItem extends StatelessWidget {
  final Benefit benefit;
  const BenefitItem({super.key,required this.benefit});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: context.appColors.roundedLayoutBackground,
      child: Row(children: [
        Image.asset(benefit.imagePath,width: 50,),
        width20,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          benefit.description.text.size(13).make(),
          benefit.title.text.size(13).color(context.appColors.blueText).make(),
        ],)
      ],).pSymmetric(v: 15),
    );
  }
}
