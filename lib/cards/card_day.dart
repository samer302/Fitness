import 'package:fitness/models/text.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/home.dart';

class CardDay extends StatelessWidget {
  void _selectDate(BuildContext context) {

    Navigator.of(context).pushNamed('Daily Activity', arguments: {
       'title' :titleDays,
      // 'prices' : number.toString(),
      'id': id,
    });
  }
   final String titleDays;
  // final String number;
  final String id;
  CardDay({
    this.id,
    this.titleDays,
    // this.number,
  });

  @override
  Widget build(BuildContext context) {
    int selected;
    return ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index) {
         String titleDays =DateFormat('EE').format(
              DateTime.now().add(Duration(days: index)));
          int day = DateTime.now().day + index;
          return InkWell(
            onTap: () => _selectDate(context),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 4,
              shadowColor: Colors.white,
              color: Colors.blue[50],
              child: Container(
                width: 75,
                height: 98,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: selected == null
                          ? Colors.transparent
                          : selected == day
                              ? selected == DateTime.now().day
                                  ? Colors.transparent
                                  : Colors.grey
                              : Colors.transparent),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Texts(
                          weights: day == DateTime.now().day
                              ? FontWeight.bold
                              : FontWeight.normal,
                          title: titleDays,
                          colors: day == DateTime.now().day
                              ? Colors.black
                              : Colors.blueAccent,
                          size: 18,
                          family: 'Raleway'),
                      Texts(
                          weights: day == DateTime.now().day
                              ? FontWeight.w600
                              : FontWeight.w400,
                          title:
                              DateTime.now().add(Duration(days: index)).day.toString(),
                          colors: day == DateTime.now().day
                              ? Color(0xFF474BD9)
                              : Colors.blueAccent,
                          size: 25,
                          family: 'Lato'),
                    ]) /*CardDay(
                                id: days[index].id,
                                number:day.toString(),
                            day: days[index].day,)*/
                ,
              ),
            ),
          );
        });

  }
}

