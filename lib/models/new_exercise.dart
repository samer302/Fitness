import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NewExercise extends StatefulWidget {
  final Function addTx;
  NewExercise(this.addTx);
  @override
  _NewExerciseState createState() => _NewExerciseState();
}

class _NewExerciseState extends State<NewExercise> {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  void submitData(){
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);

     if (enteredTitle.isEmpty || enteredAmount <= 0){
 return;
     }
     widget.addTx(
       enteredTitle,
       enteredAmount,
     );
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
              onSubmitted: (_) => submitData(),
              // onChanged: (val) {
              //   titleInput = val;
              // },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitData(),
              // onChanged: (val) => amountInput = val,
            ),
            FlatButton(
              child: Text('Add Transaction'),
              textColor: Colors.purple,
              onPressed: submitData,
            ),
          ],
        ),
      ),
    );
  }
}
