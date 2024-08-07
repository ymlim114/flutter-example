import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stateless vs Stateful'),
        ),
        body: Body(),
      ),
    ),
  );
}
class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ExampleStateless(),
      ExampleStateful(index: 3),
    ]);
  }
}

class ExampleStateless extends StatelessWidget {
  const ExampleStateless({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.red,
      ),
    );
  }
}

class ExampleStateful extends StatefulWidget {
  final int index;

  const ExampleStateful({required this.index, super.key});

  @override
  State<ExampleStateful> createState() => _ExampleStatefulState();
}

class _ExampleStatefulState extends State<ExampleStateful> {
  late TextEditingController txtController;
  late int _index;

  @override

  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: () {
          setState(() {
            if (_index == 5) {
              _index = 0;
              return;
            }
          });
          _index++;
        },
        child: Container(
          color: Colors.blue.withOpacity(_index/5),
          child: Center(
              child: Text('$_index'),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _index = widget.index;
    txtController = TextEditingController();
  }

  @override
  void dispose() {
    txtController.dispose();
    super.dispose();
  }
}
