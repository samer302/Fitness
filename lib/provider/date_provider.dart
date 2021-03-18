import 'package:flutter/material.dart';
import '../cards/card_day.dart';
import 'package:intl/intl.dart';
class TitleDate with ChangeNotifier{
  List<CardDay> items = [
 //CardDay(titleDays: ,),
  ];
  CardDay titleDays;

 //String get   titleDays;
void addCardDay(){
  notifyListeners();
}
}



