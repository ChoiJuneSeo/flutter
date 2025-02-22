import 'package:flutter/material.dart';
import 'package:rsp_example/Game/enum.dart';

class GameResult extends StatelessWidget {
  final bool isDone;
  final VoidCallback callback;
  Result? result;

  GameResult({required this.isDone, required this.callback, this.result, super.key});

  @override
  Widget build(BuildContext context) {
    if(isDone){
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(result!.displayString,style: TextStyle(fontSize: 20),),
          SizedBox(height: 8),
          TextButton(onPressed: (){callback.call();}, child: Text('재시작')),
        ],
      );
    }
    return Center(child: Text('가위 바위 보 중 하나를 선택해 주세요.',style: TextStyle(fontSize: 20),));
  }
}
