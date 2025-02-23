import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late int index;

  @override
  void initState() {
    super.initState();
    index = 0;

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('화면 전환'),
        ),
        body: homeBody(),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Person'),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
          ],
          currentIndex: index,
          onTap: (newIndex) => setState(() => index = newIndex),
        ),
      ),
    );
  }
  Widget homeBody() {
    switch(index) {
      case 1:
        return const Center(child: Icon(Icons.search, size: 100),);
      case 2:
        return Center(child: Image.asset('assets/images/1.jpg'),);
      case 3:
        return const Center(child: Icon(Icons.settings, size: 100),);
      case 0:
      default:
        return const Center(child: Icon(Icons.home, size: 100),);

    }
  }

}




class ExternLib extends StatelessWidget {
  const ExternLib({super.key});

  @override
  Widget build(BuildContext context) {
    return const RandomWords();
  }
}

class RandomWords extends StatelessWidget {
  const RandomWords({super.key});

  @override
  Widget build(BuildContext context) {
    final wordList = generateWordPairs().take(5).toList();
    final widgets = wordList.map((word)=> Text(word.asCamelCase, style: const TextStyle(fontSize: 15),)).toList();

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset('assets/images/1.jpg'),
        Column(children: widgets,)
      ],

    );
  }
}




class TestWidget extends StatefulWidget {
  const TestWidget({super.key});

  @override
  State<TestWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(1),
      child: Column(
        children: [
          Text('$value', style: const TextStyle(fontSize: 20)),
          TestButton(addValue),
        ],
      ),
    );
  }

  void addValue(int newValue) => {setState(() => value = value + newValue)};
}

class TestButton extends StatelessWidget {
  const TestButton(this.callback, {super.key});

  final Function(int) callback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => callback.call(1),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(width: 2),
            borderRadius: BorderRadius.circular(5)
        ),
        padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 1),
        margin: const EdgeInsets.all(1),
        child: const Text('Up Count', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}

class TestPopupMenu extends StatefulWidget {
  const TestPopupMenu({super.key});

  @override
  State<TestPopupMenu> createState() => _TestPopupMenuState();
}

class _TestPopupMenuState extends State<TestPopupMenu> {
  TestValue selectValue = TestValue.test1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PopupMenuButton(
          itemBuilder: (context) {
            return TestValue.values
                .map(
                  (value) =>
                  PopupMenuItem(value: value, child: Text(value.name)),
            )
                .toList();
          },
          onSelected: (newValue) => setState(() => selectValue = newValue),
        ),
        Text(selectValue.name),
      ],
    );
  }
}

class TestSwitch extends StatefulWidget {
  const TestSwitch({super.key});

  @override
  State<TestSwitch> createState() => _TestSwitchState();
}

class _TestSwitchState extends State<TestSwitch> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Transform.scale(
          scale: 0.75,
          child: Switch(
            value: value,
            onChanged: (newValue) {
              setState(() => value = newValue);
            },
            activeColor: Colors.green,
            activeTrackColor: Colors.white,
            inactiveTrackColor: Colors.white,
          ),
        ),
        Transform.scale(
          scale: 0.75,
          child: CupertinoSwitch(
            value: value,
            onChanged: (newValue) {
              setState(() => value = newValue);
            },
            activeTrackColor: Colors.green,
            inactiveTrackColor: Colors.white,
          ),
        ),
      ],
    );
  }
}

class TestSlider extends StatefulWidget {
  const TestSlider({super.key});

  @override
  State<TestSlider> createState() => _TestSliderState();
}

class _TestSliderState extends State<TestSlider> {
  double value = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      // spacing: -10,
      children: [
        Container(
          color: Colors.black.withValues(alpha: (value + 1) / 100),
          child: Slider(
            value: value,
            onChanged: (newValue) {
              setState(() => value = newValue);
            },
            label: value.round().toString(),
            divisions: 100,
            max: 100,
            min: 0,
            activeColor: Colors.red,
            inactiveColor: Colors.blue,
            thumbColor: Colors.white,
          ),
        ),
        Text('${value.round()}'),
      ],
    );
  }
}

class TestRadioButton extends StatefulWidget {
  const TestRadioButton({super.key});

  @override
  State<TestRadioButton> createState() => _TestRadioButtonState();
}

enum TestValue { test1, test2, test3 }

