// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String? payload;
  const SecondPage({Key? key, this.payload}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Second Page'),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Text(
              payload ?? '',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              'PAYLOAD',
              style: TextStyle(fontSize: 32),
            ),
          ],
        ),
      ),
    );
  }
}
