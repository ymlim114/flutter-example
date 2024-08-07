import 'package:flutter/material.dart';

const assetImagePath = 'assets/images';
const bannerImage = '$assetImagePath/banner.png';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      useMaterial3: true,
    ),
    home: Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Flutter에서 로컬 데이터를 활용하기',
            style: TextStyle(color: Colors.blue, fontSize: 20),
          ),
        ),
      ),
      body: Body(),
    ),
  ));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      //child: Image.asset('banner.png'),
      child: Image.asset(bannerImage),
    );
  }
}
