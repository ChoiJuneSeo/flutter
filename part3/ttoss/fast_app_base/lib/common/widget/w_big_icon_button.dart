import 'package:flutter/material.dart';
import 'package:ttoss/common/common.dart';
import 'package:ttoss/common/widget/w_arrow.dart';
import 'package:ttoss/common/widget/w_rounded_container.dart';

class BigIconButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap; // = void Function()

  const BigIconButton(this.text, {super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Tap(
      onTap: onTap,
      child: RoundedContainer(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset("assets/image/credit_card/credit_cards.png", width: 20,color: Colors.red,),
            width10,
            text.text.white.size(15).bold.make(),
            EmptyExpanded(),
            const  Arrow(),
          ],
        ),
      ),
    );
  }
}