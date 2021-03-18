import 'package:fitness/models/text.dart';
import 'package:fitness/widgets/details.dart';
import 'package:flutter/material.dart';
import '../models/home.dart';

class CardItem extends StatelessWidget {
  void _selectItem(BuildContext context){
     Navigator.of(context).pushNamed('Activity',arguments:  {
       'title' : title,
       'id' : id,
     });

  }
  final String id ;
  final String image;
  final String title;
  final double number;
 CardItem({
   this.id,
   this.number,
   this.title,
   this.image,
 });

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 4,
        shadowColor: Colors.white,
        color: Colors.blue[50],
        child: InkWell(
          splashColor: Colors.white,
          onTap: ()=> _selectItem(context),
          child: Column(
            children: [
              Row(
                children: [
                  ImageIcon(AssetImage(image),color:  Color(0xFF474BD9) ,size: 60,),
                  Texts(weights: FontWeight.w600, title: title, colors: Color(0xFF000000), size: 18, family: 'Raleway' ),
                ],
              ),
             // SizedBox(height: 4,),
              Texts(weights: FontWeight.w700, title: number.toString(), colors:Color(0xFF474BD9), size: 22, family: 'Lato' ),

            ],

          ),
        )
    );
  }
}

