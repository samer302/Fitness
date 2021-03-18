import 'package:flutter/material.dart';
import '../models/text.dart';
import '../models/activity.dart';

class CardBottomBar extends StatelessWidget {
  final Items _itemsBar;
  CardBottomBar(this._itemsBar);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: Column(
          children: [
            ImageIcon(AssetImage(_itemsBar.imageUrl),color:  Color(0xFF474BD9) ,size: 60,),
            Texts(weights: FontWeight.w700, title: _itemsBar.title, colors:Color(0xFF474BD9), size: 22, family: 'Lato' ),
          ],
        ),
      ),
    );
  }
}