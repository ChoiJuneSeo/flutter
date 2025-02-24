import 'package:flutter/material.dart';
import 'package:instagram_clone/screen/home.dart';
import 'package:instagram_clone/screen/search.dart';

class InstagramBody extends StatelessWidget {
  final int index;

  const InstagramBody({required this.index,super.key});

  @override
  Widget build(BuildContext context) {
    switch(index){
      case 1:
        return Text('Shorts Page');
      case 2:
        return Text('Message Page');
      case 3:
        return SearchScreen();
      case 4:
        return Text('Profile Page');
    }

    return HomeScreen();
  }
}
