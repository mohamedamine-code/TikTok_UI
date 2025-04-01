// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Reels extends StatelessWidget {
  const Reels({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5,vertical: 3),
      child: PageView.builder(itemBuilder: (context, index) {
        return Stack(
          children: [
            Container(
              color: Colors.grey,
            ),
            Align(
              alignment: Alignment(1,1),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.grey[700],
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Image.asset('assets/img/heart.png',width: 40,color: Colors.white),
                    Text('200K',style: TextStyle(color: Colors.white),),
                    SizedBox(
                      height: 10,
                    ),
                    Image.asset('assets/img/comment.png',width: 40,color: Colors.white,),
                    Text('160K',style: TextStyle(color: Colors.white),),
                    SizedBox(
                      height: 10,
                    ),
                    Image.asset('assets/img/share.png',width: 40,color: Colors.white),
                    Text('30K',style: TextStyle(color: Colors.white),),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      // color: Colors.orange,
                      padding: const EdgeInsets.symmetric(horizontal:8.0),
                      child: Text('Mohamed Amine',style: TextStyle(fontSize: 20,color: Colors.white),),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      // color: Colors.amber,
                      width: 300,
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Join millions on TikTok,join us, the world’s leading short video platform! 🎭',style: TextStyle(fontSize: 15,color: Colors.white)),
                    ),
                  )
                ],
              ),
            ),


          ],
        );
      }),
    );
  }
}
