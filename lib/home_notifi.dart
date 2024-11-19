// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:push_notification/notification.dart';
import 'package:push_notification/page/second_page.dart';

class NotificationHome extends StatefulWidget {
  const NotificationHome({super.key});

  @override
  State<NotificationHome> createState() => _NotificationHomeState();
}

class _NotificationHomeState extends State<NotificationHome> {
  @override
  void initState() {
    super.initState();
    NotificationApi.init();
    listenNotifications();
  }

  void listenNotifications() =>
      NotificationApi.OnNotifications.stream.listen(onClickedNotification);
  void onClickedNotification(String? payload) =>
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => SecondPage(payload: payload),
      ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade300,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // FlutterLogo(
            //   size: 160,
            // ),
            Text('Local'),
            Text('Notification'),
            SizedBox(height: 30),
            Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.black),
              ),
              child: TextButton.icon(
                onPressed: () {
                  NotificationApi.showNotification(
                      title: 'Local Notification',
                      body: 'Hey! There is Local Notification',
                      payloads: 'Payload Notification');
                },
                icon: Icon(
                  Icons.notifications,
                  color: Colors.black,
                ),
                label: Text(
                  'Notification',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
