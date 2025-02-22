import 'package:flutter/material.dart';


class InputCard extends StatelessWidget {
  final Widget child;
  final VoidCallback callback;

  const InputCard({required this.child,required this.callback,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => callback.call(),
      child: InputContents(child: child),
    );
  }
}



class InputContents extends StatelessWidget {
  const InputContents({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12,vertical: 8),
      padding: EdgeInsets.symmetric(horizontal: 12,vertical: 8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 4),
        borderRadius: BorderRadius.circular(24)
      ),
      child: child,
    );
  }
}