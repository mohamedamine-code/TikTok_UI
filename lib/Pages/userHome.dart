import 'package:flutter/material.dart';
import 'package:tiktok_ui/util/reels.dart';

class userHome extends StatefulWidget {
  const userHome({super.key});

  @override
  State<userHome> createState() => _userHomeState();
}

class _userHomeState extends State<userHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Reels();
            }));
  }
}
