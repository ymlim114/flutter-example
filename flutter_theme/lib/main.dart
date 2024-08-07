import 'package:flutter/material.dart';
import 'package:flutter_theme/theme.dart';

void main() {
  runApp(
    MaterialApp(
        home: const HomeWidget(),
        theme: customTheme, // 전역상수로 호출(theme.dart)
    ),
  );
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  int count = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    count = 0;
  }

  @override
  Widget build(BuildContext context) {
    // final textTheme = Theme.of(context).textTheme;
    // 전역상수(customTheme)의 textTheme 활용
    final textTheme = customTheme.textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Flutter Theme',
            style: TextStyle(color: Colors.white, fontSize: 23),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Press Count',
              style: textTheme.bodyLarge,
            ),
            Text(
              '!!! 순진바보 $count 째 !!!',
              style: textTheme.displayLarge,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => count++),
      ),
    );
  }
}
