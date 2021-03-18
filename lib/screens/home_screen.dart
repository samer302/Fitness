import 'package:flutter/material.dart';
import '../screens/home_overview_screen.dart';
import '../screens/activity_screen.dart';
import '../models/text.dart';
import '../screens/settings_screen.dart';
import '../screens/profile_screen.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeOverViewScreen(),
    ActivityScreen(),
    SettingScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          body: _children[_currentIndex],
          bottomNavigationBar: Container(
            height: (MediaQuery.of(context).size.height) * 0.148,
            width: double.infinity,
            child:  BottomNavigationBar(
              backgroundColor: Colors.blue[50],
              onTap: onTabTapped, // new
              currentIndex: _currentIndex,
              elevation: 0,
              type: BottomNavigationBarType.fixed,
              //  currentIndex:1 ,
              items: [
                BottomNavigationBarItem(
                    icon: InkWell(
                      splashColor: Colors.blue,
                      child: Card(
                        elevation:12,
                        color: Colors.blue[50],
                        shadowColor: Colors.white,
                        child: Container(
                          width: 70,
                          height: 70,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ImageIcon(AssetImage('assets/Home.png'),color:  Color(0xFF474BD9) ,size: 30,),
                              Texts(weights: FontWeight.w700, title: 'Home', colors:Color(0xFF474BD9), size: 15, family: 'Lato' ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    title:  Texts(
                        weights: FontWeight.w300,
                        title: '',
                        colors: Colors.blue[800],
                        size: 18,
                        family: 'Lato'),
                    backgroundColor: Colors.black
                ),
                BottomNavigationBarItem(
                    icon: Card(
                      elevation: 12,
                      color: Colors.blue[50],
                      shadowColor: Colors.white,
                      child: Container(
                        width: 70,
                        height: 70,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ImageIcon(AssetImage('assets/Activity.png'),color:  Color(0xFF474BD9) ,size: 30,),
                            Texts(weights: FontWeight.w700, title: 'Activity', colors:Color(0xFF474BD9), size: 15, family: 'Lato' ),
                          ],
                        ),
                      ),
                    ),
                    title:  Texts(
                        weights: FontWeight.w300,
                        title: '',
                        colors: Colors.blue[800],
                        size: 18,
                        family: 'Lato'),
                    backgroundColor: Colors.black
                ),
                BottomNavigationBarItem(
                    icon: Card(
                      elevation: 12,
                      color: Colors.blue[50],
                      shadowColor: Colors.white,
                      child: Container(
                        width: 70,
                        height: 70,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ImageIcon(AssetImage('assets/Icon Setting.png'),color:  Color(0xFF474BD9) ,size: 30,),
                            Texts(weights: FontWeight.w700, title: 'Setting', colors:Color(0xFF474BD9), size:15, family: 'Lato' ),
                          ],
                        ),
                      ),
                    ),
                    title:  Texts(
                        weights: FontWeight.w300,
                        title: '',
                        colors: Colors.blue[800],
                        size: 18,
                        family: 'Lato'),
                    backgroundColor: Colors.black
                ),
                BottomNavigationBarItem(
                    icon:Card(
                      elevation: 12,
                      color: Colors.blue[50],
                      shadowColor: Colors.white,
                      child: Container(
                        width: 70,
                        height: 70,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ImageIcon(AssetImage('assets/Icon feather-user.png'),color:  Color(0xFF474BD9) ,size: 30,),
                            Texts(weights: FontWeight.w700, title: 'Profile', colors:Color(0xFF474BD9), size: 15, family: 'Lato' ),
                          ],
                        ),
                      ),
                    ),
                    title:  Texts(
                        weights: FontWeight.w300,
                        title: '',
                        colors: Colors.blue[800],
                        size: 18,
                        family: 'Lato'),
                    backgroundColor: Colors.black
                ),

              ],
            ),
          ),);
  }
}
