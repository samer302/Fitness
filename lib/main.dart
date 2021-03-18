
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screens/home_screen.dart';
import './widgets/details.dart';
import './provider/date_provider.dart';
import './screens/date_screen.dart';


void main() => runApp(App());


class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (ctx)=> TitleDate(),
      child: MaterialApp(
          color: Colors.blue[50],
          theme: ThemeData(
            textTheme: ThemeData.light().textTheme.copyWith(
              title: TextStyle(
                fontFamily: 'OpenSans',
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            fontFamily: 'Lato',
          ),
          initialRoute: '/',
          routes: {
            '/':(context) => MyApp(),
            'Activity' :(context)=> Details() ,
            'Daily Activity' :(context) => DateActivity(),
      }
      ),
    );   //home: MyApp());
  }
}
