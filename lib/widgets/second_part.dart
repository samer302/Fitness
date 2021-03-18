import 'package:flutter/material.dart';
import '../models/text.dart';
import '../models/home.dart';
import '../cards/card_item.dart';

class SecondPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
        child: Container(
          //color: Colors.deepOrange,
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
                    title: 'Today\'s Activity ',
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
                  child: GridView.count(
                    crossAxisCount: 1,
                    mainAxisSpacing: 3.0,
                    crossAxisSpacing: 4.0,
                    childAspectRatio: 5.0 / 7.0,
                    //  padding: EdgeInsets.all(5),
                    scrollDirection: Axis.horizontal,
                    children: List.generate(
                      product.length,
                      (index) => CardItem(
                        title: product[index].head,
                        image: product[index].imageUrl,
                        number: product[index].number,
                        id: product[index].id,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
