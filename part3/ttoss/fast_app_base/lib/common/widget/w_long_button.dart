import 'package:flutter/material.dart';
import 'package:ttoss/common/common.dart';
import 'package:ttoss/common/widget/w_arrow.dart';

class LongButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final double size;

  const LongButton({super.key, required this.title, required this.onTap, this.size = 20});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          title.text.size(size).bold.white.make(),
          emptyExpanded,
          Arrow(
            color: context.appColors.greySymbol,
          ),
        ],
      ),
    );
  }
}
