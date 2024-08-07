import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: Scaffold(
      appBar: AppBar(
        title: Text('Flutter에서 외부 라이브러리 사용하기'),
      ),
      body: const Body(),
    ),
  ));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return RandomWords();
  }
}

class RandomWords extends StatelessWidget {
  const RandomWords({super.key});

  @override
  Widget build(BuildContext context) {
    final wordLIst = generateWordPairs().take(5).toList();
    final widgets = wordLIst
        .map(
          (word) => Text(
            word.asCamelCase,
            style: TextStyle(fontSize: 32),
          ),
        )
        .toList();

    return Column(
      children: widgets,
    );
  }
}
