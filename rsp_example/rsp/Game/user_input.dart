import 'package:flutter/material.dart';
import 'package:rsp_example/Game/enum.dart';
import 'package:rsp_example/Game/input_card.dart';

class UserInput extends StatelessWidget {
  final bool isDone;
  final Function(InputType) callback;
  final InputType? userSelect;

  const UserInput({
    required this.isDone,
    required this.callback,
    this.userSelect,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (isDone) {
      return Center(
        child: Row(
          children: [
            Expanded(child: SizedBox.shrink()),
            Expanded(child: InputCard(child: Image.asset(userSelect!.path), callback: () {},)),
            Expanded(child: SizedBox.shrink()),

          ],
        ),
      );
    }
    return Row(children: _getInputs(callback));
  }
}

List<Widget> _getInputs(Function(InputType) callback) {
  return InputType.values
      .map(
        (type) => Expanded(
          child: InputCard(
            child: Image.asset(type.path),
            callback: () => {callback.call(type)},
          ),
        ),
      )
      .toList();
}
