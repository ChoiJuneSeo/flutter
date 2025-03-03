import 'package:flutter/material.dart';
import 'package:ttoss/common/common.dart';
import 'package:ttoss/screen/notification/d_notification.dart';
import 'package:ttoss/screen/notification/notification_dummy.dart';
import 'package:ttoss/screen/notification/w_notification_item.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(title: "알림".text.make(),backgroundColor: context.backgroundColor,),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: notificationDummies.length,
              (context, index) => NotificationItemWidget(
                notification: notificationDummies[index],
                onTap: (){
                  NotificationDialog(notifications: [notificationDummies[0],notificationDummies[1]],).show();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