class _TestRadioButtonState extends State<TestRadioButton> {
  TestValue? selectValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: ListTile(
            tileColor: Colors.blue,
            onTap:
                () => {
              setState(() {
                if (selectValue != TestValue.test1) {
                  selectValue = TestValue.test1;
                }
                ;
              }),
            },
            title: const Text('First'),
            leading: Radio<TestValue>(
              value: TestValue.test1,
              groupValue: selectValue,
              onChanged:
                  (value) => {
                setState(() {
                  selectValue = value!;
                }),
              },
            ),
          ),
        ),
        Expanded(
          child: ListTile(
            tileColor: Colors.deepOrangeAccent,
            onTap:
                () => {
              setState(() {
                if (selectValue != TestValue.test2) {
                  selectValue = TestValue.test2;
                }
              }),
            },
            title: const Text('Second'),
            leading: Radio<TestValue>(
              value: TestValue.test2,
              groupValue: selectValue,
              onChanged:
                  (value) => {
                setState(() {
                  selectValue = value!;
                }),
              },
            ),
          ),
        ),
        Expanded(
          child: ListTile(
            tileColor: Colors.deepPurple,

            onTap:
                () => {
              setState(() {
                if (selectValue != TestValue.test3) {
                  selectValue = TestValue.test3;
                }
              }),
            },
            title: const Text('Third'),
            leading: Radio<TestValue>(
              value: TestValue.test3,
              groupValue: selectValue,
              onChanged:
                  (value) => {
                setState(() {
                  selectValue = value!;
                }),
              },
            ),
          ),
        ),
      ],
    );
  }
}

class TestCheckBox extends StatefulWidget {
  const TestCheckBox({super.key});

  @override
  State<TestCheckBox> createState() => _TestCheckBoxState();
}

class _TestCheckBoxState extends State<TestCheckBox> {
  late List<bool> values;

  @override
  void initState() {
    super.initState();
    values = [false, false, false];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Checkbox(
            value: values[0],
            onChanged: (value) => ChangeValue(0, value ?? false),
          ),
        ),
        Flexible(
          child: Checkbox(
            value: values[1],
            onChanged: (value) => ChangeValue(1, value ?? false),
          ),
        ),
        Flexible(
          child: Checkbox(
            value: values[2],
            onChanged: (value) => ChangeValue(2, value ?? false),
          ),
        ),
      ],
    );
  }

  void ChangeValue(int index, bool value) {
    setState(() {
      values[index] = value;
    });
  }
}

class ExampleStateless extends StatelessWidget {
  const ExampleStateless({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.blue, child: const Text('Stateless Widget'));
  }
}
//

class ExampleStateful extends StatefulWidget {
  final int index;

  const ExampleStateful({required this.index, super.key});

  @override
  State<ExampleStateful> createState() => _ExampleStatefulState();
}

class _ExampleStatefulState extends State<ExampleStateful> {
  late int _index;
  late TextEditingController textController;

  @override
  void initState() {
    super.initState();
    _index = widget.index;
    textController = TextEditingController();
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (_index == 5) {
            _index = 0;
          } else {
            ++_index;
          }
        });
      },
      child: Container(
        color: Colors.red.withValues(alpha: _index / 5),
        child: Center(child: Text('$_index')),
      ),
    );
  }
}

//

class Examples extends StatelessWidget {
  const Examples({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Flexible(child: ExampleStateless()),
        const Flexible(child: ExampleStateful(index: 3)),
        Flexible(
          child: Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 1),
                  color: Colors.green,
                  child: const TestCheckBox(),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 1),
                  // color: Colors.green,
                  child: const TestRadioButton(),
                ),
              ),
            ],
          ),
        ),
        const TestSlider(),
        Container(color: Colors.pinkAccent, child: const TestSwitch()),
        Container(color: Colors.yellowAccent, child: const TestPopupMenu()),
        const TestWidget(),
      ],
    );
  }
}

