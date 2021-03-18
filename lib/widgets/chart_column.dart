import 'package:flutter/material.dart';
import '../models/sport_item.dart';
import 'package:intl/intl.dart';
import 'chart_bar.dart';


class Chart extends StatelessWidget {
  final List<Sport> _recentSport ;
  Chart(this._recentSport);

  List<Map<String, Object>> get groupedSportValues{
    return List.generate(1,(index){
      final weekDay= DateTime.now().subtract(
        Duration(days: index),
      );
      var totalSum = 0.0;

      for (var i = 0; i < _recentSport.length; i++) {
        if (_recentSport[i].date.day == weekDay.day &&
            _recentSport[i].date.month == weekDay.month &&
            _recentSport[i].date.year == weekDay.year) {
          totalSum += _recentSport[i].amount;
        }
      }
      return {
        'day': DateFormat.E().format(weekDay).substring(0,2),
        'amount': totalSum,
      };
    });
  }
  double get totalSport{
    return groupedSportValues.fold(0.0,(sum,item){
      return sum + item['amount'];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height:( MediaQuery.of(context).size.height)*0.45,
      child: Card(
        elevation: 5,
        margin: EdgeInsets.all(20),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: groupedSportValues.map((data) {
              return Flexible(
               fit: FlexFit.tight,
                child: ChartBar(
                  data['day'],
                  data['amount'],
                  totalSport == 0.0
                    ?0.0
                      :(data['amount']as double)/totalSport,
                ),
             );
            }).toList(),
          ),
        ),
      ),
    );
  }
}