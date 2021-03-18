import 'package:flutter/material.dart';
import '../models/text.dart';
import '../models/activity.dart';
import '../models/activity.dart';


class CardActivity extends StatelessWidget {
  final Items items;
  CardActivity(this.items);
  void _selectDetails(BuildContext context){
    Navigator.pushNamed(context,  '/Details',arguments: {'items': items.title ,
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.white,
      onTap: ()=>_selectDetails(context),
      child: Card(
          elevation: 4,
          shadowColor: Colors.white,
          color: Colors.blue[50],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ImageIcon(AssetImage(items.imageUrl),color:  Colors.blue[800] ,size: 40,),
              Texts(weights: FontWeight.w300, title: items.title, colors: Colors.blue[800], size: 18, family: 'Lato' ),
            ],
          )
      ),
    );
  }
}