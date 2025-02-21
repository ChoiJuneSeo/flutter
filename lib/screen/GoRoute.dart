import 'package:a/screen/new_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class HomeWidgetGo extends StatefulWidget {
  const HomeWidgetGo({super.key});

  @override
  State<HomeWidgetGo> createState() => _HomeWidgetGoState();
}

class _HomeWidgetGoState extends State<HomeWidgetGo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Go Route Home'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(onPressed: (){
            context.pushNamed('new');
          },
              child: const Center(child: Text('Go to page 01'))),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),

      ]),
    );
  }
}
