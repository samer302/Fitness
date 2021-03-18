import 'package:flutter/material.dart';

class Items {
  final String imageUrl;
  final String title;
  final String id;

  Items({
   @required this.id,
   @required this.imageUrl,
   @required this.title, 
});
}
final List<Items> items = <Items>[
  Items(imageUrl: 'assets/trail-running-shoe (1).png', title:'Walking',id:'m1',),
  Items(imageUrl: 'assets/treadmill (1).png', title: 'Tradmill',id:'m1'),
  Items(imageUrl: 'assets/running (2).png', title: 'Running',id:'m1'),
  Items(imageUrl: 'assets/Group 2321.png', title: 'Cycling',id:'m1'),
  Items(imageUrl: 'assets/gym.png', title: 'Gym',id:'m1'),
  Items(imageUrl: 'assets/Path 1711.png', title: 'Yoga',id:'m1'),
];
final List<Items> itemsBar = <Items>[
  Items(imageUrl: 'assets/Home.png', title:'Home'),
  Items(imageUrl: 'assets/Activity.png', title: 'Activity'),
  Items(imageUrl: 'assets/Icon Setting.png', title: 'Setting'),
  Items(imageUrl: 'assets/Icon feather-user.png', title: 'Setting'),
];