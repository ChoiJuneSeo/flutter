import 'package:flutter/material.dart';
import 'package:rsp_example/Game/enum.dart';
import 'package:rsp_example/Game/input_card.dart';

class CpuInput extends StatelessWidget {
  final bool isDone;
  final InputType cpuInput;

  const CpuInput({required this.isDone, required this.cpuInput, super.key});

  @override
  Widget build(BuildContext context) {
    if (isDone) {
      return Center(
        child: Row(
          children: [
            Expanded(child: SizedBox.shrink()),
            Expanded(
              child: InputCard(
                child: Image.asset(cpuInput.path),
                callback: () {},
              ),
            ),
            Expanded(child: SizedBox.shrink()),

          ],
        ),
      );
    }
    return Center(
      child: Row(
        children: [
          Expanded(child: SizedBox.shrink()),
          Expanded(
            child: InputCard(
              child: Text('?', style: TextStyle(fontSize: 52, fontWeight: FontWeight.bold), textAlign: TextAlign.center,), callback: () {},
            ),
          ),
          Expanded(child: SizedBox.shrink()),

        ],
      ),
    );
  }
}
