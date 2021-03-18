import 'package:fitness/cards/card_day.dart';
import 'package:fitness/models/sport_item.dart';
import 'package:flutter/material.dart';
import '../models/new_exercise.dart';
import '../models/text.dart';
import '../widgets/chart_column.dart';
import '../widgets/exercise_list.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import '../provider/date_provider.dart';


class DateActivity extends StatefulWidget  {
//  CardDay titleDays ;
  @override
  _DateActivityState createState() => _DateActivityState();
}

class _DateActivityState extends State<DateActivity>  {
  final List<Sport> _userInput = [];

  List<Sport> get _recentSport {
    return _userInput.where((tx) {
      return tx.date.isAfter(
        DateTime.now().subtract(
          Duration(days: 7),
        ),
      );
    }).toList();
  }


  void _addNewSports(String txTitle , double txAmount ){
    final newTx = Sport(
      title: txTitle,
      amount: txAmount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );
    setState(() {
      _userInput.add(newTx);
    });
  }

  void _startAddNewExercise(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return GestureDetector(
          onTap: () {},
          child: NewExercise(_addNewSports),
          behavior: HitTestBehavior.opaque,
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4,
        shadowColor: Colors.white,
        backgroundColor: Colors.blue,
        title: Text(''),
          ),
        body: ListView.builder(
          itemCount: 10,
           itemBuilder: (BuildContext context, int index) {
           return SingleChildScrollView(
            child: Column(
              children: [
                Chart(_recentSport),
                ExerciseList(_userInput),
              ],
            ),
          );}
        ),
     floatingActionButton: FloatingActionButton(
       child: Icon(Icons.add),
       onPressed: () => _startAddNewExercise(context),
     ),
    );
  }
}


class TitleDays extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) {
            int day = DateTime.now().day + index;
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 4,
              shadowColor: Colors.white,
              color: Colors.blue[50],
              child: Texts(
                  weights: day == DateTime.now().day
                      ? FontWeight.bold
                      : FontWeight.normal,
                  title:  DateFormat('EE').format(
                      DateTime.now().add(Duration(days: index))),
                  colors: day == DateTime.now().day
                      ? Colors.black
                      : Colors.blueAccent,
                  size: 18,
                  family: 'Raleway'),
            );
          }),
    );
  }
}






