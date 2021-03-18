import 'package:fitness/models/text.dart';
import 'package:fitness/widgets/first_part.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/second_part.dart';
import '../widgets/third_part.dart';
import 'package:flutter_search_bar/flutter_search_bar.dart';
import 'package:flutter_swiper/flutter_swiper.dart';



class HomeOverViewScreen extends StatefulWidget {
  @override
  _HomeOverViewScreenState createState() =>  _HomeOverViewScreenState();
}

class _HomeOverViewScreenState extends State<HomeOverViewScreen> {
  SearchBar searchBar;
  final GlobalKey<ScaffoldState> _scaffoldKey =  GlobalKey<ScaffoldState>();

  AppBar buildAppBar(BuildContext context) {
    return  AppBar(
      elevation: 0,
      backgroundColor: Colors.blue[50],
        title:  WriteHeadLine(),
        actions: [searchBar.getSearchAction(context)]);
  }

  void onSubmitted(String value) {
    setState(() => _scaffoldKey.currentState
        .showSnackBar( SnackBar(content: Text('You wrote $value!'))));
  }

  _HomeOverViewScreenState() {
    searchBar =  SearchBar(
        inBar: false,
        buildDefaultAppBar: buildAppBar,
        setState: setState,
        onSubmitted: onSubmitted,
        onCleared: () {
          print("cleared");
        },
        onClosed: () {
          print("closed");
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: searchBar.build(context),
      key: _scaffoldKey,
      body:Container(
        color: Colors.blue[50],
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Stack(
            children:[ 
              Column(
              children: [
                Container(
                  height: (MediaQuery.of(context).size.height)*0.30,
                  child: Swiper(
                    itemBuilder: (BuildContext context,int index){
                      return new FirstPart();
                    },
                    itemCount: 3,
                    pagination: new SwiperPagination(),
                    control: new SwiperControl(),
                  ),
                ),
               // FirstPart(),
                SecondPart(),
                ThirdPart(),
                ],
            ),
             /* Positioned(
                height: 285,
                top: -50,
                // bottom: 0.8,
                //left: 50,
                right: 150,
                child: ColorFiltered(
                  colorFilter:
                  ColorFilter.mode(Colors.blue[400], BlendMode.modulate),
                  child: Image.asset(
                    'assets/Group 1.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),*/
              ],
            ),
        ),
        ),



    );
  }
}

class WriteHeadLine extends StatelessWidget {
  const WriteHeadLine({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
      Texts(weights: FontWeight.w400, title: 'Hello Ankru !                                                                         ',
          colors: Color(0xFF869CEE), size: 16, family: 'Lato'),


      Row(
        children: [
          Texts(weights: FontWeight.bold, title: 'Find A ', colors: Colors.black, size: null, family: 'Lato'),
          Texts(weights: FontWeight.bold, title: 'WorkOurt', colors: Color(0xFF4F59DC), size: null, family: null),
        ],
      )
    ],);
  }
}




