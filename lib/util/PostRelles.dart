// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PostRelles extends StatelessWidget {
  const PostRelles({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 230,
            width: 210,
            color: Colors.grey,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical:8.0),
                  child: Text('Some Description',style: TextStyle(fontSize: 13)),
                ),
              ),
              Row(
                children: [
                  Text('14.5k',style: TextStyle(fontSize: 13),),
                  SizedBox(
                    width: 3.5,
                  ),
                  Image.asset('assets/img/heart.png',width: 15,),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}