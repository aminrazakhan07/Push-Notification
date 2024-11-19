import 'package:flutter/material.dart';
import 'package:push_notification/home_notifi.dart';
import 'package:push_notification/notification.dart';

void main(dynamic tz) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: NotificationHome(),
    );
  }
}
