// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

class userProfile extends StatelessWidget {
  const userProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    'assets/img/download (2).png',
                    width: 35,
                    color: const Color.fromARGB(200, 0, 0, 0),
                  ),
                  Text(
                    'Mohamed Amine',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Image.asset(
                    'assets/img/view.png',
                    width: 30,
                  ),
                  Icon(Icons.menu),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                ),
                width: 130,
                height: 130,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '@Moahmed Amine ',
                    style: TextStyle(fontSize: 18),
                  ),
                  Image.asset(
                    'assets/img/pencil.png',
                    width: 25,
                  ),
                  Image.asset(
                    'assets/img/qr-code.png',
                    width: 25,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          '1.5K',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text('Following',
                            style: TextStyle(color: Colors.grey, fontSize: 15)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          '20K',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text('Followers',
                            style: TextStyle(color: Colors.grey, fontSize: 15)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          '1M',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text('Likes',
                            style: TextStyle(color: Colors.grey, fontSize: 15)),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    child: Text(
                      'Edit profile',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey[300],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Image.asset(
                      'assets/img/add-user.png',
                      width: 25,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey[300],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Image.asset(
                      'assets/img/save-instagram.png',
                      width: 25,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey[300],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Tap to add a bio',style: TextStyle(fontSize: 15),),
              ),
              SizedBox(
                height: 400,
                child: DefaultTabController(
                  length: 3,
                  child: Scaffold(
                    appBar: AppBar(
                        title: TabBar(tabs: [
                      Image.asset(
                        'assets/img/menu (1).png',
                        width: 30,
                      ),
                      Image.asset(
                        'assets/img/heart.png',
                        width: 30,
                      ),
                      Image.asset(
                        'assets/img/padlock.png',
                        width: 30,
                      ),
                    ])),
                    body: TabBarView(children: [
                      GridView.builder(
                        itemCount: 10,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                childAspectRatio: 5/7,
                                  crossAxisCount: 3),
                          itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Container(
                              
                              color: Colors.grey,
                            ),
                            
                          )),
                      
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Only you can Wich vidoes',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          Text('you liked',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          Text('You can change this in Pravecy Settings',style: TextStyle(fontSize: 16,color: Colors.grey[700])),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Your private videos',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                          Text('To make your video visible only to ',style: TextStyle(fontSize: 16,color: Colors.grey[700])),
                          Text(' yourself, set it to "Private" in the video\'s',style: TextStyle(fontSize: 16,color: Colors.grey[700])),
                          Text('privacy settings.',style: TextStyle(fontSize: 16,color: Colors.grey[700])),
                        ],
                      ),
                    ]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
