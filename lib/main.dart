import 'package:flutter/material.dart';
import 'package:hello/cards/first_card.dart';
import 'package:hello/cards/second_card.dart';
import 'package:hello/cards/third_card.dart';
import 'package:hello/first_page.dart';
import 'package:hello/cards/four_card.dart';
import 'package:hello/second_page.dart';
import 'package:hello/third_page_correct.dart';
import 'package:hello/third_page_incorrect.dart';
import 'menu.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Named Routes Demo',
        initialRoute: '/',
        routes: {
          '/': (context) => LoginPage(),
          '/second': (context) => SecondScreen(),
          '/first_card': (context) => Card1(),
          '/second_card': (context) => Card2(),
          '/third_card': (context) => Card3(),
          '/four_card': (context) => Card4(),
          '/third': (context) => ThirdScreen(),
          '/menu': (context) => ThirdScreense(),
          '/third_incorrect': (context) => ThirdScreens(),
        },
      ),
    );
