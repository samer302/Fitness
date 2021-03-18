import 'package:fitness/models/activity.dart';
import 'package:flutter/material.dart';
import '../cards/card_activity.dart';
import '../models/text.dart';


class ActivityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.blue[50],
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                child: Row(
                  //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: InkWell(
                          onTap: () => Navigator.pop(context),
                          child: ImageIcon(
                            AssetImage('assets/arrow-back.png'),
                            size: 30,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Texts(
                        title: 'Start ',
                        colors: Colors.black,
                        size: 30,
                        family: 'Lato',
                        weights: FontWeight.bold,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Texts(
                        title: 'Activity ',
                        colors: Color(0xFF5868E0),
                        size: 30,
                        family: 'Lato',
                        weights: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 3.0,
                crossAxisSpacing: 4.0,
                childAspectRatio: 10 / 8.0,
                children: List.generate(
                  items.length,
                  (index) => CardActivity(items[index]),
                ),
              ),
            ),
          ],
        ),
      );
  }
}
