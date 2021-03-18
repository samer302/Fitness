import '../cards/card_day.dart';
import 'package:flutter/material.dart';
import '../models/text.dart';
class ThirdPart extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 15),
      child: Container(
        color: Colors.blue[50],
        width: double.infinity,
        height: (MediaQuery.of(context).size.height) * 0.187,
        child: Column(
          children: [
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Spacer(
                  flex: 1,
                ),
                Texts(
                  title: 'Daily Activity ',
                  colors: Colors.black,
                  size: 20,
                  family: 'Lato',
                  weights: FontWeight.bold,
                ),
                Spacer(
                  flex: 6,
                ),
                Row(
                  children: [
                    Texts(
                        weights: FontWeight.w600,
                        title: 'Details',
                        colors: Color(0xFF6782E6),
                        size: null,
                        family: 'Lato'),
                    SizedBox(
                      width: 3,
                    ),
                    ImageIcon(
                      AssetImage('assets/next-arrow.png'),
                      size: 20,
                      color: Colors.black,
                    ),
                  ],
                ),
                Spacer(
                  flex: 1,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                height: 110,
                width: double.infinity,
                child: CardDay(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


/*class ThirdPart extends StatefulWidget {
  ThirdPart({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ThirdPartState createState() => _ThirdPartState();
}

class _ThirdPartState extends State<ThirdPart> {
  DatePickerController _controller = DatePickerController();

  // DateTime _selectedValue = DateTime.now();


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[50],
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Spacer(
                flex: 1,
              ),
              Texts(
                title: 'Daily Activity ',
                colors: Colors.black,
                size: 20,
                family: 'Lato',
                weights: FontWeight.bold,
              ),
              Spacer(
                flex: 6,
              ),
              Row(
                children: [
                  Texts(
                      weights: FontWeight.w600,
                      title: 'Details',
                      colors: Colors.blue[200],
                      size: null,
                      family: 'Lato'),
                  SizedBox(
                    width: 3,
                  ),
                  ImageIcon(
                    AssetImage('assets/next-arrow.png'),
                    size: 20,
                    color: Colors.black,
                  ),
                ],
              ),
              Spacer(
                flex: 1,
              ),
            ],
          ),
          Card(
            color: Colors.blue[50],
            elevation: 2,
            //  shadowColor: Colors.blue[200],
            child: DatePicker(
              DateTime.now(),
              width: 60,
              height: 90,
              controller: _controller,
              //initialSelectedDate: DateTime.now(),
              selectionColor: Colors.blue[100],
              selectedTextColor: Colors.blue[800],
              //  inactiveDates: [
              // DateTime.now().add(Duration(days: 3)),
              //DateTime.now().add(Duration(days: 4)),
              //DateTime.now().add(Duration(days: 7)),
              // ],
              onDateChange: (date) {
                // New date selected
              },
            ),
          ),
        ],
      ),
    );
  }
}*/
