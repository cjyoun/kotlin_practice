import 'package:day_counting/screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        fontFamily: 'sunflower',    // 테마의 기본 글꼴 설정(따로 fontFamily를 설정하지 않으면 이 fontFamily를 바라봄)
        textTheme: TextTheme(
            displayLarge: TextStyle(
              color: Colors.white,
              fontSize: 80.0,
              fontFamily: 'parisienne',
            ),
          displayMedium: TextStyle(
            color: Colors.white,
            fontSize: 50.0,
            fontWeight: FontWeight.w700
          ),
          bodyLarge: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.w500
          ),
          bodyMedium: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ),
      home: HomeScreen(),
    ),
  );
}
