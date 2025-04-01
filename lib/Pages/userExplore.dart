// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tiktok_ui/util/PostRelles.dart';

class userExplore extends StatelessWidget {
  const userExplore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[300]),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      size: 25,
                    ),
                    Text(
                      '  Discover new Topic',
                      style: TextStyle(fontSize: 17, color: Colors.grey[700]),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: 10,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 3/5,
                        crossAxisCount: 2),
                    itemBuilder: (context, Index) {
                      return PostRelles();
                    }),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
