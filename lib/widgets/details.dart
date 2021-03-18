import 'package:flutter/material.dart';
import '../cards/card_sports.dart';
import '../models/sport_item.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categorySport = sportItems
        .where((meal) => meal.categories.contains(categoryId))
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemCount: categorySport.length,
        itemBuilder: (BuildContext context, int index) {
          return CardSport(
            time: categorySport[index].time,
            title: categorySport[index].title,
            imageSport: categorySport[index].imageSport,
          );
        },
      ),
    );
  }
}
