// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class userInbox extends StatelessWidget {
  const userInbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All activity',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 28),),
        centerTitle: true,
        actions: [Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/img/send.png',width: 30,),
        ),]
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Image.asset('assets/img/chat.png',width: 90,color: Colors.grey[700],),
            Text('All notifications',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
            Text('All updates related to your TikTok account will'),
            Text('show up here')
          ],
        ),
      )
    );
  }
}