class Body2 extends StatelessWidget {
  const Body2({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(width: 500, height: 500, color: Colors.green),
        Container(width: 400, height: 400, color: Colors.red),
        Container(width: 300, height: 300, color: Colors.blue),
        Positioned(
          bottom: 20,
          left: 20,
          child: Container(width: 200, height: 200, color: Colors.yellow),
        ),
        Align(
          alignment: const Alignment(0, -0.4),
          child: Container(
            width: 200,
            height: 200,
            color: Colors.greenAccent,
            child: Align(
              alignment: const Alignment(0, 0),
              child: Container(width: 100, height: 100, color: Colors.yellow),
            ),
          ),
        ),
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
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                          margin: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 10,
                          ),
                          child: const Center(child: Text('Container 1')),
                        ),
                        Container(
                          color: Colors.green,
                          width: 100,
                          height: 40,
                          margin: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 10,
                          ),
                          child: const Center(child: Text('Container 2')),
                        ),
                        Container(
                          color: Colors.blue,
                          width: 100,
                          height: 40,
                          margin: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 10,
                          ),
                          child: const Center(child: Text('Container 3')),
                        ),
                      ],
                    ),
                    Container(
                      color: Colors.yellow,
                      width: 200,
                      height: 40,
                      margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                      child: const Center(child: Text('Container 4')),
                    ),
                  ],
                ),
              ),
              Container(
                width: 500,
                height: 500,
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                          margin: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 10,
                          ),
                          child: const Center(child: Text('Container 1')),
                        ),
                        Container(
                          color: Colors.green,
                          width: 100,
                          height: 40,
                          margin: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 10,
                          ),
                          child: const Center(child: Text('Container 2')),
                        ),
                        Container(
                          color: Colors.blue,
                          width: 100,
                          height: 40,
                          margin: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 10,
                          ),
                          child: const Center(child: Text('Container 3')),
                        ),
                      ],
                    ),
                    Container(
                      color: Colors.yellow,
                      width: 200,
                      height: 40,
                      margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                      child: const Center(child: Text('Container 4')),
                    ),
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
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.blue,
                  height: 20,
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          color: Colors.greenAccent,
                          width: 50,
                          height: 50,
                          margin: const EdgeInsets.symmetric(
                            horizontal: 5,
                            vertical: 5,
                          ),
                        ),
                        Container(
                          color: Colors.greenAccent,
                          width: 50,
                          height: 50,
                          margin: const EdgeInsets.symmetric(
                            horizontal: 5,
                            vertical: 5,
                          ),
                        ),
                        Container(
                          color: Colors.greenAccent,
                          width: 50,
                          height: 50,
                          margin: const EdgeInsets.symmetric(
                            horizontal: 5,
                            vertical: 5,
                          ),
                        ),
                        Container(
                          color: Colors.greenAccent,
                          width: 50,
                          height: 50,
                          margin: const EdgeInsets.symmetric(
                            horizontal: 5,
                            vertical: 5,
                          ),
                        ),
                        Container(
                          color: Colors.greenAccent,
                          width: 50,
                          height: 50,
                          margin: const EdgeInsets.symmetric(
                            horizontal: 5,
                            vertical: 5,
                          ),
                        ),
                        Container(
                          color: Colors.greenAccent,
                          width: 50,
                          height: 50,
                          margin: const EdgeInsets.symmetric(
                            horizontal: 5,
                            vertical: 5,
                          ),
                        ),
                        Container(
                          color: Colors.greenAccent,
                          width: 50,
                          height: 50,
                          margin: const EdgeInsets.symmetric(
                            horizontal: 5,
                            vertical: 5,
                          ),
                        ),
                        Container(
                          color: Colors.greenAccent,
                          width: 50,
                          height: 50,
                          margin: const EdgeInsets.symmetric(
                            horizontal: 5,
                            vertical: 5,
                          ),
                        ),
                        Container(
                          color: Colors.greenAccent,
                          width: 50,
                          height: 50,
                          margin: const EdgeInsets.symmetric(
                            horizontal: 5,
                            vertical: 5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  height: 30,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ],
          ),
        ),
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
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        decoration: BoxDecoration(
          color: const Color(0xFF00D26A),
          border: Border.all(
            color: Colors.black,
            width: 3,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.red.withValues(alpha: 0.3),
              offset: const Offset(5, 5),
              blurRadius: 10,
              spreadRadius: 5,
            ),
            BoxShadow(
              color: Colors.blue.withValues(alpha: 0.3),
              offset: const Offset(-5, -5),
              blurRadius: 10,
              spreadRadius: 5,
            ),
          ],
        ),
        child: const Text('Hello container'),
      ),
    );
  }
}