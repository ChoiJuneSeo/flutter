import 'package:flutter/material.dart';
import 'package:ttoss/common/common.dart';
import 'package:ttoss/screen/notification/vo/vo_notification.dart';
import 'package:timeago/timeago.dart' as timeago;

class NotificationItemWidget extends StatefulWidget {
  final TtossNotification notification;
  final VoidCallback onTap;
  const NotificationItemWidget({required this.notification, required this.onTap,super.key});

  @override
  State<NotificationItemWidget> createState() => _NotificationItemWidgetState();
}

class _NotificationItemWidgetState extends State<NotificationItemWidget> {
  static const double leftPadding = 10;
  static const double iconWidth = 25;

  @override
  Widget build(BuildContext context) {
    return Tap(
      onTap: widget.onTap,
      child: Container(
        height: 88,
        color: widget.notification.isRead ? context.backgroundColor : context.appColors.unReadColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(widget.notification.type.iconPath, width: iconWidth),
                widget.notification.type.name.text.size(12).color(context.appColors.greySymbol).make(),
                emptyExpanded,
                timeago.format(widget.notification.time, locale: context.locale.languageCode).text.size(12).color(context.appColors.greySymbol).make(), // 15m,
              ],
            ),
            widget.notification.description.text.make().pOnly(left: iconWidth),
          ],
        ).pSymmetric(h: 18, v: leftPadding),
      ),
    );
  }
}
