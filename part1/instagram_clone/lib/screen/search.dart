import 'package:flutter/material.dart';
import 'package:instagram_clone/mock.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          MySearchBar(),
          SearchGrid(),
        ],
      ),
    );
  }
}

class MySearchBar extends StatelessWidget {
  const MySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 40,
        child: TextField(
          cursorColor: Colors.black,
          style: TextStyle(decorationThickness: 0),
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0),
            prefixIcon: Icon(Icons.search),
            hintText: '검색',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
            border: InputBorder.none,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: Colors.grey.shade200, width: 1)
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: Colors.grey.shade200, width: 1)
            ),
            filled: true,
            fillColor: Colors.grey.shade200,


          ),
        ),
      ),
    );
  }
}

class SearchGrid extends StatelessWidget {
  const SearchGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.zero,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      crossAxisCount: 3,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: gridItems2.map((color)=>Container(color: color,)).toList(),
    );
  }
}

