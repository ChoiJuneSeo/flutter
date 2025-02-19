import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// git commit용 추가 주석

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue, // AppBar 배경색 설정
          foregroundColor: Colors.white, // 글자 색상
        ),
      ),
        home: Scaffold(
        appBar: AppBar(
          title: Text('Study to Container'),
        ),
        body: Body(),
      ),
    ),
  );
}

class Flex extends StatelessWidget {
  const Flex({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible( flex: 1, child: Container(color: Colors.red)),
        Flexible( flex: 2, child: Container(color: Colors.blue)),
        Flexible( flex: 1, child: Container(color: Colors.amber)),
      ],
    );
  }
}


class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                width: 500,
                height: 500,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                color: Colors.greenAccent.shade100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
        
                      children: [
                        Container(
                            color: Colors.red,
                            width: 100,
                            height: 40,
                            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                            child: Center(child: Text('Container 1'))
                        ),
                        Container(color: Colors.green,width: 100, height: 40, margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10), child: Center(child: Text('Container 2'))),
                        Container(color: Colors.blue,width: 100, height: 40, margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10), child: Center(child: Text('Container 3'))),
                      ],
                    ),
                    Container(color: Colors.yellow,width: 200, height: 40, margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10), child: Center(child: Text('Container 4')))
                  ],
                ),
              ),
              Container(
                width: 500,
                height: 500,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                color: Colors.greenAccent.shade100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
        
                      children: [
                        Container(
                            color: Colors.red,
                            width: 100,
                            height: 40,
                            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                            child: Center(child: Text('Container 1'))
                        ),
                        Container(color: Colors.green,width: 100, height: 40, margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10), child: Center(child: Text('Container 2'))),
                        Container(color: Colors.blue,width: 100, height: 40, margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10), child: Center(child: Text('Container 3'))),
                      ],
                    ),
                    Container(color: Colors.yellow,width: 200, height: 40, margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10), child: Center(child: Text('Container 4')))
                  ],
                ),
              ),
            ],
          ),
        ),
        Flexible(
          child: Column(
            children: [
              Flexible(flex: 1, child: Container(color: Colors.red)),
              Expanded(flex: 2, child: Container(color: Colors.blue, height: 20, margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(color: Colors.greenAccent, width: 50, height: 50, margin: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),),
                      Container(color: Colors.greenAccent, width: 50, height: 50, margin: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),),
                      Container(color: Colors.greenAccent, width: 50, height: 50, margin: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),),
                      Container(color: Colors.greenAccent, width: 50, height: 50, margin: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),),
                      Container(color: Colors.greenAccent, width: 50, height: 50, margin: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),),
                      Container(color: Colors.greenAccent, width: 50, height: 50, margin: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),),
                      Container(color: Colors.greenAccent, width: 50, height: 50, margin: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),),
                      Container(color: Colors.greenAccent, width: 50, height: 50, margin: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),),
                      Container(color: Colors.greenAccent, width: 50, height: 50, margin: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),),
                    ],
                  ),
                ),
              ),
              ),
              Flexible(flex: 2, child: Container(height: 30, width: 120, decoration: BoxDecoration(color: Colors.amber, borderRadius: BorderRadius.circular(5)))),
              ]
          ),
        )
      ],
    );
  }
}




class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 200,
        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        decoration: BoxDecoration(
            color: Color(0xFF00D26A),
          border: Border.all(
            color: Colors.black,
            width: 3,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(color: Colors.red.withValues(alpha: 0.3), offset: Offset(5,5), blurRadius: 10, spreadRadius: 5),
            BoxShadow(color: Colors.blue.withValues(alpha: 0.3), offset: Offset(-5,-5), blurRadius: 10, spreadRadius: 5),
          ]
        ),
        child: Text('Hello container'),
      ),
    );
  }
}
