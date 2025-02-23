import 'package:a/Nav.dart';
import 'package:flutter/material.dart';

class NewPage01 extends StatefulWidget {
  const NewPage01({super.key});

  @override
  State<NewPage01> createState() => _NewPage01State();
}

class _NewPage01State extends State<NewPage01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Welcom to New Page!'),
      ),
      body: TextButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text('Go to back'),
      ),
    );
  }
}

class NewPage02 extends StatefulWidget {
  const NewPage02({super.key});

  @override
  State<NewPage02> createState() => _NewPage02State();
}

class _NewPage02State extends State<NewPage02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Welcome to Second Page!'),
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const NewPage02_01();
                  },
                ),
              );
            },
            child: const Text('Go to Page 02-1'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Go back'),
          ),
        ],
      ),
    );
  }
}

class NewPage02_01 extends StatefulWidget {
  const NewPage02_01({super.key});

  @override
  State<NewPage02_01> createState() => _NewPage02_01State();
}

class _NewPage02_01State extends State<NewPage02_01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('02-1')),
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              Navigator.popUntil(context, (route) => route.isFirst);
            },
            child: const Text('Go home'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Go back'),
          ),
        ],
      ),
    );
  }
}
