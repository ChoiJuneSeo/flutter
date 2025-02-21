import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class NewPageGo01 extends StatefulWidget {
  const NewPageGo01({super.key});

  @override
  State<NewPageGo01> createState() => _NewPageGo01State();
}

class _NewPageGo01State extends State<NewPageGo01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Go New Page 01'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(onPressed: (){context.pushNamed('new2');}, child: const Center(child: Text('Go to new page 02'))),
          TextButton(onPressed: (){context.pop();}, child: const Center(child: Text('Back'))),
        ],
      ),
    );
  }
}

class NewPageGo02 extends StatefulWidget {
  const NewPageGo02({super.key});

  @override
  State<NewPageGo02> createState() => _NewPageGo02State();
}

class _NewPageGo02State extends State<NewPageGo02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Go New Page 02'),
      ),
      body: Column(
        children: [
          TextButton(onPressed: (){context.pop();}, child: const Text('Back')),
          TextButton(onPressed: (){context.goNamed('home');}, child: const Text('Home')),

        ],
      ),
    );;
  }
}
