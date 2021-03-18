import 'package:flutter/material.dart';
import '../models/text.dart';
import 'package:flutter_animator/flutter_animator.dart';


class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final GlobalKey<AnimatorWidgetState> basicAnimation =
  GlobalKey<AnimatorWidgetState>();

  final GlobalKey<InOutAnimationState> inOutAnimation =
  GlobalKey<InOutAnimationState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      color: Colors.blue[50],
      child: Center(
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
            ),
            BounceIn(
              key: basicAnimation,
              child: CircleAvatar(
                radius: 100,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage('assets/samer.jpg'),
              ),
            ),
            Card(
              elevation: 0,
              color: Colors.blue[50],
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80,vertical: 14),
              child:   FlatButton(
                onPressed: () {
                  basicAnimation.currentState.forward();
                },
                child:Texts(
                  weights: FontWeight.w500,
                  title: 'Samer Abou Kef',
                  colors: Color(0xFF6782E6),
                  size: 22,
                  family: 'Rancho'),
            ),),),
            Card(
                elevation: 0,
                color: Colors.blue[50],
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 80,vertical: 14),
                  child: InOutAnimation(
                    key: inOutAnimation,
                    child:  Texts(
                        weights: FontWeight.w500,
                        title: '  ICT Engineer',
                        colors: Color(0xFF6782E6),
                        size: 22,
                        family: 'Rancho'),
                    inDefinition: FadeInAnimation(),
                    outDefinition: BounceOutDownAnimation(),
                  ),

                )),
            Card(
                elevation: 0,
                color: Colors.blue[50],
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 14),
                  child:  FlatButton(
                    onPressed: () {
                      if (inOutAnimation.currentState.status !=
                          InOutAnimationStatus.Out) {
                        inOutAnimation.currentState.animateOut();
                      } else {
                        inOutAnimation.currentState.animateIn();
                      }
                    },
                    child:  Texts(
                        weights: FontWeight.w500,
                        title: '  Samer.AboKeef1994@gmail.com',
                        colors: Color(0xFF6782E6),
                        size: 22,
                        family: 'Rancho'),
                  ),

                )),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
