import 'package:fitness/models/text.dart';
import 'package:flutter/material.dart';
import '../models/sport_item.dart';
import '../models/text.dart';
import 'package:intl/intl.dart';
class ExerciseList extends StatelessWidget {
  final List<Sport> _sport ;
  ExerciseList(this._sport);


  @override
  Widget build(BuildContext context) {
    return Container(
      height: (MediaQuery.of(context).size.height)*0.4,
      child: _sport.isEmpty
          ?Column(
        children: [
          Texts(weights: null, title:  'No transactions added yet!', colors: null, size: null, family: null),
        ],
      )
          :ListView.builder(itemBuilder: (ctx,index){

        return Card(
          elevation: 4,
          child: Container(
            height: (MediaQuery.of(context).size.height)*0.059,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                   Text('\$${_sport[index].amount.toStringAsFixed(2)}'),
                Text(
                  _sport[index].title,
                  style: Theme.of(context).textTheme.title,
                ),
                Text(
                  DateFormat.yMMMd().format(_sport[index].date),
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        );
      },
      itemCount: _sport.length,),
    );
  }
}