import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Product  {
  final String  imageUrl;
  final String head;
  final double number;
  final String name;
  final String day;
  final String title;
  final String  imageDetail;
  final double price;
  final String id ;
  final DateTime date;

  Product({
    this.date,
    this.id,
    this.price,
    this.imageUrl,
    this.title,
    this.day,
    this.imageDetail,
    this.number,
    this.head,
    this.name,
  });
}


List<Product> meals =  <Product>[
  Product(imageDetail: 'assets/details/shose.jpg',price: 333),
  Product(imageDetail: 'assets/details/Healthy-Eating.png',price:122),
  Product(imageDetail: 'assets/details/fitness-healthy.jpg',price: 1.8),
  Product(imageDetail: 'assets/details/shose.jpg',price: 333),
  Product(imageDetail: 'assets/details/Healthy-Eating.png',price:122),
  Product(imageDetail: 'assets/details/fitness-healthy.jpg',price: 1.8),


];

 List<Product> product =  <Product>[
   Product(imageUrl:'assets/trail-running-shoe .png', head: 'Steps', number: 1228,id: 'c1'),
   Product(imageUrl:'assets/weight.png', head: 'Calories', number: 829,id: 'c2'),
   Product(imageUrl:'assets/cardiogram .png', head: 'BPM', number: 88.9,id: 'c3'),
   Product(imageUrl:'assets/trail-running-shoe .png', head: 'Steps', number: 1228,id: 'c4'),
   Product(imageUrl:'assets/trail-running-shoe .png', head: 'Steps', number: 1228,id: 'c5'),
   Product(imageUrl:'assets/weight.png', head: 'Calories', number: 829,id: 'c6'),
   Product(imageUrl:'assets/cardiogram .png', head: 'BPM', number: 88.9,id: 'c7'),
   Product(imageUrl:'assets/trail-running-shoe .png', head: 'Steps', number: 1228,id: 'c8'),
];

List<Product> products =  <Product>[
  Product(imageUrl:'assets/Home.png' ,name: 'Home'),
  Product(imageUrl:'assets/Activity.png' ,name: 'Activity'),
  Product(imageUrl:'assets/Icon Setting.png' ,name: 'Settings'),
  Product(imageUrl:'assets/Icon feather-user.png',name: 'Profil'),

];

List<Product> days =  <Product>[
  Product(day:'Sat' ,id: 'c1'),
  Product(day:'SUN' ,id: 'c2'),
  Product(day:'MON' ,id: 'c3'),
  Product(day:'THE' ,id: 'c4'),
  Product(day:'WED' ,id: 'c5'),
  Product(day:'THE' ,id: 'c6'),
  Product(day:'FRI' ,id: 'c7'),

];
