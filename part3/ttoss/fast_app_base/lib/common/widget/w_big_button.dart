import 'package:flutter/material.dart';
import 'package:ttoss/common/common.dart';
import 'package:ttoss/common/widget/w_arrow.dart';
import 'package:ttoss/common/widget/w_rounded_container.dart';

class BigButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap; // = void Function()

  const BigButton(this.text, {super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Tap(
      onTap: onTap,
      child: RoundedContainer(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            text.text.white.size(20).bold.make(),
           const  Arrow(),
          ],
        ),
      ),
    );
  }
}
