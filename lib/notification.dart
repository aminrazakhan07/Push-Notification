// // ignore_for_file: prefer_const_constructors

// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:rxdart/rxdart.dart';
// class NotificationService {
//   static final _notifications = FlutterLocalNotificationsPlugin();
//   static final ontifications = BehaviorSubject<String?>();
//   static Future _natificationsDetails() async {
//     return NotificationDetails(
//       android: AndroidNotificationDetails(
//         'Channel id',
//         'Channel name',
//         // 'Channel description',
//         importance: Importance.max,
//       ),
//     );
//   }
//   static Future init({bool initScheduled = false}) async {
//     final android = AndroidInitializationSettings('@mippmap/ic_launcher');
//     final setting = InitializationSettings();
//     await _notifications.initialize(
//       setting,
//       onSelectNotification: (payload) async {
//         onNotifications.add(payload);
//       },
//     );
//   }
//   static Future showNotification({
//     int id = 0,
//     String? title,
//     String? body,
//     String? payload,
//   }) async =>
//       _notifications.show(
//         id,
//         title,
//         body,
//         await _natificationsDetails(),
//         payload: payload,
//       );
// }

// ignore_for_file: prefer_const_constructors

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:rxdart/rxdart.dart';

//////////////

class NotificationApi {
  static final _notification = FlutterLocalNotificationsPlugin();
  static final OnNotifications = BehaviorSubject<String>();

  static Future _notificationsDetails() async {
    return NotificationDetails(
      android: AndroidNotificationDetails(
        'channel_id',
        'channel_name',
        channelDescription: 'Channel description',
        importance: Importance.max,
      ),
    );
  }

  static Future init({bool initSchedule = false}) async {
    final android = AndroidInitializationSettings("@mipmap/ic_launcher");
// final iOS = iOSInitializationSettings();
    final setting = InitializationSettings(
      android: android,
    );

    await _notification.initialize(
      setting,
      // onSelectNotification: (String? payload) async {
      //   OnNotifications.add(payload!);
      // },
    );
  }

  static Future<void> showNotification({
    int id = 0,
    String? title,
    String? body,
    String? payloads,
  }) async =>
      _notification.show(
        id,
        title,
        body,
        await _notificationsDetails(),
        payload: payloads,
      );
}
