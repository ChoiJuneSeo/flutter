import 'package:flutter/material.dart';
import 'package:nav/dialog/dialog.dart';
import 'package:nav/nav.dart';
import 'package:ttoss/screen/notification/vo/vo_notification.dart';
import 'package:ttoss/screen/notification/w_notification_item.dart';

class NotificationDialog extends DialogWidget {
  final List<TtossNotification> notifications;

  NotificationDialog({required this.notifications, super.key,super.animation = NavAni.Fade,});

  @override
  State<NotificationDialog> createState() => _NotificationDialogState();
}

class _NotificationDialogState extends DialogState<NotificationDialog> {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...widget.notifications
              .map(
                (element) => NotificationItemWidget(
                  notification: element,
                  onTap: () {
                    widget.hide();
                    // Nav.pop(context);
                  },
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
