import 'package:flutter/material.dart';
import 'package:ttoss/common/common.dart';
import 'package:ttoss/screen/notification/s_notification.dart';

class TtossAppBar extends StatefulWidget {
  static const double appBarHeight = 60;
  const TtossAppBar({super.key});

  @override
  State<TtossAppBar> createState() => _TtossAppBarState();
}

class _TtossAppBarState extends State<TtossAppBar> {
  bool _showRedDot = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: TtossAppBar.appBarHeight,
      color: context.appColors.baseBackground,
      child: Row(children: [
        width10,
        Image.asset("$basePath/icon/toss.png",height: 30),
        emptyExpanded,  // Expanded(child: Container())
        Image.asset("$basePath/icon/map_point.png",height: 30,),
        width10,
        Tap(
          onTap: (){setState(()=>Nav.push(const NotificationScreen()));},
          child: Stack(
            children: [
              Image.asset("$basePath/icon/notification.png",height: 30,),
              if(_showRedDot)Positioned.fill(child: Align(
                  alignment: Alignment.topRight,
                child: Container(
                  width: 6,
                  height: 6,
                  decoration: const BoxDecoration(shape: BoxShape.circle,color: Colors.red),
                ),
              ),
              )
            ],
          ),
        ),
        width10,
      ],),
    );
  }
}
