// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tiktok_ui/Pages/userAdd.dart';
import 'package:tiktok_ui/Pages/userExplore.dart';
import 'package:tiktok_ui/Pages/userHome.dart';
import 'package:tiktok_ui/Pages/userInbox.dart';
import 'package:tiktok_ui/Pages/userProfile.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

int currentTap = 0;

class _HomepageState extends State<Homepage> {
  List<Widget> MyPages = [
    userHome(),
    userExplore(),
    userAdd(),
    userInbox(),
    userProfile(),
  ];
  void togglePage(value) {
    setState(() {
        currentTap= value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          togglePage(value);
        },
        showSelectedLabels: false, // Remove labels
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/img/home.png',
                width: 30,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Image.asset('assets/img/application.png', width: 30),
              label: 'Explore'),
          BottomNavigationBarItem(
              icon: Image.asset('assets/img/more.png', width: 30), label: ''),
          BottomNavigationBarItem(
              icon: Image.asset('assets/img/inbox-in.png', width: 30),
              label: 'Inbox'),
          BottomNavigationBarItem(
              icon: Image.asset('assets/img/user.png', width: 30), label: 'Me'),
        ],
      ),
      body: MyPages[currentTap],
    );
  }
}
