import 'package:flutter/material.dart';
import 'package:rsp_example/Game/game_body.dart';

void main() {
  runApp(
      RSPApp(),
  );
}


class RSPApp extends StatelessWidget {
  const RSPApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
          centerTitle: true,
        )
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('가위바위보 App'),
        ),
        body: const GameBody(),
      ),
    );
  }
}


