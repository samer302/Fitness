import 'package:flutter/material.dart';
import '../models/text.dart';



class FirstPart extends StatefulWidget {
  @override
  _FirstPartState createState() => _FirstPartState();
}

class _FirstPartState extends State<FirstPart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.blue[50],
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Container(
              height: (MediaQuery.of(context).size.height) * 0.256,
              width: double.infinity,
              color: Colors.blue[50],
              child: Container(
                child: Container(
                  width: double.infinity,
                  height: (MediaQuery.of(context).size.height) * 0.256,
                  // height: (MediaQuery.of(context).size.height) * 0.256,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 2),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100.0),
                        topRight: Radius.circular(5.0),
                        bottomLeft: Radius.circular(5.0),
                        bottomRight: Radius.circular(5.0),
                      ),
                      child: Container(
                        width: double.infinity,
                        height: (MediaQuery.of(context).size.height) * 0.256,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [Colors.blue[500], Color(0xFF474BD9)],
                          ),
                        ),
                        // color: Color(0xFF075b9a),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: (MediaQuery.of(context).size.height) * 0.219,
                              height: (MediaQuery.of(context).size.height) * 0.256,
                              child: Stack(
                               // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [

                                  Positioned(
                                    bottom: 155,
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 16,
                                        ),
                                        Texts(
                                          title: 'Legs ',
                                          colors: Colors.white,
                                          size: 22,
                                          family: 'Lato',
                                          weights: FontWeight.w900,
                                        ),
                                        Texts(
                                          title: 'and ',
                                          colors: Colors.white,
                                          size: 22,
                                          family: 'Lato',
                                          weights: FontWeight.w200,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 125,
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 12,
                                        ),
                                        Texts(
                                          title: 'Glutes ',
                                          colors: Colors.white,
                                          size: 22,
                                          family: 'Lato',
                                          weights: FontWeight.w900,
                                        ),
                                        Texts(
                                          title: 'WorkOut',
                                          colors: Colors.white,
                                          size: 22,
                                          family: 'Lato',
                                          weights: FontWeight.w200,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 100,
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 12,
                                        ),
                                        ImageIcon(
                                          AssetImage('assets/Group 2359.png'),
                                          size: 10,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Texts(
                                          title: 'Advanced ',
                                          colors: Colors.blue[100],
                                          size: 15,
                                          family: 'Lato',
                                          weights: FontWeight.w200,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 60,
                                    left: 8,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                       Icon(
                                           Icons.timer,
                                           size: 20,
                                           color: Colors.white,
                                         ),
                                          SizedBox(width: 10,),
                                        Texts(
                                          title: '45 Min ',
                                          colors: Colors.blue[100],
                                          size: 15,
                                          family: 'Lato',
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 15,
                                    child: Row(
                                      children: [
                                        Container(
                                            width: 90,
                                            decoration: BoxDecoration(
                                                color: Color(0xFFDCDFF2),
                                                borderRadius: BorderRadius.circular(
                                                    30),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: InkWell(
                                                onTap:() {

                                                },
                                                child: FittedBox(
                                                  child: Texts(
                                                    title: 'Start Workout',
                                                    colors: Colors.white,
                                                    size: 7,
                                                    family: 'Lato',
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
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
          ),
        ],
      ),
    );
  }
}

/*Container(
        height: (MediaQuery.of(context).size.height) * 0.256,
        width: double.infinity,
      color: Colors.blue[50],
        child: Container(
          child: Stack(
            fit: StackFit.expand,
            children: [
              Container(
                width: double.infinity,
                height: (MediaQuery.of(context).size.height) * 0.256,
                // height: (MediaQuery.of(context).size.height) * 0.256,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 2),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(100.0),
                      topRight: Radius.circular(5.0),
                      bottomLeft: Radius.circular(5.0),
                      bottomRight: Radius.circular(5.0),
                    ),
                    child: Container(
                      width: double.infinity,
                      height: (MediaQuery.of(context).size.height) * 0.256,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [Colors.blue[500], Color(0xFF474BD9)],
                        ),
                      ),
                      // color: Color(0xFF075b9a),
                      child: Row(
                        children: [
                          Spacer(
                            flex: 12,
                          ),
                          Container(
                            width: (MediaQuery.of(context).size.height) * 0.219,
                            height: (MediaQuery.of(context).size.height) * 0.256,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height: 9,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Texts(
                                      title: 'Legs ',
                                      colors: Colors.white,
                                      size: 22,
                                      family: 'Lato',
                                      weights: FontWeight.w900,
                                    ),
                                    Texts(
                                      title: 'and ',
                                      colors: Colors.white,
                                      size: 22,
                                      family: 'Lato',
                                      weights: FontWeight.w200,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 12,
                                    ),
                                    Texts(
                                      title: 'Glutes ',
                                      colors: Colors.white,
                                      size: 22,
                                      family: 'Lato',
                                      weights: FontWeight.w900,
                                    ),
                                    Texts(
                                      title: 'WorkOut',
                                      colors: Colors.white,
                                      size: 22,
                                      family: 'Lato',
                                      weights: FontWeight.w200,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 12,
                                    ),
                                    ImageIcon(
                                      AssetImage('assets/Group 2359.png'),
                                      size: 10,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Texts(
                                      title: 'Advanced ',
                                      colors: Colors.blue[100],
                                      size: 15,
                                      family: 'Lato',
                                      weights: FontWeight.w200,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    FutureIconButton(
                                      icon: Icon(
                                        Icons.timer,
                                        size: 25,
                                      ),
                                      onPressed: waitFor,
                                      showResult: true,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Texts(
                                      title: '45 Min ',
                                      colors: Colors.blue[100],
                                      size: 15,
                                      family: 'Lato',
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    FutureRaisedButton(
                                      child: Text('Load'),
                                      onPressed: waitFor,
                                      showResult: true,
                                    ),
                                    /* Container(
                                        width: 90,
                                        decoration: BoxDecoration(
                                            color: Color(0xFFDCDFF2),
                                            borderRadius: BorderRadius.circular(
                                                30),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: InkWell(
                                            onTap:() {
                                            },
                                            child: FittedBox(
                                              child: Texts(
                                                title: 'Start Workout',
                                                colors: Colors.white,
                                                size: 7,
                                                family: 'Lato',
                                              ),
                                            ),
                                          ),
                                        ),
                                      )*/
                                  ],
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                              ],
                            ),
                          ),
                          Spacer(
                            flex: 1,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
        ),*/
