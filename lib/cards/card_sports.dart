import 'package:flutter/material.dart';
import '../models/text.dart';


class CardSport extends StatelessWidget {
  final String title;
  final String imageSport;
  final int    time;
  CardSport({
    @required this.time,
    @required this.imageSport,
    @required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        elevation: 5,
        color: Colors.black12,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        margin: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                  ),
                  child: Image.asset(imageSport),
                  /* FittedBox(child: Texts(weights: null, title: noteDetails, colors: Colors.black, size: 15, family: null)),*/
                ),
              ],
            ),
            SizedBox(
              height: (MediaQuery.of(context).size.height)*0.038,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(

                      children: [
                        Icon(Icons.access_time),
                        Texts(
                            weights: null,
                            title: '$time min',
                            colors: Colors.black,
                            size: 15,
                            family: null),
                      ],
                    ),
                    //SizedBox(width:(MediaQuery.of(context).size.height)*0.09 ,),
                    Texts(
                        weights: null,
                        title: title,
                        colors: Colors.black,
                        size: 22,
                        family: 'Lato'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}