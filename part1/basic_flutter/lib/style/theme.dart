import 'package:flutter/material.dart';

final customTheme = ThemeData(
  useMaterial3: false,
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.red, // AppBar 배경색 설정
    foregroundColor: Colors.white, // 글자 색상
  ),
);
