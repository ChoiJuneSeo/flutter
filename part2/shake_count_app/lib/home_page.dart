import 'package:flutter/material.dart';
import 'package:shake_gesture/shake_gesture.dart';
import 'package:velocity_x/velocity_x.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with WidgetsBindingObserver {
  int _counter = 0;

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // redBox().box.padding(EdgeInsets.all(30)).color(Colors.blue).make(),
            '흔들어서 카운트를 올려보세요.'.text
                .size(20)
                .isIntrinsic
                .color(Colors.black)
                .bold
                .makeCentered()
                .box
                .withRounded(value: 4)
                // .height(150)
                .make()
                .p(4),
            ShakeGesture(
              onShake: () {
                _incrementCounter();
              },
              child: Text(
                '$_counter',
                style: Theme.of(context).textTheme.displayLarge,
              ).p(10),
            ),
            OutlinedButton(
              onPressed: () {
                _resetCounter();
              },
              child: Text('Reset'),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget redBox() => Container().box.color(Colors.red).size(20, 20).make();

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.detached:
        print('detached');
        throw UnimplementedError();
      case AppLifecycleState.resumed:
        print('resumed');
        throw UnimplementedError();
      case AppLifecycleState.inactive:
        print('inactive');
        throw UnimplementedError();
      case AppLifecycleState.hidden:
        print('hidden');
        throw UnimplementedError();
      case AppLifecycleState.paused:
        print('paused');
        throw UnimplementedError();
    }
  }
}
