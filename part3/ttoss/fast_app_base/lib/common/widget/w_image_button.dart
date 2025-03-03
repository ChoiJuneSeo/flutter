import 'package:flutter/material.dart';
import 'package:ttoss/common/widget/w_tap.dart';

class ImageButton extends StatelessWidget {
  final String imagePath;
  final double width;
  final double height;
  final EdgeInsets padding;
  final VoidCallback onTap;

  const ImageButton({
    super.key,
    required this.imagePath,
     this.width = 26,
     this.height = 26,
     this.padding = const EdgeInsets.all(10) ,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Tap(
        onTap: onTap,
        child: Image.asset(imagePath, height: height, width: width),
      ),
    );
  }
}