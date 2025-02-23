import 'package:a/screen/new_page.dart';
import 'package:flutter/material.dart';

class HomeWidgetNav extends StatefulWidget {
  const HomeWidgetNav({super.key});

  @override
  State<HomeWidgetNav> createState() => _HomeWidgetNavState();
}

class _HomeWidgetNavState extends State<HomeWidgetNav> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: const Text('Nav를 사용한 화면 전환'),
        ),
        body: Column(
          children: [
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const NewPage01();
                    },
                  ),
                );
              },
              child: const Text('Go to Page 01'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const NewPage02();
                    },
                  ),
                );
              },
              child: const Text('Go to Page 02'),
            ),
          ],
        ),
      ),
    );
  }
}
