import 'package:get/get.dart';
import 'package:ttoss/screen/notification/vo/notification_type.dart';
import 'package:ttoss/screen/notification/vo/vo_notification.dart';

final notificationDummies = <TtossNotification>[
  TtossNotification(NotificationType.tossPay, '이번 주에 영화 한 편 어때요? CGV 할인 쿠폰이 도착했어요.', DateTime.now().subtract(27.minutes)),
  TtossNotification(NotificationType.stock, '인적분할에 대해 알려드릴게요.', DateTime.now().subtract(1.hours)),
  TtossNotification(NotificationType.walk, '1,000 걸음 이상 걸었다면 포인트 받으세요.', DateTime.now().subtract(1.hours)),
  TtossNotification(NotificationType.moneyTip, '유럽 식품 물가가 치솟고 있어요.\n 남반석님, 유럽여행에 관심이 있다면 확인해보세요.', DateTime.now().subtract(8.hours)),
  TtossNotification(NotificationType.walk, '오늘 1,000 걸음을 넘겼어요. 포인트 받아보세요.', DateTime.now().subtract(11.hours)),
  TtossNotification(NotificationType.luck, '2월 28일, 행운 복권이 도착했어요. ', DateTime.now().subtract(12.hours)),
  TtossNotification(NotificationType.people, '띵동! 월요일 공동구매 보러가기', DateTime.now().subtract(12.hours)),
];