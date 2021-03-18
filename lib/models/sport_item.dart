import 'package:flutter/foundation.dart';

class Sport {
  final String id;
  final String imageSport;
  final List<String> categories;
  final String title;
  final int time;
  final double amount;
  final DateTime date;

  Sport({
    @required this.date,
    @required this.amount,
    @required this.time,
    @required this.id,
    @required this.categories,
    @required this.imageSport,
    @required this.title,
  });
}

final List<Sport> sportItems = <Sport>[
  Sport(
    time: 35,
    imageSport: 'assets/details/shose.jpg',
    title: 'Shose',
    id: 'm1',
    categories: ['c1', 'c2'],
  ),
  Sport(
    time: 55,
      imageSport: 'assets/details/fitness-healthy.jpg',
      title: 'Hart',
      id: 'm2',
      categories: ['c5', 'c2']),
  Sport(
    time: 15,
      imageSport: 'assets/details/Healthy-Eating.png',
      title: 'Healthing',
      id: 'm3',
      categories: ['c3', 'c4']),
  Sport(
    time: 46,
      imageSport: 'assets/details/healthy-eatingjpg.jpg',
      title: 'Eating',
      id: 'm4',
      categories: ['c1']),
  Sport(
    time: 79,
      imageSport: 'assets/details/sports-nutrition-pyramid.png',
      title: 'What Should I do ?',
      id: 'm4',
      categories: ['c1']),
];
