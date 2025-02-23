import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rsp_example/Game/cpu_input.dart';
import 'package:rsp_example/Game/enum.dart';
import 'package:rsp_example/Game/game_result.dart';
import 'package:rsp_example/Game/user_input.dart';

class GameBody extends StatefulWidget {
  const GameBody({super.key});

  @override
  State<GameBody> createState() => _GameBodyState();
}

class _GameBodyState extends State<GameBody> {
  late bool isDone;
  InputType? _userInput;
  late InputType _cpuInput;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isDone = false;
    setCpuInput();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: CpuInput(isDone: isDone,cpuInput: _cpuInput)),
        Expanded(child: GameResult(isDone: isDone,callback: restart,result: _getResult(),)),
        Expanded(child: UserInput(isDone: isDone,callback: setUSerInput, userSelect: _userInput,)),
      ],
    );
  }

  void setUSerInput(InputType userInput){
    setState(() {
      isDone = true;
      _userInput = userInput;
    });
  }
  void setCpuInput(){
    final random = Random();
    _cpuInput = InputType.values[random.nextInt(3)];
  }

  void restart(){
    setState(() {
      setCpuInput();
      isDone = false;
    });
  }

  Result? _getResult(){
    if(_userInput == null){
      return null;
    }

    if(_userInput == _cpuInput){
      return Result.draw;
    }

    final winCase = {
      InputType.rock : InputType.scissors,
      InputType.scissors : InputType.paper,
      InputType.paper : InputType.rock,
    };

    return winCase[_userInput] == _cpuInput ? Result.win : Result.defeat;
  }
}


